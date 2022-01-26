#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'  # No Color

echo -e "${RED}Setting up git \n${NC}"
echo -e "${RED}Executing command: git config --global user.name "vernonranis" \n${NC}" && git config --global user.name "vernonranis"
echo -e "${RED}Executing command: git config --global user.email "vernonranis@gmail.com" \n${NC}" && git config --global user.email "vernonranis@gmail.com"
echo -e "${RED}Executing command: git config --global credential.helper cache \n${NC}" && git config --global credential.helper cache

echo -e "${RED}Installing Necessary Packages \n${NC}"

echo -e "${RED}Installing Python \n${NC}"
sudo dnf install python39 -y

echo -e "${RED}Installing Postgres \n${NC}"
sudo dnf install postgresql-server -y

echo -e "${RED}Installing ViM \n${NC}"
sudo dnf install vim-enhanced -y
