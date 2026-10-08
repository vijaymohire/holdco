# QAI Storage

Product-neutral logical filesystem and storage abstraction.

## Architectural Position

QAIFileSystem
    -> Storage / Resource Registry
    -> Deployment Variables / Profile
    -> Backend Factory / Resolver
    -> Storage Adapter

## Logical Namespaces

- qai://workspace/
- qai://session/
- qai://files/
- qai://artifacts/
- qai://evidence/
- qai://cache/

## Candidate Storage Classes

- Local POSIX filesystem
- NFS
- SMB
- SFTP
- S3-compatible object storage
- GCS
- Azure Blob
- HPC parallel filesystem

Phase 1B establishes folder and contract boundaries only.
