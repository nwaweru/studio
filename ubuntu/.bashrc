# update os (debian)
alias uos="sh ~/Desktop/bash/ubuntu/update/os.sh"

# PATH: composer
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# PATH: ruby gems
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc

# git: basics
alias remote="git remote -v"
alias status="git status"
alias branch="git branch"
alias clone="git clone"
alias pull="git pull"
alias checkout="git checkout"
alias commit="git add --all && git commit"
alias push="git push"

# git: push:sync
alias gp.sync="git push drashlabs && git push strathmore-university"

# git: push:force
alias fk.dev="git push -u origin dev -f"
alias fk.master="git push -u origin master -f"

# git: fetch and checkout a branch with merge conficts
m.pull() {
    currentBranch=$(git rev-parse --abbrev-ref HEAD)
    timestamp=$(date +%s%3N)

    git fetch origin
    git checkout -b $currentBranch"-merge-fix-"$timestamp origin/$currentBranch
}

# docker
alias fake-smtp="docker run -p 1080:80 -p 1025:25 djfarrelly/maildev"

# docker:compose
alias build="docker-compose build && docker-compose up -d && docker-compose logs -f"

# composer
alias cgu="composer global update"
alias cu="composer update && ci"
alias ci="rm -rf vendor/ && composer install"
alias cr="composer require"
alias crd="composer require --dev"

# handle storage and bootstrap/cache permissions.
alias atperms="sudo chmod -R 777 storage/ bootstrap/cache/"

# laravel
alias at="php artisan"
alias atd="composer dumpautoload && at cache:clear && at config:clear && at route:clear && at view:clear && atperms"
alias atr="at route:list"
alias atsrv="atd && at serve"

# lumen
alias atlsrv="php -S localhost:8000 -t public"
alias atld="composer dumpautoload && at cache:clear"

# handle PATH: yarn
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"

# laravel:mix
alias mi="rm -rf node_modules/ && yarn"
alias ma="yarn add"
alias mad="yarn add --dev"
alias mu="yarn upgrade && mi"
alias md="yarn run dev"
alias mw="yarn run watch"
alias mp="yarn run prod"

# laravel:migrations
alias atdmm="at make:migration"
alias atrms="at migrate:rollback && at migrate --seed"
alias atmf="at migrate:fresh"
alias atmfs="at migrate:fresh --seed"
alias atds="at db:seed --force"

# laravel:make
alias atmm="at make:model"
alias atmc="at make:controller"
alias atms="at make:seeder"
alias atmn="at make:notification"
alias atmp="at make:policy"

# query:refresh
# OPTIONAL: pass the NAME of a configuration i.e. /etc/supervisor/conf.d/{NAME}.conf
qr() {
    sudo supervisorctl reread && sudo supervisorctl update

    if [ "$1" ]
    then
        sudo supervisorctl start $1:*
    fi
}

# rector: pass the directory name to be processes
function rector() {
    vendor/bin/rector process $1 --set laravel60
}

# deployer
alias deploy="at deploy"

# download youtube video
function ytd() {
    youtube-dl -i --extract-audio --audio-format mp3 $1
}
