# QAI Execution Phases

The QAI pipeline separates preparation and post-processing from the
quantum-critical execution window.

## Phases

- Prefetch
- Load
- Precompute
- Quantum Critical
- Postprocess

The quantum-critical phase should contain only operations that genuinely
require the quantum execution resource.

The phase model is configurable and should be validated experimentally.
