.PHONY: install clean copy-conf clean-conf
GITST=$(shell git status -s)

clean: clean-conf

clean-conf:
	@echo "Removing .gitconfig"
	@rm -f ~/.gitconfig

copy-conf:
	@echo "Copying .gitconfig"
	@cp .gitconfig ~/.

install: clean copy-conf
