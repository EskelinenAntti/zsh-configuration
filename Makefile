.PHONY: all dependencies configuration

all: dependencies configuration

dependencies:
	brew bundle

configuration:
	stow . --target="${HOME}"
	@if [ ! -e "${HOME}/.zshrc" ]; then \
		cp ".zshrc" "${HOME}/.zshrc"; \
	fi

