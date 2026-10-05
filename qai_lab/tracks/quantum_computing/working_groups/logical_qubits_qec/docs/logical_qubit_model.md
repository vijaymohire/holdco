# Logical Qubit Model

## Purpose

Define the logical-qubit abstraction used by QAI experiments.

## Responsibilities

A logical qubit represents the computational/error-managed layer
between the client algorithm and physical hardware.

## Relationships

VirtualQubit
→ Logical Qubit
→ Physical Qubits
→ QPU

## Initial Questions

- What logical state is being represented?
- What encoding is being used?
- What physical resources are required?
- What error model applies?
- What QEC assumptions are being made?
- What acceptance criteria define a successful experiment?

## Guardrail

A logical qubit must not be treated as equivalent to a physical
qubit or as proof of fault-tolerant quantum computation.
