.PHONY: install clean copy-conf clean-conf
GITST=$(shell git status -s)

clean: clean-conf

clean-conf:
	@echo "Removing .gitconfig"
	@rm -f ~/.gitconfig
	@echo "Removing .vimrc"
	@rm -f ~/.vimrc

copy-conf:
	@echo "Copying .gitconfig"
	@cp .gitconfig ~/.
	@echo "Copying .vimrc"
	@cp .vimrc ~/.

install: clean copy-conf
