#!/bin/bash

info "bat"

symlink "config" "config" "config/bat"
symlink "material.tmTheme" "material.tmTheme" "config/bat/themes"

eval "bat cache --build"
