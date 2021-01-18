#!/usr/bin/env bash
set -e

bash=bash

if [[ $EUID -ne 0 ]]; then
    bash="sudo ${bash}"
fi

curl -sLo- https://raw.githubusercontent.com/javanile/gitlab-dist/master/setup.sh | ${bash} -
