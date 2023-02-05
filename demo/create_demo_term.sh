#!/bin/bash

MYPATH=$(dirname $(realpath -s $0))

XDG_CONFIG_HOME=$MYPATH/.config_xdg xfce4-terminal --maximize --hide-menubar --disable-server --active-tab -T "Firecracker 1" -e "$MYPATH/create_demo_tab.sh firecracker1" --tab -T "Firecracker 2" -e "$MYPATH/create_demo_tab.sh firecracker2" --tab -T "CRaC 1" -e "$MYPATH/create_demo_tab.sh crac1" --tab -T "CRaC 2" -e "$MYPATH/create_demo_tab.sh crac2" --tab -T "FireCRaCer" -e "$MYPATH/create_demo_tab.sh firecracer" --tab -T "FireCRaCer-cmd" -e "$MYPATH/create_demo_tab.sh firecracercmd" --tab -T "FireCRaCer-clone" -e "$MYPATH/create_demo_tab.sh firecracerclone" --tab -T "Uffd" -e "$MYPATH/create_demo_tab.sh uffd" --tab -T "CRIU 1" -e "$MYPATH/create_demo_tab.sh criu1" --tab -T "CRIU 2" -e "$MYPATH/create_demo_tab.sh criu2" &
