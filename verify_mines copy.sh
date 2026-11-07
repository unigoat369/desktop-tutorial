#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "=== Starting Mine Installation Verification ==="

if [ -d "./mines" ] || [ -d "/etc/mines" ]; then
    echo -e "[ ${GREEN}OK${NC} ] Mine installation directory found."
else
    echo -e "[ ${RED}FAIL${NC} ] Mine installation directory missing."
fi

if [ -x "$(command -v mine-service)" ] || [ -f "./mine-service" ]; then
    echo -e "[ ${GREEN}OK${NC} ] Mine service executable found."
else
    echo -e "[ ${RED}FAIL${NC} ] Mine binary/service is completely missing."
fi

if [ -f "config.yaml" ] || [ -f ".env" ]; then
    echo -e "[ ${GREEN}OK${NC} ] Configuration file detected."
else
    echo -e "[ ${RED}FAIL${NC} ] No configuration file found."
fi

echo "==============================================="
