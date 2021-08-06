all: docker-build

docker-build:
	docker build -t synerex_nodeserv .

docker-push:
	docker tag synerex_nodeserv:latest synerex/nodeserv:latest
	docker push synerex/nodeserv:latest
	


