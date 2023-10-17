# Functions
pull_repository_github() {
    if [ ! -d ~/container-rewatch/code/$1 ]; then
    	git clone git@github.com:RewatchPlus/$1.git ~/container-rewatch/code/$1
        cd ~/container-rewatch/code/$1
        git config core.fileMode false
    else
        cd ~/container-rewatch/code/$1
        git config core.fileMode false
        git pull origin main
    fi
}

# Script
pull_repository_github rewatch-api
pull_repository_github rewatch-app-front

docker compose up -d