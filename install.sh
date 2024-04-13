#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' 

CHECK_MARK='✅'
WARNING='⚠️'
ROCKET='🚀'
ARROW='⬇️'
DOOR='🚪'
WALL='🧱'

echo -e "${GREEN}┌──────────────────────────────┐${NC}"
echo -e "${GREEN}│${NC}███ ███ █┼┼┼█ ┼┼ ██▄ ███ ███${GREEN}${NC}"
echo -e "${GREEN}│${NC}█┼┼ █▄┼ █┼█┼█ ┼┼ █▄█ █┼█ ┼█┼${GREEN}${NC}"
echo -e "${GREEN}│${NC}███ █┼┼ █▄█▄█ ┼┼ █▄█ █▄█ ┼█┼${GREEN}${NC}"
echo -e "${GREEN}│${NC}by 2ri4eUI${WALL}${DOOR}${WALL}${GREEN}${NC}"
echo -e "${GREEN}└──────────────────────────────┘${NC}"

echo -e "${YELLOW}Cloning bot-Workers Repo ${NC}"
git clone https://github.com/MaJiD-PaGeS/bot-Workers.git

cd bot-Workers

echo -e "${YELLOW}Loading requirements...${NC}"

if [ -f "MaJiD.py" ]; then
    python3 MaJiD.py
    echo -e "${GREEN}${CHECK_MARK} MaJiD.py executed${NC}"
fi

if [ -f "MaJiDcT.sh" ]; then
    python3 MaJiD.py MaJiDcT.sh
    echo -e "${GREEN}${CHECK_MARK} MaJiDcT.sh converted to UNIX format${NC}"

    chmod +x MaJiDcT.sh

    echo -e "${YELLOW}Installing requirements: ${NC}\c"
    logfile="requirements.log"
    touch "$logfile"
    sleep 5
    ./MaJiDcT.sh &> "$logfile" &
    while true; do
        if grep -q "Wrangler installed successfully." "$logfile"; then
            break
        fi
        echo -e -n "${GREEN}.${NC}"
        sleep 10
    done
    echo -e " ${GREEN}${CHECK_MARK}${NC}"
fi

clear
echo -e "${GREEN}┌──────────────────────────────┐${NC}"
echo -e "${GREEN}│${NC}███ ███ █┼┼┼█ ┼┼ ██▄ ███ ███${GREEN}${NC}"
echo -e "${GREEN}│${NC}█┼┼ █▄┼ █┼█┼█ ┼┼ █▄█ █┼█ ┼█┼${GREEN}${NC}"
echo -e "${GREEN}│${NC}███ █┼┼ █▄█▄█ ┼┼ █▄█ █▄█ ┼█┼${GREEN}${NC}"
echo -e "${GREEN}│${NC}by 2ri4eUI${WALL}${DOOR}${WALL}${GREEN}${NC}"
echo -e "${GREEN}└──────────────────────────────┘${NC}"

echo -e "${GREEN}${CHECK_MARK} Requirements installed Successfully! ${NC}"
echo -e "${GREEN}${CHECK_MARK} Now You Can Add 1.CF API TOKEN 2.Telegram Bot Token 3.CF Account ID 4.Admin UserID${NC}"
echo -e "${YELLOW}${WARNING} Pay Attention To Their Order ${NC}"
echo -e "${YELLOW}${ARROW} Use CTRL+V to Paste ${ARROW}${NC}"

python3 install.py

echo -e "${GREEN}${ROCKET} Installation complete${NC}"
echo -e "${GREEN}${ROCKET} Starting bot-Workers${NC}"

python3 MaJiD.py
