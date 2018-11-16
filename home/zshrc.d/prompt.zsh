autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}•%f'
zstyle ':vcs_info:*' unstagedstr '%F{1}•%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' formats ' [%F{2}%b%f%c%u%f]'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='%F{3}•%f'
    fi
}

precmd () { vcs_info }

setopt prompt_subst
PROMPT='[%F{green}%n:%F{blue}%c%{$reset_color%}]${vcs_info_msg_0_} %(?/%F{blue}/%F{red})% %(!.#.$) %{$reset_color%}'
