#:title:        Divine Bash runcom: 00-frameworks
#:author:       Grove Pyree
#:email:        grayarea@protonmail.ch
#:revnumber:    1.0.0-RELEASE
#:revdate:      2019.06.30
#:revremark:    Release version
#:created_at:   2019.04.09

## Bash shell framework initialization

##
## Bash-it <https://github.com/Bash-it/bash-it>
##

## Assumes Bash-it is cloned to ~/.bash-it (with dash), and that entry script 
#. in its root is called bash_it.sh (with underscore), which is unlikely to 
#. change.
#
## Deployment bash-it.dpl.sh clones Bash-it in that exact fashion.
#

# Require that entry script is present for the entire configuration
if [ -f "$HOME/.bash-it/bash_it.sh" -a -r "$HOME/.bash-it/bash_it.sh" ]; then

  # Path to Bash-it installation
  export BASH_IT="$HOME/.bash-it"

  # Lock and Load a custom theme file.
  # Leave empty to disable theming.
  # location /.bash_it/themes/
  export BASH_IT_THEME='laidbare'

  # (Advanced): Change this to the name of your remote repo if you
  # cloned bash-it with a remote other than origin such as `bash-it`.
  # export BASH_IT_REMOTE='bash-it'

  # Your place for hosting Git repos. I use this for private repos.
  export GIT_HOSTING='git@git.domain.com'

  # Don't check mail when opening terminal.
  unset MAILCHECK

  # Change this to your console based IRC client of choice.
  export IRC_CLIENT='irssi'

  # Set this to the command you use for todo.txt-cli
  export TODO="t"

  # Set this to false to turn off version control status checking within the 
  # prompt for all themes
  export SCM_CHECK=false

  # Set Xterm/screen/Tmux title with only a short hostname.
  # Uncomment this (or set SHORT_HOSTNAME to something else),
  # Will otherwise fall back on $HOSTNAME.
  #export SHORT_HOSTNAME=$(hostname -s)

  # Set Xterm/screen/Tmux title with only a short username.
  # Uncomment this (or set SHORT_USER to something else),
  # Will otherwise fall back on $USER.
  #export SHORT_USER=${USER:0:8}

  # Set Xterm/screen/Tmux title with shortened command and directory.
  # Uncomment this to set.
  #export SHORT_TERM_LINE=true

  # Set vcprompt executable path for scm advance info in prompt (demula theme)
  # https://github.com/djl/vcprompt
  #export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

  # (Advanced): Uncomment this to make Bash-it reload itself automatically
  # after enabling or disabling aliases, plugins, and completions.
  # export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

  # Uncomment this to make Bash-it create alias reload.
  # export BASH_IT_RELOAD_LEGACY=1

  # Source config
  source "$BASH_IT/bash_it.sh"

fi