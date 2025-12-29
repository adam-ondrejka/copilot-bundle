# Quick Reference Card

## 🚀 Getting Started (30 seconds)

```bash
git clone https://github.com/YOUR-USERNAME/copilot-bundle.git
cd copilot-bundle
code .
```

Click "Install All" when VSCode prompts for extensions.

## 📁 Important Files

| File/Directory | Purpose |
|----------------|---------|
| `.vscode/` | VSCode workspace settings |
| `.github/copilot/` | GitHub Copilot agent instructions |
| `mcp-config.json` | MCP server configuration |
| `docker-compose.yml` | Docker orchestration |
| `.env` | Your environment variables (create from `.env.example`) |

## ⚙️ Common Tasks (Use Ctrl+Shift+P → Tasks: Run Task)

| Task | Command |
|------|---------|
| Start MCP Servers | `Start MCP Servers` or `docker compose up -d` |
| Stop MCP Servers | `Stop MCP Servers` or `docker compose down` |
| View Logs | `View MCP Server Logs` or `docker compose logs -f` |
| Rebuild | `Rebuild MCP Servers` or `docker compose up -d --build` |

## 🔧 Customization

### VSCode Settings
Edit `.vscode/settings.json` for team preferences:
- Tab size, formatting rules
- Git behavior
- Copilot settings

### Agent Instructions
Edit `.github/copilot/instructions.md` to add:
- Coding standards
- Preferred frameworks
- Architecture patterns
- Testing strategies

### MCP Servers
Edit `mcp-config.json` to add/remove servers:
```json
{
  "mcpServers": {
    "server-name": {
      "command": "npx",
      "args": ["-y", "@org/server"],
      "env": { "TOKEN": "${TOKEN}" }
    }
  }
}
```

## 🔐 Environment Variables

1. Copy template: `cp .env.example .env`
2. Edit `.env` with your tokens
3. Never commit `.env` to git!

## 📚 Documentation

- [Full README](README.md)
- [MCP Server Guide](MCP_README.md)
- [Agent Instructions Guide](.github/copilot/README.md)
- [Contributing Guide](CONTRIBUTING.md)
- [Changelog](CHANGELOG.md)

## 💡 Tips

- VSCode will auto-apply settings when you open the workspace
- Tasks are accessible via Command Palette (Ctrl+Shift+P)
- MCP servers are optional - core features work without them
- Share improvements with the team by committing to this repo

## ❓ Troubleshooting

| Issue | Solution |
|-------|----------|
| Extensions not installing | Click "Install All" in the notification |
| Docker not starting | Check Docker is installed and running |
| MCP servers not working | Verify `.env` has correct tokens |
| Settings not applying | Reload VSCode window |

## 🤝 Need Help?

- Check the [README](README.md) for detailed instructions
- Review example files in `.github/copilot/`
- Ask the team for assistance
