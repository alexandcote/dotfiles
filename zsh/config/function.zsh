# Functions
# --------------------------------------

function ss() {
    if [[ $1 == "list" ]]
    then
        systemctl list-units "proc*"
    elif [[ $1 == "start" ]]
    then
        systemctl start proc-shopify--$2@server.service
    elif [[ $1 == "stop" ]]
    then
        systemctl stop proc-shopify--$2@server.service
    elif [[ $1 == "status" ]]
    then
        systemctl status proc-shopify--$2@server.service
    else
        echo "$1 is not supported"
    fi
}

base() {
    local regex=/Shopify/(.+)/?
    local command="$1"
    local current_path=$(pwd) > /dev/null 2>&1
    if [[ $current_path =~ $regex ]]; then
      eval "${command} shopify--${match[1]}"
    else
      echo "Please run this script from a Shopify project"
    fi
}

start() {
  base "iso procs start"
}

stop() {
  base "iso procs stop"
}

restart() {
  base "iso procs restart"
}

update() {
  base "/usr/bin/update"
}
