FROM golang:alpine AS build-env
COPY ./nodeserv /work
WORKDIR /work
RUN go build

FROM alpine
COPY --from=build-env /work/nodeserv /sxbin/nodeserv
ENTRYPOINT ["/sxbin/nodeserv"]
CMD [""]




