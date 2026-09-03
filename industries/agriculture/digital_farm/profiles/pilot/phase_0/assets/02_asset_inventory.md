# Phase 0 — Asset Inventory

**File:** `profiles/pilot/phase_0/assets/02_asset_inventory.md`
**Architecture:** HoldCo → Agriculture → Digital Farm → Pilot
**Phase:** Phase 0 — Implementation Readiness & Scope Baseline
**Status:** Draft for G0 Review
**Classification:** Architecture / Asset Definition / Controlled Baseline

---

## 1. Purpose

This document defines the **asset inventory for the minimum callable Digital Farm pilot use case** established in `01_pilot_use_case.md`.

The inventory identifies the logical and implementation-relevant assets required to realize the intelligent irrigation decision and control loop.

The purpose is to establish:

- what assets participate in the pilot;
- what each asset represents;
- where each asset belongs architecturally;
- what capability each asset provides;
- how assets interact;
- which assets are virtual, emulated, or logical;
- which assets may later map to physical implementations;
- which assets are required for the minimum pilot;
- which assets are optional future extensions.

This document identifies assets without prematurely selecting vendors, products, hardware, protocols, or implementation technologies.

---

## 2. Architectural Position

The asset inventory is a **logical inventory**, not a physical bill of materials.

The Digital Farm is the managerial/service/orchestration layer that coordinates the assets required by the pilot.

Technical assets remain implemented by their respective technical realization layers.

~~~text
HoldCo Factory
      ↓
Agriculture
      ↓
Digital Farm
      ↓
Pilot Use Case
      ↓
Logical Asset Inventory
      ↓
Technical Realization
      ↓
Virtual / Emulated / Simulated / Physical Assets
~~~

The inventory therefore provides the bridge between the use-case definition and later implementation phases.

---

## 3. Asset Definition

For this pilot, an asset is any identifiable entity that:

- represents a resource;
- provides a capability;
- holds state;
- produces or consumes information;
- performs an operation;
- participates in a workflow;
- provides an interface;
- or is required to execute, observe, evaluate, or govern the pilot.

An asset may be:

- logical;
- software-based;
- data-based;
- computational;
- simulated;
- emulated;
- virtual;
- physical in a future realization.

---

## 4. Asset Categories

The pilot asset inventory is organized into the following categories:

1. Farm Assets
2. Crop Assets
3. Soil Assets
4. Water Assets
5. Environmental Assets
6. Sensing Assets
7. Communication Assets
8. Digital Farm Assets
9. Intelligence Assets
10. Decision Assets
11. Actuation Assets
12. Simulation Assets
13. Execution Assets
14. Resource Assets
15. Data Assets
16. Governance and Evidence Assets
17. Human Assets
18. Future Physical Assets

---

## 5. Asset Identification Principle

Every asset should have:

- a stable logical identity;
- a defined purpose;
- an owner or responsible architectural layer;
- a state representation where applicable;
- defined inputs and outputs where applicable;
- defined relationships to other assets;
- a realization mode;
- a lifecycle status.

The identity should remain stable even when the implementation changes.

---

## 6. Asset Identity Model

A logical asset may be represented as:

~~~text
Asset
├── Asset ID
├── Asset Type
├── Name
├── Description
├── Architectural Layer
├── Capability
├── State
├── Interfaces
├── Realization Mode
├── Dependencies
├── Lifecycle Status
└── Evidence
~~~

This structure is conceptual and does not prescribe a particular data format.

---

## 7. Minimum Pilot Asset Set

The minimum callable pilot requires the following core asset groups:

~~~text
Virtual Farm
   ↓
Field / Zone
   ↓
Crop + Soil + Water State
   ↓
Environmental State
   ↓
Sensor Models / Emulators
   ↓
Digital Farm Context
   ↓
Classical Decision + QAI Decision
   ↓
Policy / Advantage Gate
   ↓
Irrigation Command
   ↓
Emulated Irrigation Actuator
   ↓
Farm State Transition
   ↓
Feedback / Evidence
~~~

These assets form the minimum implementation spine.

---

## 8. Farm Asset

### Asset ID

`FARM-001`

### Name

Virtual Farm

### Type

Farm Environment Asset

### Purpose

Represents the minimum agricultural environment required by the pilot.

### Responsibilities

The Virtual Farm provides:

- farm state;
- field/zone state;
- crop state;
- soil state;
- water state;
- environmental state;
- operational state;
- state transitions.

### Realization

Initial:

**Virtual / Simulated**

Future:

**Digital Twin / Physical CPS**

---

## 9. Field / Zone Asset

### Asset ID

`FARM-002`

### Name

Field / Irrigation Zone

### Type

Agricultural Spatial Asset

### Purpose

Represents the minimum physical or logical area to which irrigation decisions apply.

### State

Potential state includes:

- zone identifier;
- soil moisture;
- crop condition;
- irrigation state;
- water requirement;
- local environmental state.

### Realization

Initial:

**Virtual**

Future:

**Physical Field / IoT Zone**

---

## 10. Crop Asset

### Asset ID

`CROP-001`

### Name

Crop State

### Type

Agricultural State Asset

### Purpose

Represents the crop condition relevant to irrigation demand.

### State

Potential variables include:

- crop type;
- growth stage;
- water requirement;
- crop condition.

The minimum pilot may use a simplified crop representation.

---

## 11. Soil Asset

### Asset ID

`SOIL-001`

### Name

Soil State

### Type

Agricultural State Asset

### Purpose

Represents the soil conditions relevant to irrigation.

### Primary Variable

**Soil moisture**

### Additional Variables

May later include:

- soil temperature;
- soil composition;
- infiltration;
- field capacity;
- drainage.

These are not required for the minimum pilot.

---

## 12. Water Asset

### Asset ID

`WATER-001`

### Name

Water Availability

### Type

Agricultural Resource Asset

### Purpose

Represents the water resource constraint used by the irrigation decision.

### State

Potential variables include:

- availability;
- available quantity;
- allocation;
- current consumption;
- remaining resource.

The minimum pilot requires at least a logical water-availability state.

---

## 13. Environmental State Asset

### Asset ID

`ENV-001`

### Name

Environmental State

### Type

Environmental Asset

### Purpose

Represents environmental conditions that influence irrigation decisions.

### Initial Variables

- temperature;
- humidity.

### Future Variables

Potential extensions include:

- rainfall;
- solar radiation;
- wind;
- evapotranspiration;
- weather forecast;
- atmospheric pressure.

Only variables required by the pilot should initially be enabled.

---

## 14. Time / Cycle Asset

### Asset ID

`TIME-001`

### Name

Decision Cycle

### Type

Temporal Control Asset

### Purpose

Represents the temporal context of the pilot.

### State

May include:

- experiment time;
- cycle number;
- decision timestamp;
- simulation time;
- elapsed duration.

This asset enables repeated closed-loop operation.

---

## 15. Sensor Model Asset

### Asset ID

`SENSE-001`

### Name

Sensor Model

### Type

Simulation Asset

### Purpose

Transforms virtual farm state into sensor-observable values.

### Responsibilities

The Sensor Model may:

- select observable variables;
- transform state into observations;
- introduce controlled measurement characteristics;
- generate observation records.

### Realization

Initial:

**Simulation**

Future:

**Physical Sensor Model / Calibrated Sensor Representation**

---

## 16. Soil Moisture Sensor Asset

### Asset ID

`SENSE-002`

### Name

Soil Moisture Sensor

### Type

Sensing Asset

### Purpose

Provides soil moisture observations.

### Initial Realization

**Emulated Sensor**

### Future Realization

**Physical Soil Moisture Sensor**

The logical interface must remain consistent across realization modes.

---

## 17. Environmental Sensor Assets

### Asset IDs

`SENSE-003`, `SENSE-004`

### Names

- Temperature Sensor
- Humidity Sensor

### Purpose

Provide environmental observations.

### Initial Realization

**Emulated Sensors**

### Future Realization

**Physical / IoT Sensors**

The pilot may combine these observations into a common environmental observation set.

---

## 18. Sensor Observation Asset

### Asset ID

`DATA-001`

### Name

Sensor Observation

### Type

Data Asset

### Purpose

Represents an observation generated by the sensing path.

A conceptual observation may contain:

~~~text
Observation
├── Observation ID
├── Sensor ID
├── Timestamp
├── Variable
├── Value
├── Unit
├── Quality / Confidence
└── Source
~~~

The exact schema will be defined later.

---

## 19. Communication Endpoint Assets

### Asset ID

`COMM-001`

### Name

Pilot Communication Endpoint

### Type

Communication Asset

### Purpose

Provides the logical communication boundary through which pilot components exchange information.

The minimum implementation may use local laptop communication.

The architecture must remain independent of the eventual transport technology.

---

## 20. Digital Farm Service Asset

### Asset ID

`DF-001`

### Name

Digital Farm Pilot Service

### Type

Managerial / Service Asset

### Purpose

Provides the service-level orchestration boundary for the pilot.

### Responsibilities

The Digital Farm service coordinates:

- farm context;
- sensing inputs;
- decision processing;
- policy;
- actuation;
- workflow execution;
- measurements;
- evidence.

It does not replace the underlying technical components.

---

## 21. Farm Context Asset

### Asset ID

`DF-002`

### Name

Farm Context

### Type

Context / Coordination Asset

### Purpose

Combines relevant information required for a decision cycle.

Potential contents include:

- current farm state;
- sensor observations;
- crop state;
- soil state;
- environmental state;
- water availability;
- operational constraints;
- historical context;
- execution metadata.

---

## 22. Intelligence Asset

### Asset ID

`INT-001`

### Name

Pilot Intelligence Function

### Type

Intelligence Asset

### Purpose

Processes the farm context and produces a decision candidate.

It follows:

~~~text
Sense
  ↓
Process
  ↓
Decide
  ↓
Act
  ↓
Learn
~~~

The intelligence asset may invoke either classical or QAI processing.

---

## 23. Classical Decision Engine

### Asset ID

`INT-002`

### Name

Classical Irrigation Decision Engine

### Type

Classical Computational Asset

### Purpose

Provides the baseline irrigation decision.

### Initial Behavior

A transparent rule-based mechanism is expected.

### Role

The engine provides the reference result for QAI comparison.

---

## 24. QAI Decision Engine

### Asset ID

`INT-003`

### Name

QAI Irrigation Decision Engine

### Type

QAI Computational Asset

### Purpose

Provides the QAI-based decision candidate.

### Responsibilities

It may perform:

- problem representation;
- QAI execution;
- result interpretation;
- confidence evaluation;
- decision generation.

The exact QAI implementation is defined by later technical work.

---

## 25. QAI Representation Asset

### Asset ID

`QAI-001`

### Name

QAI Problem Representation

### Type

QAI Realization Asset

### Purpose

Represents the irrigation decision problem in a form suitable for QAI processing.

The representation may evolve as the QAI approach is experimentally evaluated.

No specific quantum encoding is mandated by this document.

---

## 26. QAI Execution Asset

### Asset ID

`QAI-002`

### Name

QAI Execution Capability

### Type

QAI Computational Capability

### Purpose

Executes the selected QAI computation.

Possible realization modes include:

- local emulation;
- simulation;
- external QPU;
- hybrid execution.

The minimum pilot does not require physical QPU access.

---

## 27. QAI Advantage Gate Asset

### Asset ID

`ADV-001`

### Name

QAI Advantage Gate

### Type

Evaluation / Decision-Governance Asset

### Purpose

Determines whether the QAI result should be selected for the current execution.

It considers evidence such as:

- quality;
- resource requirements;
- latency;
- confidence;
- cost;
- scalability;
- robustness.

---

## 28. Classical Fallback Asset

### Asset ID

`ADV-002`

### Name

Classical / HPC Fallback

### Type

Fallback Computational Asset

### Purpose

Provides an alternative execution path when QAI is unavailable or unsuitable.

For the minimum pilot, the classical baseline is sufficient.

Future implementations may extend this capability to HPC execution.

---

## 29. Decision Asset

### Asset ID

`DEC-001`

### Name

Irrigation Decision

### Type

Decision Asset

### Purpose

Represents the selected irrigation action.

Minimum state:

~~~text
Irrigation Decision
├── Decision ID
├── Decision Time
├── Action
├── Decision Source
├── Confidence
├── Constraints
└── Policy / Gate Result
~~~

The minimum action is:

**ON / OFF**

---

## 30. Policy Asset

### Asset ID

`POL-001`

### Name

Irrigation Policy

### Type

Policy Asset

### Purpose

Defines the operational rules and constraints under which irrigation decisions are executed.

Examples include:

- water availability constraint;
- acceptable moisture range;
- safety constraints;
- automation limits;
- fallback rules.

---

## 31. Actuator Command Asset

### Asset ID

`ACT-001`

### Name

Irrigation Command

### Type

Control Asset

### Purpose

Represents the command sent to the irrigation actuator.

Minimum command:

~~~text
IRRIGATION_ON
IRRIGATION_OFF
~~~

Future commands may include duration, volume, zone, and intensity.

---

## 32. Irrigation Actuator Asset

### Asset ID

`ACT-002`

### Name

Emulated Irrigation Actuator

### Type

Actuation Asset

### Purpose

Applies the irrigation command to the virtual farm.

### Initial Realization

**Emulated**

### Future Realization

**Physical Irrigation Actuator**

---

## 33. Farm State Transition Asset

### Asset ID

`SIM-001`

### Name

Farm State Transition Model

### Type

Simulation Asset

### Purpose

Determines how the virtual farm changes after an irrigation action and environmental evolution.

The model should be simple enough to execute locally while providing meaningful feedback.

---

## 34. Simulation Environment Asset

### Asset ID

`SIM-002`

### Name

Pilot Simulation Environment

### Type

Simulation Asset

### Purpose

Provides the controlled environment in which the farm state evolves.

It coordinates:

- initial conditions;
- time;
- environmental inputs;
- state transitions;
- actuator effects;
- observation generation.

---

## 35. Scenario Asset

### Asset ID

`SIM-003`

### Name

Pilot Scenario

### Type

Experiment Asset

### Purpose

Defines a specific set of initial conditions and environmental conditions under which the use case is executed.

Examples may include:

- normal moisture;
- low moisture;
- adequate water;
- water-constrained;
- changing environmental conditions.

Detailed scenarios belong to the Scenario Catalogue.

---

## 36. Execution Runtime Asset

### Asset ID

`EXEC-001`

### Name

Pilot Execution Runtime

### Type

Execution Asset

### Purpose

Provides the runtime environment required to execute the callable pilot workflow.

The initial runtime may be entirely local.

It should coordinate execution without becoming a duplicate of the underlying technical runtimes.

---

## 37. Resource Assets

The pilot may consume or track:

- CPU;
- GPU where applicable;
- memory;
- storage;
- network;
- energy;
- execution time;
- QAI resources where applicable.

These resources are managed through the Digital Farm resource-management architecture.

The minimum pilot should track only resources needed to establish meaningful measurements.

---

## 38. Configuration Asset

### Asset ID

`CFG-001`

### Name

Pilot Configuration

### Type

Configuration Asset

### Purpose

Defines the parameters required to execute a repeatable experiment.

Potential configuration includes:

- initial state;
- thresholds;
- scenario;
- execution mode;
- decision interval;
- algorithm/model selection;
- random seed where applicable;
- evaluation parameters.

---

## 39. Experiment Asset

### Asset ID

`EXP-001`

### Name

Pilot Experiment

### Type

Experiment Management Asset

### Purpose

Groups the configuration, execution, observations, decisions, results, and evidence associated with one experiment run.

Conceptually:

~~~text
Experiment
├── Configuration
├── Initial State
├── Scenario
├── Execution
├── Observations
├── Decisions
├── Actions
├── Results
└── Evidence
~~~

---

## 40. KPI Measurement Asset

### Asset ID

`KPI-001`

### Name

Pilot KPI Set

### Type

Measurement Asset

### Purpose

Captures the measurements required to determine whether the pilot meets its technical and value objectives.

Potential measurements include:

- water use;
- moisture outcome;
- decision quality;
- latency;
- computational resources;
- energy;
- execution reliability.

Exact KPIs are defined in `09_kpi_definition.md`.

---

## 41. Value Measurement Asset

### Asset ID

`VAL-001`

### Name

Pilot Value Measurement

### Type

Value Asset

### Purpose

Captures evidence related to agricultural, operational, technical, and economic value.

Potential dimensions include:

- water efficiency;
- operational efficiency;
- resource efficiency;
- decision effectiveness;
- computational cost;
- QAI value.

---

## 42. Evidence Asset

### Asset ID

`EVID-001`

### Name

Pilot Evidence Record

### Type

Evidence / Governance Asset

### Purpose

Stores evidence required to reproduce and evaluate pilot execution.

Evidence may include:

- configuration;
- inputs;
- outputs;
- decisions;
- execution metadata;
- KPI results;
- QAI comparison;
- errors;
- fallback events.

---

## 43. Audit / Traceability Asset

### Asset ID

`GOV-001`

### Name

Pilot Traceability Record

### Type

Governance Asset

### Purpose

Maintains logical traceability between:

~~~text
Requirement
    ↓
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
Execution
    ↓
Result
    ↓
Evidence
~~~

This provides the foundation for controlled validation.

---

## 44. Human Operator Asset

### Asset ID

`HUM-001`

### Name

Pilot Operator

### Type

Human Participant Asset

### Purpose

Represents the human role responsible for configuration, supervision, review, and evaluation.

The operator may participate in:

- assisted operation;
- approval;
- observation;
- evaluation;
- troubleshooting.

---

## 45. Visualization Asset

### Asset ID

`VIS-001`

### Name

Pilot Visualization

### Type

Presentation / Observation Asset

### Purpose

Provides visibility into:

- farm state;
- sensor values;
- decisions;
- actuator state;
- KPI results;
- experiment progress.

Visualization is useful for demonstration and debugging but is not itself part of the agricultural decision logic.

---

## 46. Logging Asset

### Asset ID

`LOG-001`

### Name

Pilot Execution Log

### Type

Operational Evidence Asset

### Purpose

Records significant execution events.

Potential events include:

- initialization;
- sensor observation;
- decision;
- QAI execution;
- gate result;
- fallback;
- actuation;
- state transition;
- error;
- completion.

---

## 47. Asset Relationship Model

The core relationships are:

~~~text
Virtual Farm
    │
    ├── Field / Zone
    ├── Crop State
    ├── Soil State
    ├── Water State
    └── Environmental State
             │
             ↓
       Sensor Models
             ↓
      Sensor Observations
             ↓
       Digital Farm
             ↓
        Farm Context
             ↓
        Intelligence
          ┌──┴──┐
          ↓     ↓
      Classical QAI
          │     │
          └──┬──┘
             ↓
      Advantage / Policy
             ↓
      Irrigation Decision
             ↓
      Irrigation Command
             ↓
    Emulated Actuator
             ↓
     Farm State Transition
             ↓
       Updated State
             └────────→ Feedback
~~~

---

## 48. Asset-to-Path Mapping

The three primary paths are mapped as follows.

### Sensing Path

~~~text
Farm State
   ↓
Sensor Model
   ↓
Sensor Emulator
   ↓
Observation
~~~

### Computational Path

~~~text
Observation
   ↓
Farm Context
   ↓
Classical / QAI Processing
   ↓
Decision
~~~

### Communication Path

~~~text
Observation
   ↔
Digital Farm
   ↔
Decision
   ↔
Actuator Command
~~~

The three paths are complementary rather than independent systems.

---

## 49. Asset-to-Execution-Mode Mapping

The primary assets can progress through:

| Asset | Initial | Future |
|---|---|---|
| Farm | Virtual | Physical / Digital Twin |
| Sensor | Emulated | Physical / IoT |
| Communication | Local | Networked |
| Intelligence | Local | Distributed / QAI |
| QAI | Simulation / Emulation | QPU / Hybrid |
| Actuator | Emulated | Physical |
| Environment | Simulation | CPS |
| Evidence | Local | Managed Platform |

The logical asset identities should remain stable across this progression.

---

## 50. Mandatory Assets

The minimum pilot should include at least:

~~~text
FARM-001  Virtual Farm
FARM-002  Field / Zone
CROP-001  Crop State
SOIL-001  Soil State
WATER-001 Water Availability
ENV-001   Environmental State
TIME-001  Decision Cycle

SENSE-001 Sensor Model
SENSE-002 Soil Moisture Sensor
SENSE-003 Temperature Sensor
SENSE-004 Humidity Sensor

DF-001    Digital Farm Pilot Service
DF-002    Farm Context

INT-001   Pilot Intelligence Function
INT-002   Classical Decision Engine
INT-003   QAI Decision Engine

ADV-001   QAI Advantage Gate
ADV-002   Classical / HPC Fallback

DEC-001   Irrigation Decision
POL-001   Irrigation Policy

ACT-001   Irrigation Command
ACT-002   Emulated Irrigation Actuator

SIM-001   Farm State Transition Model
SIM-002   Pilot Simulation Environment
EXEC-001  Pilot Execution Runtime

EXP-001   Pilot Experiment
KPI-001   Pilot KPI Set
VAL-001   Pilot Value Measurement
EVID-001  Pilot Evidence Record
~~~

---

## 51. Optional Initial Assets

The following may be included where useful but are not mandatory for the first callable implementation:

- visualization;
- detailed logging;
- extended environmental variables;
- advanced crop state;
- extended water-resource state;
- GPU execution;
- external network connectivity;
- advanced QAI execution.

Optional assets should not increase the minimum pilot boundary unnecessarily.

---

## 52. Future Physical Assets

The architecture must permit future mapping to:

- physical soil moisture sensors;
- temperature sensors;
- humidity sensors;
- IoT gateways;
- edge compute;
- irrigation valves;
- pumps;
- water meters;
- weather stations;
- farm networking equipment;
- physical field instrumentation.

These assets are future realization targets rather than Phase 0 implementation requirements.

---

## 53. Asset Ownership Boundary

Asset ownership is defined by architectural responsibility rather than physical location.

Conceptually:

~~~text
Digital Farm
    │
    ├── Manages / Coordinates
    │
    ├── Uses
    │
    ├── Evaluates
    │
    └── Governs
          ↓
Technical Realization Layers
    │
    ├── Digital Twin
    ├── CPS
    ├── Sensing
    ├── Communication
    ├── Simulation
    ├── QAI
    └── Physical Systems
~~~

This prevents managerial and technical responsibilities from becoming conflated.

---

## 54. Asset Lifecycle

Each asset should progress through a controlled lifecycle:

~~~text
Identified
    ↓
Defined
    ↓
Virtualized
    ↓
Implemented
    ↓
Tested
    ↓
Validated
    ↓
Operational
    ↓
Maintained
    ↓
Promoted / Replaced / Retired
~~~

The lifecycle state must be distinguishable from the asset's technical realization mode.

---

## 55. Asset Dependencies

Important dependencies include:

~~~text
Farm
 ↓
Field / Crop / Soil / Water / Environment
 ↓
Sensor Models
 ↓
Observations
 ↓
Farm Context
 ↓
Intelligence
 ↓
Decision
 ↓
Command
 ↓
Actuator
 ↓
State Transition
 ↓
Feedback
~~~

Supporting dependencies include:

- configuration;
- execution runtime;
- resource management;
- governance;
- KPI measurement;
- evidence management.

---

## 56. Asset Traceability

Every mandatory asset should be traceable to at least one:

- use-case requirement;
- function;
- interface;
- workflow;
- scenario;
- KPI;
- acceptance criterion.

This prevents unnecessary implementation.

---

## 57. Asset Naming Principle

Asset identifiers should remain:

- unique;
- stable;
- technology-neutral;
- human-readable;
- machine-manageable.

The identifier should represent the logical asset rather than a particular vendor implementation.

For example:

`SENSE-002` represents the logical soil-moisture sensing capability, not a specific sensor product.

---

## 58. Asset Versioning

Assets that contain executable logic, models, configuration, or data should support version identification.

Relevant versioned elements may include:

- simulation model;
- sensor model;
- classical algorithm;
- QAI algorithm;
- QAI representation;
- policy;
- configuration;
- scenario;
- evaluation criteria.

Version changes should remain traceable to experiment evidence.

---

## 59. Asset Quality Requirements

Mandatory assets should satisfy the minimum applicable requirements for:

- correctness;
- consistency;
- traceability;
- repeatability;
- observability;
- interoperability;
- maintainability.

Additional requirements may be introduced as the pilot progresses.

---

## 60. Asset Inventory Completion Criteria

The asset inventory is sufficiently complete for G0 when:

1. every core use-case entity is represented;
2. every required capability has an associated asset;
3. sensing assets are identifiable;
4. computational assets are identifiable;
5. communication boundaries are identifiable;
6. actuation assets are identifiable;
7. simulation assets are identifiable;
8. QAI and classical paths are identifiable;
9. resource and evidence assets are identifiable;
10. future physical mappings are understood;
11. asset dependencies are understood;
12. no unnecessary technical implementation is introduced.

---

## 61. Status

**Document:** `02_asset_inventory.md`

**Phase:** Phase 0 — Implementation Readiness & Scope Baseline

**Primary Use Case:** Intelligent Irrigation Decision and Control

**Asset Model:** Logical / Technology-Neutral

**Minimum Realization:** Laptop / Virtualization / Simulation / Emulation

**Mandatory Technical Paths:** Computational + Sensing + Communication

**Decision Paths:** Classical + QAI

**Actuation:** Emulated irrigation actuator

**Future Extension:** Physical sensors / IoT / Edge / Actuators / Digital Twin / CPS

**G0 Role:** Establish the controlled asset baseline for downstream function, interface, workflow, scenario, evaluation, KPI, value, acceptance, and scope definition.

**Status:** Ready for downstream Phase 0 deliverables, subject to G0 review.
---
