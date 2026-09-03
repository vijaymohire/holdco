# Phase 0 — Function Inventory

**File:** `profiles/pilot/phase_0/functions/03_function_inventory.md`
**Architecture:** HoldCo → Agriculture → Digital Farm → Pilot
**Phase:** Phase 0 — Implementation Readiness & Scope Baseline
**Status:** Draft for G0 Review
**Classification:** Architecture / Function Definition / Controlled Baseline

---

## 1. Purpose

This document defines the **function inventory for the minimum callable Digital Farm pilot use case** established in `01_pilot_use_case.md` and structured by the assets identified in `02_asset_inventory.md`.

The purpose is to identify:

- what the pilot must do;
- what functions are required;
- what each function consumes;
- what each function produces;
- which architectural layer owns the function;
- how functions relate to assets;
- how functions participate in the Sense → Process → Decide → Act → Learn lifecycle;
- how classical and QAI functions coexist;
- how functions remain reusable when the realization changes from virtual to physical.

This document defines **functional behavior**, not implementation technology.

---

## 2. Architectural Position

The function inventory provides the bridge between the logical assets and the interfaces/workflows that follow.

~~~text
Use Case
   ↓
Assets
   ↓
Functions
   ↓
Interfaces
   ↓
Workflows
   ↓
Scenarios
   ↓
Implementation
~~~

The Digital Farm functions coordinate the pilot as a service while technical realization functions remain within their respective technical components.

---

## 3. Function Definition

For this pilot, a function is a defined capability that:

- performs an identifiable operation;
- consumes one or more inputs;
- produces one or more outputs;
- operates on or through one or more assets;
- participates in a workflow;
- has a defined responsibility;
- can be tested or evaluated.

A function is not necessarily equivalent to a software function or source-code method.

It is a logical architectural capability.

---

## 4. Function Inventory Principle

Functions should be:

- capability-oriented;
- technology-neutral;
- independently identifiable;
- traceable to assets;
- traceable to workflows;
- reusable;
- composable;
- testable;
- measurable.

Functions should not be defined around a specific programming language, framework, vendor, processor, cloud, QPU, sensor, or protocol.

---

## 5. Function Categories

The pilot functions are organized into:

1. Farm Initialization
2. State Management
3. Environmental Generation
4. Sensing
5. Context Construction
6. Processing
7. Decision
8. QAI Evaluation
9. Policy Evaluation
10. Actuation
11. State Transition
12. Feedback
13. Learning
14. Measurement
15. Evidence
16. Execution Management
17. Human Interaction
18. Governance and Control

---

## 6. Minimum Functional Spine

The minimum callable function chain is:

~~~text
Initialize
   ↓
Generate / Load State
   ↓
Sense
   ↓
Build Context
   ↓
Process
   ↓
Decide
   ↓
Evaluate Policy / Advantage
   ↓
Command
   ↓
Act
   ↓
Update State
   ↓
Observe
   ↓
Measure
   ↓
Learn
   ↺
~~~

This is the primary functional spine of the pilot.

---

## 7. Function Identification Model

Each function should have a logical identity.

Conceptually:

~~~text
Function
├── Function ID
├── Name
├── Purpose
├── Owner / Layer
├── Inputs
├── Outputs
├── Related Assets
├── Preconditions
├── Postconditions
├── Workflow Role
├── Execution Mode
└── Validation Criteria
~~~

The exact implementation representation is defined later.

---

## 8. Function ID Convention

Functions should use stable identifiers.

Recommended convention:

`FNC-001`, `FNC-002`, etc.

The identifier represents the logical function and should remain stable across implementation changes.

---

## 9. Farm Initialization Function

### Function ID

`FNC-001`

### Name

Initialize Farm

### Purpose

Creates or loads the initial virtual farm environment required for a pilot run.

### Inputs

- farm configuration;
- field/zone configuration;
- initial-state configuration;
- experiment configuration.

### Outputs

- initialized farm;
- initial farm state;
- initialization status.

### Related Assets

- `FARM-001`
- `FARM-002`
- `EXP-001`
- `CFG-001`

### Execution

Initial: Virtual / Simulation

---

## 10. Initialize Crop State Function

### Function ID

`FNC-002`

### Name

Initialize Crop State

### Purpose

Establishes the initial crop state required by the pilot.

### Inputs

- crop configuration;
- initial growth state;
- water requirement parameters.

### Outputs

- crop state.

### Related Assets

- `CROP-001`
- `FARM-002`

---

## 11. Initialize Soil State Function

### Function ID

`FNC-003`

### Name

Initialize Soil State

### Purpose

Establishes the initial soil conditions for the selected field or zone.

### Inputs

- initial soil moisture;
- soil parameters where applicable.

### Outputs

- initialized soil state.

### Related Assets

- `SOIL-001`
- `FARM-002`

---

## 12. Initialize Water State Function

### Function ID

`FNC-004`

### Name

Initialize Water State

### Purpose

Establishes the water-resource condition for the experiment.

### Inputs

- water availability;
- optional resource quantity.

### Outputs

- water state.

### Related Assets

- `WATER-001`

---

## 13. Initialize Environmental State Function

### Function ID

`FNC-005`

### Name

Initialize Environmental State

### Purpose

Establishes the initial environmental conditions.

### Inputs

- temperature;
- humidity;
- optional environmental parameters.

### Outputs

- environmental state.

### Related Assets

- `ENV-001`

---

## 14. Initialize Time / Cycle Function

### Function ID

`FNC-006`

### Name

Initialize Decision Cycle

### Purpose

Initializes the temporal state of the experiment.

### Inputs

- start time;
- cycle interval;
- total duration.

### Outputs

- cycle state;
- experiment clock.

### Related Assets

- `TIME-001`
- `EXP-001`

---

## 15. Generate Environmental Conditions Function

### Function ID

`FNC-007`

### Name

Generate Environmental Conditions

### Purpose

Generates or retrieves environmental conditions for the current decision cycle.

### Inputs

- scenario;
- current time;
- environmental model.

### Outputs

- temperature;
- humidity;
- other enabled environmental values.

### Related Assets

- `ENV-001`
- `SIM-002`
- `SIM-003`

---

## 16. Generate Sensor Observation Function

### Function ID

`FNC-008`

### Name

Generate Sensor Observation

### Purpose

Transforms virtual farm state into sensor-observable information.

### Inputs

- farm state;
- sensor model;
- current time.

### Outputs

- sensor observation.

### Related Assets

- `SENSE-001`
- `DATA-001`

---

## 17. Read Soil Moisture Function

### Function ID

`FNC-009`

### Name

Read Soil Moisture

### Purpose

Provides the current soil moisture observation.

### Inputs

- soil state;
- sensor representation.

### Outputs

- soil moisture observation.

### Related Assets

- `SOIL-001`
- `SENSE-002`
- `DATA-001`

### Future Mapping

The same logical function may receive data from a physical soil-moisture sensor.

---

## 18. Read Temperature Function

### Function ID

`FNC-010`

### Name

Read Temperature

### Purpose

Provides the current temperature observation.

### Inputs

- environmental state;
- temperature sensor representation.

### Outputs

- temperature observation.

### Related Assets

- `ENV-001`
- `SENSE-003`
- `DATA-001`

---

## 19. Read Humidity Function

### Function ID

`FNC-011`

### Name

Read Humidity

### Purpose

Provides the current humidity observation.

### Inputs

- environmental state;
- humidity sensor representation.

### Outputs

- humidity observation.

### Related Assets

- `ENV-001`
- `SENSE-004`
- `DATA-001`

---

## 20. Validate Observation Function

### Function ID

`FNC-012`

### Name

Validate Observation

### Purpose

Checks whether incoming observations are usable for the decision cycle.

Potential checks include:

- presence;
- range;
- timestamp;
- unit;
- source;
- basic quality.

### Inputs

- sensor observation.

### Outputs

- validated observation;
- quality status;
- validation result.

### Related Assets

- `DATA-001`
- `GOV-001`

---

## 21. Build Farm Context Function

### Function ID

`FNC-013`

### Name

Build Farm Context

### Purpose

Combines current observations and relevant state into the context required for decision processing.

### Inputs

- sensor observations;
- crop state;
- soil state;
- water state;
- environmental state;
- operational state;
- historical context where enabled.

### Outputs

- farm context.

### Related Assets

- `DF-001`
- `DF-002`

---

## 22. Enrich Farm Context Function

### Function ID

`FNC-014`

### Name

Enrich Farm Context

### Purpose

Adds relevant contextual information required by the decision process.

Potential information includes:

- recent irrigation;
- decision history;
- resource constraints;
- current cycle;
- scenario metadata.

### Inputs

- basic farm context;
- historical/operational information.

### Outputs

- enriched farm context.

### Related Assets

- `DF-002`
- `TIME-001`
- `WATER-001`

---

## 23. Prepare Decision Input Function

### Function ID

`FNC-015`

### Name

Prepare Decision Input

### Purpose

Transforms the farm context into a normalized logical decision input.

### Inputs

- farm context.

### Outputs

- decision input representation.

### Related Assets

- `DF-002`
- `INT-001`

The function must not assume whether the downstream decision mechanism is classical or QAI.

---

## 24. Classical Decision Function

### Function ID

`FNC-016`

### Name

Generate Classical Irrigation Decision

### Purpose

Generates the baseline irrigation decision using the defined classical method.

### Inputs

- decision input;
- classical parameters.

### Outputs

- classical decision;
- decision metadata.

### Related Assets

- `INT-002`
- `DEC-001`

---

## 25. QAI Problem Representation Function

### Function ID

`FNC-017`

### Name

Represent Irrigation Problem for QAI

### Purpose

Transforms the logical irrigation decision problem into the representation required by the selected QAI approach.

### Inputs

- decision input;
- QAI configuration.

### Outputs

- QAI problem representation.

### Related Assets

- `QAI-001`
- `INT-003`

The exact representation is an implementation/evaluation concern and is not fixed by this document.

---

## 26. QAI Execution Function

### Function ID

`FNC-018`

### Name

Execute QAI Decision

### Purpose

Executes the QAI representation and obtains the QAI result.

### Inputs

- QAI problem representation;
- QAI execution configuration;
- available resources.

### Outputs

- QAI result;
- execution metadata;
- confidence / quality information where available.

### Related Assets

- `QAI-002`
- `INT-003`

---

## 27. Interpret QAI Result Function

### Function ID

`FNC-019`

### Name

Interpret QAI Result

### Purpose

Converts the QAI execution result into a logical irrigation decision candidate.

### Inputs

- QAI result;
- QAI metadata.

### Outputs

- QAI decision candidate;
- confidence;
- interpretation metadata.

### Related Assets

- `INT-003`
- `DEC-001`

---

## 28. Evaluate QAI Advantage Function

### Function ID

`FNC-020`

### Name

Evaluate QAI Advantage

### Purpose

Evaluates whether the QAI candidate provides sufficient evidence to be selected.

### Inputs

- QAI result;
- classical result;
- KPI measurements;
- resource information;
- confidence;
- policy constraints.

### Outputs

- advantage assessment;
- accept/reject/inconclusive result.

### Related Assets

- `ADV-001`
- `KPI-001`

---

## 29. Evaluate Policy Function

### Function ID

`FNC-021`

### Name

Evaluate Irrigation Policy

### Purpose

Determines whether the proposed action satisfies operational constraints.

### Inputs

- candidate decision;
- water availability;
- policy;
- safety/operational constraints.

### Outputs

- policy result;
- permitted or rejected action.

### Related Assets

- `POL-001`
- `WATER-001`
- `GOV-001`

---

## 30. Select Decision Function

### Function ID

`FNC-022`

### Name

Select Final Irrigation Decision

### Purpose

Selects the action that should be executed.

### Inputs

- classical decision;
- QAI decision;
- advantage-gate result;
- policy result;
- fallback status.

### Outputs

- selected irrigation decision;
- decision source;
- selection rationale.

### Related Assets

- `DEC-001`
- `ADV-001`
- `ADV-002`

---

## 31. Evaluate Fallback Function

### Function ID

`FNC-023`

### Name

Evaluate Classical Fallback

### Purpose

Determines whether execution should fall back to the classical path.

### Inputs

- QAI availability;
- QAI quality;
- QAI confidence;
- advantage result;
- resource availability;
- policy.

### Outputs

- fallback decision.

### Related Assets

- `ADV-002`
- `INT-002`

---

## 32. Create Irrigation Command Function

### Function ID

`FNC-024`

### Name

Create Irrigation Command

### Purpose

Converts the selected irrigation decision into an executable logical command.

### Inputs

- selected decision;
- actuator constraints.

### Outputs

- irrigation command.

### Related Assets

- `ACT-001`
- `DEC-001`

---

## 33. Validate Irrigation Command Function

### Function ID

`FNC-025`

### Name

Validate Irrigation Command

### Purpose

Ensures that the command is valid before execution.

### Checks

Potential checks include:

- valid action;
- valid target;
- resource availability;
- safety constraints;
- operating limits.

### Inputs

- irrigation command;
- policy;
- farm state.

### Outputs

- validated command;
- validation result.

---

## 34. Execute Irrigation Actuator Function

### Function ID

`FNC-026`

### Name

Execute Irrigation Actuator

### Purpose

Applies the irrigation command to the emulated actuator.

### Inputs

- validated irrigation command.

### Outputs

- actuation status;
- actuator event.

### Related Assets

- `ACT-002`

---

## 35. Apply Irrigation Effect Function

### Function ID

`FNC-027`

### Name

Apply Irrigation Effect

### Purpose

Applies the actuator effect to the virtual farm state.

### Inputs

- irrigation command;
- actuator status;
- farm state.

### Outputs

- updated farm state.

### Related Assets

- `SIM-001`
- `FARM-001`

---

## 36. Advance Simulation Time Function

### Function ID

`FNC-028`

### Name

Advance Simulation Time

### Purpose

Moves the virtual farm to the next decision cycle.

### Inputs

- current time;
- cycle interval;
- environmental evolution.

### Outputs

- updated time;
- next-cycle state.

### Related Assets

- `TIME-001`
- `SIM-002`

---

## 37. Update Farm State Function

### Function ID

`FNC-029`

### Name

Update Farm State

### Purpose

Updates the complete virtual farm state after environmental evolution and actuation.

### Inputs

- previous farm state;
- environmental conditions;
- irrigation effect;
- simulation rules.

### Outputs

- updated farm state.

### Related Assets

- `FARM-001`
- `SIM-001`

---

## 38. Generate Feedback Function

### Function ID

`FNC-030`

### Name

Generate Feedback

### Purpose

Produces feedback information from the updated farm state for the next decision cycle and evaluation.

### Inputs

- updated farm state;
- sensor observations;
- actuator events.

### Outputs

- feedback state;
- feedback observations.

---

## 39. Evaluate Outcome Function

### Function ID

`FNC-031`

### Name

Evaluate Irrigation Outcome

### Purpose

Determines the immediate outcome of the selected irrigation action.

Potential outcomes include:

- moisture improvement;
- water consumption;
- action effectiveness;
- policy compliance.

### Inputs

- pre-action state;
- post-action state;
- command;
- observations.

### Outputs

- outcome record.

---

## 40. Calculate KPI Function

### Function ID

`FNC-032`

### Name

Calculate Pilot KPIs

### Purpose

Calculates the defined technical and agricultural measurements for the current experiment.

### Inputs

- observations;
- decisions;
- commands;
- state transitions;
- execution metadata.

### Outputs

- KPI measurements.

### Related Assets

- `KPI-001`

---

## 41. Calculate Value Metrics Function

### Function ID

`FNC-033`

### Name

Calculate Pilot Value Metrics

### Purpose

Calculates value-oriented measurements from the experiment results.

### Inputs

- KPI results;
- resource consumption;
- decision outcomes.

### Outputs

- value measurements.

### Related Assets

- `VAL-001`

---

## 42. Compare Classical and QAI Results Function

### Function ID

`FNC-034`

### Name

Compare Classical and QAI Results

### Purpose

Provides a controlled comparison between the classical baseline and QAI execution.

### Inputs

- classical results;
- QAI results;
- common experiment conditions;
- KPI measurements.

### Outputs

- comparison result;
- comparative evidence.

The comparison must use equivalent problem conditions.

---

## 43. Capture Experiment Evidence Function

### Function ID

`FNC-035`

### Name

Capture Experiment Evidence

### Purpose

Captures the information required to reproduce and evaluate the experiment.

### Inputs

- configuration;
- inputs;
- observations;
- decisions;
- execution metadata;
- results.

### Outputs

- evidence record.

### Related Assets

- `EVID-001`
- `EXP-001`

---

## 44. Record Execution Log Function

### Function ID

`FNC-036`

### Name

Record Execution Event

### Purpose

Records significant events during pilot execution.

### Inputs

- execution event;
- timestamp;
- source;
- status.

### Outputs

- execution log entry.

### Related Assets

- `LOG-001`

---

## 45. Manage Pilot Configuration Function

### Function ID

`FNC-037`

### Name

Manage Pilot Configuration

### Purpose

Loads, validates, and provides the configuration required for a pilot experiment.

### Inputs

- configuration definition.

### Outputs

- validated pilot configuration.

### Related Assets

- `CFG-001`
- `EXP-001`

---

## 46. Manage Experiment Lifecycle Function

### Function ID

`FNC-038`

### Name

Manage Experiment Lifecycle

### Purpose

Controls the logical lifecycle of an experiment.

Possible states include:

~~~text
Created
   ↓
Configured
   ↓
Initialized
   ↓
Running
   ↓
Completed
   ↓
Evaluated
   ↓
Archived
~~~

### Related Assets

- `EXP-001`

---

## 47. Manage Decision Cycle Function

### Function ID

`FNC-039`

### Name

Manage Decision Cycle

### Purpose

Coordinates the execution of one complete decision cycle.

The cycle includes:

~~~text
Sense
  ↓
Process
  ↓
Decide
  ↓
Policy / Advantage
  ↓
Act
  ↓
Observe
  ↓
Measure
~~~

### Related Assets

- `TIME-001`
- `EXEC-001`

---

## 48. Detect Execution Error Function

### Function ID

`FNC-040`

### Name

Detect Execution Error

### Purpose

Detects failures or abnormal conditions during execution.

Potential conditions include:

- missing observation;
- invalid state;
- failed QAI execution;
- failed actuation;
- resource exhaustion;
- policy violation.

### Outputs

- error condition;
- error metadata.

---

## 49. Recover from Execution Error Function

### Function ID

`FNC-041`

### Name

Recover from Execution Error

### Purpose

Provides controlled recovery from pilot execution errors.

Potential actions include:

- retry;
- skip cycle;
- use fallback;
- stop experiment;
- mark experiment incomplete.

Recovery behavior must remain controlled and observable.

---

## 50. Human Review Function

### Function ID

`FNC-042`

### Name

Review Pilot Decision

### Purpose

Allows a human operator to inspect a proposed or selected irrigation decision.

### Inputs

- farm context;
- decision;
- rationale;
- evidence.

### Outputs

- approval;
- rejection;
- review record.

---

## 51. Human Override Function

### Function ID

`FNC-043`

### Name

Override Pilot Decision

### Purpose

Allows an authorized human operator to override a decision when the pilot operates in assisted mode.

### Inputs

- proposed decision;
- operator action;
- override reason.

### Outputs

- revised decision;
- override record.

Human override must remain explicitly traceable.

---

## 52. Visualization Function

### Function ID

`FNC-044`

### Name

Visualize Pilot State

### Purpose

Provides human-readable visibility into the current pilot state and execution.

Potential information includes:

- soil moisture;
- environmental conditions;
- current decision;
- actuator state;
- cycle;
- KPI results.

Visualization is an observation function and does not define decision logic.

---

## 53. Validate Pilot State Function

### Function ID

`FNC-045`

### Name

Validate Farm State

### Purpose

Checks whether the virtual farm state remains valid after each state transition.

Potential checks include:

- valid state ranges;
- consistency;
- required values;
- resource constraints.

---

## 54. Validate Experiment Configuration Function

### Function ID

`FNC-046`

### Name

Validate Experiment Configuration

### Purpose

Ensures that the experiment can be executed with the supplied configuration.

Checks may include:

- required parameters;
- compatible execution mode;
- valid scenario;
- available resources;
- valid decision parameters.

---

## 55. Manage Pilot Resources Function

### Function ID

`FNC-047`

### Name

Manage Pilot Resources

### Purpose

Identifies and tracks resources required by the pilot.

Potential resources include:

- CPU;
- memory;
- storage;
- network;
- energy;
- QAI execution resources;
- execution time.

### Related Architecture

Digital Farm Resource Management.

---

## 56. Record Resource Consumption Function

### Function ID

`FNC-048`

### Name

Record Resource Consumption

### Purpose

Records resource usage for technical and value evaluation.

### Inputs

- execution metadata;
- resource measurements.

### Outputs

- resource consumption record.

---

## 57. Determine Next Cycle Function

### Function ID

`FNC-049`

### Name

Determine Next Decision Cycle

### Purpose

Determines whether another decision cycle should be executed.

### Inputs

- current cycle;
- experiment duration;
- termination conditions;
- execution status.

### Outputs

- continue / terminate decision.

---

## 58. Complete Experiment Function

### Function ID

`FNC-050`

### Name

Complete Pilot Experiment

### Purpose

Finalizes the experiment after its execution period or termination condition.

### Activities

- finalize state;
- finalize KPIs;
- finalize value measurements;
- capture evidence;
- record completion status.

---

## 59. Function-to-Asset Relationship

The primary mapping is:

~~~text
FARM-001 Virtual Farm
   ↓
FNC-001 Initialize Farm
FNC-029 Update Farm State
FNC-045 Validate Farm State

SENSE Assets
   ↓
FNC-008 Generate Observation
FNC-009 Read Soil Moisture
FNC-010 Read Temperature
FNC-011 Read Humidity
FNC-012 Validate Observation

DF-001 / DF-002
   ↓
FNC-013 Build Context
FNC-014 Enrich Context
FNC-015 Prepare Decision Input

INT / QAI Assets
   ↓
FNC-016 Classical Decision
FNC-017 QAI Representation
FNC-018 QAI Execution
FNC-019 Interpret QAI Result
FNC-020 Evaluate QAI Advantage

Decision / Policy Assets
   ↓
FNC-021 Evaluate Policy
FNC-022 Select Decision
FNC-023 Evaluate Fallback

Actuation Assets
   ↓
FNC-024 Create Command
FNC-025 Validate Command
FNC-026 Execute Actuator
FNC-027 Apply Irrigation Effect

Simulation Assets
   ↓
FNC-028 Advance Time
FNC-029 Update Farm State
FNC-030 Generate Feedback

Measurement / Evidence
   ↓
FNC-031 Evaluate Outcome
FNC-032 Calculate KPIs
FNC-033 Calculate Value
FNC-034 Compare Results
FNC-035 Capture Evidence
~~~

---

## 60. Function-to-Intelligence Lifecycle Mapping

The functions map to the Digital Farm intelligence lifecycle as follows:

| Lifecycle Stage | Primary Functions |
|---|---|
| Sense | FNC-008 to FNC-012 |
| Process | FNC-013 to FNC-015 |
| Decide | FNC-016 to FNC-023 |
| Act | FNC-024 to FNC-027 |
| Learn | FNC-030 to FNC-035 |

Supporting functions provide:

- configuration;
- execution;
- governance;
- resource management;
- human interaction;
- error handling.

---

## 61. Function-to-Path Mapping

### Sensing Path

~~~text
FNC-007
Generate Environmental Conditions
        ↓
FNC-008
Generate Sensor Observation
        ↓
FNC-009 / FNC-010 / FNC-011
Read Observations
        ↓
FNC-012
Validate Observation
~~~

### Computational Path

~~~text
FNC-013
Build Farm Context
        ↓
FNC-014
Enrich Context
        ↓
FNC-015
Prepare Decision Input
        ↓
       ┌───────────────┐
       ↓               ↓
FNC-016             FNC-017
Classical           QAI Representation
Decision                 ↓
                         FNC-018
                         QAI Execution
                         ↓
                         FNC-019
                         Interpret Result
       └───────────────┬─┘
                       ↓
                FNC-020
             Advantage Evaluation
~~~

### Communication Path

The communication path supports information transfer among the above functions and their participating assets.

The path remains logically independent of the specific transport mechanism.

---

## 62. Function-to-Execution-Mode Mapping

The functions must remain compatible with the pilot execution progression:

~~~text
Virtualization
      ↓
Emulation
      ↓
Simulation
      ↓
Closed-Loop CPS
      ↓
Physical Realization
~~~

For example:

| Function | Initial | Future |
|---|---|---|
| Sense | Emulated | Physical / IoT |
| Process | Local | Distributed |
| QAI Execute | Simulation / Emulation | QPU / Hybrid |
| Act | Emulated | Physical |
| State Update | Simulation | CPS / Digital Twin |
| Communication | Local | Networked |

The logical function remains stable.

---

## 63. Function Preconditions

Important preconditions include:

- valid experiment configuration;
- initialized farm state;
- valid scenario;
- available resources;
- valid sensor data;
- valid decision inputs;
- defined policy;
- available execution path.

Functions should fail explicitly when required preconditions are not satisfied.

---

## 64. Function Postconditions

Important postconditions include:

- valid updated state;
- valid decision;
- valid actuator command;
- observable execution result;
- measurable outcome;
- traceable evidence.

A function should not report successful completion when its required postcondition has not been achieved.

---

## 65. Function Composition

Functions are composed rather than treated as isolated operations.

~~~text
Initialize
   ↓
Sense
   ↓
Context
   ↓
Process
   ↓
Decision
   ↓
Policy / Advantage
   ↓
Command
   ↓
Act
   ↓
State Update
   ↓
Feedback
   ↓
Measure
   ↓
Learn
~~~

This composition becomes the basis for the Workflow Catalogue.

---

## 66. Function Reuse

Functions should be reusable across future Digital Farm use cases where their semantics remain applicable.

Potentially reusable functions include:

- state initialization;
- observation validation;
- context construction;
- policy evaluation;
- resource management;
- evidence capture;
- KPI calculation;
- experiment management.

The irrigation-specific decision functions should remain distinguishable from generic platform capabilities.

---

## 67. Function Non-Duplication

The Digital Farm function inventory must not duplicate technical functions unnecessarily.

For example:

- Digital Farm coordinates sensing rather than implementing sensor electronics;
- Digital Farm coordinates QAI execution rather than implementing the QAI runtime;
- Digital Farm coordinates simulation rather than replacing simulation engines;
- Digital Farm coordinates communication rather than replacing networking infrastructure;
- Digital Farm coordinates Digital Twin/CPS realization rather than recreating it.

This maintains the managerial-to-technical boundary.

---

## 68. Function Ownership

Function ownership should follow architectural responsibility.

~~~text
Digital Farm
├── Orchestration
├── Context
├── Policy Coordination
├── Lifecycle
├── Evaluation
├── Value
└── Evidence
        ↓
Technical Realization
├── Sensing
├── Simulation
├── CPS
├── Digital Twin
├── QAI
├── Communication
└── Physical Systems
~~~

A function may be invoked by Digital Farm without being implemented inside Digital Farm.

---

## 69. Function Observability

Important functions should produce observable execution information.

At minimum, the pilot should make it possible to determine:

- when the function executed;
- whether it succeeded;
- what logical inputs it received;
- what logical outputs it produced;
- whether a fallback occurred;
- whether an error occurred.

---

## 70. Function Error Handling

Functions should use explicit outcome states where appropriate.

Conceptually:

~~~text
SUCCESS
WARNING
REJECTED
FAILED
FALLBACK
INCONCLUSIVE
~~~

These states should not be confused with business decisions such as irrigation ON/OFF.

---

## 71. Function Idempotency

Where applicable, functions that may be retried should have defined retry behavior.

Examples include:

- configuration loading;
- observation retrieval;
- evidence recording;
- state initialization.

State-changing functions such as actuation require stronger protection against unintended repeated execution.

---

## 72. Function Safety

Functions affecting farm state or actuation should respect defined safety and policy boundaries.

In particular:

- command validation must occur before actuation;
- resource constraints must be checked;
- invalid commands must be rejected;
- human override must remain traceable;
- emergency or stop conditions must be observable.

---

## 73. Function Security

The pilot should protect function execution and data flows against unauthorized actions.

The minimum pilot should establish logical controls for:

- execution authorization;
- configuration integrity;
- decision traceability;
- actuator command integrity;
- evidence integrity.

Detailed security implementation belongs to the governance and technical realization layers.

---

## 74. Function Performance

The pilot should measure relevant function performance.

Potential measurements include:

- execution latency;
- processing time;
- QAI execution time;
- actuation time;
- state-update time;
- cycle duration.

Performance measurements should be used for comparison rather than optimization assumptions.

---

## 75. Function Resource Awareness

Computational functions should be resource-aware.

Potential resources include:

~~~text
CPU
GPU
NPU
TPU
FPGA
Memory
Storage
Network
Energy
QPU
Execution Time
~~~

The minimum pilot does not require all resources.

Only resources actually used should be measured.

---

## 76. Classical and QAI Function Equivalence

The classical and QAI decision functions must operate on the same logical problem definition.

~~~text
             Common Decision Input
                     ↓
              ┌──────┴──────┐
              ↓             ↓
        Classical Path    QAI Path
              ↓             ↓
        Decision Result  Decision Result
              └──────┬──────┘
                     ↓
               Comparison
~~~

This preserves experimental validity.

---

## 77. Fallback Function Chain

The fallback behavior is:

~~~text
QAI Candidate
      ↓
Quality / Resource / Policy Check
      ↓
   Accept?
   ↙     ↘
 YES      NO
  ↓       ↓
 QAI   Classical
  \       /
   \     /
    Selected
    Decision
~~~

Fallback must be a defined function rather than an undocumented exception path.

---

## 78. Learning Function

The initial learning function is primarily **evaluation-driven**.

It should capture:

- what happened;
- what decision was made;
- what result occurred;
- how the result compared with the baseline;
- whether the decision mechanism should be reconsidered.

The pilot does not require autonomous model retraining.

---

## 79. Learning Boundary

The following are initially in scope:

- outcome measurement;
- comparison;
- evidence capture;
- parameter evaluation;
- identification of improvement opportunities.

The following are optional future capabilities:

- automated model retraining;
- adaptive policy generation;
- online learning;
- autonomous policy modification.

Such capabilities require additional validation and governance.

---

## 80. Function Validation

Each mandatory function should eventually have at least one validation method.

Validation may include:

- unit-level validation;
- interface validation;
- workflow validation;
- scenario validation;
- end-to-end validation;
- comparative evaluation.

The appropriate method depends on the function.

---

## 81. Function Traceability

Functions should be traceable in both directions:

~~~text
Use Case
   ↓
Asset
   ↓
Function
   ↓
Interface
   ↓
Workflow
   ↓
Scenario
   ↓
KPI
   ↓
Acceptance
~~~

A function without a meaningful use-case or architectural purpose should be reconsidered.

---

## 82. Function Dependency Model

The main dependency chain is:

~~~text
FNC-001 to FNC-006
Initialization
       ↓
FNC-007 to FNC-012
Sensing
       ↓
FNC-013 to FNC-015
Context / Processing Preparation
       ↓
FNC-016 to FNC-023
Decision / QAI / Policy
       ↓
FNC-024 to FNC-027
Actuation
       ↓
FNC-028 to FNC-030
State / Feedback
       ↓
FNC-031 to FNC-035
Evaluation / Evidence
~~~

Supporting execution functions operate across the chain.

---

## 83. Function-to-Workflow Handoff

The Function Inventory provides the logical building blocks for:

`05_workflow_catalogue.md`

The Workflow Catalogue should define:

- function sequence;
- branching;
- dependencies;
- timing;
- error paths;
- fallback paths;
- human interaction;
- termination conditions.

It should not redefine the functions themselves.

---

## 84. Function-to-Scenario Handoff

The Scenario Catalogue should use the functions defined here to describe controlled operating conditions.

For example:

~~~text
Scenario
   ↓
Initial State
   ↓
Function Sequence
   ↓
Decision
   ↓
Actuation
   ↓
State Transition
   ↓
Outcome
~~~

Scenarios should test normal, boundary, constrained, and failure conditions.

---

## 85. Function-to-KPI Handoff

The KPI definition should identify which functions produce the measurements required for evaluation.

Potential examples:

| Function | Potential Measurement |
|---|---|
| Sensing | Observation latency / quality |
| Context | Context preparation time |
| Classical Decision | Decision time |
| QAI Execution | QAI execution time |
| Advantage Gate | Evaluation result |
| Actuation | Command-to-action latency |
| State Update | State transition time |
| Evaluation | Outcome quality |
| Resource Management | Resource consumption |

Exact KPI definitions belong to `09_kpi_definition.md`.

---

## 86. Function-to-Value Handoff

Value evaluation should connect functional outcomes to value dimensions.

For example:

~~~text
Function Execution
      ↓
Technical Outcome
      ↓
Agricultural Outcome
      ↓
Resource Outcome
      ↓
Economic / Operational Value
~~~

This prevents technical performance from being treated as value automatically.

---

## 87. Function Change Control

Changes to a mandatory function should identify:

- function changed;
- reason;
- affected asset;
- affected interface;
- affected workflow;
- affected scenario;
- affected KPI;
- affected acceptance criterion.

Material changes should be reviewed as part of Phase 0 governance.

---

## 88. Function Versioning

Functions that change behavior should have a traceable version.

Versioning may apply to:

- decision logic;
- policies;
- QAI representation;
- simulation functions;
- state-transition functions;
- evaluation functions.

A function version should be recoverable from experiment evidence.

---

## 89. Function Technology Independence

A function may be implemented through:

- software;
- simulation;
- emulation;
- distributed services;
- edge execution;
- cloud execution;
- classical computation;
- QAI computation;
- physical devices.

The logical function definition remains independent of the realization.

---

## 90. Function Portability

A function should be portable when:

- its logical inputs remain compatible;
- its logical outputs remain compatible;
- its preconditions remain satisfied;
- its behavior remains within the defined contract.

This supports migration from laptop execution to distributed or physical execution.

---

## 91. Minimum Mandatory Function Set

The minimum callable pilot requires at least:

~~~text
FNC-001  Initialize Farm
FNC-002  Initialize Crop State
FNC-003  Initialize Soil State
FNC-004  Initialize Water State
FNC-005  Initialize Environmental State
FNC-006  Initialize Decision Cycle

FNC-007  Generate Environmental Conditions
FNC-008  Generate Sensor Observation
FNC-009  Read Soil Moisture
FNC-010  Read Temperature
FNC-011  Read Humidity
FNC-012  Validate Observation

FNC-013  Build Farm Context
FNC-014  Enrich Farm Context
FNC-015  Prepare Decision Input

FNC-016  Generate Classical Irrigation Decision
FNC-017  Represent Irrigation Problem for QAI
FNC-018  Execute QAI Decision
FNC-019  Interpret QAI Result
FNC-020  Evaluate QAI Advantage
FNC-021  Evaluate Irrigation Policy
FNC-022  Select Final Irrigation Decision
FNC-023  Evaluate Classical Fallback

FNC-024  Create Irrigation Command
FNC-025  Validate Irrigation Command
FNC-026  Execute Irrigation Actuator
FNC-027  Apply Irrigation Effect

FNC-028  Advance Simulation Time
FNC-029  Update Farm State
FNC-030  Generate Feedback

FNC-031  Evaluate Irrigation Outcome
FNC-032  Calculate Pilot KPIs
FNC-033  Calculate Pilot Value Metrics
FNC-034  Compare Classical and QAI Results
FNC-035  Capture Experiment Evidence
~~~

Supporting functions may be implemented as required by the execution environment.

---

## 92. Optional Supporting Functions

The following functions support the pilot but may be simplified in the first implementation:

~~~text
FNC-036  Record Execution Event
FNC-037  Manage Pilot Configuration
FNC-038  Manage Experiment Lifecycle
FNC-039  Manage Decision Cycle
FNC-040  Detect Execution Error
FNC-041  Recover from Execution Error
FNC-042  Review Pilot Decision
FNC-043  Override Pilot Decision
FNC-044  Visualize Pilot State
FNC-045  Validate Farm State
FNC-046  Validate Experiment Configuration
FNC-047  Manage Pilot Resources
FNC-048  Record Resource Consumption
FNC-049  Determine Next Decision Cycle
FNC-050  Complete Pilot Experiment
~~~

These functions should not obscure the minimum functional spine.

---

## 93. Minimum End-to-End Function Chain

The complete minimum callable sequence is:

~~~text
FNC-001 Initialize Farm
        ↓
FNC-002 to FNC-006 Initialize State
        ↓
FNC-007 Generate Environment
        ↓
FNC-008 to FNC-011 Acquire Observations
        ↓
FNC-012 Validate Observation
        ↓
FNC-013 Build Context
        ↓
FNC-014 Enrich Context
        ↓
FNC-015 Prepare Decision Input
        ↓
FNC-016 Classical Decision
        +
FNC-017 → FNC-018 → FNC-019 QAI Decision
        ↓
FNC-020 Evaluate QAI Advantage
        ↓
FNC-021 Evaluate Policy
        ↓
FNC-022 Select Decision
        ↓
FNC-023 Fallback if Required
        ↓
FNC-024 Create Command
        ↓
FNC-025 Validate Command
        ↓
FNC-026 Execute Actuator
        ↓
FNC-027 Apply Effect
        ↓
FNC-028 Advance Time
        ↓
FNC-029 Update Farm State
        ↓
FNC-030 Generate Feedback
        ↓
FNC-031 Evaluate Outcome
        ↓
FNC-032 Calculate KPIs
        ↓
FNC-033 Calculate Value
        ↓
FNC-034 Compare Results
        ↓
FNC-035 Capture Evidence
        ↓
Next Decision Cycle
~~~

---

## 94. Minimum Function Acceptance

The function inventory is sufficiently defined for G0 when:

1. all core functions are identified;
2. function responsibilities are clear;
3. inputs and outputs are understandable;
4. asset relationships are established;
5. classical and QAI functions are separated logically;
6. fallback behavior is defined;
7. sensing functions are defined;
8. actuation functions are defined;
9. state-transition functions are defined;
10. measurement functions are defined;
11. evidence functions are defined;
12. future physical mappings remain possible.

---

## 95. Implementation Boundary

The function inventory defines **what must happen**, not **how it must be implemented**.

Implementation may use:

- Python;
- other programming languages;
- simulation frameworks;
- QAI frameworks;
- local services;
- distributed services;
- hardware;
- cloud resources.

Technology selection is outside this document.

---

## 96. Phase 1 Handoff

After G0 approval, the functions become implementation requirements for Phase 1 — Virtualization.

Phase 1 should create callable realizations for the minimum required functions while preserving:

- function identity;
- function contracts;
- asset relationships;
- execution modes;
- traceability.

---

## 97. Phase 2+ Evolution

Future phases may introduce additional functions for:

- real sensor integration;
- physical actuation;
- Digital Twin synchronization;
- edge execution;
- real-time QAI;
- adaptive QAI;
- advanced resource orchestration;
- enterprise integration;
- commercial service delivery.

These additions should extend the function model rather than invalidate the minimum pilot.

---

## 98. Final Function Principle

The first Digital Farm pilot should define functions at the level of **capability and responsibility**, not implementation detail.

The essential principle is:

> **Assets define what exists; functions define what can be done; interfaces define how functions interact; workflows define how functions are composed; scenarios define under what conditions they operate; and measurements determine whether the resulting behavior creates technical and agricultural value.**

This establishes a clean progression from architecture to implementation.

---

## 99. G0 Contribution

This document contributes to G0 by answering:

> **What must the pilot be able to do?**

The answer is:

> It must initialize a virtual farm, generate and acquire observations, construct farm context, execute classical and QAI decision paths, evaluate policy and QAI advantage, select and validate an irrigation action, execute an emulated actuator, update the farm state, generate feedback, measure outcomes, compare execution paths, and preserve evidence for evaluation and future promotion.

---

## 100. Status

**Document:** `03_function_inventory.md`

**Phase:** Phase 0 — Implementation Readiness & Scope Baseline

**Primary Use Case:** Intelligent Irrigation Decision and Control

**Function Model:** Logical / Capability-Oriented / Technology-Neutral

**Primary Lifecycle:** Sense → Process → Decide → Act → Learn

**Primary Paths:** Computational + Sensing + Communication

**Decision Paths:** Classical + QAI

**Fallback:** Classical baseline

**Actuation:** Emulated irrigation actuator

**Execution Boundary:** Laptop / Virtualization / Simulation / Emulation

**Future Extension:** Physical sensors / IoT / Edge / Digital Twin / CPS / QAI infrastructure

**G0 Role:** Establish the controlled functional baseline for interface, workflow, scenario, baseline, QAI evaluation, KPI, value, acceptance, and implementation-scope definition.

**Status:** Ready for downstream Phase 0 deliverables, subject to G0 review.
---

