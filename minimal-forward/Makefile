all: docker-build

docker-build:
	docker build -t synerex_forward  .

docker-push:
	docker tag synerex_forward:latest synerex/forward:latest
	docker push synerex/forward:latest
	


