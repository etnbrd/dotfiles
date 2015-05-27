fpath=($DOTFILES/functions $fpath)

autoload -U $DOTFILES/functions/*(:t)

setopt NO_LIST_BEEP
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

# Sublime text keybindings
bindkey ';5D' backward-word
bindkey ';3D' backward-word
bindkey ';5C' forward-word # In sublime, there is a slight difference between alt and ctrl.
bindkey ';3C' forward-word
bindkey "$terminfo[kend]" end-of-line # Fn + right
bindkey "$terminfo[khome]" beginning-of-line # Fn + left

# TODO
# shift-arrow() {
#   ((REGION_ACTIVE)) || zle set-mark-command
#   zle $1
# }
# shift-left() shift-arrow backward-char
# shift-right() shift-arrow forward-char

# zle -N shift-left
# zle -N shift-right


# bindkey ';2D' shift-left
# bindkey ';2C' shift-right