# Copilot Bundle 🚀

A complete bundle for sharing VSCode workspace settings, GitHub Copilot agent instructions, and MCP (Model Context Protocol) server configurations with your team.

## 📋 What's Included

This repository provides everything your team needs to get started quickly:

- **VSCode Workspace Settings** - Consistent editor configuration across your team
- **GitHub Copilot Agent Instructions** - Custom instructions for AI-assisted development
- **MCP Server Configuration** - Pre-configured Model Context Protocol servers
- **Docker Setup** - Containerized MCP servers for easy deployment

## 🚀 Quick Start

### 1. Clone This Repository

```bash
git clone https://github.com/YOUR-USERNAME/copilot-bundle.git
cd copilot-bundle
```

### 2. Open in VSCode

```bash
code .
```

VSCode will automatically:
- Apply the workspace settings from `.vscode/settings.json`
- Suggest recommended extensions from `.vscode/extensions.json`
- Load custom tasks for managing MCP servers

### 3. Install Recommended Extensions

When you open the workspace, VSCode will prompt you to install recommended extensions. Click "Install All" to get:
- GitHub Copilot
- GitHub Copilot Chat
- Docker support
- EditorConfig
- And more...

### 4. Set Up MCP Servers (Optional)

If you want to use MCP servers:

1. **Copy the environment file**:
   ```bash
   cp .env.example .env
   ```

2. **Edit `.env` and add your tokens**:
   ```bash
   GITHUB_TOKEN=your_github_token_here
   ```

3. **Start MCP servers with Docker**:
   ```bash
   docker-compose up -d
   ```

   Or use VSCode tasks: `Ctrl+Shift+P` → `Tasks: Run Task` → `Start MCP Servers`

## 📁 Repository Structure

```
copilot-bundle/
├── .vscode/                    # VSCode workspace configuration
│   ├── settings.json          # Editor settings
│   ├── extensions.json        # Recommended extensions
│   └── tasks.json             # Custom tasks for MCP servers
├── .github/
│   └── copilot/               # GitHub Copilot configuration
│       ├── instructions.md    # Custom agent instructions
│       └── README.md          # Documentation for agent instructions
├── workspace/                 # Shared workspace for MCP servers
├── mcp-config.json           # MCP server configuration
├── Dockerfile                # Docker image for MCP servers
├── docker-compose.yml        # Docker Compose configuration
├── .env.example              # Environment variables template
├── MCP_README.md             # Detailed MCP documentation
└── README.md                 # This file
```

## ⚙️ Configuration

### VSCode Settings

The `.vscode/settings.json` file includes:
- Format on save
- Git auto-fetch
- GitHub Copilot configuration
- Terminal settings
- And more...

**To customize**: Edit `.vscode/settings.json` with your team's preferences.

### GitHub Copilot Instructions

Custom instructions help Copilot understand your project's:
- Coding standards
- Preferred frameworks
- Architecture patterns
- Testing strategies

**To customize**: Edit `.github/copilot/instructions.md` with your team's guidelines.

See [.github/copilot/README.md](.github/copilot/README.md) for more details.

### MCP Servers

Pre-configured MCP servers include:
- **Filesystem** - Read/write file operations
- **GitHub** - Repository and issue management
- **Git** - Version control operations
- **Memory** - Persistent storage across sessions

**To customize**: Edit `mcp-config.json` to add or remove servers.

See [MCP_README.md](MCP_README.md) for detailed documentation.

## 🔧 Usage

### Using VSCode Tasks

Access tasks via `Ctrl+Shift+P` → `Tasks: Run Task`:

- **Start MCP Servers** - Launch all MCP servers
- **Stop MCP Servers** - Shut down all servers
- **Rebuild MCP Servers** - Rebuild and restart servers
- **View MCP Server Logs** - Monitor server logs

### Using Docker Directly

```bash
# Start servers
docker-compose up -d

# View logs
docker-compose logs -f

# Stop servers
docker-compose down

# Rebuild
docker-compose up -d --build
```

## 👥 Team Setup

### For Team Members

1. **Clone the repository**
2. **Open in VSCode** - Settings and extensions will be automatically configured
3. **Install recommended extensions** when prompted
4. **Set up environment variables** if using MCP servers
5. **Start working!** Everything is configured and ready

### For Team Leads

1. **Customize the settings**:
   - Edit `.vscode/settings.json`
   - Update `.github/copilot/instructions.md`
   - Modify `mcp-config.json` as needed

2. **Share with team**:
   - Commit changes to the repository
   - Team members pull the latest changes
   - Everyone gets updated configuration

3. **Keep it updated**:
   - Regular reviews of settings and instructions
   - Update based on team feedback
   - Document changes in commit messages

## 🔐 Security

- **Never commit secrets** - Use `.env` for sensitive data (already in `.gitignore`)
- **Review MCP server permissions** before running
- **Use environment variables** for tokens and API keys
- **Keep dependencies updated** - Regularly update Docker image

## 🛠️ Customization

### Adding More MCP Servers

1. Edit `mcp-config.json`:
```json
{
  "mcpServers": {
    "your-server": {
      "command": "npx",
      "args": ["-y", "@your-org/mcp-server"],
      "description": "Your server description"
    }
  }
}
```

2. Rebuild the Docker image:
```bash
docker-compose up -d --build
```

### Adding Team-Specific Settings

Create project-specific configuration files:
- `.github/copilot/frontend-instructions.md`
- `.github/copilot/backend-instructions.md`
- `.github/copilot/testing-instructions.md`

## 📚 Resources

- [VSCode Documentation](https://code.visualstudio.com/docs)
- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Model Context Protocol](https://modelcontextprotocol.io/)
- [Docker Documentation](https://docs.docker.com/)

## 🤝 Contributing

This bundle is meant to evolve with your team:

1. Make improvements to settings or instructions
2. Test with the team
3. Commit and share with everyone
4. Keep iterating based on feedback

## 📝 License

See [LICENSE](LICENSE) file for details.

---

**Questions?** Check out the detailed documentation:
- [MCP Servers Documentation](MCP_README.md)
- [Agent Instructions Guide](.github/copilot/README.md)