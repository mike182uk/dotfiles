fmt:
	@fd -d 2 -e .sh -e .zsh | while read -r src; do shfmt -w -l "$$src"; done

lint:
	@shellcheck $$( fd -d 2 -e .sh -e .zsh \
			-E "zsh/config.zsh" \
			-E "zsh/completion.zsh" \
			-E "git/completion.zsh" \
	)
