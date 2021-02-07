#!/bin/sh

# All variables need to be set.
set -u

sh -c "git config --global credential.helper cache"
sh -c "git config --global credential.helper 'cache --timeout=3600'"
sh -c "git config --global credential.username $GITLAB_USERNAME"
sh -c "git config --global user.password '$GITLAB_PASSWORD'"
sh -c "git clone https://github.com/$GITHUB_REPOSITORY.git --mirror"
cd $GITHUB_REPOSITORY
sh -c "git remote add gitlab $GITLAB_URL/$GITLAB_REPO.git>"
sh -c "git push gitlab --mirror"