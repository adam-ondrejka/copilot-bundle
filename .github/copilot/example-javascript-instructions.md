# Example: JavaScript/TypeScript Instructions

Use this as a template for JavaScript/TypeScript projects.

## Code Style

- Follow Airbnb JavaScript Style Guide
- Use ESLint and Prettier
- Prefer const over let, never use var
- Use arrow functions for callbacks

## TypeScript

- Enable strict mode
- Use interfaces for object shapes
- Avoid 'any' type unless absolutely necessary
- Use type inference when possible

## Testing

- Use Jest for unit tests
- Use React Testing Library for component tests
- Write tests for all critical business logic
- Aim for meaningful coverage, not just high percentages

## React Patterns

### Functional Components
```typescript
interface Props {
  title: string;
  onSubmit: (data: FormData) => void;
}

export const MyComponent: React.FC<Props> = ({ title, onSubmit }) => {
  return <div>{title}</div>;
};
```

### Custom Hooks
```typescript
export const useCustomHook = (initialValue: string) => {
  const [value, setValue] = useState(initialValue);
  
  useEffect(() => {
    // Side effects
  }, [value]);
  
  return { value, setValue };
};
```

## API Calls

- Use async/await over promises
- Handle errors appropriately
- Use TypeScript types for API responses

## File Organization

- One component per file
- Group related components in folders
- Keep business logic separate from UI components
