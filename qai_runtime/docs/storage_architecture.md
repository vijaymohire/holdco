# QAI Storage Architecture

QAI Runtime uses a logical storage abstraction rather than binding applications to one filesystem or cloud storage product.

## Conceptual Model

QAI Application
      |
QAI Workflow
      |
QAI Runtime
      |
QAI Storage / Resource Fabric
      |
Storage Adapter
      |
Local / NFS / SMB / SFTP / S3 / GCS / Azure Blob / HPC Storage

## Logical Namespaces

- qai://workspace/
- qai://session/
- qai://files/
- qai://artifacts/
- qai://evidence/
- qai://cache/

Backend selection is determined by deployment requirements, resource capabilities and policy.

Phase 1B establishes the directory and contract boundary only.
