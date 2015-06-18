.PHONY: install clean copy-conf clean-conf
GITST=$(shell git status -s)

clean: clean-conf

clean-conf:
	rm -f ~/.gitconfig
	rm -f ~/.vimrc
	rm -f ~/.screenrc

copy-conf:
	cp .gitconfig ~/.
	cp .vimrc ~/.
	cp .screenrc ~/.

install: clean copy-conf
