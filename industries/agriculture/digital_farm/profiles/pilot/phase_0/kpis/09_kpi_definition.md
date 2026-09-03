# Phase 0 — KPI Definition

## 1. Purpose

This document defines the Measurement and Key Performance Indicator (KPI) baseline for the Phase 0 Intelligent Irrigation Decision and Control pilot.

The KPI definition establishes how pilot behavior, decision quality, execution performance, resource usage, reliability, QAI suitability, classical-versus-QAI outcomes, and value-related results are measured.

The KPI framework is technology-neutral and implementation-independent.

It defines **what must be measured**, **why it matters**, **where the measurement belongs**, and **how evidence is retained**, without prescribing a particular software library, hardware platform, algorithm, quantum backend, database, or visualization technology.

---

## 2. Architectural Position

The KPI layer belongs to the Phase 0 managerial and evaluation boundary of Digital Farm.

It does not implement sensing, intelligence, QAI execution, simulation, actuation, or resource management.

Its responsibility is to define and coordinate measurement of those capabilities.

~~~text
+--------------------------------------------------------------+
| HoldCo Factory / Shared Governance                           |
+--------------------------------------------------------------+
                         |
                         v
+--------------------------------------------------------------+
| Agriculture                                                 |
+--------------------------------------------------------------+
                         |
                         v
+--------------------------------------------------------------+
| Digital Farm                                                |
|                                                              |
|  +--------------------------------------------------------+  |
|  | Phase 0 KPI Definition                                 |  |
|  |                                                        |  |
|  |  What to measure                                       |  |
|  |  Why measure                                           |  |
|  |  Measurement boundary                                  |  |
|  |  KPI calculation definition                            |  |
|  |  Evidence requirements                                 |  |
|  +--------------------------------------------------------+  |
|                         |                                    |
|                         v                                    |
|  +------------------+  +------------------+                  |
|  | Classical Path   |  | QAI Path         |                  |
|  +------------------+  +------------------+                  |
|             \                  /                              |
|              \                /                               |
|               v              v                                |
|                 Comparable Results                            |
|                         |                                    |
|                         v                                    |
|                Value / Decision Evidence                     |
+--------------------------------------------------------------+
~~~

---

## 3. KPI Definition Principle

A KPI is not merely a number displayed on a dashboard.

A Phase 0 KPI is a defined measurement contract with:

- a measurable quantity;
- a measurement boundary;
- a source;
- a calculation rule;
- a unit;
- an aggregation rule;
- a validity condition;
- an evidence requirement;
- a comparison context where applicable.

---

## 4. Phase 0 Measurement Objective

The measurement objective is to determine whether the minimum callable agriculture pilot:

1. operates correctly;
2. produces valid decisions;
3. maintains a controlled execution loop;
4. behaves reliably across defined scenarios;
5. provides measurable evidence;
6. supports a fair classical-versus-QAI comparison;
7. demonstrates whether QAI provides meaningful advantage;
8. preserves a usable classical fallback;
9. creates measurable operational or economic value;
10. is sufficiently evidenced for progression to Phase 1.

---

## 5. KPI Scope

The Phase 0 KPI framework covers:

- functional correctness;
- decision quality;
- control behavior;
- sensing quality;
- data quality;
- workflow performance;
- latency;
- throughput;
- resource consumption;
- QAI execution;
- QAI advantage;
- classical comparison;
- reliability;
- robustness;
- fallback behavior;
- human intervention;
- safety;
- simulation behavior;
- closed-loop behavior;
- reproducibility;
- evidence completeness;
- value;
- sustainability-related measurements.

---

## 6. KPI Boundary

The KPI framework measures the pilot within the approved Phase 0 implementation boundary.

~~~text
IN SCOPE
---------------------------------------------------------------
Laptop execution
Virtual assets
Emulated sensing
Simulation
Digital Farm orchestration
Classical decision path
QAI decision path
Advantage Gate
Emulated actuation
Open-loop execution
Closed-loop execution
Resource measurement
Performance measurement
Value measurement
Evidence generation
---------------------------------------------------------------

OPTIONAL LATER
---------------------------------------------------------------
Physical sensors
IoT devices
Mini actuators
Physical demonstrator
---------------------------------------------------------------

OUT OF PILOT SCOPE
---------------------------------------------------------------
Large production deployment
Full enterprise management
Full HoldCo lifecycle
Full SaaS commercialization
Large-scale federation
---------------------------------------------------------------
~~~

---

## 7. KPI Categories

The KPI framework uses the following primary categories:

| Category | Purpose |
|---|---|
| Functional | Determine whether the workflow performs its intended function |
| Decision | Measure irrigation decision quality |
| Sensing | Measure observation quality |
| Data | Measure context and data integrity |
| Performance | Measure execution speed and throughput |
| Resource | Measure resource consumption |
| QAI | Measure QAI execution behavior |
| Advantage | Determine whether QAI demonstrates useful advantage |
| Reliability | Measure successful and failed execution |
| Robustness | Measure behavior under scenario variation |
| Fallback | Measure continuity when QAI is unavailable or unsuitable |
| Human-AI | Measure review, override, and intervention |
| Safety | Measure prevention of unsafe decisions/actions |
| Closed Loop | Measure feedback-driven behavior |
| Evidence | Measure traceability and reproducibility |
| Value | Measure operational and economic value |
| Sustainability | Measure relevant resource and environmental outcomes |

---

## 8. KPI Naming Convention

Each KPI receives a stable identifier.

Recommended convention:

~~~text
KPI-[CATEGORY]-[NUMBER]
~~~

Examples:

~~~text
KPI-FUN-001
KPI-DEC-001
KPI-SEN-001
KPI-PER-001
KPI-RES-001
KPI-QAI-001
KPI-ADV-001
KPI-REL-001
KPI-FBK-001
KPI-VAL-001
~~~

The identifier remains stable even if its technical implementation changes.

---

## 9. KPI Definition Record

Each KPI should be represented using the following logical structure:

~~~text
KPI ID
KPI Name
Category
Purpose
Measured Quantity
Unit
Source
Measurement Boundary
Calculation Rule
Aggregation Rule
Validity Condition
Target / Threshold
Scenario Applicability
Comparison Applicability
Evidence Requirement
Owner
Version
Status
~~~

---

## 10. KPI Measurement Lifecycle

KPI measurement follows:

~~~text
Define
  |
  v
Instrument
  |
  v
Capture
  |
  v
Validate
  |
  v
Calculate
  |
  v
Aggregate
  |
  v
Compare
  |
  v
Interpret
  |
  v
Store Evidence
  |
  v
Review
~~~

---

## 11. KPI Definition Before Implementation

KPIs are defined before technical implementation so that implementation does not determine what constitutes success.

The implementation must produce the evidence required to calculate the agreed KPIs.

---

## 12. Measurement Sources

Potential measurement sources include:

- virtual farm state;
- emulated sensors;
- simulation model;
- workflow execution;
- classical decision engine;
- QAI representation;
- QAI execution environment;
- Advantage Gate;
- resource manager;
- emulated actuator;
- human review;
- execution logs;
- experiment records;
- scenario configuration;
- value measurements.

---

## 13. Measurement Boundary Principle

Every KPI must have an explicit measurement boundary.

For example:

~~~text
End-to-End Latency
= Decision Cycle Start
  ->
  Sensor/Data Availability
  ->
  Context Construction
  ->
  Decision
  ->
  Policy Validation
  ->
  Actuation Command
~~~

The boundary must not change between classical and QAI comparison unless the difference is explicitly documented.

---

## 14. Baseline Relationship

The KPI framework is directly connected to:

`BASE-CLASSICAL-001`

The classical baseline establishes the reference against which QAI measurements can be compared.

---

## 15. Comparable Measurement Principle

Classical and QAI paths must be measured under equivalent:

- problem definitions;
- input data;
- scenarios;
- objectives;
- constraints;
- decision semantics;
- measurement boundaries;
- evidence rules.

---

## 16. Functional KPI Family

Functional KPIs determine whether the pilot performs its intended function.

Primary measures include:

- workflow completion;
- valid decision production;
- valid command production;
- state transition completion;
- feedback completion.

---

## 17. KPI-FUN-001 — Workflow Completion Rate

**Purpose:** Measure the percentage of initiated workflows that complete the defined workflow successfully.

**Formula:**

~~~text
Workflow Completion Rate
=
Completed Valid Workflows
/
Started Workflows
× 100
~~~

**Unit:** %

**Higher is better.**

---

## 18. KPI-FUN-002 — Decision Production Rate

**Purpose:** Measure the percentage of valid decision cycles that produce a decision candidate.

~~~text
Decision Production Rate
=
Decision Cycles Producing Valid Decision
/
Valid Decision Cycles
× 100
~~~

**Unit:** %

---

## 19. KPI-FUN-003 — Actuation Command Success Rate

Measures the percentage of accepted decisions that result in a valid irrigation command.

~~~text
Command Success Rate
=
Valid Commands Produced
/
Accepted Decisions
× 100
~~~

**Unit:** %

---

## 20. KPI-FUN-004 — State Transition Completion Rate

Measures whether an irrigation command results in the expected simulation or emulation state transition.

~~~text
State Transition Completion Rate
=
Valid State Transitions
/
Expected State Transitions
× 100
~~~

---

## 21. Decision KPI Family

Decision KPIs evaluate whether the resulting irrigation decisions are correct, useful, consistent, and policy-compliant.

They must be interpreted relative to the pilot's defined reference behavior rather than arbitrary assumptions.

---

## 22. KPI-DEC-001 — Decision Validity Rate

Measures the percentage of generated decisions that satisfy the defined decision validity rules.

~~~text
Decision Validity Rate
=
Valid Decisions
/
Generated Decisions
× 100
~~~

---

## 23. KPI-DEC-002 — Decision Agreement Rate

For matched classical-versus-QAI experiments, measures the percentage of decisions for which both paths produce equivalent decision semantics.

~~~text
Decision Agreement Rate
=
Equivalent Classical/QAI Decisions
/
Comparable Decision Pairs
× 100
~~~

---

## 24. KPI-DEC-003 — Decision Divergence Rate

Measures the percentage of comparable cases where classical and QAI decisions differ.

~~~text
Decision Divergence Rate
=
Different Classical/QAI Decisions
/
Comparable Decision Pairs
× 100
~~~

A divergence is not automatically a failure.

Each divergence must be evaluated for correctness, value, policy compliance, and scenario context.

---

## 25. KPI-DEC-004 — Policy Compliance Rate

Measures whether decisions comply with the active irrigation policy and constraints.

~~~text
Policy Compliance Rate
=
Policy-Compliant Decisions
/
Decisions Evaluated
× 100
~~~

---

## 26. KPI-DEC-005 — Constraint Compliance Rate

Measures compliance with defined water, crop, environmental, and operational constraints.

---

## 27. KPI-DEC-006 — Decision Quality Score

A composite decision-quality measure may combine:

- correctness;
- constraint compliance;
- policy compliance;
- resource efficiency;
- expected irrigation outcome.

The weighting must be explicitly documented and must not be changed between comparison runs without versioning.

---

## 28. Sensing KPI Family

Sensing KPIs measure the quality of observations entering the Digital Farm decision workflow.

These KPIs apply to both real and emulated sensing representations.

---

## 29. KPI-SEN-001 — Observation Validity Rate

~~~text
Observation Validity Rate
=
Valid Observations
/
Total Observations
× 100
~~~

---

## 30. KPI-SEN-002 — Observation Completeness Rate

Measures whether required sensing fields are present.

~~~text
Observation Completeness
=
Complete Required Observations
/
Required Observations
× 100
~~~

---

## 31. KPI-SEN-003 — Stale Observation Rate

Measures observations that exceed the configured acceptable freshness interval.

~~~text
Stale Observation Rate
=
Stale Observations
/
Total Observations
× 100
~~~

Lower is better.

---

## 32. KPI-SEN-004 — Sensor Conflict Rate

Measures conflicting observations across equivalent or related sensing sources.

This KPI is particularly useful when multiple emulated or physical sensing sources are later introduced.

---

## 33. Data KPI Family

Data KPIs measure the integrity and usability of the information used by the decision process.

---

## 34. KPI-DAT-001 — Data Integrity Rate

Measures the percentage of input records passing defined integrity checks.

---

## 35. KPI-DAT-002 — Context Completeness Rate

Measures the percentage of required farm-context attributes available to the decision process.

---

## 36. KPI-DAT-003 — Data Validation Failure Rate

Measures the proportion of observations or context records rejected by validation.

---

## 37. Performance KPI Family

Performance KPIs measure execution behavior independently from decision quality.

---

## 38. KPI-PER-001 — End-to-End Decision Latency

Measures elapsed time from the defined decision-cycle start to the production of a validated irrigation command.

~~~text
Decision Latency
=
Command Validation Timestamp
-
Decision Cycle Start Timestamp
~~~

**Unit:** time.

---

## 39. KPI-PER-002 — Sensing-to-Decision Latency

Measures elapsed time between valid sensing availability and validated decision production.

---

## 40. KPI-PER-003 — Decision Execution Latency

Measures time required by the decision path after all required inputs are available.

This KPI is especially important for classical-versus-QAI comparison.

---

## 41. KPI-PER-004 — Throughput

Measures the number of valid decision cycles completed within a defined time interval.

~~~text
Throughput
=
Valid Decision Cycles
/
Measurement Interval
~~~

---

## 42. KPI-PER-005 — Latency Variability

Measures variation in decision latency across repeated runs.

Averages alone must not hide high latency variance.

---

## 43. Resource KPI Family

Resource KPIs measure resources consumed to produce the result.

Potential resources include:

- CPU;
- GPU;
- NPU;
- TPU;
- FPGA;
- HPC;
- QPU;
- memory;
- storage;
- network;
- energy;
- execution time;
- budget;
- queue time;
- shots or equivalent execution resources.

---

## 44. KPI-RES-001 — Compute Consumption

Measures compute resources consumed per valid decision or experiment.

The exact unit depends on the execution environment.

---

## 45. KPI-RES-002 — Memory Consumption

Measures peak and average memory consumption during execution.

---

## 46. KPI-RES-003 — Energy Consumption

Measures energy consumed by the execution boundary where measurable.

Energy measurement may initially be estimated or instrumented and can become more precise in later physical realization.

---

## 47. KPI-RES-004 — Network Consumption

Measures communication volume and, where relevant, communication latency associated with the pilot.

---

## 48. KPI-RES-005 — Quantum Resource Consumption

For QAI execution, measures applicable resources such as:

- circuit or representation size;
- execution count;
- shots;
- queue time;
- QPU time;
- fidelity-related measurements;
- classical preprocessing;
- classical postprocessing.

Only applicable measures are required.

---

## 49. KPI-RES-006 — Resource Cost per Valid Decision

Measures resource cost normalized by a successful valid decision.

This enables more meaningful comparison than raw resource consumption.

---

## 50. QAI KPI Family

QAI KPIs evaluate the QAI path independently before advantage is claimed.

The existence of successful QAI execution does not itself establish QAI advantage.

---

## 51. KPI-QAI-001 — QAI Execution Success Rate

~~~text
QAI Execution Success Rate
=
Successful QAI Executions
/
Attempted QAI Executions
× 100
~~~

---

## 52. KPI-QAI-002 — QAI Result Validity Rate

Measures the percentage of QAI results passing the defined validity criteria.

---

## 53. KPI-QAI-003 — QAI Result Quality

Measures the quality of QAI outputs against the defined decision-quality reference.

The calculation must be experiment-specific and versioned.

---

## 54. KPI-QAI-004 — QAI Representation Validity

Measures whether the QAI problem representation correctly captures:

- decision variables;
- constraints;
- objective;
- required inputs;
- expected output semantics.

---

## 55. KPI-QAI-005 — QAI Execution Reproducibility

Measures consistency of QAI results across repeated executions under controlled conditions.

---

## 56. Advantage KPI Family

Advantage KPIs are used by the QAI Advantage Gate.

They answer:

> Does QAI provide sufficient measurable benefit over the classical reference for this problem and operating condition?

---

## 57. KPI-ADV-001 — Decision Quality Advantage

Measures whether QAI produces a materially better decision-quality result than the classical baseline.

~~~text
Quality Advantage
=
QAI Quality
-
Classical Quality
~~~

The direction and normalization depend on the specific quality measure.

---

## 58. KPI-ADV-002 — Performance Advantage

Measures relative execution performance.

~~~text
Performance Advantage
=
Classical Performance
/
QAI Performance
~~~

The exact interpretation must be defined according to whether lower or higher values are preferable.

---

## 59. KPI-ADV-003 — Resource Advantage

Measures relative resource consumption.

~~~text
Resource Advantage
=
Classical Resource Consumption
/
QAI Resource Consumption
~~~

Normalization must use equivalent problem and measurement boundaries.

---

## 60. KPI-ADV-004 — Economic Advantage

Measures estimated economic benefit associated with QAI relative to the classical reference.

Possible factors include:

- execution cost;
- resource cost;
- water-related value;
- avoided loss;
- productivity impact;
- operational cost.

---

## 61. KPI-ADV-005 — Composite QAI Advantage

A composite advantage score may combine multiple dimensions.

~~~text
Composite Advantage
=
f(
  Quality,
  Performance,
  Resource,
  Economic,
  Operational
)
~~~

The function must be explicitly defined for each experiment.

---

## 62. Advantage Decision Classes

The Advantage Gate should classify results as:

~~~text
ADVANTAGE DEMONSTRATED
ADVANTAGE NOT DEMONSTRATED
NO ADVANTAGE
INCONCLUSIVE
REJECTED
FALLBACK REQUIRED
~~~

These are evaluation outcomes, not KPI values.

---

## 63. Negative Result Principle

A result showing no QAI advantage is a valid scientific and engineering outcome.

The KPI framework must preserve such results rather than forcing a positive conclusion.

---

## 64. Inconclusive Result Principle

An experiment is inconclusive when evidence is insufficient to establish either advantage or no advantage.

Possible reasons include:

- insufficient repetitions;
- unstable execution;
- incomplete evidence;
- inadequate measurement quality;
- resource constraints;
- insufficient problem size;
- unsuitable scenario coverage.

---

## 65. Reliability KPI Family

Reliability KPIs measure whether the pilot operates consistently.

---

## 66. KPI-REL-001 — Execution Success Rate

~~~text
Execution Success Rate
=
Successful Executions
/
Attempted Executions
× 100
~~~

---

## 67. KPI-REL-002 — Failure Rate

~~~text
Failure Rate
=
Failed Executions
/
Attempted Executions
× 100
~~~

---

## 68. KPI-REL-003 — Recovery Success Rate

Measures successful recovery after a recognized execution failure.

~~~text
Recovery Success Rate
=
Successful Recoveries
/
Recoverable Failures
× 100
~~~

---

## 69. KPI-REL-004 — Availability

Measures the proportion of the defined operating interval during which the pilot is capable of accepting and processing valid workloads.

Phase 0 availability is an engineering pilot measure, not a production SLA.

---

## 70. Robustness KPI Family

Robustness measures whether the decision system continues to behave acceptably under scenario variation.

---

## 71. KPI-ROB-001 — Scenario Success Rate

Measures successful completion across the defined scenario catalogue.

---

## 72. KPI-ROB-002 — Decision Stability

Measures whether small controlled changes in input conditions produce reasonable and explainable decision changes.

---

## 73. KPI-ROB-003 — Constraint Robustness

Measures continued compliance with constraints under adverse or changed conditions.

---

## 74. KPI-ROB-004 — Degraded-Input Performance

Measures behavior when sensing is incomplete, stale, conflicting, or partially unavailable.

---

## 75. Fallback KPI Family

Fallback KPIs measure the ability to preserve operational continuity when QAI cannot be used.

---

## 76. KPI-FBK-001 — Fallback Activation Rate

Measures how often classical fallback is activated.

A high rate is not automatically bad; it must be interpreted against expected QAI applicability.

---

## 77. KPI-FBK-002 — Fallback Success Rate

~~~text
Fallback Success Rate
=
Successful Fallback Decisions
/
Fallback Activations
× 100
~~~

---

## 78. KPI-FBK-003 — Fallback Continuity Rate

Measures whether the system continues the decision workflow after QAI rejection or failure.

---

## 79. KPI-FBK-004 — Fallback Recovery Latency

Measures the time required to transition from unavailable/rejected QAI execution to a valid classical decision.

---

## 80. Human-AI KPI Family

Human involvement is treated as a controlled operating mode.

---

## 81. KPI-HUM-001 — Human Review Rate

Measures the proportion of decisions requiring human review.

---

## 82. KPI-HUM-002 — Human Override Rate

~~~text
Human Override Rate
=
Human Overrides
/
Human-Review Decisions
× 100
~~~

---

## 83. KPI-HUM-003 — Human Acceptance Rate

Measures the proportion of reviewed decisions accepted without override.

---

## 84. KPI-HUM-004 — Human Response Latency

Measures time from review request to human response.

---

## 85. Safety KPI Family

Safety KPIs ensure that optimization or QAI experimentation does not bypass defined safety constraints.

---

## 86. KPI-SAF-001 — Unsafe Decision Rate

~~~text
Unsafe Decision Rate
=
Unsafe Decisions
/
Decisions Evaluated
× 100
~~~

The desired value is zero.

---

## 87. KPI-SAF-002 — Safety Constraint Compliance

Measures compliance with all mandatory safety rules.

---

## 88. KPI-SAF-003 — Safety Override Protection

Measures whether unsafe automated decisions are prevented or intercepted by the defined control boundary.

---

## 89. Closed-Loop KPI Family

Closed-loop KPIs measure behavior across repeated Sense → Process → Decide → Act → Learn cycles.

---

## 90. KPI-LOOP-001 — Closed-Loop Cycle Completion

Measures the percentage of initiated closed-loop cycles that complete successfully.

---

## 91. KPI-LOOP-002 — Feedback Integration Rate

Measures whether actuator and state-transition outcomes are successfully incorporated into the next decision cycle.

---

## 92. KPI-LOOP-003 — State Convergence Indicator

Where applicable, measures whether repeated control actions move the simulated farm toward the defined desired state.

The exact mathematical definition is scenario-specific.

---

## 93. KPI-LOOP-004 — Control Stability Indicator

Measures whether repeated control cycles avoid undesirable oscillation, excessive switching, or unstable behavior.

---

## 94. Evidence KPI Family

Evidence KPIs measure whether results can be trusted, traced, and reproduced.

---

## 95. KPI-EVD-001 — Evidence Completeness

Measures the proportion of required evidence fields captured for an experiment.

---

## 96. KPI-EVD-002 — Traceability Completeness

Measures whether each result can be traced to:

- use case;
- asset;
- function;
- interface;
- workflow;
- scenario;
- input;
- execution;
- decision;
- resource;
- KPI;
- evidence record.

---

## 97. KPI-EVD-003 — Reproducibility Rate

Measures the proportion of repeated experiments that can reproduce the expected result within defined tolerance.

---

## 98. KPI-EVD-004 — Measurement Integrity Rate

Measures whether captured KPI data passes validation and integrity checks.

---

## 99. Value KPI Family

Value KPIs connect technical measurements to Digital Farm value objectives.

---

## 100. KPI-VAL-001 — Water Use Efficiency

Measures the relationship between irrigation outcome and water consumed.

The exact formula is scenario-specific and must use the defined agronomic/value model.

---

## 101. KPI-VAL-002 — Irrigation Resource Efficiency

Measures the useful irrigation outcome relative to irrigation resource consumption.

---

## 102. KPI-VAL-003 — Avoided Water Use

Measures water use avoided while maintaining the defined acceptable crop/farm state.

---

## 103. KPI-VAL-004 — Operational Efficiency

Measures reduction in unnecessary decision, review, execution, or resource effort.

---

## 104. KPI-VAL-005 — Estimated Economic Value

Measures estimated economic benefit associated with the pilot outcome.

The calculation must clearly distinguish:

- measured value;
- modeled value;
- estimated value;
- projected value.

---

## 105. Sustainability KPI Family

Sustainability measurements may include:

- water consumption;
- energy consumption;
- resource efficiency;
- unnecessary irrigation avoided;
- operational efficiency.

Sustainability claims must remain proportional to the evidence available in the pilot.

---

## 106. KPI Normalization

Raw measurements should be normalized where appropriate.

Possible normalization dimensions include:

- per decision;
- per field;
- per irrigation cycle;
- per unit time;
- per experiment;
- per unit water;
- per unit compute;
- per unit energy.

Normalization must preserve the underlying raw measurements.

---

## 107. Raw Measurement Preservation

A normalized KPI must never replace its underlying raw evidence.

~~~text
Raw Measurement
      |
      +--> Validation
      |
      +--> Raw Evidence
      |
      +--> Normalization
              |
              +--> KPI
              |
              +--> Comparison
              |
              +--> Value Analysis
~~~

---

## 108. KPI Aggregation

Aggregation may occur at multiple levels:

- individual observation;
- decision cycle;
- workflow;
- scenario;
- experiment;
- pilot run;
- pilot phase.

The aggregation level must always be recorded.

---

## 109. Mean and Distribution Principle

Average values alone are insufficient.

Where appropriate, KPI reporting should include:

- mean;
- median;
- minimum;
- maximum;
- variance;
- standard deviation;
- percentile;
- distribution;
- confidence interval or equivalent uncertainty representation.

---

## 110. KPI Tolerance

Every quantitative KPI requiring a pass/fail or comparison decision must define an acceptable tolerance where appropriate.

Tolerance must not be introduced after observing the results.

---

## 111. KPI Thresholds

Thresholds are configuration.

They may differ by:

- scenario;
- operating mode;
- experiment;
- safety class;
- execution mode.

Any threshold change must be versioned and traceable.

---

## 112. KPI Direction

Each KPI must identify whether:

- higher is better;
- lower is better;
- closer to target is better;
- within range is required;
- zero is required;
- binary compliance is required.

---

## 113. KPI Applicability

Not every KPI applies to every execution mode.

For example:

~~~text
Virtualization
  -> Functional / logical KPIs

Emulation
  -> Functional + sensing + interface KPIs

Simulation
  -> Functional + decision + resource + value KPIs

Closed-Loop CPS
  -> Functional + decision + feedback + safety + control KPIs

Physical
  -> All applicable operational / physical KPIs
~~~

---

## 114. KPI Applicability to QAI Lab

The same logical KPI definitions should remain reusable in the QAI Lab.

The QAI Lab may introduce additional measurements such as:

- backend-specific execution characteristics;
- representation complexity;
- scaling behavior;
- quantum resource consumption;
- noise sensitivity;
- fidelity;
- repeated sampling behavior.

These are additional measurements rather than replacements for core pilot KPIs.

---

## 115. Classical-QAI Comparison KPI Set

The minimum matched comparison should include:

| Dimension | Classical | QAI |
|---|---|---|
| Decision validity | Yes | Yes |
| Decision quality | Yes | Yes |
| Decision latency | Yes | Yes |
| Resource consumption | Yes | Yes |
| Execution success | Yes | Yes |
| Reliability | Yes | Yes |
| Scenario robustness | Yes | Yes |
| Economic estimate | Yes | Yes |
| Evidence completeness | Yes | Yes |

---

## 116. Fair Comparison Boundary

The comparison boundary must be explicitly documented.

~~~text
Same Problem
     |
Same Inputs
     |
Same Scenarios
     |
Same Constraints
     |
Same Objective
     |
Same Decision Semantics
     |
+-----------------------+
|                       |
v                       v
Classical              QAI
Path                    Path
|                       |
v                       v
Measurement Boundary
        |
        v
Comparable Evidence
~~~

---

## 117. QAI End-to-End Measurement

QAI evaluation must distinguish between:

1. problem preparation;
2. representation;
3. execution;
4. result interpretation;
5. classical post-processing;
6. end-to-end decision generation.

Both component-level and end-to-end measurements may be useful.

---

## 118. QAI Resource Boundary

Where QAI uses external or specialized resources, measurements should distinguish:

~~~text
Classical Preprocessing
        +
QAI Representation
        +
QAI Execution
        +
QAI Postprocessing
        =
QAI End-to-End Cost
~~~

This prevents isolated QAI execution measurements from being mistaken for complete system performance.

---

## 119. Measurement of Classical Fallback

When fallback occurs, the KPI record should capture:

- reason for fallback;
- time of fallback;
- QAI state;
- classical execution time;
- resulting decision;
- outcome;
- resource consumption;
- whether service continuity was preserved.

---

## 120. Scenario-Based KPI Collection

Every important KPI should be associated with scenario identity.

~~~text
Scenario
   |
   v
Execution
   |
   v
Raw Measurements
   |
   v
KPI Calculation
   |
   v
Scenario Result
~~~

This prevents aggregation from hiding behavior under specific operating conditions.

---

## 121. Baseline Scenario Set

The minimum KPI evaluation should cover the defined scenario catalogue, including representative:

- nominal;
- low-moisture;
- high-moisture;
- limited-water;
- no-water;
- environmental variation;
- sensing failure;
- stale data;
- conflicting observations;
- classical-only;
- QAI;
- QAI-fallback;
- human-review;
- closed-loop scenarios.

---

## 122. KPI Experiment Matrix

The pilot should maintain a matrix connecting:

~~~text
Scenario
   x
Execution Mode
   x
Decision Path
   x
KPI Set
   x
Evidence
~~~

This matrix becomes the basis for controlled evaluation.

---

## 123. KPI Measurement Modes

Measurement may be:

- direct;
- calculated;
- derived;
- modeled;
- estimated;
- projected.

Each KPI record must identify its measurement mode.

---

## 124. Measured vs Estimated Value

The pilot must not represent modeled or estimated values as directly measured values.

For example:

~~~text
Measured Water Consumption
        !=
Estimated Water Savings
        !=
Projected Economic Value
~~~

Each must retain its own evidence status.

---

## 125. KPI Confidence

Where a KPI depends on uncertainty, the measurement record should include:

- confidence;
- uncertainty;
- sample size;
- measurement quality;
- applicable assumptions.

---

## 126. KPI Sample Size

Repeated measurements should be sufficient to support the intended conclusion.

The required sample size may differ between:

- functional validation;
- performance testing;
- scenario testing;
- QAI comparison;
- value estimation.

---

## 127. Repeated Run Principle

Repeated runs should use controlled configurations when reproducibility is being measured.

Changes to:

- inputs;
- parameters;
- scenarios;
- representation;
- backend;
- resources;
- software version

must be recorded.

---

## 128. KPI Versioning

Every KPI definition must be versioned.

Changes to any of the following require version control:

- formula;
- unit;
- measurement boundary;
- aggregation;
- threshold;
- tolerance;
- interpretation;
- data source.

---

## 129. KPI Configuration

KPI configuration belongs to the pilot configuration boundary.

It must not be hard-coded into the conceptual KPI definition.

---

## 130. KPI Metadata

Each measurement record should retain:

- KPI ID;
- KPI version;
- experiment ID;
- scenario ID;
- execution ID;
- timestamp;
- measurement source;
- raw value;
- calculated value;
- unit;
- validity;
- uncertainty where applicable.

---

## 131. KPI Evidence Chain

The minimum evidence chain is:

~~~text
Use Case
   |
Asset
   |
Function
   |
Interface
   |
Workflow
   |
Scenario
   |
Execution
   |
Measurement
   |
KPI
   |
Decision
   |
Outcome
   |
Value
~~~

---

## 132. KPI Traceability

Every KPI result must be traceable backward to the execution evidence that produced it.

Every decision claim must be traceable forward to its measured outcome where applicable.

---

## 133. KPI Storage Principle

KPI results should be stored as structured evidence rather than only as charts or screenshots.

Visualization is a presentation layer.

The underlying measurement record is authoritative.

---

## 134. KPI Visualization

Possible visualizations include:

- KPI dashboards;
- time series;
- scenario comparisons;
- classical-versus-QAI comparison charts;
- resource-performance plots;
- decision distributions;
- reliability summaries;
- value summaries.

Visualization must not alter the underlying evidence.

---

## 135. KPI Dashboard Principle

A Phase 0 dashboard should answer:

1. Did the workflow work?
2. Were decisions valid?
3. Was the system reliable?
4. What resources were used?
5. How did QAI compare with classical?
6. Did QAI demonstrate advantage?
7. Did fallback work?
8. What value was observed or estimated?
9. Is the evidence sufficient?

---

## 136. KPI Status Classes

Each KPI result may be classified as:

~~~text
PASS
FAIL
WITHIN TOLERANCE
OUTSIDE TOLERANCE
INCONCLUSIVE
NOT APPLICABLE
NOT MEASURED
ESTIMATED
PROJECTED
~~~

---

## 137. KPI Acceptance Principle

A KPI should not be marked successful merely because its value exists.

Success requires:

- valid measurement;
- correct calculation;
- applicable scenario;
- acceptable evidence;
- defined threshold or interpretation where required.

---

## 138. KPI Failure Principle

A KPI failure is evidence.

It should lead to investigation rather than automatic suppression or replacement of the measurement.

---

## 139. KPI Exception Handling

If a KPI cannot be calculated, the evidence should record the reason.

Possible reasons include:

- missing data;
- invalid data;
- failed execution;
- unsupported measurement;
- instrumentation failure;
- not applicable;
- insufficient sample size.

---

## 140. KPI Dependency on Interfaces

KPI measurement depends on the interface contracts defined in:

`interfaces/04_interface_inventory.md`

Measurement should use interface-level observations wherever practical rather than coupling directly to implementation internals.

---

## 141. KPI Dependency on Workflows

KPI collection follows the workflow definitions in:

`workflows/05_workflow_catalogue.md`

The KPI layer observes workflow execution; it does not redefine workflow behavior.

---

## 142. KPI Dependency on Scenarios

Scenario-specific measurements use:

`scenarios/06_scenario_catalogue.md`

The same KPI may produce different results under different scenarios.

---

## 143. KPI Dependency on Classical Baseline

Classical comparison uses:

`baselines/07_classical_baseline.md`

The baseline is the reference for matched QAI evaluation.

---

## 144. KPI Dependency on QAI Evaluation

QAI-specific measurements use:

`qai_evaluation/08_qai_evaluation.md`

The KPI layer provides measurable definitions while the QAI evaluation layer determines experiment interpretation and Advantage Gate outcomes.

---

## 145. KPI Dependency Graph

~~~text
Use Case
   |
   +--> Assets
   |
   +--> Functions
   |
   +--> Interfaces
   |
   +--> Workflows
   |
   +--> Scenarios
   |
   +--> Classical Baseline
   |
   +--> QAI Evaluation
             |
             v
        KPI Definition
             |
             v
        Measurements
             |
             v
        Evidence
             |
             v
        Value / Gate
~~~

---

## 146. Three-Path KPI Consideration

The KPI model should support all three architectural paths.

### Computational

Measures decision and computational performance.

### Sensing

Measures observation quality and sensing-to-decision behavior.

### Communication

Measures transmission, synchronization, latency, reliability, and data movement where applicable.

---

## 147. Computational Path KPIs

Representative computational measurements include:

- decision latency;
- compute consumption;
- memory;
- QAI execution;
- classical execution;
- representation complexity;
- throughput.

---

## 148. Sensing Path KPIs

Representative sensing measurements include:

- observation validity;
- completeness;
- freshness;
- conflict rate;
- sensing latency;
- sensing reliability.

---

## 149. Communication Path KPIs

Representative communication measurements include:

- communication latency;
- transmission success;
- data volume;
- synchronization delay;
- communication failure rate.

These may initially be measured through emulation.

---

## 150. End-to-End KPI Principle

Individual path KPIs must not replace end-to-end measurements.

The pilot must retain both:

~~~text
Path-Level Measurement
        +
End-to-End Measurement
        =
Complete Performance View
~~~

---

## 151. KPI Resource Attribution

Where practical, resource usage should be attributed to logical stages:

- sensing;
- context construction;
- classical decision;
- QAI preparation;
- QAI execution;
- post-processing;
- actuation;
- simulation;
- evidence generation.

---

## 152. KPI Attribution Principle

Attribution should support optimization without creating implementation coupling.

Logical attribution may later map to:

- functions;
- classes;
- services;
- pipelines;
- components;
- physical devices.

---

## 153. KPI and Virtualization

During virtualization, KPI definitions establish expected observable behavior before implementation details exist.

---

## 154. KPI and Emulation

During emulation, KPI instrumentation begins to measure realistic interface and execution behavior.

---

## 155. KPI and Simulation

Simulation enables repeated measurement across controlled scenarios and parameter variations.

---

## 156. KPI and Closed-Loop CPS

Closed-loop CPS introduces additional measurements for:

- feedback latency;
- control stability;
- state transition;
- actuator response;
- repeated cycle behavior.

---

## 157. KPI and Physical Realization

Physical realization may introduce additional measurements such as:

- physical sensor accuracy;
- actuator response;
- physical energy;
- network behavior;
- environmental uncertainty.

These extend rather than invalidate the logical KPI framework.

---

## 158. KPI and QAI Lab

The QAI Lab can reuse the same KPI framework to compare:

- alternative QAI representations;
- alternative execution backends;
- different resource allocations;
- scaling experiments;
- noise conditions;
- classical alternatives.

---

## 159. KPI and Advantage Gate

The Advantage Gate consumes KPI evidence.

~~~text
KPI Measurements
      |
      v
Validated Evidence
      |
      v
Classical / QAI Comparison
      |
      v
Advantage Dimensions
      |
      v
Advantage Gate
      |
      +--> Demonstrated
      +--> Not Demonstrated
      +--> Inconclusive
      +--> Rejected
      +--> Fallback
~~~

---

## 160. KPI and Value Management

Technical KPIs feed value measurements.

~~~text
Technical Performance
        |
        v
Operational Outcome
        |
        v
Resource Outcome
        |
        v
Economic / Sustainability Outcome
        |
        v
Value Assessment
~~~

---

## 161. KPI Governance

KPI definitions are governed by:

- version control;
- ownership;
- evidence requirements;
- measurement integrity;
- traceability;
- approval;
- change control.

---

## 162. KPI Change Control

A KPI definition change must identify:

- previous definition;
- new definition;
- reason;
- affected experiments;
- affected comparisons;
- affected evidence;
- effective version.

---

## 163. KPI Immutability for Completed Experiments

Once an experiment is accepted, its KPI definition version must remain associated with the experiment.

Later KPI changes must not silently rewrite historical results.

---

## 164. KPI Auditability

An auditor or reviewer should be able to determine:

1. what was measured;
2. why it was measured;
3. how it was calculated;
4. from which evidence;
5. under which scenario;
6. using which KPI version;
7. against which baseline;
8. with what conclusion.

---

## 165. KPI Reproducibility

A KPI result should be reproducible from retained evidence whenever technically possible.

The reproducibility package should include:

- configuration;
- input data;
- scenario;
- execution metadata;
- raw measurements;
- calculation definition;
- software/model version;
- resource context.

---

## 166. KPI Security and Trust

Measurement data must be protected against:

- unauthorized modification;
- accidental deletion;
- ambiguous provenance;
- untraceable transformation.

The KPI layer should rely on the broader Digital Farm security and governance fabrics rather than duplicate them.

---

## 167. KPI Data Sovereignty

Measurement data may contain farm, operational, environmental, economic, or organizational information.

Applicable sovereignty and access controls must therefore remain external governance concerns coordinated through the appropriate Digital Farm governance boundaries.

---

## 168. KPI Privacy

If human or organizational information is captured during human-review measurements, applicable privacy requirements must be respected.

The pilot should collect only information necessary for the defined measurement purpose.

---

## 169. KPI Evidence Retention

Evidence retention should be sufficient to support:

- pilot acceptance;
- classical-QAI comparison;
- Advantage Gate decision;
- reproducibility;
- Phase 1 handoff;
- future QAI Lab experimentation.

---

## 170. KPI Minimum Set

The minimum Phase 0 KPI set should include:

~~~text
Functional
Decision Validity
Decision Agreement
Decision Quality
End-to-End Latency
Execution Success
Resource Consumption
QAI Execution Success
QAI Result Quality
QAI Advantage
Fallback Success
Safety Compliance
Evidence Completeness
Value Outcome
~~~

---

## 171. Minimum KPI IDs

The minimum recommended KPI identifiers are:

~~~text
KPI-FUN-001
KPI-DEC-001
KPI-DEC-002
KPI-DEC-006
KPI-PER-001
KPI-REL-001
KPI-RES-001
KPI-QAI-001
KPI-QAI-003
KPI-ADV-005
KPI-FBK-002
KPI-SAF-002
KPI-EVD-001
KPI-VAL-005
~~~

---

## 172. KPI Coverage Matrix

| Measurement Area | Minimum KPI Coverage |
|---|---|
| Workflow | Completion |
| Decision | Validity, quality |
| Sensing | Validity |
| Performance | End-to-end latency |
| Resource | Compute/resource use |
| QAI | Execution and result quality |
| Advantage | Composite or dimension-specific |
| Reliability | Execution success |
| Fallback | Recovery/continuity |
| Safety | Constraint compliance |
| Evidence | Completeness |
| Value | Economic/operational outcome |

---

## 173. KPI Completeness Test

The KPI framework is complete only when every required Phase 0 acceptance question maps to at least one KPI or explicit qualitative evidence item.

---

## 174. Acceptance Question Mapping

The framework must answer:

~~~text
Does it work?
        -> Functional KPIs

Are decisions valid?
        -> Decision KPIs

Is sensing usable?
        -> Sensing KPIs

Is execution performant?
        -> Performance KPIs

What resources are consumed?
        -> Resource KPIs

Does QAI work?
        -> QAI KPIs

Does QAI provide advantage?
        -> Advantage KPIs

What happens when QAI fails?
        -> Fallback KPIs

Is it safe?
        -> Safety KPIs

Can we reproduce the result?
        -> Evidence KPIs

Does it create value?
        -> Value KPIs
~~~

---

## 175. KPI Quality Criteria

A KPI definition should be:

- relevant;
- measurable;
- interpretable;
- reproducible;
- traceable;
- comparable;
- versioned;
- bounded;
- implementation-neutral.

---

## 176. Avoiding KPI Overload

Phase 0 should not attempt to measure every possible property.

The KPI set should be sufficient to establish:

- functional correctness;
- engineering behavior;
- QAI comparison;
- value relevance;
- readiness for the next phase.

Additional KPIs can be introduced when justified.

---

## 177. Avoiding Vanity Metrics

A metric should not be included merely because it is easy to collect.

Each KPI must have a clear relationship to:

- pilot correctness;
- decision quality;
- resource behavior;
- QAI evaluation;
- operational value;
- acceptance.

---

## 178. KPI Independence from Implementation

The same KPI definition should remain meaningful when the underlying implementation changes from:

~~~text
Logical Function
   ->
Virtual Function
   ->
Emulated Function
   ->
Simulated Function
   ->
CPS Component
   ->
Physical Component
~~~

---

## 179. KPI Independence from Vendor

KPI definitions must not depend on:

- vendor names;
- product names;
- proprietary API semantics;
- specific cloud provider;
- specific quantum provider.

Provider-specific measurements may be recorded as implementation metadata.

---

## 180. KPI Independence from Technology

The KPI framework must remain valid across:

- classical computing;
- GPU acceleration;
- NPU acceleration;
- TPU acceleration;
- FPGA;
- HPC;
- QAI;
- QPU;
- hybrid execution.

---

## 181. KPI Evidence as Architecture Artifact

KPI evidence is itself an architectural artifact.

It connects:

~~~text
Architecture
   +
Implementation
   +
Execution
   +
Measurement
   +
Decision
   +
Value
~~~

---

## 182. KPI and Learning

The Learn stage may use KPI outcomes to improve:

- thresholds;
- policies;
- scenarios;
- models;
- representations;
- resource allocation;
- workflow configuration.

Any change resulting from learning must remain governed and versioned.

---

## 183. KPI and Continuous Improvement

KPI results should support an iterative cycle:

~~~text
Measure
  |
  v
Analyze
  |
  v
Learn
  |
  v
Improve
  |
  v
Re-run
  |
  v
Compare
~~~

---

## 184. KPI and Experiment Promotion

Strong KPI evidence may support promotion from:

~~~text
Pilot Experiment
      ->
Validated Experiment
      ->
QAI Lab Candidate
      ->
Digital Twin Candidate
      ->
CPS Candidate
~~~

Promotion is a governed decision, not an automatic KPI threshold event.

---

## 185. KPI and Phase 1 Handoff

Phase 0 should hand forward:

- KPI definitions;
- KPI IDs;
- formulas;
- units;
- thresholds;
- tolerances;
- measurement boundaries;
- baseline comparison rules;
- evidence requirements;
- accepted results;
- unresolved measurement gaps.

---

## 186. Phase 1 Measurement Preparation

Phase 1 virtualization should preserve the KPI contracts while introducing technical instrumentation.

The KPI definition should therefore precede detailed implementation instrumentation.

---

## 187. G0 KPI Readiness

The KPI portion of G0 is READY when:

- required KPIs are defined;
- measurement boundaries are explicit;
- classical comparison is possible;
- QAI comparison is possible;
- required evidence is identifiable;
- value measurements are defined;
- unresolved measurement gaps are documented.

---

## 188. G0 KPI Failure Conditions

KPI readiness should be marked REVISE when:

- a required outcome cannot be measured;
- classical and QAI boundaries are not comparable;
- formulas are ambiguous;
- evidence cannot be retained;
- thresholds are undefined where required;
- value claims cannot be distinguished from projections.

---

## 189. KPI Completion Package

The Phase 0 KPI completion package consists of:

~~~text
KPI Definition
+
KPI Registry
+
Measurement Boundaries
+
Calculation Rules
+
Thresholds / Tolerances
+
Comparison Rules
+
Evidence Requirements
+
Initial KPI Matrix
~~~

---

## 190. KPI Registry

The Phase 0 registry should maintain at minimum:

| KPI ID | Name | Category | Unit | Direction | Source | Status |
|---|---|---|---|---|---|---|
| KPI-FUN-001 | Workflow Completion Rate | Functional | % | Higher | Workflow | Defined |
| KPI-DEC-001 | Decision Validity Rate | Decision | % | Higher | Decision | Defined |
| KPI-DEC-002 | Decision Agreement Rate | Decision | % | Higher | Comparison | Defined |
| KPI-PER-001 | End-to-End Decision Latency | Performance | Time | Lower | Execution | Defined |
| KPI-RES-001 | Compute Consumption | Resource | Variable | Lower | Runtime | Defined |
| KPI-QAI-001 | QAI Execution Success Rate | QAI | % | Higher | QAI Runtime | Defined |
| KPI-ADV-005 | Composite QAI Advantage | Advantage | Score | Target | Advantage Gate | Defined |
| KPI-FBK-002 | Fallback Success Rate | Fallback | % | Higher | Fallback | Defined |
| KPI-SAF-002 | Safety Constraint Compliance | Safety | % | Higher | Governance | Defined |
| KPI-EVD-001 | Evidence Completeness | Evidence | % | Higher | Evidence | Defined |
| KPI-VAL-005 | Estimated Economic Value | Value | Currency/Model | Higher | Value | Defined |

---

## 191. KPI Status

The KPI definition artifact is:

~~~text
STATUS: DEFINED — PHASE 0 BASELINE
~~~

It becomes an operational measurement specification when Phase 1 implementation instrumentation is introduced.

---

## 192. KPI Ownership

The KPI framework is owned at the Digital Farm managerial layer.

Technical components are responsible for producing the measurements their interfaces and workflows expose.

---

## 193. KPI Non-Duplication

The KPI layer must not duplicate:

- sensor implementation;
- simulation implementation;
- QAI execution;
- resource management;
- workflow execution;
- governance enforcement.

It defines and coordinates measurement of these capabilities.

---

## 194. KPI Relationship to Resource Management

Resource measurements should remain compatible with:

`resource_management/`

The KPI layer consumes resource measurements for evaluation and value analysis rather than implementing resource allocation itself.

---

## 195. KPI Relationship to Governance

Governance defines applicable:

- safety requirements;
- compliance requirements;
- data controls;
- evidence requirements.

KPI definitions make those requirements measurable where appropriate.

---

## 196. KPI Relationship to Value Management

Value Management consumes validated KPI evidence to evaluate:

- operational value;
- economic value;
- sustainability;
- tolerance;
- MVV;
- ROI.

The KPI layer provides evidence; it does not independently declare business value.

---

## 197. KPI Relationship to Advantage Gate

The Advantage Gate uses selected KPI measurements to determine whether QAI should be preferred, retained as an option, rejected, or routed through fallback.

---

## 198. KPI Relationship to Human-AI

Human review and override are measurable operating behaviors.

The KPI layer must preserve the distinction between:

- automated outcome;
- human-assisted outcome;
- human-overridden outcome.

---

## 199. KPI Relationship to Digital Twin

When the pilot progresses toward a Digital Twin, the KPI framework should remain stable while measurement fidelity increases.

---

## 200. KPI Relationship to CPS

CPS realization may introduce physical measurements while preserving logical KPI semantics.

---

## 201. KPI Relationship to QAI Lab

QAI Lab experimentation may extend the KPI registry but should preserve the core pilot KPIs for comparability.

---

## 202. KPI Relationship to Future Production

Production systems may eventually introduce formal SLAs, SLOs, operational metrics, financial accounting metrics, and regulatory reporting.

Those are future extensions and are not required for Phase 0.

---

## 203. KPI Measurement Boundary Evolution

The measurement boundary may evolve as realization progresses:

~~~text
Logical
  ->
Virtual
  ->
Emulated
  ->
Simulated
  ->
Closed-Loop
  ->
Physical
~~~

The semantic identity of the KPI should remain stable wherever possible.

---

## 204. KPI Baseline Freeze

Before G0 approval, the Phase 0 KPI baseline should be frozen.

After freeze:

- definitions are versioned;
- changes are controlled;
- experiments reference the frozen version.

---

## 205. KPI Baseline Reuse

The frozen KPI baseline becomes the starting point for:

- Phase 1;
- Phase 2;
- later CPS realization;
- QAI Lab experiments;
- future agricultural use cases.

Reuse should occur without assuming identical implementation.

---

## 206. KPI Expansion

New KPIs may be added when:

- a new asset is introduced;
- a new interface is introduced;
- a new workflow is introduced;
- a new scenario is introduced;
- physical realization adds measurable behavior;
- QAI Lab experimentation requires additional evidence;
- value evaluation requires additional measurement.

---

## 207. KPI Retirement

A KPI may be retired when:

- its measurement purpose no longer exists;
- it is superseded;
- it is shown to be misleading;
- the associated capability is removed.

Retirement must preserve historical results.

---

## 208. KPI Interpretation Principle

No KPI should be interpreted independently when it can produce a misleading conclusion.

Examples:

~~~text
Lower Latency
    does not automatically mean
Better Decision

Lower Resource Use
    does not automatically mean
Higher Value

Higher QAI Quality
    does not automatically mean
QAI Advantage

Higher Agreement
    does not automatically mean
Correctness
~~~

---

## 209. Multi-KPI Decision Principle

Important decisions should use multiple complementary measurements.

For example, QAI Advantage should consider:

- decision quality;
- performance;
- resources;
- reliability;
- operational value.

---

## 210. KPI Correlation Awareness

Correlated KPIs should not be counted as independent evidence without consideration.

For example:

- latency and throughput;
- compute and energy;
- decision quality and value;
- QAI execution time and queue time.

---

## 211. KPI Evidence Hierarchy

Evidence should be interpreted in this order:

~~~text
Raw Measurement
      ->
Validated Measurement
      ->
KPI
      ->
Comparison
      ->
Interpretation
      ->
Decision
      ->
Value Claim
~~~

Each higher-level claim depends on the validity of the lower level.

---

## 212. KPI Claim Discipline

The pilot should distinguish:

~~~text
Observed
Calculated
Demonstrated
Estimated
Projected
Hypothesized
~~~

A projected benefit must never be reported as a demonstrated benefit.

---

## 213. KPI Reporting

Phase 0 reporting should provide:

- KPI result;
- baseline;
- scenario;
- comparison;
- evidence status;
- interpretation;
- conclusion.

---

## 214. KPI Result Example

A result record may conceptually look like:

~~~text
KPI ID: KPI-PER-001
Scenario: SCN-LOW-MOISTURE
Path: QAI
Execution: EXEC-001
Raw Measurement: <value>
Unit: <time unit>
Aggregation: Median
Validity: Valid
Comparison: Classical Baseline
Conclusion: <interpretation>
Evidence: <reference>
~~~

The actual technical storage format is implementation-specific.

---

## 215. KPI Scenario Comparison

KPI results should support comparison across:

- nominal conditions;
- stress conditions;
- resource-limited conditions;
- sensing degradation;
- QAI suitability;
- fallback operation.

---

## 216. KPI Time-Series Measurement

Where the pilot operates over multiple cycles, measurements should retain time order.

This is necessary for:

- closed-loop analysis;
- state transitions;
- control stability;
- feedback behavior;
- cumulative resource use.

---

## 217. KPI Cumulative Measures

Some measurements should be cumulative over an experiment:

- water use;
- energy use;
- compute;
- execution count;
- failures;
- fallback activations.

Cumulative and per-cycle values should not be confused.

---

## 218. KPI Rate Measures

Rate KPIs should explicitly define their denominator.

For example:

~~~text
Failure Rate
=
Failures
/
Attempts
~~~

The denominator must be retained in evidence.

---

## 219. KPI Ratio Measures

Ratio KPIs must preserve both numerator and denominator.

This is essential for later audit and recalculation.

---

## 220. KPI Composite Measures

Composite KPIs should retain their component measurements.

~~~text
Composite KPI
    |
    +--> Component A
    +--> Component B
    +--> Component C
    +--> Weighting / Rule
~~~

The composite score must never become the only retained evidence.

---

## 221. KPI Uncertainty

Where uncertainty is material, it should be carried into the comparison and value interpretation.

A small numerical difference may not constitute meaningful advantage if measurement uncertainty is larger than the observed difference.

---

## 222. KPI Statistical Interpretation

Statistical analysis should be proportionate to the experiment.

Phase 0 does not require a single universal statistical method.

The method must be appropriate to:

- sample size;
- measurement type;
- experiment objective;
- distribution;
- uncertainty.

---

## 223. KPI Threshold Governance

Thresholds should be based on:

- pilot requirements;
- safety requirements;
- domain assumptions;
- baseline behavior;
- experiment objectives.

Thresholds must not be retrofitted to obtain a desired outcome.

---

## 224. KPI and Scenario Tolerance

Some scenarios intentionally test boundary behavior.

A KPI outside the nominal range may be expected under a stress scenario.

The result must therefore be interpreted against scenario-specific expectations.

---

## 225. KPI and Resource Constraints

Resource-limited scenarios are valuable because they test whether:

- QAI remains feasible;
- classical fallback remains available;
- resource prioritization behaves correctly;
- service continuity is preserved.

---

## 226. KPI and QAI Suitability

QAI suitability is not itself a performance KPI.

It is an evaluation conclusion derived from:

- problem characteristics;
- resource availability;
- execution quality;
- comparative measurements;
- expected value.

---

## 227. KPI and Classical Baseline Fairness

The classical baseline must be sufficiently capable to provide a credible reference.

The KPI framework therefore measures both paths under comparable conditions.

---

## 228. KPI and Algorithm Changes

If the classical algorithm or QAI representation changes, the relevant KPI comparison must identify the version.

Historical results must remain linked to their original implementation/configuration version.

---

## 229. KPI and Configuration

Configuration changes that materially affect KPI results must be recorded.

Examples include:

- thresholds;
- irrigation policy;
- crop parameters;
- soil parameters;
- scenario parameters;
- resource limits;
- QAI representation parameters.

---

## 230. KPI and Model Version

Simulation, crop, soil, sensor, environmental, and QAI models must be versioned when their behavior can influence KPI results.

---

## 231. KPI and Reproducible Scenario

A scenario should be sufficiently specified that another execution can recreate the intended conditions.

---

## 232. KPI Measurement Pipeline

The conceptual KPI measurement pipeline is:

~~~text
Observation / Event
       |
       v
Measurement Capture
       |
       v
Validation
       |
       v
Normalization
       |
       v
KPI Calculation
       |
       v
Aggregation
       |
       v
Comparison
       |
       v
Evidence Record
       |
       v
Interpretation
~~~

---

## 233. KPI Collection Timing

Measurement timestamps should be captured at relevant workflow boundaries.

Examples:

- cycle start;
- observation availability;
- context ready;
- decision start;
- decision ready;
- command issued;
- command validated;
- state transitioned;
- feedback received.

---

## 234. KPI Clock Principle

All latency calculations must use a consistent timing reference.

If multiple timing domains are used, synchronization and conversion rules must be documented.

---

## 235. KPI Concurrency

Where workflows execute concurrently, measurement must distinguish:

- individual operation duration;
- queue time;
- waiting time;
- total end-to-end time.

---

## 236. KPI Queue Time

For QAI or shared resources, queue time should be measured separately from execution time where relevant.

This avoids attributing external waiting directly to computational execution.

---

## 237. KPI Cost Boundary

Economic/resource cost measurements should specify whether they include:

- compute;
- QAI access;
- network;
- storage;
- energy;
- human time;
- infrastructure overhead.

---

## 238. KPI Human Cost

Human effort may be measured where relevant.

Possible measures include:

- review count;
- review time;
- override count;
- intervention frequency.

Human measurements should remain proportionate to Phase 0.

---

## 239. KPI Operational Burden

Operational burden may be represented through:

- intervention frequency;
- fallback frequency;
- configuration changes;
- failure recovery;
- manual review.

---

## 240. KPI Sustainability Boundary

Sustainability KPIs must clearly identify whether they represent:

- direct measurement;
- modeled estimate;
- projected outcome.

---

## 241. KPI Water Measurement Boundary

Water-related KPIs should distinguish:

- commanded water;
- simulated water;
- estimated water;
- physically measured water.

The Phase 0 laptop/simulation boundary may initially use modeled or simulated quantities.

---

## 242. KPI Economic Boundary

Economic KPIs should distinguish:

~~~text
Observed Cost
Estimated Cost
Avoided Cost
Estimated Benefit
Projected Benefit
ROI Projection
~~~

These are not interchangeable.

---

## 243. KPI ROI Relationship

ROI should not be calculated until:

- cost boundary;
- value boundary;
- time horizon;
- assumptions

are explicitly defined.

---

## 244. KPI MVV Relationship

Minimum Viable Value should be assessed using the defined KPI evidence rather than qualitative enthusiasm alone.

---

## 245. KPI Tolerance Relationship

Value tolerance should be linked to the broader value-management definition rather than embedded arbitrarily inside technical KPI formulas.

---

## 246. KPI Evidence for G0

G0 evidence should demonstrate that:

- KPI definitions exist;
- required measurements are technically observable;
- comparison boundaries are defined;
- value measures are defined;
- evidence can be retained.

---

## 247. G0 KPI Decision

The KPI readiness result is:

~~~text
READY
REVISE
DEFER
~~~

The decision must be supported by evidence.

---

## 248. Phase 0 Completion Criteria

The KPI workstream is complete when:

1. KPI categories are defined;
2. minimum KPI set is defined;
3. measurement boundaries are defined;
4. formulas are defined where appropriate;
5. comparison rules are defined;
6. evidence requirements are defined;
7. value measures are defined;
8. KPI versioning is defined;
9. G0 readiness is established.

---

## 249. Phase 0 KPI Handoff

Phase 0 hands forward:

~~~text
KPI Contracts
      |
      v
Phase 1 Instrumentation
      |
      v
Phase 1 Virtualization
      |
      v
Emulation
      |
      v
Simulation
      |
      v
Closed-Loop CPS
      |
      v
Physical Realization
      |
      v
QAI Lab
~~~

---

## 250. KPI Reuse Across Agriculture

The KPI framework can be reused for future agricultural Digital Farm use cases such as:

- crop optimization;
- water management;
- nutrient management;
- energy management;
- farm logistics;
- environmental control.

The KPI set should be extended according to the use case rather than copied blindly.

---

## 251. KPI Reuse Across Industries

The logical KPI architecture may later be reused across HoldCo industries.

Domain-specific KPIs should remain domain-specific while common measurement principles remain reusable.

---

## 252. KPI Architecture Principle

The KPI layer is a measurement abstraction.

It should remain above technical implementations while remaining sufficiently precise to support engineering validation.

---

## 253. KPI Managerial-to-Technical Boundary

~~~text
MANAGERIAL KPI LAYER
---------------------------------------
Define what matters
Define measurement contracts
Define comparison
Define evidence
Define acceptance
Define value interpretation
---------------------------------------
                |
                v
TECHNICAL REALIZATION
---------------------------------------
Instrument
Capture
Execute
Measure
Return Evidence
---------------------------------------
~~~

---

## 254. KPI Non-Implementation Principle

This document does not prescribe:

- programming classes;
- database schemas;
- dashboard frameworks;
- telemetry libraries;
- quantum SDKs;
- cloud platforms;
- hardware instruments.

Those belong to later technical realization.

---

## 255. KPI Implementation Evolution

The logical KPI definition may eventually be implemented through:

- telemetry;
- logs;
- event streams;
- metrics;
- databases;
- observability systems;
- experiment systems;
- dashboards.

The logical contract remains independent of the implementation.

---

## 256. KPI Interface Evolution

Measurement interfaces may later become:

- API contracts;
- event contracts;
- telemetry interfaces;
- service interfaces;
- data pipelines.

The Phase 0 definition remains logical.

---

## 257. KPI Evidence Evolution

Evidence may progress from:

~~~text
Simple Pilot Log
   ->
Structured Measurement Record
   ->
Experiment Dataset
   ->
Digital Twin Evidence
   ->
CPS Operational Evidence
   ->
QAI Lab Experiment Repository
~~~

---

## 258. KPI Scalability

The KPI framework must scale from:

- one farm;
- one field;
- one irrigation zone;
- multiple zones;
- multiple farms;
- regional operations.

Phase 0 only requires the minimum callable case.

---

## 259. KPI Multi-Asset Consideration

The KPI model must support later aggregation across multiple assets without changing the underlying KPI meaning.

---

## 260. KPI Multi-Tenant / Sovereign Consideration

Future implementations may require KPI isolation across organizational or sovereign boundaries.

The KPI definition should remain logically portable while data access and governance are handled by the relevant control planes.

---

## 261. KPI Evidence Provenance

Every important KPI result should have provenance identifying:

- source;
- transformation;
- calculation;
- execution;
- scenario;
- version.

---

## 262. KPI Calculation Reproducibility

A reviewer should be able to recalculate an important KPI from retained raw measurements.

---

## 263. KPI Integrity

Measurement integrity requires that:

- raw values are preserved;
- transformations are documented;
- calculations are versioned;
- invalid measurements are identified;
- evidence cannot silently change.

---

## 264. KPI Result Immutability

Accepted experimental results should be immutable from the perspective of historical evidence.

Corrections should create a new version or correction record.

---

## 265. KPI Interpretation Governance

Interpretation of a KPI result should distinguish:

~~~text
Measurement
      |
      v
Observation
      |
      v
Engineering Interpretation
      |
      v
Business Interpretation
      |
      v
Decision
~~~

Each level should avoid unsupported conclusions.

---

## 266. KPI Claim Traceability

Any claim such as:

> QAI is better

must trace to the relevant:

- problem;
- baseline;
- scenario;
- KPI;
- comparison;
- evidence;
- Advantage Gate decision.

---

## 267. KPI Advantage Claim

A QAI advantage claim is valid only when the evidence demonstrates measurable improvement within the agreed comparison boundary.

---

## 268. KPI No-Advantage Claim

A no-advantage result is valid when the agreed evidence shows that QAI does not provide sufficient improvement for the defined objective.

---

## 269. KPI Inconclusive Claim

An inconclusive result must identify the missing evidence or uncertainty preventing a definitive conclusion.

---

## 270. KPI Pilot Learning

The KPI framework is intended to help the pilot learn:

- where the architecture performs well;
- where sensing is weak;
- where computation is expensive;
- where QAI is useful;
- where classical methods remain preferable;
- where fallback is essential;
- where additional physical evidence is required.

---

## 271. KPI Future Architecture Feedback

KPI results may influence future:

- Digital Twin design;
- CPS design;
- QAI Lab experiments;
- resource allocation;
- service boundaries;
- execution modes;
- governance controls.

Such changes must be treated as controlled architectural learning.

---

## 272. KPI Final Architecture

The complete Phase 0 measurement architecture is:

~~~text
                 PHASE 0 KPI ARCHITECTURE

                         Use Case
                            |
                            v
                    Assets / Functions
                            |
                            v
                  Interfaces / Workflows
                            |
                            v
                         Scenarios
                            |
             +--------------+--------------+
             |                             |
             v                             v
      Classical Baseline              QAI Evaluation
             |                             |
             +--------------+--------------+
                            |
                            v
                    Measurement Capture
                            |
                            v
                       KPI Engine
                            |
             +--------------+--------------+
             |              |              |
             v              v              v
         Performance     Resource       Reliability
             |              |              |
             +--------------+--------------+
                            |
                            v
                    Advantage Evaluation
                            |
             +--------------+--------------+
             |                             |
             v                             v
       Classical Outcome              QAI Outcome
             |                             |
             +--------------+--------------+
                            |
                            v
                     Value Evidence
                            |
                            v
                       G0 Decision
                            |
                            v
                     Phase 1 Handoff
~~~

---

## 273. Final KPI Principle

The Phase 0 KPI framework establishes a stable measurement contract between the Digital Farm managerial layer and its technical realization layers.

It ensures that the pilot can answer not only:

> **Can we execute the Intelligent Irrigation workflow?**

but also:

> **Does it produce valid decisions?**

> **Does it behave reliably?**

> **What resources does it consume?**

> **Does QAI provide measurable advantage over the classical baseline?**

> **Does fallback preserve continuity?**

> **Can the results be reproduced and audited?**

> **Does the pilot create measurable value?**

The KPI framework therefore provides the measurement foundation required to progress from a minimum callable agriculture pilot toward virtualization, emulation, simulation, closed-loop CPS, physical realization, and QAI Lab experimentation without redesigning the underlying measurement semantics.

---

## 274. Phase 0 KPI Status

**Status: COMPLETE — PHASE 0 KPI DEFINITION BASELINE**
---

