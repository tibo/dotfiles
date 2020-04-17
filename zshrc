export ZSH="/Users/tibo/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

. $HOME/Documents/Dotfiles/z/z.sh

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=$(/usr/libexec/java_home)
#export GRADLE_HOME=/Users/tibo/android/gradle
export ANT_HOME=/Users/tibo/android/apache-ant-1.10.6
export SWIG_3_HOME=/usr/local/opt/swig@3/
export ANDROID_HOME=/Users/tibo/Library/Android/sdk
export NDK_ROOT=/Users/tibo/Library/Android/sdk/ndk/20.0.5594570

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

. $HOME/Documents/Dotfiles/fzf.sh