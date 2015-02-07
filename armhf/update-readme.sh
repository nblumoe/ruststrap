#!/bin/bash

# I run this in Raspbian chroot with the following command:
#
# $ env -i \
#     HOME=/root \
#     PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
#     SHELL=/bin/bash \
#     TERM=$TERM \
#     chroot /chroot/raspbian/rust /ruststrap/armhf/update-readme.sh

set -x
set -e

: ${DROPBOX:=dropbox_uploader.sh}

$DROPBOX -p upload /ruststrap/DO_NOT_README.md README!.txt
