#!/bin/bash
###
# File: sign.sh
# Author: Leopold Meinel (leo@meinel.dev)
# -----
# Copyright (c) 2022 Leopold Meinel & contributors
# SPDX ID: GPL-3.0-or-later
# URL: https://www.gnu.org/licenses/gpl-3.0-standalone.html
# -----
###

project=$1
gpg -b ./target/debug/"$project"
gpg --verify ./target/debug/"$project".sig ./target/debug/"$project"
