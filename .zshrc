# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
  
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][    :lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
  
# init zsh completion system (any completion config
# commands need to be added before this line)
autoload -Uz compinit && compinit

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
# tree branch unicode char: \U1F33F
# git branch unicode char: \UE0A0
zstyle ':vcs_info:git:*' formats '%F{255}on %F{#83c092}%b '$'\U1F33F'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{cyan}%2 ${vcs_info_msg_0_} %F{magenta} >> %F{white}'

# aliases
alias /='lsd -alh'
alias ls='lsd -alh'
alias cat='bat'
alias tree='tree -I node_modules -L 5'
alias mv='mv -iv'
alias cp='cp -riv'
alias vim='nvim'

PROMPT='%F{#7fbbb3}%n %F{255}in %F{#e67e80}%2~ ${vcs_info_msg_0_}'$'\n''%F{#ffffff}-> '
neofetch

# environment / path
export GOBIN=~/code/go/bin
export GOPATH=~/code/go
export PATH=$PATH:$GOBIN

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# makes autosuggestion readable
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

