FROM golang:alpine AS build-env
COPY ./provider_fleet /work
WORKDIR /work
RUN go build

FROM alpine
WORKDIR /sxbin
COPY --from=build-env /work/fleet-provider /sxbin/fleet-provider
ENTRYPOINT ["/sxbin/fleet-provider", "--nodesrv", "nodeserv:9990"]
CMD [""]




