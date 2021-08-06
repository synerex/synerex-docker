all: docker-build

docker-build:
	docker build -t synerex_grideye_store  .

docker-push:
	docker tag synerex_grideye_store:latest synerex/grideye_store:latest
	docker push synerex/grideye_store:latest
	


