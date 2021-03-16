export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

. $HOME/.z.sh

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin:$ANT_HOME/bin:$HOME/bin"

git() {
    if [[ "$1" = "add" ]] || [[ "$1" = "stage" ]]; then
        if [[ "$2" = "." ]]; then
            printf "'git %s .' is currently disabled by your Git wrapper.\n" "$1";
        else
            command git "$@";
        fi
    else
        command git "$@";
    fi;
}

export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"

. $HOME/.fzf.sh
