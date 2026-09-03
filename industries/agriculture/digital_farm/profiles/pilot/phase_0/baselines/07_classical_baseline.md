# Phase 0 — Classical Baseline

**File:** `profiles/pilot/phase_0/baselines/07_classical_baseline.md`
**Phase:** Phase 0 — Implementation Readiness & Scope Baseline
**Lifecycle Profile:** Pilot
**Domain:** Agriculture / Digital Farm
**Use Case:** Intelligent Irrigation Decision and Control
**Status:** Phase 0 Baseline

---

## 1. Purpose

This document defines the classical computational baseline for the Digital Farm pilot.

The classical baseline provides the reference implementation against which the QAI decision path can be evaluated.

It establishes a technology-neutral, reproducible, measurable classical decision capability for the Intelligent Irrigation Decision and Control use case.

---

## 2. Architectural Position

The classical baseline is a first-class component of the pilot architecture.

It is not merely a temporary fallback.

It provides:

- a functional reference,
- a QAI comparison reference,
- an operational fallback,
- a reproducibility reference,
- a measurement reference,
- and a minimum executable decision path.

~~~text
Digital Farm
     |
     v
Decision Context
     |
     +-------------------+
     |                   |
     v                   v
Classical Baseline      QAI Path
     |                   |
     |                   v
     |             Advantage Gate
     |                   |
     +---------+---------+
               |
               v
       Common Decision Model
               |
               v
          Policy / Action
~~~

---

## 3. Baseline Principle

The classical baseline must solve the same logical agriculture decision problem presented to the QAI path.

It should not be intentionally weakened merely to make QAI appear advantageous.

The baseline must be:

- valid,
- understandable,
- reproducible,
- measurable,
- sufficiently efficient,
- representative of the defined pilot problem,
- and independently executable.

---

## 4. Classical Baseline Role

The classical baseline serves five primary roles:

1. **Reference** — establishes expected decision behavior.
2. **Fallback** — provides execution when QAI is unavailable or unsuitable.
3. **Comparison** — enables QAI-versus-classical evaluation.
4. **Validation** — verifies the logical correctness of the use case.
5. **Operational Continuity** — prevents QAI availability from becoming a prerequisite for the pilot.

---

## 5. Baseline Scope

The baseline covers:

- farm-state input,
- sensor observations,
- context construction,
- irrigation requirement evaluation,
- irrigation decision generation,
- policy validation,
- command generation,
- state transition,
- KPI measurement,
- evidence capture.

It does not define a particular programming language, library, processor, cloud platform, or optimization package.

---

## 6. Minimum Classical Decision Problem

The baseline solves the following logical problem:

> Given the current farm context, determine whether irrigation should occur and, where configured, determine the appropriate irrigation action while satisfying the applicable constraints.

The decision must consider the inputs defined by the Phase 0 use case and scenario catalogue.

---

## 7. Decision Context

The classical baseline receives a validated decision context.

The context may contain:

- soil moisture,
- temperature,
- humidity,
- crop state,
- water availability,
- field/zone identity,
- current farm state,
- scenario state,
- temporal context,
- configured irrigation policy.

---

## 8. Baseline Inputs

The minimum baseline input set is:

~~~text
Soil Moisture
Temperature
Humidity
Crop State
Water Availability
Current Farm State
Decision Cycle
Irrigation Policy
Scenario Configuration
~~~

Not every input must necessarily affect every baseline decision.

The baseline must explicitly identify which inputs are decision-relevant.

---

## 9. Baseline Outputs

The baseline produces a logical decision candidate.

Possible outputs include:

~~~text
Irrigate
Do Not Irrigate
Irrigation Quantity / Duration
Defer
Human Review
~~~

The exact output vocabulary is controlled by the pilot decision model and policy.

---

## 10. Baseline Decision Semantics

The baseline must produce decisions in the same logical semantic space as the QAI path.

For example:

~~~text
Decision Candidate
    |
    +--> Action: Irrigate / Do Not Irrigate
    |
    +--> Target: Field / Zone
    |
    +--> Quantity / Duration
    |
    +--> Reason / Decision Metadata
    |
    +--> Confidence or Quality Metadata where applicable
~~~

---

# Reference Decision Model

## 11. Baseline Model

The Phase 0 baseline is intentionally simple and interpretable.

A threshold-and-constraint decision model is sufficient for the first pilot.

Conceptually:

~~~text
IF soil moisture < irrigation threshold
AND water availability is sufficient
AND policy permits irrigation
THEN generate irrigation decision
ELSE do not irrigate or follow configured exception path
~~~

This is a logical baseline specification rather than a commitment to a particular implementation.

---

## 12. Irrigation Threshold

The irrigation threshold is a pilot configuration parameter.

It should not be hard-coded into the architectural model.

Example:

~~~text
soil_moisture < configured_threshold
~~~

The actual numerical threshold belongs to the pilot configuration and experimental scenario.

---

## 13. Water Constraint

The baseline must respect water availability.

~~~text
Required Irrigation
       |
       v
Water Availability
       |
   +---+---+
   |       |
Enough   Insufficient
   |       |
   v       v
Irrigate  Constrain / Defer / Reject
~~~

The response to insufficient water is determined by the configured policy.

---

## 14. Crop Context

Where crop state affects irrigation requirements, the baseline may adjust or constrain the decision using crop context.

The baseline must preserve the relationship between:

- crop state,
- water requirement,
- soil moisture,
- water availability,
- irrigation policy.

---

## 15. Environmental Context

Environmental observations may influence the baseline when configured.

Examples include:

- temperature,
- humidity,
- environmental condition.

The baseline should not introduce unconfigured assumptions.

---

## 16. Decision Constraints

The classical decision must satisfy all applicable constraints.

Potential constraints include:

- minimum/maximum irrigation,
- water availability,
- soil moisture boundaries,
- crop requirements,
- safety rules,
- decision-cycle constraints,
- scenario constraints.

---

## 17. Policy Evaluation

The classical result is passed through the common policy-validation path.

~~~text
Classical Decision
       |
       v
Policy Evaluation
       |
   +---+---+
   |       |
 Valid   Invalid
   |       |
   v       v
Continue  Replan / Reject
~~~

The classical baseline therefore does not bypass Digital Farm policy.

---

## 18. Baseline Decision Function

The logical baseline function can be represented as:

~~~text
f(Context, Policy, Constraints)
        |
        v
Decision Candidate
~~~

The function remains intentionally loose and can later be implemented as:

- a function,
- a class,
- an object,
- a service,
- a rules engine,
- a workflow component,
- or another compatible implementation.

---

# Baseline Workflow

## 19. Classical Baseline Workflow

The baseline workflow is:

~~~text
Validated Farm Context
        |
        v
Classical Decision Logic
        |
        v
Decision Candidate
        |
        v
Constraint Evaluation
        |
        v
Policy Validation
        |
        v
Final Classical Decision
~~~

---

## 20. Baseline within Complete Pilot

The classical baseline participates in the complete pilot as follows:

~~~text
Virtual / Emulated Farm
          |
          v
Sensing
          |
          v
Context
          |
          v
Classical Baseline
          |
          v
Policy
          |
          v
Emulated Actuation
          |
          v
Farm State Transition
          |
          v
Feedback
~~~

---

## 21. Baseline Open-Loop Execution

The baseline can first be executed in open-loop mode.

~~~text
Farm State
    |
    v
Sense
    |
    v
Context
    |
    v
Classical Decision
    |
    v
Measure
~~~

This provides the simplest validation path.

---

## 22. Baseline Closed-Loop Execution

The baseline can then participate in closed-loop execution.

~~~text
Sense
  |
  v
Context
  |
  v
Classical Decision
  |
  v
Act
  |
  v
State Transition
  |
  v
Feedback
  |
  +----> Next Cycle
~~~

---

# Classical Baseline and QAI

## 23. Common Problem Principle

The classical baseline and QAI path must receive logically equivalent problem definitions for meaningful comparison.

~~~text
                 Decision Context
                       |
              +--------+--------+
              |                 |
              v                 v
       Classical Path       QAI Path
              |                 |
              v                 v
        Classical Result     QAI Result
              |                 |
              +--------+--------+
                       |
                       v
                  Comparison
~~~

---

## 24. Common Input Principle

Matched experiments should use equivalent:

- farm state,
- observations,
- crop state,
- soil state,
- water state,
- environmental state,
- constraints,
- policy,
- scenario.

---

## 25. Common Objective Principle

Where the QAI experiment defines an optimization objective, the classical baseline should solve the corresponding logical objective.

The baseline must not solve a materially easier or different problem.

---

## 26. Common Constraint Principle

Classical and QAI paths must apply equivalent logical constraints.

This includes:

- water availability,
- irrigation limits,
- safety conditions,
- crop requirements,
- policy constraints.

---

## 27. Common Output Principle

Classical and QAI results must be convertible into the same logical decision representation.

~~~text
Classical Result ----+
                     |
                     v
              Common Decision
                     ^
                     |
QAI Result ----------+
~~~

---

# Baseline and Advantage Gate

## 28. Baseline as Advantage Reference

The classical baseline provides the principal reference for the QAI Advantage Gate.

The Gate may compare expected QAI behavior against:

- classical decision quality,
- classical execution time,
- classical resource consumption,
- classical cost,
- classical scalability.

---

## 29. Advantage Gate Sequence

~~~text
Problem Context
      |
      v
Classical Baseline Characteristics
      |
      v
QAI Suitability Assessment
      |
      v
Advantage Gate
      |
 +----+----+
 |         |
QAI     Classical
 |         |
 v         v
Execute   Execute
~~~

The Gate must be able to select classical execution even when QAI is available.

---

## 30. No-Advantage Principle

If QAI does not provide sufficient measurable advantage under the configured criteria, the classical baseline remains the preferred execution path.

This prevents technology selection from being predetermined.

---

# Classical Fallback

## 31. Fallback Role

The classical baseline is the primary fallback for the QAI path.

Fallback may occur when:

- QAI is unavailable,
- QAI resources are unavailable,
- the Advantage Gate rejects QAI,
- QAI execution fails,
- QAI result quality is insufficient,
- QAI execution exceeds the allowed boundary.

---

## 32. Fallback Workflow

~~~text
QAI Requested
      |
      v
QAI Execution
      |
 +----+----+
 |         |
Success   Failure
 |         |
 v         v
Validate  Fallback
           |
           v
       Classical
           |
           v
      Common Decision
~~~

---

## 33. Fallback Transparency

Fallback must be explicitly recorded.

The system should distinguish:

~~~text
Primary Classical
QAI Selected
QAI Rejected
QAI Failed → Classical Fallback
QAI Result Rejected → Classical Fallback
~~~

This distinction is important for later analysis.

---

# Baseline Correctness

## 34. Functional Correctness

The baseline is functionally correct when it produces the expected logical decision for valid pilot inputs and constraints.

---

## 35. Boundary Correctness

The baseline must behave predictably around decision boundaries.

This includes:

- below threshold,
- at threshold,
- above threshold.

The exact boundary semantics must be configured explicitly.

---

## 36. Constraint Correctness

The baseline must not produce a decision that violates configured constraints.

---

## 37. State Correctness

The baseline must consume the correct state for the decision cycle.

It must not unintentionally use future or stale state.

---

# Baseline Scenarios

## 38. Nominal Scenario

The baseline executes under valid nominal conditions.

Expected outcome:

- valid decision,
- valid policy result,
- valid command where required,
- complete evidence.

---

## 39. Low-Moisture Scenario

Low soil moisture triggers an irrigation decision when water and policy conditions permit.

---

## 40. Adequate-Moisture Scenario

Adequate soil moisture produces a no-irrigation decision unless another configured rule requires action.

---

## 41. Water-Constrained Scenario

The baseline must respect limited water availability.

---

## 42. No-Water Scenario

When water is unavailable, the baseline must not generate an unsafe irrigation action.

---

## 43. Sensor-Failure Scenario

The baseline must follow the configured observation-recovery policy when required inputs are unavailable.

---

## 44. Environmental-Variation Scenario

Changes in configured environmental inputs are evaluated without changing the baseline's logical definition.

---

# Baseline Determinism

## 45. Deterministic Reference

Where identical controlled inputs are supplied, the baseline should produce identical results.

This provides a stable comparison reference for QAI experimentation.

---

## 46. Deterministic Configuration

The baseline configuration should identify:

- threshold values,
- constraint values,
- policy version,
- scenario,
- decision rules,
- relevant parameters.

---

## 47. Repeated Execution

Repeated baseline execution under equivalent conditions should produce consistent outputs.

Where stochastic behavior is introduced later, it must be explicitly identified.

---

# Baseline Performance

## 48. Execution Time

The baseline execution time should be measured.

At minimum distinguish:

- context preparation,
- decision computation,
- policy validation,
- total decision latency.

---

## 49. Resource Consumption

The baseline should measure relevant resources such as:

- CPU,
- memory,
- storage,
- network,
- energy where measurable.

Additional resources may be introduced later.

---

## 50. Scalability

The baseline should support controlled scaling of the logical problem.

Scaling dimensions may include:

- number of zones,
- number of observations,
- number of decision variables,
- number of scenarios,
- number of cycles.

---

# Baseline Quality

## 51. Decision Quality

Decision quality should be measured against the defined pilot objective.

Possible dimensions include:

- correctness,
- constraint compliance,
- irrigation effectiveness,
- water utilization.

---

## 52. Reliability

The baseline should successfully execute the defined valid scenario set with predictable behavior.

---

## 53. Robustness

The baseline should remain valid under expected changes in:

- soil moisture,
- environmental conditions,
- water availability,
- crop state,
- sensor conditions.

---

# Baseline Evidence

## 54. Evidence Record

Each baseline execution should capture sufficient evidence to establish:

- input context,
- configuration,
- decision,
- execution characteristics,
- state transition,
- measurements.

---

## 55. Baseline Trace

The baseline execution trace should follow:

~~~text
Input Context
     |
     v
Baseline Version
     |
     v
Decision Logic
     |
     v
Decision Candidate
     |
     v
Policy Result
     |
     v
Action
     |
     v
State Transition
     |
     v
Measurement
~~~

---

## 56. Baseline Reproducibility

A baseline result should be reproducible using the preserved:

- scenario,
- input state,
- configuration,
- baseline version,
- workflow,
- relevant execution parameters.

---

# Baseline Versioning

## 57. Baseline Identifier

The baseline receives a stable identifier.

~~~text
BASE-CLASSICAL-001
~~~

---

## 58. Baseline Version

Example:

~~~text
BASE-CLASSICAL-001
Version: 0.1
~~~

Future changes may produce:

~~~text
BASE-CLASSICAL-001
Version: 0.2
Version: 1.0
~~~

---

## 59. Baseline Change Control

Changes to the baseline must identify potential impacts on:

- QAI comparison,
- Advantage Gate,
- scenarios,
- KPIs,
- evidence,
- acceptance criteria.

A baseline change should not silently invalidate historical comparisons.

---

# Baseline Implementation Boundary

## 60. Phase 0 Implementation Boundary

Phase 0 defines the baseline logically.

It does not require a sophisticated optimization implementation.

The minimum implementation should be:

- callable,
- deterministic,
- testable,
- measurable,
- traceable,
- compatible with the pilot workflow.

---

## 61. Phase 1 Implementation

Phase 1 should implement the classical baseline as an executable virtual capability.

~~~text
Logical Baseline
      |
      v
Virtual Implementation
      |
      v
Callable Execution
      |
      v
Simulation
      |
      v
Closed Loop
~~~

---

# Baseline Relationship to Functions

## 62. Function Relationship

The baseline consumes the loose decision functions defined by the Phase 0 function inventory.

It does not require those functions to become classes or objects immediately.

The implementation structure may emerge during virtualization, emulation, and simulation.

---

## 63. Future Refactoring

As implementation experience accumulates, the baseline may naturally be represented through:

- classes,
- objects,
- services,
- pipelines,
- rule components,
- optimization components.

Such refactoring must preserve the logical baseline contract.

---

# Baseline Relationship to Interfaces

## 64. Interface Relationship

The baseline uses the logical interfaces defined in the Phase 0 interface inventory.

Key interactions include:

~~~text
Farm Context Interface
          |
          v
Classical Decision Interface
          |
          v
Decision Candidate Interface
          |
          v
Irrigation Policy Interface
          |
          v
Final Decision Interface
~~~

---

# Baseline Relationship to Virtualization

## 65. Virtual Baseline

The classical baseline must be executable against virtualized assets.

This establishes the first callable computational decision path.

---

## 66. Emulated Baseline

The same baseline should execute when sensors, communication, or actuation are emulated.

---

## 67. Simulated Baseline

The baseline should operate inside the simulation environment against controlled scenarios.

---

# Baseline Relationship to CPS

## 68. CPS Compatibility

The baseline should remain usable when virtual/emulated assets are replaced by physical CPS components.

~~~text
Virtual Sensor
     |
     v
Classical Baseline
     |
     v
Virtual Actuator

        becomes

Physical Sensor
     |
     v
Classical Baseline
     |
     v
Physical Actuator
~~~

The logical decision capability remains the same.

---

# Baseline Relationship to QAI Lab

## 69. QAI Lab Reference

The classical baseline becomes the control/reference condition for QAI Lab experiments.

It allows QAI experiments to answer:

> Does the QAI implementation provide measurable benefit over an appropriate classical solution for the same problem?

---

## 70. Matched QAI Experiment

A matched experiment should use:

~~~text
Same Scenario
Same Input State
Same Constraints
Same Objective
Same Decision Semantics
       |
 +-----+-----+
 |           |
 v           v
Classical   QAI
 |           |
 +-----+-----+
       |
       v
Comparison
~~~

---

## 71. QAI Lab Baseline Stability

The classical baseline should remain stable during a defined comparison campaign unless the experiment explicitly studies baseline changes.

This prevents moving-reference comparisons.

---

# Baseline Measurements

## 72. Core Measurement Set

The minimum measurement set should include:

- decision correctness,
- decision latency,
- resource consumption,
- constraint compliance,
- irrigation outcome,
- water utilization where modeled.

---

## 73. QAI Comparison Measurements

Where QAI is evaluated, additionally compare:

- QAI execution latency,
- QAI resource use,
- QAI result quality,
- QAI confidence,
- QAI cost where measurable,
- fallback frequency.

---

## 74. Measurement Normalization

Classical and QAI measurements should be captured using equivalent measurement boundaries wherever possible.

For example:

~~~text
Input Available
      |
      v
Start Measurement
      |
      v
Decision Execution
      |
      v
Decision Available
      |
      v
Stop Measurement
~~~

The measurement boundary must be consistent across compared executions.

---

# Baseline Acceptance

## 75. Baseline Acceptance Criteria

The classical baseline is acceptable when it:

- executes the minimum decision problem,
- produces valid decisions,
- respects configured constraints,
- supports required scenarios,
- is callable,
- is reproducible,
- produces measurable outputs,
- supports QAI comparison,
- supports fallback.

---

## 76. Minimum Baseline Test Set

The minimum test set is:

~~~text
1. Nominal Condition
2. Low Soil Moisture
3. Adequate Soil Moisture
4. Limited Water
5. No Water
6. Sensor Failure / Recovery
7. Boundary Condition
8. Repeated Execution
~~~

---

## 77. Baseline Pass Condition

The baseline passes when all mandatory scenarios produce valid and explainable results and no mandatory safety or constraint condition is violated.

---

# Baseline Limitations

## 78. Intentional Simplicity

The Phase 0 baseline is intentionally simple.

It is not intended to represent the maximum sophistication of classical agriculture optimization.

Its purpose is to establish a trustworthy reference.

---

## 79. Future Classical Enhancement

Later phases may introduce:

- optimization,
- predictive models,
- machine learning,
- advanced scheduling,
- multi-zone optimization,
- HPC execution.

Such enhancements should be versioned and evaluated as new baseline variants.

---

## 80. Baseline Variant Principle

Future classical methods should not silently replace the Phase 0 reference.

Instead:

~~~text
BASE-CLASSICAL-001
       |
       +---- Reference Version
       |
       +---- Enhanced Variant
       |
       +---- HPC Variant
       |
       +---- ML Variant
       |
       +---- Optimization Variant
~~~

This preserves historical comparability.

---

# Governance

## 81. Baseline Traceability

The baseline must remain traceable to:

~~~text
Use Case
   |
   v
Decision Requirement
   |
   v
Decision Context
   |
   v
Baseline
   |
   v
Workflow
   |
   v
Scenario
   |
   v
Measurement
   |
   v
Evidence
~~~

---

## 82. Baseline Auditability

A reviewer should be able to determine:

- what baseline was executed,
- under which scenario,
- with which inputs,
- under which configuration,
- what decision was produced,
- what resources were consumed,
- what outcome occurred.

---

## 83. Baseline Neutrality

The baseline must not be intentionally biased toward or against QAI.

It is a reference mechanism, not a marketing mechanism.

---

# Phase 0 and G0

## 84. G0 Baseline Readiness

The classical baseline is ready for G0 when:

- its logical decision problem is defined,
- inputs are defined,
- outputs are defined,
- decision rules are defined,
- constraints are defined,
- fallback role is defined,
- comparison role is defined,
- measurement requirements are defined.

---

## 85. G0 Baseline Decision

The baseline contributes to the overall G0 decision:

~~~text
Baseline Defined?
      |
      v
Callable?
      |
      v
Reproducible?
      |
      v
Measurable?
      |
      v
QAI Comparable?
      |
      v
Fallback Ready?
      |
      v
BASELINE READY
~~~

---

# Phase 1 Handoff

## 86. Handoff to Virtualization

Phase 1 should create the first executable implementation of:

**BASE-CLASSICAL-001**

against the virtual pilot assets.

---

## 87. Handoff to Emulation

The baseline should operate with emulated sensing, communication, and actuation capabilities.

---

## 88. Handoff to Simulation

The baseline should execute across the Phase 0 scenario catalogue.

---

## 89. Handoff to Closed Loop

The baseline should participate in:

**Sense → Process → Decide → Act → State Transition → Feedback**

---

## 90. Handoff to QAI Evaluation

The stable classical baseline becomes the reference path for QAI evaluation.

---

# Final Baseline Architecture

## 91. Complete Classical Baseline Architecture

~~~text
                    DIGITAL FARM PILOT
                           |
                           v
                    Decision Context
                           |
                           v
                 BASE-CLASSICAL-001
                           |
              +------------+------------+
              |                         |
              v                         v
       Decision Logic             Constraints
              |                         |
              +------------+------------+
                           |
                           v
                    Decision Candidate
                           |
                           v
                       Policy
                           |
                           v
                    Final Decision
                           |
                           v
                  Emulated Actuator
                           |
                           v
                   Farm State Change
                           |
                           v
                       Feedback
                           |
                           +----> Next Cycle


                 QAI COMPARISON PATH
                           |
                           v
                    Same Problem
                           |
              +------------+------------+
              |                         |
              v                         v
         Classical                    QAI
              |                         |
              +------------+------------+
                           |
                           v
                      Comparison
                           |
                           v
                    Advantage Evidence
~~~

---

## 92. Baseline Reference Principle

The classical baseline is the **stable reference point** for the pilot.

It establishes what the agriculture decision can already achieve before introducing QAI execution.

---

## 93. Baseline Fallback Principle

QAI must never be the only path required for pilot operation.

The classical baseline ensures that:

**QAI availability ≠ system availability.**

---

## 94. Baseline Comparison Principle

A meaningful QAI claim requires comparison against a valid classical reference solving the same logical problem under comparable conditions.

---

## 95. Baseline Evolution Principle

The classical baseline may evolve toward more advanced classical methods, but evolution must remain:

- versioned,
- traceable,
- measurable,
- reproducible,
- and comparable.

---

## 96. Baseline Virtualization Principle

The baseline is deliberately defined so that it can move from:

**Logical Function → Virtual Capability → Emulated Execution → Simulation → Closed-Loop CPS**

without changing its logical decision semantics.

---

## 97. Baseline QAI Lab Principle

The same classical baseline should remain available throughout QAI Lab experimentation as the reference/control condition.

~~~text
Agriculture Problem
       |
       +--------------------+
       |                    |
       v                    v
Classical Reference       QAI Experiment
       |                    |
       +---------+----------+
                 |
                 v
          Evidence / Comparison
                 |
                 v
        Advantage Assessment
~~~

---

## 98. Baseline Non-Duplication Principle

This document does not duplicate:

- asset definitions,
- function definitions,
- interface contracts,
- workflows,
- scenarios,
- KPI definitions,
- value definitions,
- QAI implementations.

It establishes the classical decision reference that those components use.

---

## 99. Baseline Completion Principle

The Phase 0 classical baseline is complete when it is sufficiently defined to become a callable implementation in Phase 1 and to serve as a trustworthy comparison and fallback path.

---

## 100. Phase 0 Completion Status

The classical baseline establishes the reference computational decision path for the Intelligent Irrigation Decision and Control pilot.

It provides the foundation for:

- first callable pilot execution,
- virtualized implementation,
- emulation,
- simulation,
- open-loop testing,
- closed-loop execution,
- QAI Advantage Gate evaluation,
- QAI comparison,
- fallback,
- KPI measurement,
- value measurement,
- evidence generation,
- CPS progression,
- and QAI Lab experimentation.

**Status: COMPLETE — PHASE 0 CLASSICAL BASELINE**
---

