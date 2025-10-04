FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && apt-get install -y curl sudo && rm -rf /var/lib/apt/lists/*

# Install the Twingate Linux client
RUN curl https://binaries.twingate.com/client/linux/install.sh | bash

# Copy entrypoint from twingate/ into container root
COPY twingate/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
