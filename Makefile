fmt:
	@fd -d 2 -e .sh -e .zsh -x shfmt -w -l "{}"

lint:
	@shellcheck $$( fd -d 2 -e .sh -e .zsh \
			-E "zsh/config.zsh" \
			-E "zsh/completion.zsh" \
			-E "git/completion.zsh" \
			-E "zsh/prompt.zsh" \
	)

update_antibody:
	@antibody update

update_tmux:
	@$$HOME/.tmux/plugins/tpm/bin/update_plugins all
