# Env
# Rust
. "$HOME/.cargo/env"
# NVIDIA HPC SDK
export PATH="/opt/nvidia/hpc_sdk/Linux_x86_64/26.3/compilers/bin/:$PATH"
# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:/home/compass/.dotnet/tools"
eval "$(pyenv init -)"
# Node version manager
source /usr/share/nvm/init-nvm.sh

# setopt
setopt AUTO_CD
setopt hist_ignore_dups

# History
export HISTFILE=~/.zsh_history
export SAVEHIST=10000


# bindkey
bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Add fpath
fpath=("~/.local/share/kde-builder/data/completions/zsh" "${fpath[@]}")

# completion
cdpath=(.. ~ ~/workspace)
autoload -Uz compinit
compinit -C
# regenerate compinit
# rm -f ~/.zcompdump && compinit
zstyle ':completion:*' menu select

# Prompt
eval "$(starship init zsh)"

# Plugins
eval "$(sheldon source)"
