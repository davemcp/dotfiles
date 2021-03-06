export HISTSIZE="INFINITE"

# From https://github.com/jimeh/git-aware-prompt/
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w\[$txtcyn\] - \$git_branch\[$txtylw\]\$git_dirty\[$txtrst\]\$ "

export EDITOR="vim"
export BUNDLER_EDITOR="code"

eval "$(rbenv init -)"

alias be="bundle exec"
alias hg="history | grep"

alias gitlg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"

alias git=~/.git_wrapper.sh