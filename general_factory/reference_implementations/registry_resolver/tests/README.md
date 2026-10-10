# Resolver Tests

Planned deterministic test cases:

1. Registry file is missing.
2. Registry JSON is malformed.
3. Registry has an empty bindings collection.
4. No binding matches the requested capability.
5. One or more matching candidates exist.
6. Registry input remains unchanged.

Tests must use isolated fixtures and must not invoke runners,
deployments, external services, or physical quantum resources.
