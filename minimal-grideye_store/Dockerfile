FROM golang:alpine AS build-env
COPY ./provider_grideye_store /work
WORKDIR /work
RUN go build

FROM alpine
COPY --from=build-env /work/grideye-store /sxbin/grideye-store
RUN mkdir /sxbin/store
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/grideye-store"]
CMD [""]
VOLUME /sxbin/store




