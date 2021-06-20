# Restart by calling the command
# source ./.bash_profile

# Golang Config
export GOPATH=$HOME/Documents/golang
export PATH=$PATH:$GOPATH/bin

# Setup Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Shortcuts
export RATE=$GOPATH/src/github.com/rate-engineering

# Python unknown locale issues
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Setup path for elixir
export PATH="$PATH:/path/to/elixir/bin"
export PATH="$HOME/.yarn/bin:$PATH"

# Setup Tree structure
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

export PATH=$PATH:~/.nexustools
export GPG_TTY=$(tty)
source "$HOME/.cargo/env"

# Setup path for postgres.
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
