# HPC Integration

## Purpose

Provide conventional high-performance computing resources for QAI
workloads that benefit from CPU, GPU and scalable classical compute.

## Typical Workloads

- quantum simulation
- quantum emulation
- classical preprocessing
- optimisation
- parameter search
- tensor processing
- graph processing
- data preparation
- result analysis
- statistical benchmarking
- result fusion

## Slurm

Slurm remains the conventional HPC workload manager.

The QAI layer integrates with Slurm rather than replacing it.

## Principle

Heavy classical workloads should use conventional HPC/GPU resources
where appropriate.

Scarce quantum resources should be reserved for subproblems where
their use is justified and measurable.
