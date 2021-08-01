FROM golang:alpine AS build-env
COPY ./nodeserv /work
WORKDIR /work
RUN go build

FROM alpine
COPY --from=build-env /work/nodeserv /sxbin/nodeserv
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/nodeserv"]
CMD ["-addr 0.0.0.0"]




