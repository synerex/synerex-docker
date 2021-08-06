FROM golang:alpine AS build-env
COPY ./provider_channel_store /work
WORKDIR /work
RUN go build

FROM alpine
COPY --from=build-env /work/channel_store /sxbin/channel_store
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/channel_store"]
CMD ["-help"]




