# Environment Variables

## Documented variables

| Variable | Purpose |
|---|---|
| QAI_ENVIRONMENT | Environment classification |
| QAI_PROJECT | Client project identifier |
| QAI_RUNTIME_MODE | Runtime mode |
| QAI_RESOURCE_PROFILE | Resource profile selection |
| QAI_STORAGE_PROFILE | Approved storage profile |
| QAI_DATABASE_PROFILE | Approved database profile |
| QAI_DEPLOYMENT_TARGET | Deployment target |
| QAI_HPC_ADAPTER | HPC adapter selection or none |
| QAI_GPU_ADAPTER | GPU adapter selection or none |
| QAI_QUANTUM_ADAPTER | Quantum adapter selection or none |
| QAI_COMMUNICATION_ADAPTER | Communication adapter selection or none |
| QAI_EVIDENCE_PATH | Approved evidence location |
| QAI_ARTIFACT_PATH | Approved artifact location |
| QAI_SECRET_PROVIDER | Approved secret-provider selection |

## Rules

- Configuration selects deployment profiles.
- Secrets remain outside source control.
- Secrets must be supplied through an approved identity or secret mechanism.
- Paths and profile names must be validated before use.
- Adapter selection does not prove that an adapter is installed or operational.
- Do not assume that an unspecified profile or adapter is available.

The exact variable names above are retained from the development plan.
