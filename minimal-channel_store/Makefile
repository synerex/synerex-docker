all: docker-build

docker-build:
	docker build -t synerex_channel_store  .

docker-push:
	docker tag synerex_channel_store:latest synerex/channel_store:latest
	docker push synerex/channel_store:latest
	


