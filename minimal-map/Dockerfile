FROM golang:alpine AS build-env
COPY ./provider_map /work
WORKDIR /work
RUN go build

FROM alpine
WORKDIR /sxbin
COPY --from=build-env /work/map-provider /sxbin/map-provider
COPY --from=build-env work/mclient/build /sxbin/mclient/build
ENTRYPOINT ["/sxbin/map-provider", "-port", "10081"]
CMD [""]




