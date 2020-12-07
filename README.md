## About this repository

This repository cloned from [GitHub/Laravel](https://github.com/laravel/laravel). From this repository, you can run Laravel inside Docker container.

## TODO:
- Deploy in Jenkins

## Build Docker

- Clone this repository:
```
git clone https://github.com/nakamuraos/laravel-docker.git && cd laravel-docker
```

- Config .env file:
```
cp .env.example .env
nano .env
```

- Build docker image:
```
docker build -t laravel-docker:latest -f Dockerfile .
```

- Run docker container:
```
docker run -p 8080:8080 laravel-docker:latest

# OR
# You can mount laravel's home folder to external:
docker run -p 8080:8080 -v ./laravel-docker:/home/laravel laravel-docker:latest
```

- Open browser and go to http://localhost:8080.

## Update Laravel's source code
Execute in branch `docker`:

- Add Laravel's remote git:
```
git remote add laravel https://github.com/laravel/laravel.git
```
- Make git pull & merge:
```
git pull laravel laravel/8.x && git merge laravel/8.x
```

You can also update manually from source code's [GitHub/Laravel](https://github.com/laravel/laravel)
