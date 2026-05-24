FROM n8nio/n8n:latest

WORKDIR /usr/src/app

# Copy only what the runtime needs (avoid copying local .env or large data dirs)
COPY workflows /workflows
# Use BuildKit's --chmod to set executable bits without requiring root
COPY --chmod=0755 init.sh /init.sh
COPY --chmod=0755 docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 5678

ENTRYPOINT ["/docker-entrypoint.sh"]
