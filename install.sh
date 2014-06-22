#!/bin/bash

if [[ ! -f "deploy.sh" ]]; then
	echo "Not in haki directory! cd to haki directory and try again!";
	exit 1;
fi;

cp config.sh.template config.sh;

mkdir -p "${HOME}/bin"
ln -s "${PWD}/deploy.sh" "${HOME}/bin/haki"
ln -s "${PWD}/mkproject.sh" "${HOME}/bin/mkhakiproj"

echo "Create an environment variable HAKI_DIR!";
