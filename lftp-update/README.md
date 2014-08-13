Updateapp
==========

Simple shell script to use lftp application to automatically copy all updated files to your web server. It automatically enters all of the subdirectories and uploads changed files as neccessary. 


How to use?
--------------

At first it is needed to setup FTP host, user name, password, local source and FTP target directory.

`HOST="HOSTNAME.tld"`
`USERNAME="USERNAME"`
`PASSWD="PASSWORD"`
`TARGET1="/application"`
`SOURCE1="/home/user/application"`

Running script is easy. Just type "sh updateapp.sh" 

Requirements
--------------

To use this script, it is needed that lftp application is installed on your server.

On debian-based systems it is done like this:

apt-get install lftp

On OSX you have to use some kind of package manager, such as http://www.macports.org