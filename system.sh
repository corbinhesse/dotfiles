#!/bin/bash
#
# macOS
#

install () {
    if [ "$(uname -s)" "==" "Darwin" ]; then
        sh macos/defaults.sh
    fi
}

install
