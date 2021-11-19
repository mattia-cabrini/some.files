#!/bin/bash

curdir=$(pwd)
cd ~/.config/neomutt

if [ $# -eq 1 ]; then
    if [ -f "./users/$1.rc" ]; then
        echo "source ./users/$1.rc" > ./neomuttrc
        echo "source ./fixed.rc" >> ./neomuttrc
    else
        echo "User configuration file not found."
        exit 1
    fi
fi

if [ -f ./neomuttrc ]; then
    # -a is my choiche, you might as well specify the actual channel(s)
    mbsync -a
    neomutt
    mbsync -a
else
    echo "No configuration found! Try to specify a user."
fi

cd $curdir
