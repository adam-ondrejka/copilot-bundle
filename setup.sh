#!/bin/bash

# Quick Setup Script for Copilot Bundle

set -e

echo "🚀 Setting up Copilot Bundle..."
echo ""

# Check if Docker is installed
if command -v docker &> /dev/null; then
    echo "✅ Docker is installed"
    
    # Check if Docker Compose is installed
    if command -v docker-compose &> /dev/null || docker compose version &> /dev/null; then
        echo "✅ Docker Compose is installed"
    else
        echo "⚠️  Docker Compose is not installed. You won't be able to use MCP servers with Docker."
    fi
else
    echo "⚠️  Docker is not installed. You can still use VSCode settings and Copilot instructions."
    echo "   To use MCP servers, install Docker from: https://docs.docker.com/get-docker/"
fi

echo ""
echo "📋 Next Steps:"
echo ""
echo "1. Open this folder in VSCode:"
echo "   code ."
echo ""
echo "2. Install recommended extensions when prompted"
echo ""
echo "3. Copy mcp-config.json to your Copilot settings or use Docker:"
echo "   docker compose up -d"
echo ""
echo "4. Start coding! 🎉"
echo ""
echo "For more information, see README.md"
