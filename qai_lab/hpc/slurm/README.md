# Slurm Integration

## Purpose

Define the QAI integration boundary with Slurm.

## Role of Slurm

Slurm remains responsible for conventional HPC resource scheduling.

The QAI Gateway may translate QAI workload requirements into
appropriate Slurm job/resource requests.

## Candidate Concepts

- job templates
- resource profiles
- heterogeneous jobs
- job/task identifiers
- CPU/GPU allocation
- simulation jobs
- optimisation jobs

## Quantum Resources

A quantum resource may be represented conceptually as a managed
resource/profile.

This does NOT mean Slurm directly controls a QPU.

An appropriate quantum platform adapter or runtime boundary is
required.

## Guardrail

Actual Slurm integration must be validated against the target
cluster configuration before implementation.
