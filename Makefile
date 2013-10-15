UPDATE=apt-get update -y
UPGRADE=apt-get upgrade -y
INSTALL=apt-get install -y

CP=cp -rf
MV=mv -rf
RM=rm -rf
CHOWN=chown -R $$SUDO_USER

.PHONY: help all update upgrade core compression programming avr gui libs own

help:
	@echo "make all"
	@echo "make help"
	@echo "make update"
	@echo "make upgrade"
	@echo "make core"
	@echo "make programming"
	@echo "make compression"
	@echo "make avr"
	@echo "make gui"

own:
	$(CP) wallpaper ~/wallpaper
	$(CHOWN) ~/wallpaper
	$(CP) xkcd ~/xkcd
	$(CHOWN) ~/xkcd
	$(CP) programming ~/programming
	$(CHOWN) ~/programming

all:
	make update
	make core
	make compression
	make programming
	make libs
	make avr
	make gui
	make upgrade

update:
	$(UPDATE)

upgrade:
	$(UPGRADE)

core: compression
	$(CP) .bashrc ~/.bashrc
	$(CHOWN) ~/.bashrc
	$(CP) .ssh ~/.ssh
	$(CHOWN) ~/.ssh
	$(INSTALL) tree
#	$(INSTALL) parted
#	$(INSTALL) pwgen
	$(INSTALL) alien
	$(INSTALL) dpkg
	$(INSTALL) kdesudo
	$(INSTALL) kate
	$(CP) .katerc ~/.kde/share/config/katerc
	$(INSTALL) kcalc
	$(INSTALL) firefox
	$(CP) .firefox/prefs.js ~/.mozilla/firefox/*/prefs.js
	$(INSTALL) gdebi
	$(INSTALL) gparted
	$(INSTALL) okular
#	$(INSTALL) evince
#	$(INSTALL) sudo
#	visudo
#	$(INSTALL) joe
#	$(INSTALL) ufw
#	ufw allow 22/tcp
#	ufw allow 80/tcp
#	ufw allow 3306/tcp
#	ufw allow 51337/tcp
#	ufw enable
	$(INSTALL) vim
	$(CP) .vim ~/.vim
	$(CHOWN) ~/.vim
	$(CP) .vimrc ~/.vimrc
	$(CHOWN) ~/.vimrc
	$(INSTALL) yakuake
	$(CP) .plasma-desktop-appletsrc ~/.kde/share/config/plasma-desktop-appletsrc

compression:
	$(INSTALL) p7zip-full
	$(INSTALL) tar
	$(INSTALL) gzip
	$(INSTALL) bzip2
	$(INSTALL) rar
	$(INSTALL) unrar
	$(INSTALL) unp
	$(INSTALL) ark

programming:
	$(INSTALL) gcc
	$(INSTALL) g++
	$(INSTALL) make
	$(INSTALL) gdb
	$(INSTALL) ddd
	$(INSTALL) doxygen
	$(INSTALL) valgrind
	$(INSTALL) strace
	$(INSTALL) manpages manpages-dev manpages-posix manpages-posix-dev
	$(INSTALL) kcachegrind
#	$(INSTALL) openjdk-6-jdk
#	$(INSTALL) eclipse
#	$(INSTALL) codeblocks
#	$(INSTALL) netbeans
	$(INSTALL) okteta
	$(INSTALL) kompare
	$(INSTALL) git-core git-gui git-doc
	git config --global user.name "Daniel Tkocz"
	git config --global user.email daniel.tkocz@gmx.de
	git config --global core.editor vim
	git config --global merge.tool vimdiff
	git config --global alias.ci commit
	git config --global alias.st status
	git config --global alias.co checkout
#	ssh-keygen -t rsa -b 4096 -C "daniel.tkocz@gmx.de"
	$(INSTALL) gitk
#	$(INSTALL) bvi
	$(INSTALL) kile
#	$(INSTALL) qemu
#	$(INSTALL) uck
	$(INSTALL) openssh-server
	$(INSTALL) openssh-client
	$(INSTALL) sshfs
#	$(INSTALL) zsh
	$(INSTALL) umbrello
	$(INSTALL) trac trac-git

avr:
	$(INSTALL) avra
	$(INSTALL) avr-libc
	$(INSTALL) gcc-avr
	$(INSTALL) avrdude
	$(INSTALL) binutils-avr
#	$(INSTALL) simulavr
#	$(INSTALL) gdb-avr

gui:
	$(INSTALL) libreoffice
	$(INSTALL) ksnapshot
	$(INSTALL) inkscape
	$(INSTALL) gimp
	$(INSTALL) thunderbird
	$(INSTALL) amarok
	$(INSTALL) audacity
	$(INSTALL) libxine1-bin libxvidcore4 libxine1-plugins libquicktime1 flashplugin-installer
	$(INSTALL) filezilla
	$(INSTALL) ktorrent
#	$(INSTALL) k9copy
	$(INSTALL) vlc vlc-data vlc-plugin-pulse vlc-plugin-ggi vlc-plugin-jack vlc-plugin-sdl vlc-plugin-svgalib mozilla-plugin-vlc libxvidcore4 libfaad2 libfaac0
#	$(INSTALL) k3b
#	$(INSTALL) kget
#	$(INSTALL) kontact
#	$(INSTALL) ktimer
#	$(INSTALL) kalarm
#	$(INSTALL) quassel
#	$(INSTALL) pidgin
#	$(INSTALL) gobby
#	$(INSTALL) qalculate
#	$(INSTALL) kalgebra
#	$(INSTALL) gnuplot
#	$(INSTALL) kmplot
#	$(INSTALL) cantor

libs:
#	$(INSTALL) libcrypto++-dev
#	$(INSTALL) qt4-qmake libqt4-assistant libqt4-core libqt4-dbg libqt4-dev libqt4-gui libqt4-network libqt4-opengl libqt4-opengl-dev libqt4-sql libqt4-sql-mysql qt4-doc qtcreator
#	$(INSTALL) libgtk-3-dev devhelp libgtk-3-doc glade
