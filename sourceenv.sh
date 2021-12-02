#/bin/bash

function sourcelocalenv {
    if [ ! -f $(pwd)/.env ]; then
        echo ".env file not found!"
    fi
    export $(grep -v '^#' $(pwd)/.env | xargs)
}
