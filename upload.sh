#!/usr/bin/env sh

SERVER='davidgengenbach.de'
REMOTE_DIR='/sites/davidgengenbach/yes'
LOCAL_DIR='site'

ncftp $SERVER <<EOF
    cd $REMOTE_DIR
    lcd $LOCAL_DIR
    mput -R *
    exit
EOF