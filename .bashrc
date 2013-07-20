git_completion=`brew --prefix git`/etc/bash_completion.d/git-completion.bash
if [ -f $git_completion ] ; then source $git_completion; fi

alias ls="ls -G"
export LSCOLORS=GxFxCxDxBxegedabagaced
