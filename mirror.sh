#!/usr/bin/env sh
set -eu

/setup-ssh.sh

export GIT_SSH_COMMAND="ssh -v -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -l $INPUT_SSH_USERNAME"

git remote add mirror "$INPUT_TARGET_REPO_URL"

# load branchs
git fetch

# NOTE: use $INPUT_TARGET_BRANCH_NAME
git push mirror master

# NOTE: Since `post` execution is not supported for local action from './' for now, we need to
# run the command by hand.
/cleanup.sh mirror
