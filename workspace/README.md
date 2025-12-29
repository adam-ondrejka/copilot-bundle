# Workspace Directory

This directory is used as a shared workspace for MCP servers. Files placed here can be accessed by the filesystem MCP server when running in Docker.

## Usage

- Place files you want to work with here
- The directory is mounted as `/workspace` in the Docker container
- Use this for testing file operations with MCP servers

## Examples

Create a test file:
```bash
echo "Hello from MCP!" > workspace/test.txt
```

The filesystem MCP server will be able to read and modify this file.
