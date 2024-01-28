# Format the vcs_info_msg_0_ variable
zstyle ":vcs_info:git:*" formats " %F{magenta}git:(%F{red}%b%F{magenta})"

# prompt
setopt PROMPT_SUBST
PROMPT='%F{green}➜  %F{blue}%2~${vcs_info_msg_0_} %(?.%F{green}✔.%F{red}✘)%F{default} '

# alias
alias edit-src="vim ~/.zshrc"
alias source-it="source ~/.zshrc"
alias vim="nvim"
alias ls="lsd -la"
alias cat="bat"
alias tree="tree -I node_modules"
alias vim-config="nvim -c 'cd ~/.config/nvim' ~/.config/nvim"
alias python="python3.12"

# auto completion
autoload -Uz compinit && compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixes zstyle ':completion:*' expand prefix suffix

# bun js
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# go
export GOPATH="/Users/marcusprice/code/go"
export GOBIN="/Users/marcusprice/code/go/bin"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

if [ -f ~/.zshrc_secret ]; then
    source ~/.zshrc_secret
else
    print "FYI: ~/.zsh_secret not found."
fi
