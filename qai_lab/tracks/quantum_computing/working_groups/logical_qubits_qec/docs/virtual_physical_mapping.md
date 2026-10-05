# VirtualQubit and Physical Mapping

## Purpose

Define how a stable VirtualQubit identity is associated with
logical and physical execution resources.

## Principle

The client algorithm should remain stable while the runtime may
change the physical realization.

Example:

Logical L0 → Physical P17

may later become:

Logical L0 → Physical P31

when the runtime determines that the alternative mapping better
satisfies the approved quality and resource policy.

## Candidate Metadata

- logical_qubit_id
- physical_mapping
- connectivity
- calibration
- fidelity
- noise
- coherence
- gate_error
- measurement_quality
- error_history
- mapping_confidence
- runtime_policy

## Guardrail

Metadata enables better decisions. Metadata itself does not correct
quantum errors.
