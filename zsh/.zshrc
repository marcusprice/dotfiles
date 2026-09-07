# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marcusprice/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#alt-L and alt-R word toggle
bindkey -M viins '^[[1;3D' backward-word
bindkey -M viins '^[[1;3C' forward-word

# prompt
autoload -Uz vcs_info
precmd() {
    local exit_code=$?
    vcs_info

    if (( exit_code == 0 )); then
	PROMPT_STATUS='%F{green}·%f'
    else
        PROMPT_STATUS='%F{red}✘%f'
    fi
}

zstyle ':vcs_info:git:*' formats '%F{yellow}%b%f'
zstyle ':vcs_info:git:*' actionformats '%F{yellow}%b|%a%f'

setopt PROMPT_SUBST

zstyle ':vcs_info:git:*' formats ' %F{yellow}%b%f'
PROMPT='%F{blue}%2~%f${vcs_info_msg_0_} ${PROMPT_STATUS} '

# aliases
alias ls='lsd -la --color=auto'
alias vim='nvim'
alias source-it='source ~/.zshrc'
