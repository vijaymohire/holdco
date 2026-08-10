
# SU2 — Quantum Mechanics: Qubits and Tensor Products

## MIT Content

- U1.3 — Quantum Mechanics I — Qubits
- U1.4 — Quantum Mechanics II — Measurement and Tensor Products
- PS#2 — Quantum Mechanics

## Core Concepts

- Global phase
- Qubit state
- Bloch sphere
- Pauli matrices
- Eigenvalues/eigenstates
- Unitary operators
- Basis transformation
- Gate composition
- Phase and Hadamard gates
- Axis-angle rotations
- Tensor products
- Controlled operators
- CNOT
- CZ
- Operator conjugation
- Measurement

## PS2 Evidence

### Q1 — Pauli Eigenstructure

A|ψ⟩ = λ|ψ⟩

Pattern:

Eigenstructure provides a natural operator/measurement basis.

### Q2 — Basis Transformation

A_new = S† A_old S

Pattern:

Representation transformation without changing semantic operation.

### Q3 — Quantum Gates

Sequential gate composition and operator conjugation.

Pattern:

Gate sequence → composite unitary.

### Q4 — Single-Qubit Rotation

State evolution interpreted through Bloch-sphere geometry.

### Q5 — Axis-Angle

U = exp(-iθ n·σ / 2)

Pattern:

Algebraic unitary ↔ geometric rotation representation.

### Q6 — Tensor Products of States

|a⟩ ⊗ |b⟩

Pattern:

Composite-state construction.

### Q7 — Tensor Products / CNOT

Controlled operator:

|0⟩⟨0| ⊗ I + |1⟩⟨1| ⊗ X

CNOT transformed through conjugation into controlled-Z.

Pattern:

Projector-controlled operation and gate-family transformation.

## QAI Patterns

- Eigenstructure as representation
- Basis transformation
- Gate → composite unitary
- Unitary ↔ Bloch geometry
- Tensor state/operator composition
- Projector-controlled operations
- Structured block/tensor representation

## Primitive Candidates

- Eigenstructure Analyzer
- Basis Transform
- Unitary Composition / Validation
- Operator Conjugation
- Bloch / Axis-Angle Conversion
- Tensor Composition
- Controlled Operator Builder
- Structured Tensor / Block Analyzer

## Classification

Educational knowledge, mathematical model, algorithm/procedure,
implementation evidence and candidate reusable capability.

No production primitive promotion.
