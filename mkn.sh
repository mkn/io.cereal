#!/usr/bin/env bash

set -e

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

VERSION="master"
DIR="cereal"
GIT_URL="https://github.com/USCiLab/cereal"

HAS=1
[ ! -d "$CWD/$DIR" ] && HAS=0 && git clone --depth 1 $GIT_URL -b $VERSION $DIR --recursive

pushd $DIR
[ $HAS -eq 1 ] && git pull --recurse-submodules origin $VERSION
popd
