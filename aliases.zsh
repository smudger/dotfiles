# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias mux="tmuxinator"
alias weather="curl wttr.in/bromley"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias code="cd $HOME/Code"

# Laravel
alias art="php artisan"
alias migrate="php artisan migrate"
alias tmigrate="php artisan migrate --database=mysql_testing"
alias fresh="php artisan migrate:fresh"
alias tfresh="php artisan migrate:fresh --database=mysql_testing"

# PHP
alias phpqa='docker run --init -it --rm -v $(pwd):/project -v $(pwd)/tmp-phpqa:/tmp -w /project jakzal/phpqa:alpine'
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias cda="composer dump-autoload"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# Docker
alias docker-composer="docker-compose"
alias dc="docker-compose"
alias dce="docker-compose exec"

# PHPUnit
alias p="vendor/bin/phpunit"
alias pf="vendor/bin/phpunit --filter"

# Git
alias gs="git status"
alias gaa="git add ."
alias gl="git log --oneline --decorate --color"
alias gap="git add -p"
alias gc="git commit"
alias pull="git pull"
alias push="git push"
alias pop="git stash pop"
alias gwho="git shortlog -sne"
alias gco="git checkout"
alias nah="git reset --hard && git clean -df"
alias unstage="git restore --staged ."

alias branches="git for-each-ref --sort=committerdate refs/heads/ --format='%(color:bold red)%(HEAD)%(color:reset) %(color:bold red)%(refname:short)%(color:reset) (%(color:yellow)%(comm    itterdate:relative)%(color:reset))%0a    [%(color:green)%(objectname:short) %(color:reset)|%(color:green) %(authorname)%(color:reset)] %(contents:subject)'"
alias rbranches="git for-each-ref --sort=committerdate refs/remotes/ --format='%(color:bold red)%(HEAD)%(color:reset) %(color:bold red)%(refname:short)%(color:reset) (%(color:yellow)%(c    ommitterdate:relative)%(color:reset))%0a    [%(color:green)%(objectname:short) %(color:reset)|%(color:green) %(authorname)%(color:reset)] %(contents:subject)'"
