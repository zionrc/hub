#!/usr/bin/env bash
set -e

BASH=bash

if [[ $EUID -ne 0 ]]; then
    BASH="sudo ${BASH}"
fi

curl -sLo- http://get.bpkg.sh | PREFIX=/usr/local ${BASH} -
