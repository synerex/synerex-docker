FROM golang:alpine AS build-env
COPY ./provider_forward /work
WORKDIR /work
RUN go build

FROM alpine
COPY --from=build-env /work/forward-provider /sxbin/forward
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/forward"]
CMD ["-help"]




