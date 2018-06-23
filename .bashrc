# Pro tip: you should never echo output to the screen in a ~/.bashrc file

git_completion=`brew --prefix git`/etc/bash_completion.d/git-completion.bash
if [ -f $git_completion ] ; then source $git_completion; fi

source `brew --prefix git`/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS='1'
export GIT_PS1_SHOWDIRTYSTATE='1'
export GIT_PS1_SHOWUPSTREAM='auto'
export PROMPT_COMMAND='__git_ps1 "\[\e[0;35m\]\w\[\e[0m\]" "\\\$ "'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

export PATH=/usr/local/go/bin:/usr/local/bin:$PATH
export EDITOR=vim
export GEM_OPEN_EDITOR=mvim
export GEM_EDITOR=mvim
export BUNDLER_EDITOR=mvim
# crystal spec
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

alias ber="bundle exec rake"
alias got="go test ./..."

export GOPATH=$HOME
export PATH=$PATH:~/bin

# brew install bash
# brew install bash-completion
export CDPATH=".:~:~/src:~/src/github.com/mperham:~/src/github.com/contribsys"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
