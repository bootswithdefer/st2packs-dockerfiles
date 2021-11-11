FROM alpine:3.13

ONBUILD VOLUME ["/opt/stackstorm/packs", "/opt/stackstorm/virtualenvs"]

# Copy packs and virtualenvs
ONBUILD COPY --from=builder /opt/stackstorm/packs /opt/stackstorm/packs
ONBUILD COPY --from=builder /opt/stackstorm/virtualenvs /opt/stackstorm/virtualenvs
