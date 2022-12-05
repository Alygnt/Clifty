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
NC="$(printf '\033[0m')" #Reset colour
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

load_anim() {
    spinner=( '-' '\' '|' '/' )
    while [ l ]
    do
        for i in "${spinner[@]}"
        do
            echo -ne "\r$1 [$i]"
            sleep 0.2
        done
    done
}

load_print() {
load_anim "${1}" &
p=$!
for i in 'seq l 10'
do
    sleep 10
done
kill $p
}
load_print "Launcing "