# QAI Computing

Computing capability domain of the QAI Lab.

The Computing Lab provides a product-agnostic experimentation and
validation environment spanning classical, quantum, hybrid, HPC,
GPU, FPGA, simulation, emulation and related execution models.

## Scope

- Computing experiments
- Quantum computing
- Classical and hybrid computing
- HPC
- GPU
- FPGA
- Quantum and classical backends
- Simulation and emulation
- Resource reduction
- Dynamic mapping
- Logical qubits and QEC experimentation
- Cross-backend validation
- Client co-design
- Comparative benchmarking
- Reference implementations

## Relationship to QAI Lab

The Computing Lab is a peer capability domain to:

- qai_lab/communication

Common QAI Lab documentation and evidence remain at:

- qai_lab/docs
- qai_lab/evidence

## Relationship to QAI Runtime

The Computing Lab is an experimentation, co-design and validation
environment.

Vendor-specific and target-specific execution implementations should
remain behind QAI Runtime interfaces and adapters where appropriate.

## Experiment Catalogue

The initial experiment catalogue includes:

- problem decomposition
- digital quantum
- analog quantum
- digital-analog
- analog-digital
- annealing
- VirtualQubits
- dynamic mapping
- logical qubits
- quantum error correction
- resource reduction
- result assembly
- cross-backend validation
- cross-track experiments
- client co-design
- integration validation
- comparative benchmarks

## Architectural Principle

QAI applications and experiments should operate against logical
capabilities and resource contracts wherever practical.

Target-specific products, hardware, cloud services and infrastructure
should be resolved through appropriate QAI Runtime / Resource Fabric
adapters.

This keeps the Computing Lab product-agnostic while allowing
progressive target-specific experimentation and validation.
