# Environment Variable Binding Model

## Purpose

Environment variables select or parameterize deployment profiles.
They must not turn core QAI application code into a collection of
vendor-specific implementations.

The binding model separates deployment configuration from core
application logic. Adapter and provider implementations are selected
through configuration and the relevant supported interfaces.

## Variable definitions

| Variable | Documented value | Purpose |
|---|---|---|
| `QAI_ENVIRONMENT` | `client-prod` | Selects the deployment environment. |
| `QAI_PROJECT` | `client-modernization` | Identifies the project configuration. |
| `QAI_RUNTIME_MODE` | `production` | Selects the runtime mode. |
| `QAI_RESOURCE_PROFILE` | `client-existing` | Selects the resource profile. |
| `QAI_STORAGE_PROFILE` | `existing_nfs` | Selects the storage profile. |
| `QAI_DATABASE_PROFILE` | `client_database` | Selects the database profile. |
| `QAI_HPC_ADAPTER` | `slurm` | Selects the HPC adapter. |
| `QAI_GPU_ADAPTER` | `nvidia` | Selects the GPU adapter. |
| `QAI_QUANTUM_ADAPTER` | `generic_qpu` | Selects the quantum adapter. |
| `QAI_COMMUNICATION_ADAPTER` | `client_network` | Selects the communication adapter. |
| `QAI_DEPLOYMENT_TARGET` | `client_datacenter` | Selects the deployment target. |
| `QAI_EVIDENCE_PATH` | `<client-approved-location>` | Identifies the approved evidence location. |
| `QAI_ARTIFACT_PATH` | `<client-approved-location>` | Identifies the approved artifact location. |
| `QAI_SECRET_PROVIDER` | `<approved-secret-provider>` | Identifies the approved secret provider. |

## Binding rules

1. Variables select or parameterize environment, project, runtime,
   resource, storage, database, adapter, and deployment profiles.
2. Core QAI application code must remain independent of vendor-specific
   implementations.
3. Provider-specific behavior belongs behind explicit adapter or
   provider interfaces.
4. The deployment process must validate configured profiles and adapter
   availability before relying on them.
5. Evidence and artifact paths must be approved for the target client
   environment.
6. Secret values must not be stored in this document or committed to Git.
   Configure secret-provider access using the approved security mechanism.
7. The documented values describe the supplied client-production
   example. They do not establish that the corresponding environment,
   profiles, adapters, paths, or providers have been implemented or tested.

## Example configuration

The companion `.env.example` file records the documented bindings using
placeholders where client-specific locations or provider details are
required. Replace placeholders only in an appropriately controlled
deployment configuration.

## Implementation status

Status: Specification documented; runtime binding and validation
implementation pending.
