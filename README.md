## About this repository

This repository cloned from [GitHub/Laravel](https://github.com/laravel/laravel). From this repository, you can run Laravel inside Docker container.

## Build Docker Laravel

- Clone this repository:
```
git clone https://github.com/nakamuraos/laravel-docker.git && cd laravel-docker
```

- Config .env file:
```
copy .env.example .env
nano .env
```

- Build docker image:
```
docker build -t laravel-docker:latest -f Dockerfile .
```

- Run docker container:
```
docker run -p 8080:8080 laravel-docker:latest
```

- Open browser and go to http://localhost:8080.

## Update Source code's Laravel
- Add remote git:
```
git remote add laravel https://github.com/laravel/laravel.git
```
- Switch to branch (8.x for example):
```
git checkout laravel/8.x
```
- Make git pull:
```
git pull laravel 8.x
```
- Checkout to docker branch and merge:
```
git checkout origin/docker && git merge laravel/8.x
```

You can also update from source code's [GitHub/Laravel](https://github.com/laravel/laravel)
