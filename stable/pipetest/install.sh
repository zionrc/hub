#!/usr/bin/env bash
set -e

curl=curl
chmod=chmod

if [[ $EUID -ne 0 ]]; then
    curl="sudo ${curl}"
    chmod="sudo ${chmod}"
fi

${curl} -sL https://raw.githubusercontent.com/javanile/pipetest/master/pipetest.sh -o /usr/local/bin/pipetest
${chmod} +x /usr/local/bin/pipetest

pipetest --version
