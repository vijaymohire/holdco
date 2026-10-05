# QAI Logical Qubit & QEC Experimentation

## Purpose

This Working Group provides the post-pilot QAI Lab environment for
logical-qubit, VirtualQubit, physical-qubit and QEC experimentation.

The objective is to allow clients and developers to:

- define logical-qubit workloads
- develop QEC algorithms
- emulate logical and physical resources
- perform quantum simulation
- evaluate noise and error behaviour
- test logical-to-physical mapping
- use VirtualQubit metadata for adaptive execution
- compare open-loop and closed-loop execution
- progressively validate workloads on physical QPUs where appropriate
- produce evidence for engineering and client decisions

## Working Group

**WG_Logical_Qubits_and_QEC**

Location:

qai_lab/tracks/quantum_computing/working_groups/logical_qubits_qec/

## Core Architecture

Client Algorithm

→ Logical-Qubit Definition

→ VirtualQubit Registration / Metadata

→ QEC / Encoding Model

→ Logical-to-Physical Mapping

→ Circuit / Operation Compilation

→ Emulation / Simulation / Physical QPU

→ Syndrome / Measurement / Decoder

→ Logical Result & Quality Assessment

→ Evidence & Decision

## Qubit Layers

### VirtualQubit

Stable QAI abstraction and metadata/control object.

It may contain:

- logical qubit identity
- physical mapping
- connectivity requirements
- calibration information
- error/fidelity estimates
- noise characteristics
- coherence estimates
- gate error estimates
- measurement quality
- error history
- benchmark/QAI quality score
- mapping confidence
- runtime policy

VirtualQubit metadata does not itself perform error correction.

### Logical Qubit

Error-managed computational abstraction used by the
client algorithm and QEC experiments.

### Physical Qubit

Actual hardware qubit resource on a QPU.

### QPU

Physical quantum execution resource.

FTQC and universal logical-qubit capability must not be assumed.

## QEC Experimentation Lifecycle

A. Logical-Qubit Design

B. QEC Algorithm

C. Emulation

D. Quantum Simulation

E. Mapping & Adaptation

F. Physical Validation

G. Advantage Assessment

## QAI Lab Modes

1. Logical-Qubit Design
2. Logical-Qubit Emulation
3. Logical-Qubit Quantum Simulation
4. Logical-Qubit Physical Validation

## Evidence Principle

Logical-qubit or QEC capability does not automatically demonstrate
quantum advantage.

Experiments should compare:

Classical Baseline
→ Quantum-Inspired Variant
→ Quantum / QPU Variant

using common acceptance criteria and measurable:

- quality
- cost
- time
- resource consumption
- scalability
- reproducibility

## Architecture Boundary

General Framework
→ reusable abstractions, contracts and interfaces

General Factory
→ reusable implementations, adapters and reference implementations

QAI Lab
→ client experimentation, co-design, evidence and working groups

Domain Pilots
→ domain-specific workloads and acceptance criteria

Do not duplicate canonical General Framework or General Factory
implementation assets inside this Working Group.

## Evidence Maturity

Concept
→ Documented
→ Reference Implementation
→ Demonstrated
→ Experimentally Validated
→ Prototype
→ Production / Operational

## Initial Implementation Principle

Start with emulation and simulation.

Add backend-specific adapters only after actual backend capabilities,
session semantics, calibration and execution constraints are known.

Do not claim FTQC or quantum advantage without appropriate evidence.
