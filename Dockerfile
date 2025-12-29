FROM node:20-alpine

# Install necessary tools
RUN apk add --no-cache \
    git \
    bash \
    curl

# Set working directory
WORKDIR /mcp

# Copy MCP configuration
COPY mcp-config.json /mcp/

# Pre-install common MCP servers to speed up startup
RUN npm install -g \
    @modelcontextprotocol/server-filesystem \
    @modelcontextprotocol/server-github \
    @modelcontextprotocol/server-git \
    @modelcontextprotocol/server-memory

# Create workspace directory
RUN mkdir -p /workspace

# Set environment variables
ENV NODE_ENV=production
ENV PATH="/mcp/node_modules/.bin:${PATH}"

# Default command - keep container running
CMD ["tail", "-f", "/dev/null"]
