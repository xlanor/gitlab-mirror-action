FROM alpine:latest

LABEL "com.github.actions.name"="Mirror to GitLab"
LABEL "com.github.actions.description"="Automate mirroring of git commits to GitLab"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/xlanor/gitlab-mirror-action.git"
LABEL "homepage"="https://github.com/xlanor/gitlab-mirror-action.git"
LABEL "maintainer"="Jing Kai Tan <contact@jingk.ai"

COPY mirror.sh /mirror.sh

ENTRYPOINT ["/mirror.sh"]