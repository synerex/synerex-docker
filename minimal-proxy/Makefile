all: docker-build

docker-build:
	docker build -t synerex_proxy  .

docker-push:
	docker tag synerex_proxy:latest synerex/proxy:latest
	docker push synerex/proxy:latest
	


