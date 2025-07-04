autoload -Uz vcs_info
# precmd() { vcs_info }
#
# zstyle ':vcs_info:git:*' formats '%b '
#
# setopt PROMPT_SUBST

zstyle ':vcs_info:git*' formats " %F{blue}%b%f %m%u%c %a"
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%F{green}✚%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'

precmd() {
    vcs_info
    print -P '%B%~%b ${vcs_info_msg_0_}'
}

# PROMPT='%F{green}%B%(!.#.> )%b'
PROMPT='%F{blue}%1d%f %F{red}${vcs_info_msg_0_}%F{green}> '
RPROMPT="%F{grey}%D{%L:%M:%S}"
