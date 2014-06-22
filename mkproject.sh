#!/bin/bash

if [[ -z $HAKI_DIR ]]; then
	echo "HAKI_DIR environment variable missing";
	exit 1;
fi;

source "${HAKI_DIR}config.sh.template";

PROJECT=$1;
if [[ -z $PROJECT ]]; then
	echo "No projects specified."
	exit 1;
fi;

project_dir="${HAKI_DIR}projects/${PROJECT}/";
deploy_script="${project_dir}deploy.sh";
if [[ -f $deploy_script ]]; then
	echo "Project $PROJECT already exists!";
	exit 1;
fi;

mkdir -p $project_dir &&
echo "$DEFAULT_DEPLOY_SCRIPT_BODY" > $deploy_script &&
chmod +x $deploy_script;

exit 0;
