FROM golang:alpine AS build-env
COPY ./channel_monitor /work
WORKDIR /work
RUN go build

FROM alpine
COPY --from=build-env /work/channel_monitor /sxbin/channel_monitor
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/channel_monitor"]
CMD ["-all"]




