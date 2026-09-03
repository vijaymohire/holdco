# Phase 0 — QAI Evaluation

**File:** `profiles/pilot/phase_0/qai_evaluation/08_qai_evaluation.md`
**Phase:** Phase 0 — Implementation Readiness & Scope Baseline
**Lifecycle Profile:** Pilot
**Domain:** Agriculture / Digital Farm
**Use Case:** Intelligent Irrigation Decision and Control
**Status:** Phase 0 Baseline

---

## 1. Purpose

This document defines the Phase 0 QAI evaluation framework for the Digital Farm pilot.

The purpose is to establish how QAI will be evaluated against the classical baseline using controlled agriculture scenarios, common decision semantics, measurable criteria, resource awareness, and reproducible evidence.

The objective is not to assume that QAI provides an advantage.

The objective is to determine, through controlled experimentation, whether QAI provides a meaningful advantage for the defined pilot problem.

---

## 2. Architectural Position

QAI evaluation belongs to the Digital Farm pilot's decision and experimentation boundary.

The Digital Farm coordinates the evaluation process but does not implement the underlying QAI technology.

~~~text
Digital Farm
     |
     v
QAI Evaluation
     |
     +--------------------+
     |                    |
     v                    v
Classical Baseline      QAI Path
     |                    |
     +---------+----------+
               |
               v
        Common Evaluation
               |
               v
       KPI / Value / Evidence
~~~

---

## 3. Evaluation Principle

QAI evaluation must answer:

> Does the QAI approach provide measurable value or advantage over an appropriate classical reference for the same logical agriculture problem under comparable conditions?

The evaluation must therefore be:

- fair,
- controlled,
- measurable,
- reproducible,
- technology-neutral,
- vendor-neutral,
- resource-aware,
- and evidence-driven.

---

## 4. Evaluation Scope

Phase 0 defines evaluation of:

- QAI problem suitability,
- QAI representation,
- QAI execution,
- QAI result quality,
- classical comparison,
- resource requirements,
- execution performance,
- fallback behavior,
- KPI impact,
- value impact,
- and evidence quality.

Phase 0 does not require a physical QPU.

---

## 5. Minimum QAI Evaluation Problem

The minimum QAI evaluation problem is the same logical irrigation decision problem defined by the pilot use case.

The QAI path must determine whether and, where applicable, how irrigation should occur while satisfying the same logical constraints used by the classical baseline.

---

## 6. Evaluation Boundary

The evaluation boundary is:

~~~text
Farm State
    |
    v
Validated Context
    |
    v
Problem Definition
    |
    v
QAI Representation
    |
    v
QAI Execution
    |
    v
Result Interpretation
    |
    v
Decision Candidate
    |
    v
Policy Validation
    |
    v
Comparison / Measurement
~~~

---

## 7. QAI Evaluation Roles

QAI evaluation provides the following roles:

1. QAI suitability assessment.
2. QAI-versus-classical comparison.
3. Advantage Gate evidence.
4. Resource evaluation.
5. Experimental learning.
6. Future QAI Lab preparation.
7. Potential promotion evidence.

---

## 8. QAI Evaluation Lifecycle

The evaluation lifecycle is:

~~~text
Problem Selection
      |
      v
Classical Reference
      |
      v
QAI Problem Preparation
      |
      v
Representation
      |
      v
Resource Estimation
      |
      v
Advantage Gate
      |
      v
QAI Execution
      |
      v
Result Validation
      |
      v
Classical-QAI Comparison
      |
      v
KPI / Value Evaluation
      |
      v
Evidence
      |
      v
Learning / Promotion Decision
~~~

---

## 9. Evaluation Inputs

The evaluation receives:

- use case,
- scenario,
- farm state,
- validated observations,
- decision context,
- classical baseline definition,
- QAI problem definition,
- QAI representation,
- constraints,
- objective,
- resource configuration,
- KPI definitions,
- value criteria.

---

## 10. Evaluation Outputs

The evaluation produces:

- QAI result,
- classical result,
- comparison result,
- resource measurements,
- performance measurements,
- KPI measurements,
- value measurements,
- Advantage Gate evidence,
- experiment evidence,
- evaluation status.

---

# QAI Problem Definition

## 11. Problem Definition

The QAI problem must be explicitly defined before execution.

It should identify:

- decision variables,
- input variables,
- constraints,
- objective,
- expected output,
- problem size,
- scenario,
- evaluation criteria.

---

## 12. Decision Variables

The initial irrigation problem may contain logical decision variables such as:

~~~text
Irrigation Required
Irrigation Amount / Duration
Target Irrigation Zone
Decision Timing
~~~

The exact variable set is controlled by the pilot experiment definition.

---

## 13. Problem Constraints

QAI evaluation must preserve the applicable constraints.

Potential constraints include:

- water availability,
- irrigation limits,
- soil conditions,
- crop requirements,
- safety,
- policy,
- decision-cycle constraints.

---

## 14. Objective

The QAI experiment must define what it is trying to optimize or determine.

Possible objectives include:

- irrigation effectiveness,
- water utilization,
- decision quality,
- resource efficiency,
- operational suitability.

The objective must be explicit before comparison.

---

## 15. Problem Size

Problem size must be identified for each experiment.

Potential scaling dimensions include:

- number of irrigation zones,
- number of decision variables,
- number of observations,
- number of constraints,
- number of decision cycles.

---

# Classical Reference

## 16. Classical Reference Requirement

Every comparative QAI evaluation must have an appropriate classical reference.

The reference is:

**BASE-CLASSICAL-001**

as defined in the Phase 0 classical baseline.

---

## 17. Reference Equivalence

The classical and QAI paths should receive equivalent:

- input state,
- scenario,
- constraints,
- objective,
- decision semantics,
- policy conditions.

~~~text
Same Problem
     |
 +---+---+
 |       |
 v       v
Classical QAI
 |       |
 +---+---+
     |
     v
Comparison
~~~

---

## 18. Reference Stability

The classical reference should remain stable during a defined evaluation campaign.

If it changes, the baseline version must be explicitly recorded.

---

## 19. Fair Comparison

The evaluation must not compare:

- a sophisticated QAI method against an artificially weak classical method,
- different problem definitions,
- different constraints,
- different input conditions,
- or incompatible output semantics.

---

# QAI Representation

## 20. Representation Principle

The QAI representation converts the logical agriculture problem into a representation suitable for the selected QAI capability.

The representation is an implementation concern below the Digital Farm decision semantics.

---

## 21. Representation Boundary

~~~text
Agriculture Decision Problem
          |
          v
Logical Problem Definition
          |
          v
QAI Representation
          |
          v
QAI Execution
~~~

The agriculture domain model must remain independent of the representation.

---

## 22. Representation Variants

Future experiments may evaluate different representations while keeping the logical problem unchanged.

Examples include:

- alternative encodings,
- alternative formulations,
- alternative optimization representations,
- alternative hybrid decompositions.

The catalogue does not prescribe one specific technique.

---

## 23. Representation Measurement

Where relevant, evaluation should measure:

- representation size,
- transformation time,
- resource requirements,
- information preservation,
- execution suitability.

---

# QAI Execution

## 24. QAI Execution Principle

QAI execution is performed only after the problem passes the configured suitability and resource checks.

---

## 25. Execution Environments

QAI execution may occur in:

- local simulation,
- emulation,
- hybrid execution,
- remote quantum capability,
- future physical QPU environments.

The logical evaluation framework remains the same.

---

## 26. Execution Metadata

Each QAI execution should record relevant metadata such as:

- QAI representation,
- execution configuration,
- backend category,
- resource request,
- execution time,
- shots where applicable,
- queue time where applicable,
- result quality,
- confidence where applicable.

---

## 27. Execution Result

The execution produces a QAI result that must be interpreted into the common decision representation.

~~~text
QAI Execution
     |
     v
QAI Result
     |
     v
Result Interpretation
     |
     v
Decision Candidate
~~~

---

# Advantage Gate Evaluation

## 28. Advantage Gate Role

The Advantage Gate determines whether QAI execution is justified for the specific problem instance.

It is a decision mechanism, not a permanent declaration that QAI is superior.

---

## 29. Advantage Gate Inputs

The Gate may consider:

- problem suitability,
- classical baseline performance,
- expected QAI benefit,
- QAI resource requirements,
- execution latency,
- cost,
- confidence,
- reliability,
- operational constraints.

---

## 30. Advantage Gate Decision

~~~text
Problem
   |
   v
Suitability
   |
   v
Resource Assessment
   |
   v
Expected Advantage
   |
   v
Advantage Gate
   |
 +--+--+
 |     |
QAI  Classical
 |     |
 v     v
Execute / Fallback
~~~

---

## 31. Advantage Gate Outcomes

The logical outcomes are:

~~~text
QAI_ACCEPTED
QAI_REJECTED
QAI_UNAVAILABLE
QAI_RESOURCE_LIMITED
QAI_FALLBACK_REQUIRED
~~~

The exact implementation may use another compatible representation.

---

## 32. Advantage Gate Evidence

Every Gate decision should preserve enough evidence to explain:

- why QAI was selected,
- why QAI was rejected,
- why fallback occurred,
- which resource conditions influenced the decision.

---

# QAI Result Validation

## 33. Result Validity

A QAI result must first be technically valid before it can be considered for operational comparison.

Validation may include:

- result structure,
- completeness,
- execution integrity,
- constraint compliance,
- interpretation validity.

---

## 34. Result Quality

The result should be evaluated against the configured quality requirements.

Possible measures include:

- objective value,
- decision quality,
- confidence,
- constraint satisfaction,
- consistency.

---

## 35. Result Rejection

A QAI result may be rejected when:

- invalid,
- incomplete,
- below configured quality,
- constraint violating,
- operationally unsuitable.

Rejected results must remain recorded as evidence.

---

# Classical-QAI Comparison

## 36. Comparison Principle

The comparison evaluates both paths against common criteria.

~~~text
             Same Scenario
                  |
          +-------+-------+
          |               |
          v               v
     Classical           QAI
          |               |
          +-------+-------+
                  |
                  v
              Compare
                  |
                  v
          Evidence / Result
~~~

---

## 37. Functional Comparison

First determine whether the classical and QAI paths produce valid decisions under the same logical conditions.

---

## 38. Decision Comparison

Compare:

- irrigation decision,
- target zone,
- quantity/duration,
- constraint compliance,
- decision quality.

---

## 39. Performance Comparison

Compare:

- decision latency,
- execution time,
- preparation overhead,
- resource consumption.

---

## 40. Resource Comparison

Compare relevant:

- compute,
- memory,
- quantum resources,
- shots,
- network,
- energy,
- budget,
- queue time.

---

## 41. Reliability Comparison

Compare:

- successful execution rate,
- invalid result rate,
- fallback rate,
- recovery rate,
- repeatability.

---

# QAI Advantage Dimensions

## 42. Advantage Dimension Model

QAI advantage may exist in one or more dimensions.

~~~text
                 QAI Advantage
                      |
      +---------------+---------------+
      |               |               |
      v               v               v
   Quality        Performance      Resources
      |               |               |
      +---------------+---------------+
                      |
                      v
                    Value
~~~

---

## 43. Quality Advantage

Quality advantage means QAI produces a materially better result under comparable conditions.

---

## 44. Performance Advantage

Performance advantage may include:

- lower decision latency,
- improved execution performance,
- better scaling behavior.

---

## 45. Resource Advantage

Resource advantage may include:

- lower resource requirement,
- better utilization,
- more efficient execution.

---

## 46. Economic Advantage

Economic advantage considers whether the QAI path produces measurable benefit relative to its execution cost.

---

## 47. Operational Advantage

Operational advantage considers:

- reliability,
- availability,
- maintainability,
- integration suitability,
- decision responsiveness.

---

## 48. Composite Advantage

QAI may provide advantage through a combination of dimensions.

The evaluation should not reduce all advantages to one metric unless the pilot explicitly defines such a metric.

---

# Negative and Neutral Results

## 49. No Advantage Result

If QAI does not provide measurable advantage, the result should be recorded as:

**NO DEMONSTRATED ADVANTAGE**

This is a valid experimental outcome.

---

## 50. Classical Advantage Result

If the classical baseline performs better, the result should be recorded objectively.

This provides useful evidence for:

- Advantage Gate tuning,
- future QAI research,
- resource optimization,
- problem selection.

---

## 51. Inconclusive Result

An evaluation may be inconclusive when:

- insufficient evidence exists,
- measurements are not comparable,
- execution conditions were not controlled,
- resource conditions changed materially,
- the problem formulation was incomplete.

---

# Resource Evaluation

## 52. Resource Categories

QAI evaluation may consider:

- CPU,
- GPU,
- NPU,
- TPU,
- FPGA,
- HPC,
- QPU,
- memory,
- storage,
- network,
- energy,
- budget,
- time.

---

## 53. QAI Resource Demand

The evaluation should estimate resources before execution where possible and measure actual consumption after execution.

~~~text
Estimated Resources
        |
        v
Advantage Gate
        |
        v
QAI Execution
        |
        v
Actual Resources
        |
        v
Estimate vs Actual
~~~

---

## 54. Resource Efficiency

Resource efficiency should consider both:

- result quality,
- resources consumed.

A faster result is not necessarily advantageous if it requires disproportionate resources.

---

# Performance Evaluation

## 55. Latency

Measure the relevant latency boundary consistently.

Potential boundaries include:

- QAI preparation,
- QAI execution,
- result interpretation,
- complete decision path.

---

## 56. Throughput

Where multiple decision instances are evaluated, throughput may be measured as:

- decisions per unit time,
- scenarios processed per unit time,
- experiments completed per unit time.

---

## 57. Scaling

QAI performance should be evaluated as the logical problem grows.

The scaling experiment should preserve problem semantics.

---

# Reliability Evaluation

## 58. Execution Success

Record the proportion of QAI executions that complete successfully.

---

## 59. Result Reliability

Record:

- valid results,
- invalid results,
- rejected results,
- fallback events.

---

## 60. Repeatability

Repeated execution under controlled conditions should be evaluated for consistency.

Where stochastic QAI behavior is expected, distributions and appropriate statistical measures may be used.

---

# Scenario-Based Evaluation

## 61. Nominal Scenario Evaluation

Evaluate QAI under normal farm conditions.

This establishes the initial reference point.

---

## 62. Irrigation Scenario Evaluation

Evaluate QAI under:

- low moisture,
- adequate moisture,
- borderline moisture,
- changing moisture.

---

## 63. Constraint Scenario Evaluation

Evaluate QAI under:

- limited water,
- no water,
- policy constraints,
- resource constraints.

---

## 64. Failure Scenario Evaluation

Evaluate behavior under:

- sensor failure,
- QAI execution failure,
- resource unavailability,
- invalid result.

---

## 65. Closed-Loop Evaluation

Evaluate QAI across multiple decision cycles.

~~~text
Cycle 1
  |
  v
QAI Decision
  |
  v
State Change
  |
  v
Cycle 2
  |
  v
QAI Decision
  |
  v
State Change
  |
  +---- repeat
~~~

This measures cumulative behavior rather than a single isolated decision.

---

# QAI and Fallback

## 66. Fallback Requirement

Every QAI evaluation must preserve a classical fallback path where operational continuity requires it.

---

## 67. Fallback Measurement

Record:

- number of QAI attempts,
- number of QAI successes,
- number of QAI failures,
- number of fallbacks,
- reasons for fallback.

---

## 68. Fallback Impact

Fallback frequency may itself become an evaluation metric because frequent fallback can reduce the practical value of a QAI capability.

---

# QAI and Human Oversight

## 69. Human Review

Where the pilot permits human-assisted operation, QAI recommendations may require human review.

---

## 70. Human Override

Human override must be measured separately from QAI execution success.

An override does not necessarily indicate QAI failure; it may represent an intentional governance control.

---

# Measurement Framework

## 71. Core QAI KPI Set

The initial evaluation should measure:

- decision quality,
- constraint compliance,
- decision latency,
- execution time,
- resource consumption,
- successful execution rate,
- fallback rate,
- irrigation outcome,
- water utilization where modeled.

---

## 72. Value Measures

Potential value measures include:

- water savings,
- improved irrigation effectiveness,
- operational efficiency,
- resource efficiency,
- cost,
- sustainability.

---

## 73. Measurement Boundary

Classical and QAI measurements should use equivalent boundaries.

~~~text
Problem Ready
    |
    v
Start
    |
    v
Preparation
    |
    v
Execution
    |
    v
Result Available
    |
    v
End
~~~

Where preparation is materially different between approaches, it should be separately reported rather than hidden.

---

# Evidence Model

## 74. QAI Evidence Record

Each QAI evaluation should capture:

- experiment identifier,
- scenario,
- baseline version,
- QAI representation,
- execution configuration,
- input state,
- constraints,
- objective,
- resource conditions,
- QAI result,
- classical result,
- measurements,
- outcome,
- evaluation status.

---

## 75. Evidence Chain

~~~text
Scenario
   |
   v
Input State
   |
   v
Problem Definition
   |
   v
Representation
   |
   v
Execution
   |
   v
Result
   |
   v
Comparison
   |
   v
KPI / Value
   |
   v
Evidence
~~~

---

## 76. Evidence Reproducibility

A future evaluator should be able to reconstruct the evaluation conditions from the preserved evidence and configuration.

---

# QAI Experiment Design

## 77. Controlled Experiment

A QAI experiment should change only intended variables.

---

## 78. Matched Experiment

The preferred comparison is:

~~~text
Scenario S
    |
    +---- Classical Run
    |
    +---- QAI Run
    |
    v
Equivalent Conditions
    |
    v
Comparison
~~~

---

## 79. Repeated Experiment

Repeat evaluation when necessary to distinguish:

- stable effects,
- stochastic effects,
- measurement noise,
- scenario sensitivity.

---

## 80. Parameter Sweep

A parameter sweep may vary:

- problem size,
- soil conditions,
- water constraints,
- QAI resources,
- representation parameters.

---

# QAI Evaluation Status

## 81. Evaluation Status Values

Logical evaluation status may be:

~~~text
DEFINED
READY
EXECUTED
VALIDATED
ADVANTAGE_DEMONSTRATED
NO_ADVANTAGE_DEMONSTRATED
CLASSICAL_PREFERRED
INCONCLUSIVE
FAILED
~~~

---

## 82. Advantage Classification

A high-level classification may be:

~~~text
QAI Advantage
     |
 +---+-----------------------------+
 |                                 |
 v                                 v
Demonstrated                    Not Demonstrated
 |                                 |
 +-------------+-------------------+
               |
               v
        Operational Decision
~~~

---

# QAI Promotion

## 83. Promotion Principle

A QAI capability should progress toward later realization only when sufficient evidence demonstrates that it is:

- technically valid,
- useful,
- measurable,
- reproducible,
- resource-feasible,
- and operationally relevant.

---

## 84. Promotion Path

~~~text
QAI Hypothesis
      |
      v
Controlled Experiment
      |
      v
Simulation
      |
      v
Validated Result
      |
      v
Advantage Evidence
      |
      v
QAI Lab Candidate
      |
      v
CPS / Production Candidate
~~~

---

## 85. No-Promotion Outcome

If evidence does not support promotion, the result remains valuable as experimental knowledge.

No-promotion is not equivalent to experiment failure.

---

# QAI Lab Relationship

## 86. QAI Lab Reuse

The Phase 0 evaluation framework should become the foundation for later QAI Lab experiments.

The QAI Lab can vary:

- representation,
- algorithm,
- backend,
- resources,
- problem size,
- execution configuration.

---

## 87. Stable Agriculture Semantics

The QAI Lab should preserve:

- agriculture use case,
- decision meaning,
- scenario semantics,
- input/output meaning,
- KPI semantics.

---

## 88. QAI Lab Experiment Matrix

~~~text
                 QAI Representation
                  /      |      \
                 /       |       \
             Variant A Variant B Variant C
                |         |         |
             Backend 1 Backend 2 Backend 3
                 \       |       /
                  \      |      /
                   Comparison
                       |
                       v
                    Evidence
~~~

---

# Virtualization and Emulation

## 89. Virtual QAI Evaluation

The first QAI evaluation should be executable within the laptop/simulation boundary.

This enables early experimentation without physical quantum hardware.

---

## 90. Emulated QAI Evaluation

Where an emulator is available, the same logical QAI evaluation should be executable through it.

The agriculture workflow remains unchanged.

---

## 91. Physical QAI Evaluation

Physical QPU execution is a future realization option.

When introduced, the same logical experiment definition should be reused wherever practical.

---

# Technology Neutrality

## 92. Technology-Neutral Evaluation

This document does not prescribe:

- quantum processor architecture,
- quantum vendor,
- quantum SDK,
- quantum algorithm,
- classical processor,
- cloud provider,
- simulation platform.

Such choices belong to implementation and experiment configuration.

---

## 93. Vendor Neutrality

Evaluation results should identify the characteristics of the execution environment without making the agriculture workflow dependent on a vendor.

---

# Governance

## 94. Evaluation Traceability

Every evaluation must trace to:

~~~text
Use Case
   |
   v
Scenario
   |
   v
Workflow
   |
   v
Classical Baseline
   |
   v
QAI Experiment
   |
   v
Measurement
   |
   v
Evidence
   |
   v
Evaluation Result
~~~

---

## 95. Evaluation Auditability

An evaluator should be able to determine:

- what was tested,
- why it was tested,
- under what conditions,
- against which baseline,
- with which QAI configuration,
- what was measured,
- what conclusion was reached.

---

## 96. Evaluation Integrity

Evaluation results must not be selectively reported to imply advantage.

Negative, neutral, inconclusive, and classical-preferred results are valid outcomes.

---

# G0 Readiness

## 97. G0 QAI Evaluation Readiness

The QAI evaluation definition is ready for G0 when:

- the QAI problem is defined,
- the classical reference is defined,
- comparison conditions are defined,
- Advantage Gate criteria are defined,
- resource dimensions are defined,
- KPI dimensions are defined,
- evidence requirements are defined,
- fallback behavior is defined.

---

## 98. G0 Evaluation Decision

~~~text
Problem Defined
      |
      v
Classical Reference Defined
      |
      v
QAI Path Defined
      |
      v
Comparison Defined
      |
      v
Measurement Defined
      |
      v
Evidence Defined
      |
      v
QAI EVALUATION READY
~~~

---

# Phase 1 Handoff

## 99. Handoff to Virtualization

Phase 1 should implement the QAI evaluation path as a callable capability within the virtual pilot.

---

## 100. Handoff to Simulation

The QAI evaluation should execute against the Phase 0 scenario catalogue in a controlled simulation environment.

---

## 101. Handoff to Closed Loop

Validated QAI decisions should participate in closed-loop execution:

**Sense → Process → Decide → Act → State Transition → Feedback**

---

## 102. Handoff to QAI Lab

The QAI evaluation framework becomes the experimental control structure for later QAI Lab work.

---

## 103. Handoff to Advantage Gate

Measured QAI results should provide evidence for refining and validating the Advantage Gate.

---

# Final QAI Evaluation Architecture

## 104. Complete QAI Evaluation Architecture

~~~text
                         DIGITAL FARM PILOT
                                |
                                v
                         Decision Context
                                |
                 +--------------+--------------+
                 |                             |
                 v                             v
          Classical Baseline               QAI Path
                 |                             |
                 |                      Problem Definition
                 |                             |
                 |                      Representation
                 |                             |
                 |                      Resource Estimate
                 |                             |
                 |                        Advantage Gate
                 |                             |
                 |                     +-------+-------+
                 |                     |               |
                 |                   Accept          Reject
                 |                     |               |
                 |                     v               |
                 |                 QAI Execute         |
                 |                     |               |
                 |                     v               |
                 |                Result Validate      |
                 |                     |               |
                 +---------------------+---------------+
                                       |
                                       v
                                  Common Decision
                                       |
                                       v
                                     Policy
                                       |
                                       v
                                    Action
                                       |
                                       v
                                  State Change
                                       |
                                       v
                                    Feedback
                                       |
                                       v
                              KPI / Value / Evidence
                                       |
                                       v
                              Advantage Assessment
                                       |
                                       v
                             Learning / Promotion
~~~

---

## 105. QAI Evaluation Principle

QAI evaluation is fundamentally a **measurement and evidence process**, not a technology-selection exercise.

The system should determine whether QAI is useful for a particular problem instance rather than assume that it is useful because the problem is labeled "quantum."

---

## 106. QAI Advantage Principle

QAI advantage exists only when measurable evidence demonstrates meaningful benefit relative to an appropriate classical reference under comparable conditions.

---

## 107. Classical Reference Principle

The classical baseline remains a permanent reference and fallback capability.

Therefore:

**QAI evaluation never eliminates the classical path.**

---

## 108. Fair Comparison Principle

A valid QAI comparison requires:

**Same Problem + Same Scenario + Same Constraints + Same Objective + Comparable Measurement Boundary**

before performance or value conclusions are drawn.

---

## 109. Evidence-First Principle

Every QAI conclusion should be supported by:

**Configuration → Execution → Result → Measurement → Evidence**

rather than by theoretical expectation alone.

---

## 110. Resource-Aware Principle

QAI evaluation must account for the complete resource picture.

A QAI result that appears better in one metric may not represent practical advantage if it requires disproportionate:

- compute,
- quantum resources,
- time,
- energy,
- network,
- or budget.

---

## 111. Fallback Principle

QAI execution must remain safely replaceable by the classical baseline when:

- QAI is unavailable,
- QAI is unsuitable,
- resources are insufficient,
- execution fails,
- or the result does not satisfy quality requirements.

---

## 112. Virtualization Principle

QAI evaluation must be capable of beginning entirely within the virtualized laptop/simulation environment.

Physical QPU availability is therefore not a prerequisite for Phase 0 evaluation.

---

## 113. QAI Lab Principle

The Phase 0 evaluation framework should be reusable as the foundation for the future QAI Lab.

The Lab may change the QAI realization while preserving the agriculture problem and evaluation semantics.

---

## 114. Learning Principle

Every evaluation outcome should improve the system's understanding of:

- which problems are QAI-suitable,
- which representations work,
- which resources are required,
- when classical execution is preferable,
- and where measurable value may exist.

---

## 115. Non-Duplication Principle

This document does not redefine:

- the agriculture use case,
- assets,
- functions,
- interfaces,
- workflows,
- scenarios,
- classical baseline,
- KPIs,
- value definitions.

It defines how the QAI path is evaluated against those established Phase 0 artifacts.

---

## 116. Phase 0 Completion Status

This QAI evaluation framework establishes the Phase 0 evaluation baseline for the Intelligent Irrigation Decision and Control pilot.

It provides the foundation for:

- QAI problem formulation,
- QAI representation,
- Advantage Gate evaluation,
- classical comparison,
- resource assessment,
- performance measurement,
- reliability measurement,
- fallback,
- KPI evaluation,
- value evaluation,
- evidence generation,
- virtual QAI execution,
- emulated QAI execution,
- simulation,
- closed-loop evaluation,
- and future QAI Lab experimentation.

**Status: COMPLETE — PHASE 0 QAI EVALUATION BASELINE**
---

