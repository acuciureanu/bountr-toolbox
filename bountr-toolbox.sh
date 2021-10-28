#!/bin/bash

__snap_packages=(
	amass
	dalfox
)

__go_modules=(
	github.com/tomnomnom/anew@latest
	github.com/tomnomnom/assetfinder@latest
	github.com/dwisiswant0/cf-check@latest
	github.com/jaeles-project/gospider@latest
	github.com/hakluke/hakrawler@latest
	github.com/hakluke/hakrevdns@latest
	github.com/hakluke/haktldextract@latest
	github.com/hakluke/haklistgen@latest
	github.com/projectdiscovery/httpx/cmd/httpx@latest
	github.com/jaeles-project/jaeles@latest
	github.com/hiddengearz/jsubfinder@latest
	github.com/Emoe/kxss@latest
	github.com/j3ssie/metabigor@latest
	github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
	github.com/tomnomnom/qsreplace@latest
	github.com/tomnomnom/waybackurls@latest
	github.com/ffuf/ffuf@latest
	github.com/lc/gau@latest
	github.com/tomnomnom/gf@latest
)

__header="
  _                       _
 | |                     | |
 | |__   ___  _   _ _ __ | |_ _ __
 | '_ \ / _ \| | | | '_ \| __| '__|
 | |_) | (_) | |_| | | | | |_| |
 |_.__/ \___/ \__,_|_| |_|\__|_|
"

echo "$__header"

install_essentials() {
	sudo -- bash -c 'apt -qq update; apt install snapd python3-pip -y'
}

install_snap_packages() {
        for snap_package in ${__snap_packages[@]}; do
                echo "Installing span package $snap_package"
                snap install $snap_package >/dev/null
        done
}

install_go_modules() {
	for go_module in ${__go_modules[@]}; do
		echo "Installing go module $go_module"
		go install $go_module >/dev/null
	done
}


install_essentials
install_snap_packages
install_go_modules

echo "Done!"
