# Laravel 

Passos de instalação:
```
docker-compose up -d --build
docker exec -it app sh
composer install
cp .env.example .env
php artisan key:generate 
php artisan migrate
```

Geração da Imagem:
```
docker commit app softplayers/fullcycle-laravel
docker push
```

Endereço da Imagem no Docker Hub: https://hub.docker.com/repository/docker/softplayers/fullcycle-laravel

# Go

Passos de Build:
```
cd .docker/go
docker build -t softplayers/codeeducation .
```

Execução
```
docker run --rm softplayers/codeeducation 
```

Imagem no Docker Hub:
https://hub.docker.com/repository/docker/softplayers/codeeducation

