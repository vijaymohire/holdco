# Phase 0 — Workflow Catalogue

**File:** `profiles/pilot/phase_0/workflows/05_workflow_catalogue.md`
**Phase:** Phase 0 — Implementation Readiness & Scope Baseline
**Lifecycle Profile:** Pilot
**Domain:** Agriculture / Digital Farm
**Use Case:** Intelligent Irrigation Decision and Control
**Status:** Phase 0 Baseline

---

## 1. Purpose

This document defines the Phase 0 workflow catalogue for the Digital Farm pilot.

The catalogue describes how the logical assets, functions, interfaces, intelligence capabilities, QAI capabilities, simulation capabilities, resources, human participation, and governance controls cooperate to execute the minimum callable agriculture use case.

The workflows are implementation-neutral and are intended to remain valid across:

- virtualization,
- emulation,
- simulation,
- closed-loop CPS,
- physical realization,
- and future QAI Lab experimentation.

---

## 2. Architectural Position

The workflow catalogue belongs to the managerial and service-oriented Digital Farm layer.

It defines:

- what happens,
- in what logical sequence,
- under what conditions,
- what information moves between capabilities,
- where decisions occur,
- where feedback occurs,
- and what evidence is produced.

It does not prescribe:

- programming classes,
- object models,
- specific software packages,
- specific hardware,
- specific cloud platforms,
- specific quantum hardware,
- or implementation frameworks.

~~~text
HoldCo Factory
      |
      v
Agriculture
      |
      v
Digital Farm Service / Management Layer
      |
      v
Workflow Catalogue
      |
      +-------------------+
      |                   |
      v                   v
Classical Path        QAI Path
      |                   |
      +---------+---------+
                |
                v
       Decision / Policy
                |
                v
       Emulated Actuation
                |
                v
         Farm State Change
                |
                v
             Feedback
                |
                +-----> Next Cycle
~~~

---

## 3. Workflow Principle

A workflow is a logical sequence of activities and transitions required to achieve a defined Digital Farm outcome.

A workflow therefore connects:

**Assets → Functions → Interfaces → Decisions → Actions → State Changes → Feedback → Evidence**

The workflow is the orchestration representation between the logical architecture and its eventual technical realization.

---

## 4. Minimum Callable Workflow

The minimum callable pilot workflow is:

**Initialize → Sense → Validate → Contextualize → Decide → Validate Decision → Act → Transition State → Measure → Learn → Repeat**

~~~text
Initialize
    |
    v
Sense
    |
    v
Validate Observations
    |
    v
Build Farm Context
    |
    v
Generate Decision Candidates
    |
    +----------------------+
    |                      |
    v                      v
Classical Decision      QAI Decision
    |                      |
    +----------+-----------+
               |
               v
       Advantage Evaluation
               |
        +------+------+
        |             |
   QAI Accepted    Fallback
        |             |
        +------+------+
               |
               v
       Validate Policy
               |
               v
       Generate Command
               |
               v
      Emulated Actuator
               |
               v
       Change Farm State
               |
               v
           Feedback
               |
               v
        Measure / Learn
               |
               v
        Next Decision Cycle
~~~

---

## 5. Workflow Catalogue Structure

The catalogue is organized into the following workflow groups:

1. Lifecycle and initialization workflows
2. Sensing workflows
3. Context workflows
4. Decision workflows
5. QAI workflows
6. Advantage Gate workflows
7. Policy workflows
8. Actuation workflows
9. State-transition workflows
10. Feedback workflows
11. Execution-mode workflows
12. Human-AI workflows
13. Resource workflows
14. Error and recovery workflows
15. Experiment workflows
16. Measurement and evidence workflows
17. Scenario workflows
18. End-to-end pilot workflows
19. CPS progression workflows
20. QAI Lab progression workflows

---

## 6. Workflow Identification

Each workflow receives a stable logical identifier.

The Phase 0 naming convention is:

~~~text
WF-<CATEGORY>-<NUMBER>
~~~

Examples:

~~~text
WF-LIF-001
WF-SEN-001
WF-CTX-001
WF-DEC-001
WF-QAI-001
WF-ADV-001
WF-ACT-001
WF-FBK-001
WF-EXP-001
WF-EVD-001
~~~

The identifiers identify workflows rather than implementation components.

---

## 7. Workflow Categories

| Category | Prefix | Purpose |
|---|---|---|
| Lifecycle | WF-LIF | Initialization and lifecycle |
| Sensing | WF-SEN | Observation acquisition |
| Context | WF-CTX | Farm context construction |
| Decision | WF-DEC | Decision generation |
| QAI | WF-QAI | QAI execution |
| Advantage | WF-ADV | QAI Advantage Gate |
| Policy | WF-POL | Policy validation |
| Actuation | WF-ACT | Command and actuation |
| State | WF-STA | Farm-state transition |
| Feedback | WF-FBK | Feedback and recurrence |
| Execution | WF-EXE | Execution-mode behavior |
| Human-AI | WF-HUM | Human participation |
| Resource | WF-RES | Resource allocation |
| Error | WF-ERR | Error and recovery |
| Experiment | WF-EXP | Experiment execution |
| Evidence | WF-EVD | Evidence and traceability |
| Scenario | WF-SCN | Scenario execution |
| Progression | WF-PRG | Realization progression |

---

## 8. Workflow Representation

Every workflow should be represented using the following logical structure:

~~~text
Workflow ID
Workflow Name
Purpose
Trigger
Inputs
Preconditions
Activities
Decision Points
Outputs
State Changes
Interfaces
Resources
Exceptions
Evidence
Postconditions
Next Workflow
~~~

This structure is sufficient for Phase 0 and can later be mapped into executable workflow representations.

---

## 9. Workflow Trigger

A workflow trigger identifies the condition that causes execution.

Possible pilot triggers include:

- pilot startup,
- configured decision cycle,
- new sensor observation,
- farm-state change,
- scenario event,
- human request,
- experiment request,
- recovery event,
- scheduled simulation step.

---

## 10. Workflow Preconditions

Typical preconditions include:

- pilot configuration exists,
- virtual farm exists,
- required farm state is available,
- required sensing models are available,
- required interfaces are available,
- decision cycle is valid,
- required resources are available,
- execution mode is defined.

---

## 11. Workflow Outputs

Workflow outputs may include:

- validated observations,
- farm context,
- decision candidates,
- QAI results,
- selected decision,
- irrigation policy,
- actuator command,
- changed farm state,
- KPI measurements,
- value measurements,
- execution logs,
- evidence records.

---

# Lifecycle and Initialization Workflows

## 12. WF-LIF-001 — Pilot Initialization

### Purpose

Initialize the minimum callable Digital Farm pilot.

### Trigger

Pilot execution request.

### Inputs

- pilot configuration,
- virtual farm definition,
- scenario configuration,
- execution mode,
- resource configuration.

### Activities

1. Load pilot configuration.
2. Initialize virtual farm.
3. Initialize farm state.
4. Initialize sensing models.
5. Initialize decision capabilities.
6. Initialize QAI capability if enabled.
7. Initialize simulation/emulation environment.
8. Initialize measurement and evidence capture.
9. Validate readiness.

### Output

Initialized pilot execution environment.

---

## 13. WF-LIF-002 — Pilot Readiness Check

The readiness workflow verifies that all required logical capabilities are available before execution.

~~~text
Configuration
     |
     v
Virtual Farm Available?
     |
     v
Sensing Available?
     |
     v
Decision Capability Available?
     |
     v
Actuation Model Available?
     |
     v
Measurement Available?
     |
     v
Evidence Capture Available?
     |
     v
READY
~~~

If a mandatory capability is unavailable, execution does not proceed.

---

## 14. WF-LIF-003 — Decision Cycle Initialization

A decision cycle establishes the context for one irrigation decision.

The cycle receives:

- farm identifier,
- field/zone identifier,
- current state,
- environmental context,
- scenario context,
- execution timestamp or logical simulation time,
- configuration.

The result is a valid decision-cycle context.

---

# Sensing Workflows

## 15. WF-SEN-001 — Sensor Observation Acquisition

### Purpose

Acquire observations from virtual or emulated sensing capabilities.

### Inputs

- virtual farm state,
- sensor model,
- simulation time,
- scenario conditions.

### Activities

1. Request observation.
2. Generate sensor value.
3. Associate observation with source.
4. Attach logical time.
5. Attach observation metadata.
6. Submit observation for validation.

### Output

Sensor observation.

---

## 16. WF-SEN-002 — Soil Moisture Observation

The soil moisture workflow obtains the moisture condition for the irrigation zone.

~~~text
Virtual Soil State
       |
       v
Soil Moisture Sensor Model
       |
       v
Observation
       |
       v
Validation
       |
       v
Farm Context
~~~

The workflow remains independent of whether the eventual source is:

- a simulated sensor,
- an emulated sensor,
- an IoT device,
- a physical sensor,
- or another compatible sensing source.

---

## 17. WF-SEN-003 — Environmental Observation

Environmental observations may include:

- temperature,
- humidity,
- environmental condition,
- other configured variables.

These observations enrich the decision context without requiring a specific physical sensing technology.

---

## 18. WF-SEN-004 — Observation Validation

### Purpose

Determine whether an observation is usable.

Validation may consider:

- presence,
- type,
- range,
- timestamp,
- source,
- completeness,
- consistency,
- scenario validity.

~~~text
Observation
    |
    v
Structural Validation
    |
    v
Range Validation
    |
    v
Temporal Validation
    |
    v
Context Validation
    |
 +--+--+
 |     |
Valid Invalid
 |     |
 v     v
Context Recovery / Reject
~~~

---

## 19. WF-SEN-005 — Observation Aggregation

Multiple observations may be combined into a coherent sensing state.

The workflow may:

- align observation times,
- associate observations with the same zone,
- identify missing values,
- calculate derived observations,
- retain source traceability.

The aggregation mechanism remains implementation-neutral.

---

# Context Workflows

## 20. WF-CTX-001 — Farm Context Construction

### Purpose

Construct the Digital Farm context required for decision-making.

### Inputs

- farm state,
- crop state,
- soil state,
- water availability,
- environmental state,
- validated observations,
- scenario state,
- configuration.

### Output

Decision-ready farm context.

~~~text
Farm State
Crop State
Soil State
Water State
Environment
Observations
Scenario
    |
    v
Context Construction
    |
    v
Decision Context
~~~

---

## 21. WF-CTX-002 — Context Enrichment

The workflow enriches the current context with derived information where required.

Examples include:

- moisture condition classification,
- environmental condition classification,
- water availability condition,
- crop requirement indicators,
- temporal context.

Derived values must remain traceable to their source inputs.

---

## 22. WF-CTX-003 — Context Validation

The context is checked before entering decision workflows.

The context must contain all mandatory decision inputs or explicitly indicate missing information.

Invalid context may result in:

- recovery,
- human review,
- fallback,
- or cycle rejection.

---

# Decision Workflows

## 23. WF-DEC-001 — Decision Candidate Generation

### Purpose

Generate one or more irrigation decision candidates.

### Inputs

- decision context,
- irrigation policy,
- configuration,
- resource availability.

### Outputs

Decision candidates.

Possible candidate outcomes include:

- irrigate,
- do not irrigate,
- irrigate for configured duration,
- defer,
- request human review.

---

## 24. WF-DEC-002 — Classical Decision Execution

The classical decision workflow provides the baseline decision path.

~~~text
Decision Context
      |
      v
Classical Decision Engine
      |
      v
Decision Candidate
      |
      v
Policy Validation
~~~

The classical path is mandatory because it provides:

- operational fallback,
- baseline comparison,
- reproducibility,
- QAI evaluation reference.

---

## 25. WF-DEC-003 — Decision Candidate Validation

Each candidate is checked against the applicable policy and operational constraints.

Validation may include:

- moisture limits,
- water availability,
- irrigation limits,
- safety conditions,
- scenario constraints,
- configuration constraints.

---

## 26. WF-DEC-004 — Decision Selection

Where multiple valid candidates exist, the workflow selects the applicable candidate according to the configured decision policy.

Selection may involve:

- objective evaluation,
- constraint satisfaction,
- priority,
- resource conditions,
- QAI result,
- classical result,
- human review.

---

# QAI Workflows

## 27. WF-QAI-001 — QAI Decision Preparation

### Purpose

Prepare the irrigation problem for QAI evaluation.

### Activities

1. Receive validated decision context.
2. Define problem representation.
3. Identify decision variables.
4. Identify constraints.
5. Define objective.
6. Estimate required resources.
7. Submit to the Advantage Gate.

The workflow does not assume a particular quantum algorithm or processor.

---

## 28. WF-QAI-002 — QAI Problem Representation

The logical irrigation decision problem is transformed into the representation required by the selected QAI capability.

~~~text
Farm Context
     |
     v
Problem Definition
     |
     v
Decision Variables
     |
     v
Constraints
     |
     v
Objective
     |
     v
QAI Representation
~~~

The representation remains separable from the original farm-domain model.

---

## 29. WF-QAI-003 — QAI Resource Estimation

The workflow estimates the resources required for the QAI execution.

Potential resources include:

- compute,
- quantum resources,
- shots,
- execution time,
- queue time,
- memory,
- energy,
- network,
- budget,
- confidence requirements.

The result is submitted to the Advantage Gate.

---

## 30. WF-QAI-004 — QAI Execution

### Purpose

Execute the QAI problem when approved.

### Inputs

- QAI problem representation,
- resource decision,
- execution configuration.

### Outputs

- QAI result,
- confidence/quality information,
- execution metadata,
- resource measurements.

The execution may be:

- local,
- simulated,
- emulated,
- remote,
- hybrid,
- or future physical QPU execution.

---

## 31. WF-QAI-005 — QAI Result Interpretation

The QAI result is translated back into the logical irrigation decision space.

~~~text
QAI Result
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
Final Decision Candidate
~~~

The workflow preserves the relationship between:

- original problem,
- representation,
- execution,
- result,
- interpretation,
- decision.

---

# Advantage Gate Workflows

## 32. WF-ADV-001 — QAI Advantage Evaluation

The Advantage Gate determines whether QAI execution should be used for the current problem instance.

The evaluation may consider:

- problem suitability,
- expected benefit,
- resource cost,
- execution latency,
- confidence,
- classical baseline,
- available QAI capability,
- operational constraints.

---

## 33. WF-ADV-002 — Advantage Gate Decision

The Advantage Gate produces a logical routing decision.

~~~text
Problem
  |
  v
Advantage Assessment
  |
  +----------------------+
  |                      |
  v                      v
Use QAI             Use Classical
  |                      |
  v                      v
QAI Execution       Classical Baseline
  |                      |
  +----------+-----------+
             |
             v
      Common Decision Path
~~~

---

## 34. WF-ADV-003 — Classical / HPC Fallback

If QAI execution is:

- unsuitable,
- unavailable,
- too expensive,
- insufficiently reliable,
- outside the resource boundary,
- or otherwise rejected,

the workflow routes execution to the classical/HPC fallback.

The fallback is an intentional architectural capability, not an error condition.

---

## 35. WF-ADV-004 — QAI Result Quality Gate

A QAI result must satisfy the configured acceptance conditions before becoming an operational decision candidate.

Possible checks include:

- result validity,
- confidence,
- constraint compliance,
- expected objective quality,
- execution integrity,
- reproducibility requirements.

A failed result is routed to fallback or recovery.

---

# Policy Workflows

## 36. WF-POL-001 — Irrigation Policy Evaluation

The policy workflow evaluates a proposed decision against the current farm context and configured constraints.

~~~text
Decision Candidate
       |
       v
Policy Evaluation
       |
  +----+----+
  |         |
Valid     Invalid
  |         |
  v         v
Continue   Reject / Replan
~~~

---

## 37. WF-POL-002 — Safety Policy Evaluation

Safety conditions are checked before actuation.

The workflow may evaluate:

- excessive irrigation,
- unavailable water,
- invalid actuator state,
- conflicting commands,
- unsafe scenario conditions.

A safety rejection prevents actuation.

---

## 38. WF-POL-003 — Command Authorization

The workflow verifies that the resulting irrigation command is authorized for execution within the pilot.

Authorization may be:

- automatic,
- human-approved,
- scenario-approved,
- configuration-approved.

---

# Actuation Workflows

## 39. WF-ACT-001 — Irrigation Command Generation

The selected decision is transformed into an irrigation command.

~~~text
Final Decision
     |
     v
Policy
     |
     v
Command Generation
     |
     v
Command Validation
     |
     v
Actuation
~~~

---

## 40. WF-ACT-002 — Command Validation

The command is validated before being sent to the emulated actuator.

Validation includes:

- command structure,
- target zone,
- duration or quantity,
- permitted range,
- current state,
- safety constraints.

---

## 41. WF-ACT-003 — Emulated Actuation

The emulated actuator receives the command and applies the corresponding logical effect.

~~~text
Irrigation Command
       |
       v
Emulated Actuator
       |
       v
Water Application
       |
       v
Virtual Soil / Farm State Change
~~~

The same workflow can later connect to a physical actuator through the corresponding interface.

---

## 42. WF-ACT-004 — Actuator Status

The actuator workflow records:

- command accepted/rejected,
- command execution,
- resulting state,
- execution time,
- errors,
- actuator status.

---

# State Workflows

## 43. WF-STA-001 — Farm State Transition

The state transition workflow updates the virtual farm after an action.

Inputs may include:

- previous state,
- irrigation command,
- environmental conditions,
- crop state,
- soil state,
- water state,
- simulation model.

Output:

- new farm state.

---

## 44. WF-STA-002 — Simulation State Transition

The simulation environment calculates the next logical state.

~~~text
Current Farm State
       |
       +---- Environment
       +---- Crop State
       +---- Soil State
       +---- Water State
       +---- Irrigation Action
       |
       v
State Transition Model
       |
       v
Next Farm State
~~~

---

## 45. WF-STA-003 — State Persistence

The resulting farm state is retained for:

- next decision cycle,
- visualization,
- KPI calculation,
- evidence,
- experiment analysis,
- reproducibility.

---

# Feedback Workflows

## 46. WF-FBK-001 — Farm Feedback

The feedback workflow returns the changed state to the next sensing and decision cycle.

~~~text
Decision
   |
   v
Actuation
   |
   v
State Change
   |
   v
Feedback
   |
   v
Sensing
   |
   v
Context
   |
   v
Next Decision
~~~

This creates the fundamental closed-loop behavior of the pilot.

---

## 47. WF-FBK-002 — Decision Cycle Repetition

After successful completion of a cycle, the pilot may begin another cycle according to the configured execution model.

The repetition boundary is controlled by:

- simulation time,
- logical decision interval,
- scenario configuration,
- experiment configuration,
- human control.

---

# Execution Workflows

## 48. WF-EXE-001 — Open-Loop Execution

Open-loop execution evaluates a decision without applying feedback into subsequent decision cycles.

~~~text
Farm State
   |
   v
Sense
   |
   v
Decide
   |
   v
Evaluate
   |
   v
Measure
~~~

Open-loop execution is useful for:

- initial validation,
- baseline comparison,
- deterministic experiments,
- debugging.

---

## 49. WF-EXE-002 — Closed-Loop Execution

Closed-loop execution applies the decision and feeds the resulting state into the next cycle.

~~~text
Sense
  |
  v
Process
  |
  v
Decide
  |
  v
Act
  |
  v
State Change
  |
  v
Sense
  |
  +---- repeat
~~~

Closed-loop execution is the primary target for the CPS progression.

---

## 50. WF-EXE-003 — Virtualized Execution

Virtualized execution represents logical assets without requiring physical realization.

The workflow validates:

- asset identity,
- functional behavior,
- interface relationships,
- state transitions,
- logical dependencies.

---

## 51. WF-EXE-004 — Emulated Execution

Emulated execution replaces real-world dependencies with behavioral equivalents.

Examples include:

- emulated sensors,
- emulated actuators,
- emulated communication,
- emulated execution endpoints.

The workflow remains logically equivalent to the intended physical workflow.

---

## 52. WF-EXE-005 — Simulated Execution

Simulation executes the workflow against models of:

- farm behavior,
- soil,
- crops,
- sensors,
- environmental conditions,
- actuators,
- scenarios.

Simulation supports repeated and controlled experiments.

---

# Human-AI Workflows

## 53. WF-HUM-001 — Human-Assisted Decision

The system generates a recommended decision and presents it for human review.

~~~text
Sense
  |
  v
Process
  |
  v
AI / QAI Recommendation
  |
  v
Human Review
  |
  +--------+--------+
  |                 |
Approve           Reject
  |                 |
  v                 v
Act              Replan
~~~

---

## 54. WF-HUM-002 — Automated Decision

Where automation is enabled and authorization conditions are satisfied, the system may proceed directly from validated decision to actuation.

Human intervention remains available through override and recovery mechanisms.

---

## 55. WF-HUM-003 — Human Override

A human operator may override a proposed action when permitted by pilot policy.

The override must produce:

- override decision,
- reason,
- timestamp,
- affected cycle,
- resulting action,
- traceability record.

---

# Resource Workflows

## 56. WF-RES-001 — Pilot Resource Assessment

Before resource-intensive execution, the workflow checks available resources.

Resources may include:

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

## 57. WF-RES-002 — QAI Resource Routing

The workflow determines whether required QAI resources are available within the configured pilot boundary.

If unavailable:

~~~text
QAI Resource Request
        |
        v
Resource Assessment
        |
   +----+----+
   |         |
Available  Unavailable
   |         |
   v         v
Execute    Fallback
~~~

---

## 58. WF-RES-003 — Resource Measurement

The pilot records resource consumption associated with the workflow.

Measurements may include:

- execution duration,
- compute utilization,
- QAI execution time,
- shots,
- queue time,
- memory,
- network,
- energy where measurable,
- cost where applicable.

These measurements support QAI Advantage evaluation and value assessment.

---

# Error and Recovery Workflows

## 59. WF-ERR-001 — Observation Error Recovery

If sensing fails, the workflow determines whether the cycle can continue.

Possible responses:

- retry,
- use valid prior observation,
- use simulation value,
- request human review,
- skip cycle,
- fallback.

---

## 60. WF-ERR-002 — Decision Error Recovery

If decision generation fails:

1. record the failure,
2. preserve input context,
3. attempt configured recovery,
4. use classical fallback where appropriate,
5. request human intervention if required,
6. record final outcome.

---

## 61. WF-ERR-003 — QAI Execution Failure

QAI execution failure must not invalidate the complete pilot workflow.

~~~text
QAI Execution
     |
     +---- Success ----> Result Validation
     |
     +---- Failure ----> Failure Record
                              |
                              v
                         Classical / HPC
                            Fallback
                              |
                              v
                         Common Decision
~~~

---

## 62. WF-ERR-004 — Actuation Failure

If the actuator fails:

- record the command,
- record actuator status,
- preserve farm state,
- prevent unsafe continuation,
- invoke recovery,
- continue only when safe.

---

## 63. WF-ERR-005 — Workflow Recovery

Workflow recovery is a controlled transition from an abnormal state to a valid execution state.

Recovery must preserve:

- state consistency,
- traceability,
- evidence,
- reproducibility,
- safety.

---

# Experiment Workflows

## 64. WF-EXP-001 — Experiment Initialization

An experiment defines:

- hypothesis,
- scenario,
- execution mode,
- baseline,
- QAI configuration,
- resource boundary,
- KPIs,
- evidence requirements.

---

## 65. WF-EXP-002 — Baseline Experiment

The classical baseline is executed under defined conditions before or alongside the QAI path.

The baseline provides the reference against which QAI execution is evaluated.

---

## 66. WF-EXP-003 — QAI Experiment

The QAI workflow executes the same logical problem under a controlled experiment configuration.

The experiment preserves comparable:

- input state,
- scenario,
- objective,
- constraints,
- output semantics,
- measurements.

---

## 67. WF-EXP-004 — Classical-QAI Comparison

The workflow compares the classical and QAI results.

Possible comparison dimensions include:

- solution quality,
- execution time,
- resource consumption,
- confidence,
- reliability,
- cost,
- operational suitability,
- value.

---

## 68. WF-EXP-005 — Repeated Experiment

The same experiment may be repeated with controlled changes to:

- scenario,
- problem size,
- resource allocation,
- QAI representation,
- backend,
- execution parameters.

The logical use case remains stable while experimental variables change.

---

# Measurement and Evidence Workflows

## 69. WF-EVD-001 — KPI Measurement

The workflow calculates configured pilot KPIs after execution.

Possible KPI groups include:

- irrigation effectiveness,
- water utilization,
- decision quality,
- decision latency,
- system reliability,
- resource efficiency,
- QAI performance.

---

## 70. WF-EVD-002 — Value Measurement

Value measurements evaluate whether the pilot produces meaningful benefit.

Possible dimensions include:

- water savings,
- operational improvement,
- decision improvement,
- resource efficiency,
- cost,
- productivity,
- sustainability.

---

## 71. WF-EVD-003 — Evidence Capture

Evidence is captured for each significant workflow execution.

~~~text
Input
  |
  v
Workflow Execution
  |
  +---- Decision
  +---- Resource Use
  +---- Result
  +---- State Change
  +---- KPI
  +---- Error / Recovery
  |
  v
Evidence Record
~~~

---

## 72. WF-EVD-004 — Execution Trace

The workflow records the causal sequence of the pilot execution.

The trace should make it possible to determine:

**What happened → why it happened → what decision was made → what action occurred → what state changed → what was measured.**

---

# Scenario Workflows

## 73. WF-SCN-001 — Normal Irrigation Scenario

The normal scenario represents valid sensor observations, adequate water availability, valid decision execution, successful actuation, and normal state transition.

---

## 74. WF-SCN-002 — Low Soil Moisture Scenario

The scenario introduces low soil moisture.

~~~text
Low Soil Moisture
       |
       v
Sensor Observation
       |
       v
Context
       |
       v
Decision
       |
       v
Irrigation
       |
       v
Increased Soil Moisture
~~~

---

## 75. WF-SCN-003 — Adequate Moisture Scenario

The soil moisture is within the configured acceptable range.

The expected workflow may produce a no-irrigation decision.

---

## 76. WF-SCN-004 — Water Constraint Scenario

Water availability is constrained.

The decision workflow must account for the constraint before generating or approving an irrigation command.

---

## 77. WF-SCN-005 — Sensor Failure Scenario

One or more observations are unavailable or invalid.

The scenario tests:

- validation,
- recovery,
- fallback,
- human review,
- traceability.

---

## 78. WF-SCN-006 — QAI Unavailable Scenario

The QAI capability is unavailable or rejected by the Advantage Gate.

The workflow must continue through the classical/HPC path.

---

## 79. WF-SCN-007 — QAI Advantage Scenario

The problem satisfies configured conditions for QAI execution.

The workflow executes:

**Advantage Gate → QAI → Result Validation → Decision → Actuation**

and records evidence sufficient for later comparison.

---

## 80. WF-SCN-008 — Human Intervention Scenario

A human reviews or overrides an automated recommendation.

The workflow verifies that the human intervention is recorded and traceable.

---

# Three-Path Workflow Composition

## 81. WF-PRG-001 — Computational Path

The computational path carries:

- state,
- observations,
- context,
- decisions,
- models,
- QAI representations,
- results,
- analytics.

~~~text
Data / State
    |
    v
Computation
    |
    v
Intelligence
    |
    v
Decision
~~~

---

## 82. WF-PRG-002 — Sensing Path

The sensing path carries observations from the farm or its virtual/emulated representation into the Digital Farm context.

~~~text
Farm Condition
     |
     v
Sensor / Sensor Model
     |
     v
Observation
     |
     v
Validation
     |
     v
Context
~~~

---

## 83. WF-PRG-003 — Communication Path

The communication path connects logical participants and capabilities.

It may carry:

- observations,
- state,
- commands,
- results,
- control messages,
- evidence,
- synchronization information.

The communication implementation remains independent of the workflow semantics.

---

## 84. WF-PRG-004 — Three-Path Composition

The three paths cooperate without being collapsed into one implementation.

~~~text
              COMPUTATIONAL PATH
                     |
                     v
              Sense / Process
                     |
                     v
              Decide / Learn
                     |
                     v
              +------+------+
              |             |
              v             v
         SENSING PATH   COMMUNICATION
              |             |
              +------+------+
                     |
                     v
                  Act
                     |
                     v
              Farm State
                     |
                     +---- feedback
~~~

---

# End-to-End Workflows

## 85. WF-E2E-001 — Minimum Callable End-to-End Workflow

The complete minimum callable pilot workflow is:

~~~text
1. Initialize Pilot
2. Initialize Virtual Farm
3. Initialize Decision Cycle
4. Acquire Sensor Observations
5. Validate Observations
6. Construct Farm Context
7. Generate Classical Baseline
8. Prepare QAI Problem
9. Estimate QAI Resources
10. Evaluate Advantage Gate
11. Execute QAI or Classical/Fallback Path
12. Interpret Result
13. Validate Decision
14. Apply Irrigation Policy
15. Generate Command
16. Validate Command
17. Execute Emulated Actuator
18. Transition Farm State
19. Capture Feedback
20. Measure KPIs
21. Capture Value
22. Capture Evidence
23. Complete Decision Cycle
24. Start Next Cycle if configured
~~~

---

## 86. WF-E2E-002 — Minimum Open-Loop Demonstration

The first callable demonstration may use:

~~~text
Virtual Farm
    |
    v
Virtual / Emulated Sensors
    |
    v
Farm Context
    |
    v
Classical Decision
    |
    v
QAI Advantage Gate
    |
    +---- Classical
    |
    +---- QAI
    |
    v
Decision Comparison
    |
    v
KPI / Value Measurement
~~~

This establishes the computational and decision chain before closed-loop actuation is required.

---

## 87. WF-E2E-003 — Minimum Closed-Loop Demonstration

The closed-loop demonstration extends the open-loop workflow:

~~~text
Virtual Farm
     |
     v
Sense
     |
     v
Context
     |
     v
Decide
     |
     v
Act
     |
     v
Farm State Transition
     |
     v
Sense Again
     |
     +-----------> Repeat
~~~

---

## 88. WF-E2E-004 — Full Pilot Workflow

The full pilot workflow composes:

~~~text
Initialization
      |
      v
Sensing
      |
      v
Context
      |
      v
Classical + QAI Evaluation
      |
      v
Advantage Gate
      |
      v
Decision
      |
      v
Policy
      |
      v
Actuation
      |
      v
State Transition
      |
      v
Feedback
      |
      v
Measurement
      |
      v
Evidence
      |
      v
Learning
      |
      +----> Next Cycle
~~~

---

# Virtualization, Emulation and Simulation Workflows

## 89. WF-PRG-005 — Asset Virtualization Workflow

The workflow establishes virtual representations of logical pilot assets.

~~~text
Logical Asset
     |
     v
Asset Definition
     |
     v
State Model
     |
     v
Functional Behavior
     |
     v
Logical Interface
     |
     v
Virtual Asset
~~~

The objective is to make all participating asset types representable before physical realization.

---

## 90. WF-PRG-006 — Functional Emulation Workflow

A virtual asset is provided with behavior that emulates the expected external behavior of the corresponding capability.

Examples include:

- sensor emulation,
- actuator emulation,
- communication emulation,
- QAI execution emulation,
- farm behavior emulation.

---

## 91. WF-PRG-007 — Simulation Workflow

Simulation composes virtualized and emulated capabilities into a controlled environment.

~~~text
Virtual Assets
      |
      +
Emulated Assets
      |
      +
Scenario Models
      |
      +
Farm Models
      |
      v
Simulation Environment
      |
      v
Workflow Execution
      |
      v
Measurements
~~~

---

## 92. WF-PRG-008 — Closed-Loop CPS Progression

The workflow supports progression from virtual to physical execution.

~~~text
Logical Asset
     |
     v
Virtual Asset
     |
     v
Emulated Asset
     |
     v
Simulated CPS
     |
     v
Physical CPS
~~~

The workflow semantics should remain stable while the realization boundary changes.

---

# QAI Lab Workflows

## 93. WF-PRG-009 — QAI Lab Experiment Workflow

The QAI Lab workflow reuses the pilot logical workflow while varying QAI implementation dimensions.

~~~text
Stable Agriculture Problem
          |
          v
Stable Inputs / Constraints
          |
          v
QAI Representation
          |
          v
QAI Execution Variant
          |
          +---- Backend
          +---- Resource
          +---- Algorithm
          +---- Configuration
          |
          v
Result
          |
          v
Common Decision Semantics
          |
          v
Measurement / Evidence
~~~

---

## 94. WF-PRG-010 — QAI Representation Experiment

The same irrigation problem may be represented using different QAI representations.

The workflow preserves:

- original farm state,
- original decision meaning,
- original constraints,
- original objective,
- result interpretation,
- KPI semantics.

Only the representation and execution layer may vary.

---

## 95. WF-PRG-011 — QAI Backend Experiment

The workflow may execute the same logical QAI problem against different execution capabilities.

Potential execution environments include:

- local simulation,
- quantum emulator,
- hybrid runtime,
- remote quantum capability,
- future QPU.

The workflow must not make a specific backend part of the agriculture domain model.

---

## 96. WF-PRG-012 — QAI Resource Scaling Experiment

The workflow allows resource variables to be changed while preserving the logical experiment.

Variables may include:

- problem size,
- shots,
- execution time,
- available compute,
- quantum resources,
- network,
- budget.

This enables systematic evaluation of QAI suitability.

---

# Governance and Traceability Workflows

## 97. WF-GOV-001 — Workflow Traceability

Every executable workflow should be traceable to:

~~~text
Use Case
   |
   v
Asset
   |
   v
Function
   |
   v
Interface
   |
   v
Workflow
   |
   v
Decision / Action
   |
   v
Measurement
   |
   v
Evidence
~~~

---

## 98. WF-GOV-002 — Configuration Traceability

Workflow behavior must be traceable to the configuration that caused it.

The evidence record should identify relevant:

- configuration version,
- scenario,
- execution mode,
- experiment,
- decision policy,
- QAI configuration.

---

## 99. WF-GOV-003 — Reproducibility Workflow

A pilot execution should be reproducible where deterministic or controlled experimental behavior is required.

Reproduction requires preservation of relevant:

- input state,
- scenario,
- configuration,
- execution mode,
- algorithm/representation,
- randomization controls where applicable,
- resource conditions,
- outputs.

---

# Workflow State Model

## 100. Workflow State

A workflow may use the following logical states:

~~~text
DEFINED
   |
   v
READY
   |
   v
RUNNING
   |
   +---- COMPLETED
   |
   +---- FAILED
   |
   +---- RECOVERY
             |
             +---- RUNNING
             |
             +---- ABORTED
~~~

The exact implementation of workflow state management is outside Phase 0.

---

## 101. Workflow Completion

A workflow is complete when:

- required activities have executed,
- required outputs exist,
- state transitions are valid,
- required measurements are captured,
- errors are resolved or recorded,
- evidence requirements are satisfied.

---

## 102. Workflow Failure

A failed workflow must not silently disappear.

At minimum, the pilot should preserve:

- workflow identifier,
- failure point,
- relevant inputs,
- error information,
- recovery attempt,
- final status.

---

## 103. Workflow Composition

Workflows may be composed into larger workflows.

~~~text
Sensing Workflow
       +
Context Workflow
       +
Decision Workflow
       +
Actuation Workflow
       +
State Transition Workflow
       +
Feedback Workflow
       =
Closed-Loop Pilot Workflow
~~~

Composition must not duplicate the underlying functions.

---

## 104. Workflow Reuse

The same logical workflow should be reusable across:

- different fields,
- different irrigation zones,
- different scenarios,
- different execution modes,
- classical execution,
- QAI execution,
- future physical CPS.

Only configuration, data, realization, and execution context should vary where possible.

---

## 105. Workflow Substitution

A workflow capability should support substitution of compatible implementations.

Examples:

~~~text
Virtual Sensor
      |
      +---- Emulated Sensor
      |
      +---- Simulated Sensor
      |
      +---- Physical Sensor

Virtual Actuator
      |
      +---- Emulated Actuator
      |
      +---- Physical Actuator

QAI Simulator
      |
      +---- QAI Emulator
      |
      +---- Hybrid Runtime
      |
      +---- Physical QAI Capability
~~~

The workflow contract remains stable.

---

## 106. Workflow Independence from Physical Realization

A workflow must describe logical behavior rather than physical deployment.

Therefore:

- a sensor need not initially be physical,
- an actuator need not initially be physical,
- a communication path need not initially be physical,
- a QAI execution capability need not initially be physical.

This enables early validation.

---

## 107. Workflow Independence from Vendor

No workflow in this catalogue requires a specific:

- cloud provider,
- processor,
- quantum provider,
- IoT platform,
- simulation package,
- database,
- networking platform.

Vendor selection belongs to later implementation decisions.

---

## 108. Workflow Independence from Technology

The workflow model must survive changes in:

- CPU/GPU/NPU/TPU/FPGA/HPC realization,
- QPU technology,
- simulation technology,
- communication technology,
- sensor technology,
- actuator technology,
- cloud architecture.

---

# Timing and Synchronization

## 109. Logical Time

Pilot workflows may use:

- real time,
- simulated time,
- accelerated time,
- deterministic logical time.

The workflow semantics should not depend on one timing mechanism.

---

## 110. Decision Cycle Timing

A decision cycle may be triggered by:

- fixed interval,
- sensor event,
- simulation step,
- scenario event,
- human request.

The trigger mechanism is configuration rather than domain logic.

---

## 111. Synchronization

Where multiple observations or capabilities participate in one decision cycle, synchronization should establish a coherent logical context.

The synchronization mechanism must preserve:

- ordering,
- temporal association,
- state consistency.

---

# Concurrency

## 112. Independent Activities

Some workflow activities may execute independently.

For example:

- temperature sensing,
- humidity sensing,
- soil moisture sensing.

These may conceptually occur in parallel before context construction.

~~~text
          +--> Soil Moisture --+
          |                    |
Farm State +--> Temperature ---+--> Context
          |                    |
          +--> Humidity -------+
~~~

The catalogue does not prescribe a concurrency implementation.

---

## 113. Sequential Dependencies

Other activities require strict logical ordering.

For example:

~~~text
Observe
  |
  v
Validate
  |
  v
Context
  |
  v
Decision
  |
  v
Policy
  |
  v
Actuation
~~~

These dependencies must be preserved regardless of implementation.

---

# Workflow Data and State

## 114. Data Flow

Workflow data should be classified according to its logical role.

Examples:

- observation,
- state,
- context,
- decision,
- policy,
- command,
- result,
- measurement,
- evidence.

---

## 115. State Flow

State flows through the workflow as:

~~~text
Initial State
    |
    v
Observed State
    |
    v
Decision Context
    |
    v
Decision
    |
    v
Action
    |
    v
New State
~~~

---

## 116. Decision Flow

The decision flow is:

~~~text
Context
   |
   +---- Classical Baseline
   |
   +---- QAI Candidate
             |
             v
        Advantage Gate
             |
       +-----+-----+
       |           |
      QAI       Classical
       |           |
       +-----+-----+
             |
             v
      Candidate Result
             |
             v
        Policy Check
             |
             v
       Final Decision
~~~

---

# Workflow Observability

## 117. Execution Observability

Each important workflow should expose enough information to determine:

- current workflow state,
- current step,
- input status,
- output status,
- resource status,
- error status.

---

## 118. Decision Observability

The pilot should make the decision path inspectable.

At minimum:

~~~text
Input Context
     |
     v
Decision Method
     |
     v
Decision Result
     |
     v
Policy Result
     |
     v
Final Action
~~~

---

## 119. QAI Observability

QAI workflows should record sufficient metadata to understand:

- why QAI was selected,
- what representation was used,
- what resources were requested,
- what execution occurred,
- what result was obtained,
- whether the result passed validation.

---

# Workflow Quality

## 120. Functional Correctness

A workflow is functionally correct when it produces the intended logical outcome under valid conditions.

---

## 121. Consistency

Equivalent inputs and controlled conditions should produce equivalent results where deterministic behavior is expected.

---

## 122. Robustness

The workflow should remain operational under expected variations in:

- observations,
- scenarios,
- resources,
- execution modes,
- QAI availability.

---

## 123. Safety

Safety conditions must be evaluated before actions that can affect farm state.

The pilot should prefer safe non-action or controlled recovery over unsafe actuation.

---

# Workflow and Assets

## 124. Asset Participation

The principal workflow participants include:

- virtual farm,
- field/irrigation zone,
- crop state,
- soil state,
- water state,
- environmental state,
- sensor models,
- Digital Farm service,
- intelligence functions,
- classical decision engine,
- QAI decision engine,
- Advantage Gate,
- fallback capability,
- policy,
- actuator,
- simulation environment,
- experiment,
- KPI and value measurement,
- evidence,
- human operator.

---

## 125. Asset Lifecycle

The workflow should support the logical lifecycle:

~~~text
Defined
  |
  v
Virtualized
  |
  v
Emulated
  |
  v
Simulated
  |
  v
Validated
  |
  v
Promoted
  |
  v
Physical / CPS
~~~

---

# Workflow and Functions

## 126. Function Invocation

A workflow invokes logical functions but does not define their implementation structure.

This preserves the Phase 0 principle that functions remain loose capabilities until virtualization, emulation, and simulation reveal natural implementation boundaries.

---

## 127. Function-to-Workflow Relationship

~~~text
Workflow
   |
   +--> Sense Function
   +--> Process Function
   +--> Decide Function
   +--> Act Function
   +--> Learn Function
~~~

A single function may participate in multiple workflows.

---

# Workflow and Interfaces

## 128. Interface Invocation

Workflows use interfaces to exchange:

- observations,
- context,
- decisions,
- commands,
- results,
- state,
- evidence.

Interfaces define the contract; workflows define the sequence.

---

## 129. Interface-to-Workflow Relationship

~~~text
Function
   |
   v
Interface
   |
   v
Workflow Transition
   |
   v
Next Function
~~~

This separation allows implementations to change without redesigning the workflow catalogue.

---

# Workflow and Digital Twin

## 130. Digital Twin Relationship

The workflow catalogue does not implement the Digital Twin.

It defines the operational sequences through which the Digital Farm can later consume and coordinate Digital Twin capabilities.

~~~text
Digital Farm Workflow
        |
        v
Digital Twin Interface
        |
        v
Twin State / Model
        |
        v
Decision / Action
~~~

---

## 131. Digital Twin Promotion

A workflow becomes suitable for Digital Twin integration when:

- asset identity is stable,
- state representation is stable,
- interfaces are stable,
- workflow transitions are validated,
- feedback behavior is understood.

---

# Workflow and CPS

## 132. CPS Relationship

The workflow catalogue provides the logical behavior that can later be realized as a CPS.

~~~text
Workflow
   |
   +--> Sensing
   +--> Computation
   +--> Decision
   +--> Actuation
   +--> Physical State
   +--> Feedback
~~~

The physical realization is a later implementation boundary.

---

## 133. CPS Readiness

CPS readiness requires:

- stable asset contracts,
- validated interfaces,
- repeatable workflows,
- validated state transitions,
- safety conditions,
- recovery mechanisms,
- measurable outcomes.

---

# Workflow and QAI Lab

## 134. QAI Lab Reuse

The QAI Lab can reuse the same workflow catalogue rather than defining a separate agriculture workflow.

Only the experimental execution layer changes.

---

## 135. QAI Lab Variable Boundary

QAI Lab experiments may vary:

- representation,
- algorithm,
- execution backend,
- resource allocation,
- shots,
- parameters,
- problem size,
- classical comparison.

The agriculture workflow remains stable.

---

## 136. QAI Lab Evidence

QAI Lab workflows must produce evidence that connects experimental variation to observed outcomes.

~~~text
Experiment Configuration
          |
          v
QAI Execution
          |
          v
Result
          |
          v
Comparison
          |
          v
Evidence
          |
          v
Promotion Decision
~~~

---

# Workflow Promotion

## 137. Promotion Principle

A workflow should be promoted to a more advanced realization only after its logical behavior is sufficiently validated.

---

## 138. Promotion Sequence

~~~text
Workflow Definition
       |
       v
Virtual Execution
       |
       v
Emulation
       |
       v
Simulation
       |
       v
Closed-Loop Validation
       |
       v
CPS Candidate
       |
       v
Physical Realization
~~~

---

## 139. Promotion Evidence

Promotion evidence should include:

- functional correctness,
- interface compatibility,
- scenario results,
- KPI results,
- value results,
- error behavior,
- reproducibility,
- safety assessment where applicable.

---

# Phase 0 Scope

## 140. In-Scope Workflows

Phase 0 includes:

- initialization,
- sensing,
- validation,
- context construction,
- classical decision,
- QAI decision,
- Advantage Gate,
- fallback,
- policy validation,
- emulated actuation,
- state transition,
- feedback,
- measurement,
- evidence,
- open-loop execution,
- closed-loop workflow definition,
- scenario workflows.

---

## 141. Optional Later Workflows

The following remain optional later:

- physical sensor workflows,
- physical actuator workflows,
- production IoT workflows,
- large-scale distributed workflows,
- enterprise integration workflows,
- full production operations workflows.

---

## 142. Out-of-Scope Workflows

Phase 0 does not implement:

- complete enterprise lifecycle management,
- full HoldCo management,
- production-scale farm operations,
- complete SaaS workflows,
- multi-subsidiary federation,
- unrestricted external platform orchestration.

---

# Workflow Dependencies

## 143. Deliverable Dependency

The workflow catalogue depends on:

~~~text
Use Case
   |
   +--> Asset Inventory
   |
   +--> Function Inventory
   |
   +--> Interface Inventory
   |
   v
Workflow Catalogue
~~~

---

## 144. Downstream Dependency

The workflow catalogue feeds:

- scenario catalogue,
- classical baseline,
- QAI evaluation,
- KPI definition,
- value measurement,
- acceptance criteria,
- implementation scope.

---

## 145. Phase 1 Dependency

Phase 1 virtualization will use this catalogue to determine:

- which assets must be virtualized,
- which functions must be executable,
- which interfaces must be exposed,
- which workflow transitions must be demonstrable.

---

# Change Management

## 146. Workflow Change

Any workflow change should identify affected:

- assets,
- functions,
- interfaces,
- scenarios,
- measurements,
- evidence,
- acceptance criteria.

---

## 147. Workflow Versioning

Workflow identifiers remain stable.

Changes should be represented through version metadata.

Example:

~~~text
WF-DEC-001
Version: 0.1
Version: 0.2
Version: 1.0
~~~

---

## 148. Change Propagation

~~~text
Use Case Change
      |
      v
Asset / Function / Interface Impact
      |
      v
Workflow Impact
      |
      v
Scenario Impact
      |
      v
KPI / Value Impact
      |
      v
Acceptance Impact
~~~

---

# G0 Readiness

## 149. G0 Workflow Readiness

The workflow catalogue is ready for G0 when:

- the minimum callable workflow is defined,
- workflow dependencies are understood,
- decision branches are defined,
- fallback is defined,
- closed-loop behavior is defined,
- error paths are defined,
- evidence paths are defined.

---

## 150. G0 Workflow Acceptance

The following must be demonstrable conceptually:

~~~text
Virtual Farm
     |
     v
Sense
     |
     v
Context
     |
     v
Classical / QAI Decision
     |
     v
Policy
     |
     v
Emulated Actuation
     |
     v
State Change
     |
     v
Feedback
~~~

---

# Phase 1 Handoff

## 151. Handoff to Virtualization

Phase 1 should transform workflow definitions into executable virtual capabilities.

The mapping is:

~~~text
Workflow Step
     |
     v
Required Function
     |
     v
Required Asset
     |
     v
Required Interface
     |
     v
Virtual Implementation
~~~

---

## 152. Handoff to Emulation

Emulation should provide behavioral equivalents for workflow participants that are not yet physical.

The workflow itself should remain unchanged.

---

## 153. Handoff to Simulation

Simulation should execute the workflows against controlled farm and environmental models.

The simulation should preserve:

- workflow ordering,
- state transitions,
- decision semantics,
- measurements,
- evidence.

---

## 154. Handoff to CPS

The CPS implementation should replace selected virtual/emulated participants with physical participants while retaining compatible workflow contracts.

---

## 155. Handoff to QAI Lab

The QAI Lab should reuse the workflow catalogue to experiment with different QAI realizations while preserving the agriculture decision semantics.

---

# Final Workflow Architecture

## 156. Complete Workflow Architecture

~~~text
                           HOLDCO FACTORY
                                |
                                v
                           AGRICULTURE
                                |
                                v
                       DIGITAL FARM SERVICE
                                |
                                v
                       WORKFLOW CATALOGUE
                                |
        +-----------------------+-----------------------+
        |                       |                       |
        v                       v                       v
     SENSING              COMPUTATIONAL          COMMUNICATION
        |                       |                       |
        v                       v                       |
   Observations              Context <-----------------+
        |                       |
        +-----------+-----------+
                    |
                    v
              Sense / Process
                    |
                    v
                 Decide
                    |
          +---------+---------+
          |                   |
          v                   v
      Classical              QAI
       Baseline              Path
          |                   |
          |              Advantage Gate
          |              /          \
          |           Accept       Reject
          |             |            |
          |             v            v
          |            QAI        Classical
          |             |          Fallback
          +-------------+------------+
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
                     Command
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
                        v
                  Next Cycle
                        |
                        +----> KPI / Value / Evidence
~~~

---

## 157. Workflow Catalogue Principle

The workflow catalogue is the logical execution bridge between the Digital Farm managerial/service layer and the technical realization layers.

It defines **how the pilot behaves**, without prematurely defining **how the pilot is implemented**.

---

## 158. Workflow Realization Principle

Every important workflow should be capable of progressing through:

**Logical Definition → Virtualization → Emulation → Simulation → Closed-Loop Validation → CPS Realization → QAI Lab Experimentation**

without requiring a redesign of the underlying agriculture use case.

---

## 159. Workflow Reuse Principle

The same workflow semantics should support:

- laptop execution,
- simulation,
- emulation,
- Digital Twin integration,
- CPS realization,
- QAI experimentation,
- future physical deployment.

Only the realization of participating capabilities should change where possible.

---

## 160. Workflow Non-Duplication Principle

The catalogue does not redefine:

- asset definitions,
- function definitions,
- interface contracts,
- resource definitions,
- QAI algorithms,
- Digital Twin implementations,
- CPS implementations.

It composes those capabilities into executable logical sequences.

---

## 161. Workflow Closure Principle

A complete pilot workflow must close the loop from:

**Observation → Context → Intelligence → Decision → Action → State Change → Feedback**

and must additionally provide:

**Measurement → Evidence → Learning**

~~~text
OBSERVE
   |
   v
CONTEXTUALIZE
   |
   v
INTELLIGENCE
   |
   v
DECIDE
   |
   v
ACT
   |
   v
STATE CHANGE
   |
   v
FEEDBACK
   |
   +-----------------------> OBSERVE
   |
   v
MEASURE
   |
   v
EVIDENCE
   |
   v
LEARN
~~~

---

## 162. Phase 0 Completion Status

This workflow catalogue establishes the Phase 0 logical workflow baseline for the Intelligent Irrigation Decision and Control pilot.

It provides the workflow foundation required for:

- scenario definition,
- classical baseline definition,
- QAI evaluation definition,
- KPI definition,
- value evaluation,
- acceptance criteria,
- virtualization,
- emulation,
- simulation,
- closed-loop CPS progression,
- and future QAI Lab experimentation.

**Status: COMPLETE — PHASE 0 WORKFLOW BASELINE**
---
