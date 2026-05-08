. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:/home/compass/.dotnet/tools"
eval "$(pyenv init -)"

setopt AUTO_CD
setopt hist_ignore_dups
cdpath=(.. ~ ~/workspace)

bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line


export HISTFILE=~/.zsh_history
export SAVEHIST=10000

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source /usr/share/nvm/init-nvm.sh

eval "$(starship init zsh)"

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

export PATH="/opt/nvidia/hpc_sdk/Linux_x86_64/26.3/compilers/bin/:$PATH"
