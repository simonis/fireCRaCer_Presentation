#!/bin/bash

MYPATH=$(dirname $(realpath -s $0))

XDG_CONFIG_HOME=$MYPATH/.config_xdg xfce4-terminal --maximize --hide-menubar --disable-server -T "Firecracker 1" -e "$MYPATH/create_demo_tab.sh firecracker1" --tab -T "Firecracker 2" -e "$MYPATH/create_demo_tab.sh firecracker2" --tab -T "CRaC" -e "$MYPATH/create_demo_tab.sh crac" --tab -T "FireCRaCer" -e "$MYPATH/create_demo_tab.sh firecracer" --tab -T "FireCRaCer-clone" -e "$MYPATH/create_demo_tab.sh firecracerclone" --tab -T "FireCRaCer-cmd" -e "$MYPATH/create_demo_tab.sh firecracercmd" --tab -T "Uffd" -e "$MYPATH/create_demo_tab.sh uffd" &
