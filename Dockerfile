FROM node:20-alpine

# Install necessary tools
RUN apk add --no-cache \
    git \
    bash \
    curl \
    docker-cli

# Set working directory
WORKDIR /mcp

# Copy MCP configuration
COPY mcp-config.json /mcp/

# Pre-install MCP servers to speed up startup
RUN npm install -g \
    @modelcontextprotocol/server-sequential-thinking \
    @playwright/mcp

# Set environment variables
ENV NODE_ENV=production
ENV PATH="/mcp/node_modules/.bin:${PATH}"

# Default command - keeps container running for MCP server management
CMD ["tail", "-f", "/dev/null"]
