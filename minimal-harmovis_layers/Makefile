all: docker-build

docker-build:
	docker build -t harmovis_layers .

docker-push:
	docker tag harmovis_layers:latest synerex/harmovis_layers:latest
	docker push synerex/harmovis_layers



