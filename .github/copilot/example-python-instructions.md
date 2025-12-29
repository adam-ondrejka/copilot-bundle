# Example: Python Development Instructions

Use this as a template for language-specific or domain-specific instructions.

## Python Best Practices

- Use type hints for all function parameters and return values
- Follow PEP 8 style guide
- Maximum line length: 88 characters (Black default)
- Use docstrings for all public functions and classes

## Testing

- Use pytest for all tests
- Maintain at least 80% code coverage
- Write both unit tests and integration tests
- Use fixtures for common test setups

## Code Formatting

- Use Black for code formatting
- Use isort for import sorting
- Run both before committing

## Dependencies

- Use poetry for dependency management
- Keep requirements.txt updated
- Document why dependencies are added

## Common Patterns

### Error Handling
```python
def process_data(data: dict) -> Result:
    try:
        # Process data
        return Result(success=True, data=processed)
    except ValueError as e:
        logger.error(f"Invalid data: {e}")
        return Result(success=False, error=str(e))
```

### Logging
```python
import logging

logger = logging.getLogger(__name__)
logger.info("Processing started")
```
