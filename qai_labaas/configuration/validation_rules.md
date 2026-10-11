# Configuration Validation Rules

## Initial requirements

- Distinguish required values from optional adapter selections.
- Reject unresolved placeholders before deployment.
- Validate profile identifiers against approved definitions.
- Validate deployment targets and resource requirements.
- Treat paths as references requiring authorization and existence checks.
- Do not log secret values.
- Do not store credentials, access tokens, or secret values in source control.
- Preserve the difference between validation failure and insufficient information.
- Record configuration version and validation outcome where appropriate.

Detailed schemas and executable validation are pending.
