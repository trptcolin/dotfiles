bindkey -e
bindkey "^u" backward-kill-line

autoload -U select-word-style
select-word-style bash

stty start undef
stty stop undef
setopt noflowcontrol
