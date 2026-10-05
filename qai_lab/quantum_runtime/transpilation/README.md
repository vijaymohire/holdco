# Runtime Transpilation

Backend-aware circuit transformation.

Potential inputs:

- topology
- connectivity
- calibration
- gate characteristics
- available qubits
- timing constraints
- backend/session semantics

Do not implement provider-specific assumptions until the target
backend is known.
