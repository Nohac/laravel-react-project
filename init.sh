ROOT=$(realpath `dirname $0`)
BACKEND="git@github.com:noh4ck/laravel-base.git"
FRONTEND="git@github.com:noh4ck/react-redux-starter-kit.git"

cd $ROOT

git clone $BACKEND backend && cd backend && \
    composer install &&\
    npm install && \
    cp env.example .env && \
    ./artisan key:generate && \
    ./artisan vendor:publish &

cd $ROOT

git clone $FRONTEND frontend && cd frontend && npm install &
cd $ROOT
wait
