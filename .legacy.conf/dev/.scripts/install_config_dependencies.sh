#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
    echo 'Usage: ./install_config_dependencies.sh

This script automatically my dotfiles dependencies/most used programs.

'
    exit
fi

cd "$(dirname "$0")"

local mistake='a'

install_pfetch() {
	if [[ ! -x $(command -v pfetch) ]]; then
		echo 'pfetch is not installed. Installing...'
		git clone git@github.com:dylanaraps/pfetch.git
		chmod +x pfetch/pfetch
		sudo mv pfetch/pfetch /usr/bin/pfetch
		rm -rf pfetch
	else
		echo 'pfetch is installed!'
	fi
}

main() {
	echo 'Installing dependencies...'
	install_pfetch
}

main "$@"

