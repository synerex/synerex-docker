all: docker-build


docker-build:
	docker build -t synerex_server .

docker-push:
	docker tag synerex_server:latest synerex/sxserv:latest
	docker push synerex/sxserv



