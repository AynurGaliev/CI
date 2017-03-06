#!/bin/bash
SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_PATH"
cd "../.."

BRANCH_NAME=$1
LANE_NAME=$2
if [[ "$BRANCH_NAME" && "$LANE_NAME" ]]; then

    APP_NAME="CI"

    #saving current branch
    git name-rev --name-only HEAD
    LAST_BRANCH=$?

    #checkout branch
    git checkout $BRANCH_NAME
    git fetch origin $BRANCH_NAME

    # build and send new version to Crashlytics
    fastlane ios $LANE_NAME remove_local_tags:true

    #checkout to last work branch
    git checkout $LAST_BRANCH

else
    echo "Missing required parameters BRANCH_NAME and LANE_NAME"
    exit 1
fi
