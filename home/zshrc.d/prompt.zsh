autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{28}•%f'
zstyle ':vcs_info:*' unstagedstr '%F{11}•%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' [%b%c%u]'
    } else {
        zstyle ':vcs_info:*' formats ' [%b%c%u%F{blue}•%f]'
    }

    vcs_info
}

setopt prompt_subst
PROMPT='[%n:%c%{$reset_color%}]${vcs_info_msg_0_} %(?/%F{blue}/%F{red})% %(!.#.$) %{$reset_color%}'
