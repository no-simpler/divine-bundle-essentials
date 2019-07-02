#:title:        Divine zsh runcom: 01-config
#:author:       Grove Pyree
#:email:        grayarea@protonmail.ch
#:revnumber:    1.0.0-RELEASE
#:revdate:      2019.06.30
#:revremark:    Release version
#:created_at:   2019.04.09

## zsh shell configuration

##
## General configuration
##

# Enable extended glob
setopt extended_glob

# Auto-cd with directories of interest
setopt auto_cd

# These places will always be searched for folders to cd into
# Separate with space, e.g.: cdpath=($HOME/dir $HOME/src)
cdpath=($HOME/Developer)


##
## macOS-specific configuration
##

if [ "$OS_PKGMGR" = brew ]; then
  # Homebrew zsh-completions
  fpath=(/usr/local/share/zsh-completions $fpath)

  # Homebrew zsh-syntax-highlighting
  [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] \
    && source \
    /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # Homebrew zsh-autosuggestions
  [ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] \
    && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi