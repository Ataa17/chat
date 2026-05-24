FROM n8nio/n8n:latest

WORKDIR /usr/src/app

# Copy only what the runtime needs (avoid copying local .env or large data dirs)
COPY workflows /workflows
COPY init.sh /init.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /init.sh /docker-entrypoint.sh

EXPOSE 5678

ENTRYPOINT ["/docker-entrypoint.sh"]
