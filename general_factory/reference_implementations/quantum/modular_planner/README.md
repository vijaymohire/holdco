# Modular Quantum Planner

## Purpose

This directory contains the canonical General Factory reference implementation for modular quantum workload planning and simulated execution.

The implementation provides a technology-aware but provider-neutral baseline for:

- workload and task definitions;
- quantum resource/module profiles;
- resource-aware task mapping;
- execution-mode selection;
- simulated execution;
- metadata and experiment events;
- evidence capture;
- basic planning validation;
- rejection of unsupported execution requirements.

This is a reference implementation and experimentation baseline.

It is not a production quantum scheduler, compiler, physical QPU runtime, quantum-network service, QEC decoder or demonstration of universal quantum advantage.

## Architectural Position

`	ext
General Framework
        |
        v
General Factory
        |
        +-- Registered implementations
        +-- Adapters
        +-- Runtime services
        +-- Execution profiles
        |
        v
Modular Quantum Planner
        |
        +-- Workload analysis
        +-- Partitioning
        +-- Resource mapping
        +-- Execution-mode selection
        +-- Planning estimates
        |
        v
Resource / Runtime Layer
`",
",


### General Framework

Defines technology-neutral workload semantics, constraints, decomposition contracts, acceptance criteria and governance.

### General Factory

Resolves logical capabilities to registered implementations, adapters, runtime services and execution profiles.

### Modular Quantum Planner

Provides a simple reusable baseline for:

- candidate task partitioning;
- resource/module mapping;
- execution planning;
- capability validation;
- basic resource estimates;
- controlled execution decisions.

### Resource Fabric

The broader architecture treats the Resource Fabric as authoritative for:

- resource capacity;
- availability;
- topology;
- supported operations;
- calibration;
- communication capabilities.

### QAI Processor Modules

Processor modules execute assigned tasks within actual backend constraints.

A 50-qubit module, where used as an example profile, is a configurable profile rather than a universal hardware standard.

### VirtualQubit Metadata

VirtualQubit metadata represents stable logical identity and contextual information such as:

- resource assignment;
- state transitions;
- error observations;
- provenance;
- experiment events.

It does not represent a physical qubit, QEC decoder or quantum-link service.

## Domain Separation

Reusable planner contracts belong in the General Factory.

Domain-specific workloads and acceptance criteria belong in pilot/reference implementations.

The Agriculture Digital Farm pilot must not become the definition of the General Factory planner.

## Execution Boundary

The reference implementation does not assume:

- physical QPUs;
- inter-QPU entanglement;
- quantum-state transfer;
- transduction;
- entanglement swapping;
- fault-tolerant quantum computing;
- quantum error correction execution.

If a workload requires unsupported cross-QPU quantum capabilities, the planner should reject that execution path or use a valid alternative such as:

- independent subproblems;
- classical coordination;
- appropriate circuit-knitting methods;
- simulation.

## Evidence Discipline

Simulated estimates must remain distinguishable from physical hardware measurements.

Experimental conclusions should preserve:

- baseline;
- assumptions;
- configuration;
- resource estimates;
- observed results;
- uncertainty;
- provenance;
- adaptation decisions.

## Files

`	ext
modular_planner/
|-- README.md
|-- docs/
|   -- strategy.md
|-- qai_modular/
|   |-- __init__.py
|   |-- models.py
|   |-- planner.py
|   |-- runtime.py
|   -- demo.py
-- tests/
    -- test_planner.py
`",
",


Reference implementation / experimentation baseline.

Capability maturity should be recorded separately from conceptual strategy.

@vijaymohire