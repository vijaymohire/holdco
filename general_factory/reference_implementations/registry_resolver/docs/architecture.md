# Registry Resolver Architecture

## Initial flow

Resolution Request
    -> Registry Loader
    -> Capability Binding Lookup
    -> Resolution Result
    -> Evidence References

## Later extensions

- Framework contract resolution
- Profile and package compatibility
- Version and dependency constraints
- Execution-mode compatibility
- Resource requirements
- Binding validation and lifecycle status
- Structured diagnostic evidence

## Important distinction

Finding a binding by capability identifier does not prove that the
binding is compatible, validated, active, or executable.

The initial implementation therefore reports matching candidates
without claiming successful compatibility.
