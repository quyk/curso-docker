# Inicia uma imagem do Docker
docker container start <id>

# Reinicia uma imagem do Docker
docker container restart <id>

# Para uma imagem do Docker
docker container stop <id>

# Apaga uma imagem do Docker
docker container rm <id>

# Mata uma imagem do Docker
docker container kill <id>

# Logs do volume
docker container logs <id>

# Inspecionar a imagem
docker container inspect ex-daemon-basic

# Executar comandos no docker
docker container exec ex-daemon-basic uname -or

# Lista todas imagens
docker container ps -a

# Criar uma imagem mapeada, rodando em background
# -d Coloca o docker para rodar em background
docker container run -d --name ex-daemon-basic -p 8080:80 -v ./html:/usr/share/nginx/html n
ginx

# Listar as imagens
docker image ls

# Listar os volumes
docker volume ls

# Apaga uma imagem do Docker
docker image rm <id>

# Puxar uma imagem
docker image pull redis:latest

#Criando imagem
# -t tag da imagem
# . Local onde esta o Dockerfile
docker image build -t ex-simples-build .
    docker container run -p 80:80 ex-simples-build


# Imagem com args
docker image build -t ex-build-arg .
docker container run ex-build-arg bash -c 'echo $S3_BUCKET'

docker image build --build-arg S3_BUCKET=myapp -t ex-build-arg .

#Filtro inspect
docker image inspect --format='{{index .Config.Labels \"maintainer\"}}' ex-build-arg

# Docker com python
docker image build -t ex-build-dev .
docker container run -it -v ./build-dev:/app -p 80:8000 --name python-server ex-build-dev
docker container run -it --volumes-from=python-server debian cat /log/http-server.log

# Criando nova tag
docker image tag ex-simples-build quykmendonca/simple-build:1.0

# Docker login
docker login --username=quykmendonca

# Docker push
docker image push quykmendonca/simple-build:1.0

# Listar drivers de rede
docker network ls

docker container run --rm alpine ash -c "ifconfig"
docker container run --rm --net none alpine ash -c "ifconfig"

docker network inspect bridge


docker container run -d --name container1 alpine sleep 1000
docker container exec -it container1 ifconfig

docker container exec -it container1 ping 172.17.0.5

docker network create --driver bridge rede_nova

docker container exec -it container3 ping 172.17.0.1

docker network connect bridge container3

docker network disconnect bridge container3

# Docker Postgres
docker-compose exec db psql -U postgres -c '\l'
docker-compose exec db psql -U postgres -f ./scripts/check.sql

docker-compose logs -f -t

docker-compose exec db psql -U postgres -d email_sender -c 'select * from emails'

# Escalando Docker
docker-compose up -d --scale worker=3