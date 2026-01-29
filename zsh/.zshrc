export PATH=$(go env GOPATH)/bin:$PATH

eval "$(oh-my-posh init zsh --config $HOME/dotfiles/oh-my-posh/brando.omp.json)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/owner/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/owner/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/owner/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/owner/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/owner/.bun/_bun" ] && source "/Users/owner/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
