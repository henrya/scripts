#!/bin/sh

## host name, user name and password
HOST="HOSTNAME.tld"
USERNAME="USERNAME"
PASSWD="PASSWORD"

## target directory and source directory
TARGET1="/application"
SOURCE1="/home/user/application"

lftp -c "
set ftp:list-options -a;
set ftp:passive-mode yes;
set ftp:ssl-allow false;
set net:max-retries 60;
set net:timeout 14m;
set xfer:log yes;
set color:use-color yes;
set cmd:move-background no;
set cmd:save-cwd-history no;
set cmd:save-rl-history no;
set xfer:log no;
set ftp:sync-mode off;
open $HOST;
user $USERNAME $PASSWD;
lcd $SOURCE1;
mirror --reverse --delete --only-newer --verbose $SOURCE1 $TARGET1;
bye;"