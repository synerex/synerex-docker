FROM alpine
COPY --from=synerex_nodeserv /sxbin/nodeserv /sxbin/nodeserv
COPY --from=synerex_server /sxbin/synerex-server /sxbin/synerex-server
COPY --from=synerex_proxy /sxbin/proxy /sxbin/proxy

COPY --from=harmovis_layers /sxbin/harmovis-layers /sxbin/harmovis-layers
COPY --from=harmovis_layers /sxbin/mclient/build /sxbin/mclient/build

COPY runHarmoVIS.sh /sxbin/runHarmoVIS.sh

WORKDIR /sxbin
ENTRYPOINT ["/bin/sh"]
CMD ["/sxbin/runHarmoVIS.sh"]




