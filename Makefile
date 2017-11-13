.PHONY: install clean copy-conf clean-conf
GITST=$(shell git status -s)

clean: clean-conf

clean-conf:
	rm -f ~/.gitconfig
	rm -f ~/.vimrc
	rm -f ~/.screenrc
	rm -f ~/.inputrc
	rm -f ~/.bash_profile

copy-conf:
	cp .gitconfig ~/.
	cp .vimrc ~/.
	cp .screenrc ~/.
	cp .inputrc ~/.
	cp .bash_profile ~/

install: clean copy-conf
