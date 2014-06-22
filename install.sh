#!/bin/bash

if [[ ! -f "deploy.sh" ]]; then
	echo "Not in haki directory! cd to haki directory and try again!";
	exit 1;
fi;

cp config.sh.template config.sh;

mkdir -p "${HOME}/bin"
ln -s "${HOME}/bin/haki" "${PWD}/deploy.sh"
ln -s "${HOME}/bin/mkhakiproj" "${PWD}/mkproject.sh"

echo "Create an environment variable HAKI_DIR!";
