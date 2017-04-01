#!/usr/bin/env sh

SERVER='davidgengenbach.de'
REMOTE_DIR='/sites/davidgengenbach/'
LOCAL_DIR='site'

lftp  -e "set ftp:ssl-allow no;" davidgengenbach.de <<EOF
    lcd $LOCAL_DIR
    cd $REMOTE_DIR
    mirror -R
    exit
EOF