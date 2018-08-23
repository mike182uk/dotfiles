fmt:
	@find -E . -type f -maxdepth 2 -regex '.*\.(z)?sh' | while read -r src; do shfmt -w -l "$$src"; done

lint:
	@shellcheck $$( \
		find -E . -type f -maxdepth 2 -regex '.*\.(z)?sh' \
			-not -path "./zsh/config.zsh" \
			-not -path "./git/completion.zsh" \
	)
