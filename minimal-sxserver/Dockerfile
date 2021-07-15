FROM golang:alpine AS build-env
COPY ./synerex_server /work
WORKDIR /work
RUN apk add make git
RUN make

FROM alpine
COPY --from=build-env /work/synerex-server /sxbin/synerex-server
ENTRYPOINT ["/sxbin/synerex-server"]



