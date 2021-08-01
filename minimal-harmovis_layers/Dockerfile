FROM golang:alpine AS build-env
COPY ./harmovis_layers /work
WORKDIR /work
RUN go build


FROM alpine
COPY --from=build-env /work/harmovis-layers /sxbin/harmovis-layers
COPY --from=build-env /work/mclient/build /sxbin/mclient/build
WORKDIR /sxbin
ENTRYPOINT ["/sxbin/harmovis-layers"]
CMD [""]




