
# add PATH for homebrew
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$PATH"

# PATH for Postgres.app psql CLI
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

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

# prompt variables
# 
# %n equivalent to $USERNAME
#
# %d the current directory ($PWD)
#
# %m the hostname up to the first dot
#
# %~ as %d but if the current working directory starts with $HOME,
#    that part is replaced by a ‘~’

export PROMPT="%n@%m:%~ %# "

