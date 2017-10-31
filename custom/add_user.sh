#!/bin/sh

useradd -p `mkpasswd 123` $1
mkdir /home/$1

cp -R /home/refs/* /home/$1

mkdir /home/$1/.jupyter
mkdir /home/$1/.jupyter/custom
cp /root/chat-mvp1/custom/custom.js /home/$1/.jupyter/custom/
chown -R $1 /home/$1