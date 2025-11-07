#!/bin/bash

mkdir -p ~/.scrap

git clone https://github.com/Preclik02/scrap_game ~/.scrap

gcc ~/.scrap/scrap.c -o ~/.scrap/scrap -lcurl

if ! grep -q 'export PATH="$PATH:$HOME/.scrap"' ~/.bashrc; then
    echo 'export PATH="$PATH:$HOME/.scrap"' >> ~/.bashrc
fi

export PATH="$PATH:$HOME/.scrap"

echo "[+] Successfully installed . . ."
