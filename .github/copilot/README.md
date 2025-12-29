# GitHub Copilot Instructions

This directory contains custom instructions for GitHub Copilot agents.

## Files

- `instructions.md` - Main agent instructions file that Copilot will use to understand your project's coding standards and preferences

## How to Use

1. **For GitHub Copilot Chat**: The instructions in `instructions.md` will be automatically loaded when you use Copilot Chat in this workspace.

2. **Customizing Instructions**: Edit `instructions.md` to add your team's specific:
   - Coding standards and style guides
   - Preferred libraries and frameworks
   - Architecture patterns
   - Testing strategies
   - Documentation requirements
   - Any other project-specific guidelines

3. **Multiple Instruction Files**: You can create additional instruction files for different purposes:
   - `frontend-instructions.md` - Frontend-specific guidelines
   - `backend-instructions.md` - Backend-specific guidelines
   - `testing-instructions.md` - Testing guidelines
   - etc.

## Examples

### Adding Language-Specific Instructions

Create separate files for different languages or frameworks:

```markdown
# Python Instructions (python-instructions.md)

- Use type hints for all function parameters and return values
- Follow PEP 8 style guide
- Use pytest for testing
- Use Black for code formatting
```

### Adding Security Guidelines

```markdown
# Security Instructions (security-instructions.md)

- Always validate and sanitize user input
- Use parameterized queries to prevent SQL injection
- Implement proper authentication and authorization
- Never commit secrets or credentials to the repository
```

## Best Practices

- Keep instructions clear and concise
- Update instructions as your project evolves
- Share updates with your team
- Review and refine instructions based on team feedback
