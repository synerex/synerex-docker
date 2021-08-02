FROM golang:alpine AS build-env
COPY ./provider_geography /work
WORKDIR /work
RUN go build

FROM alpine
COPY --from=build-env /work/geo-provider /sxbin/geo-provider
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/geo-provider"]
CMD [""]




