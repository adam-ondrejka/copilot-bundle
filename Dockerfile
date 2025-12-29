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

# Default command - keeps container running for interactive MCP server management
# MCP servers are typically started on-demand by client applications that connect to this container
# If you want to auto-start specific servers, replace this with your startup script
CMD ["tail", "-f", "/dev/null"]
