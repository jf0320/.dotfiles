#!/bin/bash

#Shebang specifies the shell that the script runs in 

#This store the OS name in a variable
OS=`uname`

#checks if directory is linux or not
if [ $OS != "Linux" ]; then
	echo "This OS is not Linux" >> linuxsetup.log
	exit
fi
#checks if the .TRASH directory exists or not
if [ ! -d ~/.TRASH ]; then
#creates trash directory
	mkdir `/.TRASH
fi

#checks if .vimrc already exists or not
if [ -f ~/vimrc ]; then

	mv ~/.vimrc ~/.bup_vimrc

	echo "The old .vimrc has been renamed to .bup_vimrc">> linuxsetup.log
fi
#Overwrites home with etc/vimrc
cat etc/vimrc> ~/vimrc

echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc


