url=$1
exclude=$2
auth_token=$3
has_branch=$(echo ${url} | grep /tree/ > /dev/null; echo $?)
tokens=(${url//"/"/ })
tokens_len=$((${#tokens[@]} - 1))
owner=${tokens[2]}
repo=${tokens[3]}
if [[ $has_branch -eq 0 ]]
then
	branch=${tokens[5]}
	dir_path=${tokens[6]}
	dir_path_start_idx="7"
else
	dir_path=${tokens[4]}
	dir_path_start_idx="5"
fi
for ((i = ${dir_path_start_idx}; i <= ${tokens_len}; i++));
do
	dir_path="${dir_path}/${tokens[i]}"
done
# API Template "https://api.github.com/repos/${OWNER}/${REPO}/contents/${DIR_PATH}?ref=${BRANCH}"
contents_url="https://api.github.com/repos/${owner}/${repo}/contents"
if [[ "${dir_path}" != "" ]]
then
	contents_url="${contents_url}/${dir_path}"

	if [[ "${branch}" != "" ]]
	then
		contents_url="${contents_url}?ref=${branch}"
	fi
fi
contents_file=$(mktemp)
accept_header="Accept: application/vnd.github.v3+json"
auth_header="Authorization: token ${auth_token}"
if [ "${auth_token}" = "" ];
then
	curl -s -H "${accept_header}" "${contents_url}" > ${contents_file}
else
	curl -s -H "${auth_header}" -H "${accept_header}" "${contents_url}" > ${contents_file}
fi
rate_exceeded=$(cat ${contents_file} | grep "API rate limit exceeded" > /dev/null; echo $?)
if [[ "${rate_exceeded}" -eq 0 ]]
then
	echo "ERROR : API Rate limit is exceeded."
	echo -e ""
	exit 1
fi
file_names=$(cat ${contents_file} | grep "\"name\":")
file_names=${file_names//"\"name\":"/}
file_names=${file_names//"\""/}
file_names=${file_names//","/}
file_names=(${file_names})
paths=$(cat ${contents_file} | grep "\"path\":")
paths=${paths//"\"path\":"/}
paths=${paths//"\""/}
paths=${paths//","/}
paths=(${paths})
download_urls=$(cat ${contents_file} | grep "\"download_url\":")
download_urls=${download_urls//"\"download_url\":"/}
download_urls=${download_urls//"\""/}
download_urls=${download_urls//","/}
download_urls=(${download_urls})
n_files=${#file_names[@]}
runners=()
for ((i = 0; i < ${n_files}; i++));
do
	f_name=${file_names[i]}
	path=${paths[i]}
	check_dir=$(dirname "${path}")
	download_url=${download_urls[i]}
	if [[ "${#runners[@]}" -ge 10 ]]; then
		wait ${runners[@]}
		runners=()
	fi
	if [ "${download_url}" == "null" ]; then
		if [[ "$check_dir" != *$exclude ]]; then
			mkdir -p "${path}"
			bash $0 "${url}/${f_name}" "$exclude" "${auth_token}"
			if [[ "$?" -ne 0 ]]; then
				echo "Error"
				exit $?
			fi	
			continue;
		fi
	else
        if [[ "$check_dir" != *$exclude ]]; then
		    mkdir -p $(dirname "${path}")
			echo "${path}"
			curl -s "${download_url}" > "${path}" &
	        runners+=($!)
		fi
	fi
done