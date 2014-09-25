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

export PATH=/usr/local/bin:$PATH
export EDITOR=vim
export GEM_OPEN_EDITOR=mvim
export GEM_EDITOR=mvim
export BUNDLER_EDITOR=mvim
export BETTER_ERRORS_EDITOR=mvim
export PRY_ENABLED=1

# sensible GC tuning
#export RUBY_GC_MALLOC_LIMIT=59000000
#export RUBY_GC_HEAP_INIT_SLOTS=600000
#export RUBY_HEAP_MIN_SLOTS=600000
#export RUBY_HEAP_FREE_MIN=100000

alias ber="bundle exec rake"
alias got="go test ./..."

export GOPATH=$HOME
export GOROOT=`go env GOROOT`
export PATH=$PATH:$GOROOT/bin:~/bin

# brew install bash
# brew install bash-completion
export CDPATH=".:~:~/src:~/src/github.com/mperham"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

