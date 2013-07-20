export PATH=~/bin:$PATH
export EDITOR=vim
export GEM_OPEN_EDITOR=mvim
export BUNDLER_EDITOR=mvim
export PROMPT_DIRTRIM=3
export BETTER_ERRORS_EDITOR=mvim
export PRY_ENABLED=1

# sensible GC tuning
export RUBY_GC_MALLOC_LIMIT=59000000
export RUBY_HEAP_MIN_SLOTS=600000
export RUBY_HEAP_FREE_MIN=100000

[[ $- == *i* ]] && . ${HOME}/.git-prompt/git-prompt.sh

eval "$(rbenv init -)"
