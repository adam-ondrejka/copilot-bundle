# Copilot Bundle 🚀

A bundle for sharing VSCode workspace settings, GitHub Copilot agent instructions, and MCP server configurations with your team.

## 🚀 Quick Start

### 1. Clone and Open

```bash
git clone https://github.com/YOUR-USERNAME/copilot-bundle.git
cd copilot-bundle
code .
```

### 2. Install Extensions

When VSCode prompts, click "Install All" to get the recommended extensions including GitHub Copilot.

### 3. Configure MCP Servers (Optional)

Copy `mcp-config.json` to your Copilot settings or use the included Docker setup.

## 📁 What's Included

- **`.vscode/`** - Editor settings, recommended extensions, and tasks
- **`.github/copilot/instructions.md`** - Custom agent instructions for your team
- **`mcp-config.json`** - Pre-configured MCP servers:
  - GitHub (via Copilot API)
  - Sequential Thinking
  - Atlassian
  - Awesome Copilot (.NET samples)
  - Playwright (browser automation)
- **`Dockerfile` & `docker-compose.yml`** - Optional containerized setup

## ⚙️ Customization

### VSCode Settings
Edit `.vscode/settings.json` for team preferences (formatting, Git, Copilot settings).

### Agent Instructions
Edit `.github/copilot/instructions.md` to define your team's coding standards and patterns.

### MCP Servers
Edit `mcp-config.json` to add/remove servers. The configuration uses `${input:Authorization}` for secure token prompting.

## 🐳 Docker Setup (Optional)

```bash
# Start MCP servers
docker compose up -d

# Stop servers
docker compose down
```

Or use VSCode tasks: `Ctrl+Shift+P` → `Tasks: Run Task` → `Start MCP Servers`

## 📝 License

See [LICENSE](LICENSE) file for details.