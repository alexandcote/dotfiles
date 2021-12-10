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