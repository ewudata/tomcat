#!/bin/sh
# yum -y install nano
# yum -y install epel-release
# yum -y -q update

yum -y install tomcat tomcat-webapps tomcat-admin-webapps

systemctl disable firewalld
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config

echo "
## Colorize the ls output ##
alias ls='ls --color=auto'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias mkdir='mkdir -pv'
" >> /home/vagrant/.bash_profile

echo "bootstrap scirpt ends"