# SU1 — Quantum and Classical Computing Fundamentals

## MIT Content

- U1.1 History and development of quantum computation
- U1.2 Classical computation and reversibility
- PS#1 — Reversible Circuits

## Core Concepts

- Classical circuit universality
- Decision problems
- Boolean functions
- Fault tolerance
- Reversible computation
- NOT
- CNOT
- Toffoli
- Fredkin
- Ancilla
- Compute/use/uncompute
- Quantum-state equivalence
- Global phase
- Bloch sphere
- Unitary operators
- Measurement probability
- Tensor products
- Circuit-to-matrix representation

## Solved Evidence

### PS1-Q1 — Reversible Two-Four-Three Swap

Accepted sequence:

fredkin(a,c,d);
not(a);
fredkin(a,b,d);
not(a)

Pattern:

Conditional reversible composition with control inversion and restoration.

### PS1-Q2 — Controlled-Controlled Swap

Accepted sequence:

toffoli(a,b,e);
fredkin(e,c,d);
toffoli(a,b,e)

Pattern:

Compute → Use → Uncompute.

### PS1-Q3 — Reversible Two-Input Demultiplexer

Accepted sequence:

cnot(b,c);
cnot(a,b);
fredkin(a,c,d);
fredkin(c,a,b);
not(a)

Pattern:

Higher-level reversible function synthesized from primitive gates.

## QAI Patterns

- Reversible conditional composition
- Compute/use/uncompute
- Primitive-gate composition
- Circuit/operator/matrix representation
- State representation
- Structured tensor composition

## Primitive Candidates

- Reversible Gate Composition
- Quantum State Representation
- Unitary State Transformation
- Tensor Composition
- Circuit–Operator–Matrix Translation
- Structured Tensor Scoping

## Evidence Classification

- Educational knowledge
- Mathematical model
- Algorithm / procedure
- Implementation evidence
- Candidate capability

No production maturity is claimed.
