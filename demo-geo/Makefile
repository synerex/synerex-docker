all: docker-build

docker-build:
	docker build -t synerex_geo_demo .

docker-push:
	docker tag synerex_geo_demo:latest synerex/geo_with_data:latest
	docker push synerex/geo_with_data:latest



