#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'  # No Color

echo -e "${RED}Installing Necessary Packages \n${NC}"

sudo dnf install python39 postgresql-server vim-enhanced  -y


