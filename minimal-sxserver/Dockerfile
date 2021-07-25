FROM golang:alpine AS build-env
COPY ./synerex_server /work
WORKDIR /work
#RUN apk add make git
#RUN make
RUN go build
FROM alpine
COPY --from=build-env /work/synerex-server /sxbin/synerex-server
EXPOSE 10000
ENTRYPOINT ["/sxbin/synerex-server"]



