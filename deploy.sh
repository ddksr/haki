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

PROJECT_DIR="${HAKI_DIR}projects/${PROJECT}/";

deploy_script="${PROJECT_DIR}deploy.sh";
if [[ ! -f $deploy_script ]]; then
	echo "Project $PROJECT does not exist."
	exit 1;
fi;

shift;

. $deploy_script $@;
status=$?;


exit $status;
