# some useful stuff

ALL_OFF="$(tput sgr0)"
BOLD="$(tput bold)"
BLUE="${BOLD}$(tput setaf 4)"
GREEN="${BOLD}$(tput setaf 2)"
RED="${BOLD}$(tput setaf 1)"
YELLOW="${BOLD}$(tput setaf 3)"

msg() {
    local msg=$1; shift
    printf "${GREEN}***${ALL_OFF}${BOLD} ${msg}${ALL_OFF}\n" $@ >&2
}

error() {
    local msg=$1; shift
    printf "${RED}*** ERROR:${ALL_OFF}${BOLD} ${msg}${ALL_OFF}\n" $@ >&2
}

die() {
    [ -n "${1}" ] && error "${1}"
    exit 1
}

on_err() {
    error 'Trapped ERR, something went very wrong.'
}
trap on_err ERR
