# MCP Servers Configuration

This directory contains configuration for Model Context Protocol (MCP) servers that can be used with GitHub Copilot and other AI tools.

## What are MCP Servers?

MCP (Model Context Protocol) servers provide additional capabilities to AI assistants like GitHub Copilot. They can:
- Access file systems
- Interact with GitHub repositories
- Perform Git operations
- Store persistent memory
- And much more

## Configuration Files

- `mcp-config.json` - Main configuration file listing available MCP servers
- `Dockerfile` - Docker image containing all MCP server dependencies
- `docker-compose.yml` - Easy orchestration of MCP servers

## Available MCP Servers

### Filesystem Server
Provides access to read and write files in the workspace.

### GitHub Server
Integrates with GitHub to access repositories, issues, and pull requests.
**Requires**: `GITHUB_TOKEN` environment variable

### Git Server
Enables Git operations like commit, push, pull, and branch management.

### Memory Server
Provides persistent memory storage that survives across sessions.

## Setup

### Option 1: Using Docker (Recommended)

1. **Build the Docker image**:
   ```bash
   docker-compose build
   ```

2. **Start the MCP servers**:
   ```bash
   docker-compose up -d
   ```

3. **Configure your AI tool** to use the servers at `http://localhost:8080`

4. **Stop the servers**:
   ```bash
   docker-compose down
   ```

### Option 2: Local Installation

1. **Install Node.js** (if not already installed)

2. **The servers will be automatically installed** when you first use them (via npx)

3. **Set environment variables** as needed:
   ```bash
   export GITHUB_TOKEN=your_github_token_here
   ```

## Using with VSCode

VSCode tasks are configured in `.vscode/tasks.json`:
- **Start MCP Servers**: `Ctrl+Shift+P` → `Tasks: Run Task` → `Start MCP Servers`
- **Stop MCP Servers**: `Ctrl+Shift+P` → `Tasks: Run Task` → `Stop MCP Servers`
- **View Logs**: `Ctrl+Shift+P` → `Tasks: Run Task` → `View MCP Server Logs`

## Customization

### Adding More Servers

Edit `mcp-config.json` to add more servers:

```json
{
  "mcpServers": {
    "your-server": {
      "command": "npx",
      "args": ["-y", "@your-org/mcp-server-name"],
      "env": {
        "API_KEY": "${YOUR_API_KEY}"
      },
      "description": "Description of your server"
    }
  }
}
```

### Environment Variables

Create a `.env` file for environment variables (don't commit secrets!):

```env
GITHUB_TOKEN=your_github_token_here
```

## Security Notes

- Never commit sensitive tokens or API keys to the repository
- Use environment variables or secret management tools
- The `.env` file is git-ignored by default
- Review server permissions before running them

## Troubleshooting

### Servers not starting
- Check Docker is installed and running
- Verify environment variables are set correctly
- Check logs: `docker-compose logs`

### Connection issues
- Ensure ports are not already in use
- Check firewall settings
- Verify the AI tool is configured with correct server addresses

## Resources

- [MCP Documentation](https://modelcontextprotocol.io/)
- [Available MCP Servers](https://github.com/modelcontextprotocol)
- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
