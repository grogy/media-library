#!/bin/bash

NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
APP_CONTAINER='web'

function renderCommands() {
    echo -e "${GREEN}Console tool for MediaLibrary${NC}"
    echo ""
    echo -e "${ORANGE}Available commands for localhost environment:${NC}"
    echo -e " ${GREEN}start${NC}   Start and setup development environment."
    echo -e " ${GREEN}stop${NC}    Stop development environment."
    echo -e " ${GREEN}in${NC}      Go into a container."
    echo ""
    exit 0;
}


function start() {
    docker-compose up --build;
    echo "== All done, happy coding. ==";
}


function stop() {
    docker-compose down;
}


function goIntoContainer() {
    docker exec -t -i ${APP_CONTAINER} bash;
}
