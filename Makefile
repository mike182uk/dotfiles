fmt:
	@find . -maxdepth 2 -name '*.sh' | while read -r src; do shfmt -w -l "$$src"; done

lint:
	@shellcheck */*.sh

dev_user=dotfilesdev
dev:
	@docker build --build-arg user=$(dev_user) -t dotfiles .
	@docker run -it --rm -v $(PWD):/home/$(dev_user)/.dotfiles dotfiles /bin/bash
