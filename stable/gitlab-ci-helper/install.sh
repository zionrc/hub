#!/usr/bin/env bash
set -e

bash=bash

if [[ $EUID -ne 0 ]]; then
    bash="sudo ${bash}"
fi

curl -sLo- https://raw.githubusercontent.com/javanile/gitlab-ci-helper/master/setup.sh | PREFIX=/usr/local ${bash} -
