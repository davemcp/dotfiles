export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w\[$txtcyn\]\$git_branch\[$txtylw\]\$git_dirty\[$txtrst\]\$ "

eval "$(rbenv init -)"

alias hg="history | grep "
alias be="bundle exec "
alias as="RUBY_GC_TOKEN=269dc473d1d35b3443e36963b98ea2c4 RUBY_GC_TUNE=200 bundle exec rails s"

export AWS_DEFAULT_REGION="ap-southeast-2"

export EDITOR="vim"
getcreds() { `raxawscreds airtasker-$1`; }
getami() { ~/projects/deployment-utilities/bg_deploy/available.sh $1; }
deploy() { ~/projects/deployment-utilities/bg_deploy/bg_deploy.sh $1 $2; }

alias prod_db_connect="psql -U airtasker -h 52.63.62.196 -d airtasker"
alias stage_db_connect="psql -U airtaskeradmin -h 52.63.162.207 -d airtasker"

export PATH="/usr/local/bin:${PATH}"
export PATH="~/packer:${PATH}"
export PATH="~/.npm-global/bin:$PATH"
export PATH="~/Library/Python/2.7/bin:${PATH}"

alias rake_db_migrate='be rake db:migrate RAILS_ENV=development && be db:migrate RAILS_ENV=test &'

export JAVA_HOME="$(/usr/libexec/java_home)"
alias airc='cd ~/projects/airtasker ; be rails c'
