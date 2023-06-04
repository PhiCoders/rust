#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PH_DIR="$SCRIPT_DIR/.ph/*"

for script in $PH_DIR; do
    if [[ -f $script ]] 
    then
        source $script
    fi
done

function main {
    local script="$1"
    local args="${*:2}"
    
    case $script in
        "cargo")
            run_cargo "$args"
            ;;
        "start")
            up
            ;;
        "rebuild")
            up_and_rebuild
            ;;
        *)
           echo;
    esac
}

main "$@"