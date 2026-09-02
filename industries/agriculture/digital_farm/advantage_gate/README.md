# Quantum Advantage Gate

The Quantum Advantage Gate determines whether a problem should use:

- QAI / quantum execution
- Hybrid execution
- Classical execution
- HPC fallback

Conceptual flow:

Problem
  -> Representation
  -> Resource Estimation
  -> Advantage Assessment
  -> Quantum / Hybrid Execution
  -> Classical / HPC Fallback when appropriate
  -> Results
  -> Value Realization

Quantum execution must not be assumed merely because a QPU is available.
