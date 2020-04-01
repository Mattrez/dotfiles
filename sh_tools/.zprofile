eval $(ssh-agent)

export EDITOR="/usr/bin/emacs"
export BROWSER="/usr/bin/chromium-vaapi"

PATH="$HOME/.scripts":$PATH

export GOPATH="$HOME/code/go"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/var/lib/snapd/snap/bin:$PATH"
