HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit && compinit
# End of lines added by compinstall

# plugins
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# aliases
source ~/.aliases

# loads zsh styling
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# env vars
export EDITOR=nvim
export LC_ALL=en_GB.UTF-8

source <(fzf --zsh)