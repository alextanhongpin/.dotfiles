# Restart by calling the command
# source ./.bash_profile

# Golang Config
export GOPATH=$HOME/Documents/golang
export PATH=$PATH:$GOPATH/bin

# Shortcuts
export RATE=$GOPATH/src/github.com/rate-engineering
export GO=$GOPATH/src/github.com/alextanhongpin

# Python unknown locale issues
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Setup Tree structure
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

source "$HOME/.cargo/env"

# Setup path for postgres.
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

alias vim=nvim
