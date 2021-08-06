FROM golang:alpine AS build-env
COPY ./provider_channel_retrieve /work
WORKDIR /work
RUN go build

FROM alpine
COPY HarmoVIS_client/synerex/higashi-sim.csv /sxbin/higashi-sim.csv
COPY HarmoVIS_client/synerex/higashiyama_facility.geojson  /sxbin/higashiyama_facility.geojson
COPY HarmoVIS_client/synerex/higashiyama_line.geojson  /sxbin/higashiyama_facility.geojson 
COPY HarmoVIS_client/synerex/aichi-covid-19.csv /sxbin/aichi-covid-19.csv
COPY HarmoVIS_client/synerex/meshDemo.csv /sxbin/meshDemo.csv
COPY --from=synerex/geography:latest /sxbin/geo-provider /sxbin/geo-provider
COPY --from=build-env /work/channel_retrieve /sxbin/channel_retrieve
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/geo-provider"]
CMD [""]




