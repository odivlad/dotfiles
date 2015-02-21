.PHONY: install clean copy-conf clean-conf
GITST=$(shell git status -s)

clean: clean-conf

clean-conf:
	@echo "Removing .gitconfig"
	@rm -f ~/.gitconfig
	@echo "Removing .vimrc"
	@rm -f ~/.vimrc
	@echo "Removing .screenrc"
	@rm -f ~/.screenrc

copy-conf:
	@echo "Copying .gitconfig"
	@cp .gitconfig ~/.
	@echo "Copying .vimrc"
	@cp .vimrc ~/.
	@echo "Copying .screenrc"
	@cp .screenrc ~/.

install: clean copy-conf
