#:title:        Divine Bash runcom: 01-config
#:author:       Grove Pyree
#:email:        grayarea@protonmail.ch
#:revnumber:    1.0.0-RELEASE
#:revdate:      2019.06.30
#:revremark:    Release version
#:created_at:   2019.04.09

## Bash shell configuration

##
## General configuration
##

# Disable mail checks:
shopt -u mailwarn
unset MAILCHECK


##
## macOS-specific configuration
##

if [ "$OS_PKGMGR" = brew ]; then
  # Homebrew bash_completion
  [ -f /usr/local/etc/bash_completion ] \
    && source /usr/local/etc/bash_completion
fi


##
## Linux-specific configuration
##

if [ "$OS_FAMILY" = linux ]; then
  # bash_completion
  if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
      source /etc/bash_completion
  fi
fi