# QAI LabaaS

QAI LabaaS is the governed, client-facing QAI laboratory and
platform-as-a-service boundary.

Its intended lifecycle includes client workspace setup, co-design,
experimentation, development, testing, validation, evidence capture,
and transition to an agreed delivery pathway.

## Design constraints

- Prefer reuse of existing factory and laboratory assets.
- Keep logical resources separate from physical infrastructure.
- Do not introduce cloud or Kubernetes as mandatory dependencies.
- Keep credentials and secrets outside source-controlled files.
- Require explicit approval before infrastructure-changing actions.
- Do not silently substitute simulation for unsupported hardware.

This scaffold contains no implementation logic.
