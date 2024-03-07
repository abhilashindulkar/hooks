#!/bin/sh

# This hook will make sure that the commit message contains a JIRA issue.

# Enable this hook by copying this file as commit-msg to .git/hooks/ directory.
# Make sure to add execution permissions to the file by running chmod +x .git/hooks/commit-msg

export MESSAGE=$(<$1)
export JIRA_STORY='JIRA+-[0-9]'

if ! [[ ! $MESSAGE =~ $JIRA_STORY ]]; then
    echo "ERROR: Rejecting the Push. Please add JIRA number in the commit message. Eg: JIRA-123 - initial commit."
    exit 1
fi
