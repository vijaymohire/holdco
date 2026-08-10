# 8.370.1x Extracted Patterns

## 1. Composition / Decomposition

Small gates/operators compose into larger reversible and quantum systems.

Evidence:

- SU1 PS#1
- SU2 PS#2
- SU3 PS#3

## 2. Compute → Use → Uncompute

Temporary ancilla state is computed, used and restored.

Evidence:

- SU1 PS1-Q2

Potential QAI relevance:

- resource lifecycle
- reversible execution
- temporary workspace management

## 3. Representation Transformation

The same semantic operation can be represented as:

- circuit
- operator
- matrix
- eigenbasis
- Bloch geometry
- tensor structure

Evidence:

- SU1
- SU2

## 4. State / Operator Separation

State, transformation operator, observable and measurement result are
distinct computational objects.

Evidence:

- SU1
- SU2
- SU3

## 5. Eigenstructure as Interface

Eigenvalues and eigenvectors provide natural representations for operators,
measurement and later phase information.

Evidence:

- SU2
- SU3

## 6. Conditional Execution

Controlled operations and projector-selected operators express conditional
behavior.

Evidence:

- SU1
- SU2

## 7. Measurement as Information Extraction

Measurement probabilities, expectation values, indirect measurement and
correlation tests form an information-extraction layer.

Evidence:

- SU2
- SU3

## 8. Entanglement as Structural Property

Separability is determined by whether a composite state can be factored into
subsystem states.

Evidence:

- SU3

## 9. Classical-vs-Quantum Benchmark

Establish a classical bound, implement the quantum strategy and compare
results.

Evidence:

- CHSH
- GHZ

## 10. Coherence vs Classical Mixture

A coherent superposition can produce different measurement behavior from a
classical mixture.

Evidence:

- SU3 PS#3

## 11. Structured Tensor / Block Representation

Composite states/operators retain tensor/block structure rather than being
treated as opaque expanded matrices.

Evidence:

- SU2
- SU3-related operator representation

## Emerging Chain

State
→ Operator
→ Composition
→ Transformation
→ Measurement
→ Estimation / Correlation
→ Benchmark / Feedback
