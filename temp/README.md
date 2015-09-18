```sh
brew install docker, docker-machine
docker-machine create --driver virtualbox docker-vm
eval "$(docker-machine env docker-vm)"
docker build -t jclarkin/nginx .
docker run --name nginx -p 80:3000 -d jclarkin/nginx


```
