
# add PATH for homebrew
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$PATH"

# source chruby and auto-switching
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# Aliases
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"

# start completion
autoload -U compinit
compinit

# prompt
setopt prompt_subst

# source git ps1, homebrew symlink
# TODO: check file exists, use osx version first 
source /usr/local/etc/bash_completion.d/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true


# prompt variables:
# from http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
# %n equivalent to $USERNAME
# %d the current directory ($PWD)
# %m the hostname up to the first dot
# %~ as %d but if the current working directory starts with $HOME,
#    that part is replaced by a ‘~’

# from git-prompt.sh:
# __git_ps1 requires 2 or 3 arguments when called from PROMPT_COMMAND (pc)
# in that case it _sets_ PS1. The arguments are parts of a PS1 string.
# when two arguments are given, the first is prepended and the second appended
# to the state string when assigned to PS1. The optional third parameter will be
# used as printf format string to further customize the output of the git-status
# string.
# In this mode you can request colored hints using GIT_PS1_SHOWCOLORHINTS=true
precmd () { __git_ps1 "%n@%m:%~" " %# " }

# keep prompt as failsafe
export PROMPT="%n@%m:%~ %# "

