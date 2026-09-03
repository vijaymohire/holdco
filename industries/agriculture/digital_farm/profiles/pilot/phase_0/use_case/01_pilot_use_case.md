# Phase 0 — Pilot Use Case Definition

**File:** `profiles/pilot/phase_0/use_case/01_pilot_use_case.md`
**Architecture:** HoldCo → Agriculture → Digital Farm → Pilot
**Phase:** Phase 0 — Implementation Readiness & Scope Baseline
**Status:** Draft for G0 Review
**Classification:** Architecture / Pilot Definition / Controlled Baseline

---

## 1. Purpose

This document defines the **minimum callable end-to-end agriculture pilot use case** for the Digital Farm.

The purpose is to establish one concrete use case that can:

- run completely within a laptop-based environment;
- use virtualization, simulation, and emulation;
- demonstrate the Digital Farm management/service layer;
- exercise the Computational, Sensing, and Communication paths;
- connect the Digital Farm service layer with technical realization components;
- demonstrate a closed-loop CPS workflow;
- provide a classical baseline;
- provide an initial QAI evaluation path;
- measure operational, technical, and value outcomes;
- remain extensible toward physical sensors, IoT devices, and actuators.

The use case is intentionally small enough to implement and demonstrate without requiring physical farm infrastructure.

---

## 2. Architectural Position

The pilot use case belongs to the **Digital Farm managerial/service/orchestration layer**, while its technical realization is provided by the existing technical architecture.

The Digital Farm does not become a replacement for:

- Digital Twin;
- CPS;
- sensing systems;
- IoT;
- QAI runtime;
- simulation engines;
- networking;
- physical actuators;
- hardware resources.

Instead, Digital Farm defines, coordinates, manages, evaluates, and composes these capabilities into a callable agricultural service.

---

## 3. Pilot Use Case Name

### Intelligent Irrigation Decision and Control

The minimum pilot use case is:

> **Determine an appropriate irrigation action from farm-state and environmental information, execute that decision against an emulated farm environment, observe the resulting state, and repeat the decision cycle.**

The use case provides a compact end-to-end demonstration of:

**Sense → Process → Decide → Act → Learn**

---

## 4. Business / Agricultural Problem

Agricultural irrigation requires decisions based on changing farm conditions.

A simplified irrigation decision must consider factors such as:

- soil moisture;
- crop condition;
- environmental conditions;
- water availability;
- irrigation requirement;
- operating constraints;
- historical observations.

The pilot does not attempt to model every agricultural variable.

Instead, it establishes a controlled decision problem in which an intelligent system determines whether irrigation should occur and, where appropriate, determines an irrigation action level.

---

## 5. Pilot Objective

The primary objective is to demonstrate that the Digital Farm can coordinate a complete agricultural decision loop:

~~~text
Farm State
    ↓
Virtual / Emulated Sensors
    ↓
Digital Farm State / Context
    ↓
QAI Intelligence
Sense → Process → Decide
    ↓
Decision / Policy
    ↓
Emulated Actuator
    ↓
Changed Farm State
    ↓
Feedback
    └──────────────────────→ Next Cycle
~~~

The pilot must be callable from beginning to end without physical infrastructure.

---

## 6. Minimum Callable Use Case

The minimum callable use case consists of:

1. initialize a virtual farm;
2. initialize crop and soil state;
3. generate or load environmental conditions;
4. generate emulated sensor observations;
5. construct the current farm context;
6. process the context;
7. determine an irrigation decision;
8. apply the decision to an emulated actuator;
9. update the virtual farm state;
10. capture the resulting observations;
11. evaluate the result;
12. repeat for subsequent cycles.

---

## 7. Primary Decision

The minimum decision is:

> **Should irrigation be applied during the current decision cycle?**

A later version may extend the decision to:

- irrigation duration;
- irrigation volume;
- irrigation priority;
- irrigation zone;
- irrigation intensity.

These extensions are not required for the minimum callable pilot.

---

## 8. Initial Decision Variables

The initial decision problem may use a small controlled set of variables:

| Variable | Role |
|---|---|
| Soil moisture | Primary irrigation indicator |
| Crop water requirement | Agricultural demand |
| Temperature | Environmental condition |
| Humidity | Environmental condition |
| Recent irrigation | Historical/context variable |
| Water availability | Resource constraint |
| Irrigation state | Actuation state |
| Time / cycle | Temporal context |

The exact numerical ranges are to be defined in the subsequent asset, function, scenario, and KPI documents.

---

## 9. Initial Farm Model

The virtual farm should contain only the minimum state required to support the decision loop.

Conceptually:

~~~text
Virtual Farm
├── Field / Zone
│   ├── Soil State
│   ├── Crop State
│   └── Water State
│
├── Environmental State
│   ├── Temperature
│   ├── Humidity
│   └── Other Controlled Variables
│
└── Operational State
    ├── Irrigation State
    ├── Previous Actions
    └── Cycle / Time
~~~

The model can be expanded after the minimum pilot is validated.

---

## 10. Virtual Farm Boundary

The virtual farm represents the minimum simulated agricultural environment required by the use case.

It provides:

- initial state;
- state transitions;
- environmental inputs;
- sensor-observable variables;
- actuator effects;
- feedback state.

It does not attempt to represent an entire real farm.

---

## 11. Sensor Representation

The pilot uses **emulated sensors** rather than physical sensors.

The sensing path therefore begins with virtual/emulated data generation.

Conceptually:

~~~text
Virtual Farm State
       ↓
Sensor Model
       ↓
Emulated Sensor
       ↓
Sensor Observation
       ↓
Digital Farm
~~~

The sensor abstraction must remain compatible with a future physical sensor implementation.

---

## 12. Sensor Abstraction Principle

The pilot should not embed assumptions that require the sensor to be simulated permanently.

The interface should allow:

~~~text
Simulation
    ↓
Emulation
    ↓
Physical Sensor
~~~

to represent alternative implementations of the same sensing capability.

This permits the pilot to evolve without redesigning the use-case workflow.

---

## 13. Actuator Representation

The pilot uses an **emulated irrigation actuator**.

The actuator receives the irrigation decision and modifies the virtual farm state.

Conceptually:

~~~text
Decision
   ↓
Actuator Command
   ↓
Emulated Irrigation Actuator
   ↓
Virtual Farm State Change
~~~

The actuator abstraction should remain compatible with a future physical actuator.

---

## 14. Actuator Abstraction Principle

The use case must separate:

- decision;
- command;
- actuator interface;
- actuator implementation.

Therefore:

~~~text
QAI Decision
     ↓
Irrigation Command
     ↓
Actuator Interface
     ↓
Emulated Actuator
        OR
Physical Actuator
~~~

This preserves the future physical realization path.

---

## 15. Digital Farm Context

The Digital Farm service layer constructs the operational context required by the decision process.

The context may combine:

- farm state;
- sensor observations;
- crop information;
- resource constraints;
- historical information;
- operational policies;
- current execution state.

The Digital Farm coordinates these inputs rather than duplicating their underlying technical implementations.

---

## 16. Computational Path

The computational path performs processing and decision generation.

Conceptually:

~~~text
Farm Context
    ↓
Pre-processing
    ↓
Feature / State Representation
    ↓
Classical or QAI Processing
    ↓
Decision
~~~

The initial implementation should support both:

- classical processing;
- QAI processing.

This allows direct comparison.

---

## 17. Sensing Path

The sensing path represents acquisition of agricultural state information.

~~~text
Virtual Farm
    ↓
Sensor Model
    ↓
Sensor Emulation
    ↓
Observation
    ↓
Farm Context
~~~

The same conceptual interface can later receive data from physical sensors or IoT systems.

---

## 18. Communication Path

The communication path transfers information among the components participating in the pilot.

~~~text
Sensor / Data Source
        ↓
Communication Interface
        ↓
Digital Farm
        ↓
Decision Service
        ↓
Actuator Interface
        ↓
Actuator
~~~

The initial implementation may use local laptop communication.

No specific network vendor or protocol is required by this document.

---

## 19. Intelligence Lifecycle

The use case follows the Digital Farm intelligence lifecycle:

~~~text
SENSE
  ↓
PROCESS
  ↓
DECIDE
  ↓
ACT
  ↓
LEARN
  ↺
~~~

### Sense

Acquire current farm observations.

### Process

Construct and process the current state.

### Decide

Determine the irrigation action.

### Act

Apply the decision through the emulated actuator.

### Learn

Evaluate the outcome and use the evidence for subsequent improvement.

---

## 20. Classical Baseline

The pilot must contain a classical baseline.

The initial baseline should use a transparent deterministic irrigation rule.

For example:

~~~text
IF soil_moisture < irrigation_threshold
AND water_available = TRUE
THEN irrigation = ON
ELSE irrigation = OFF
~~~

The exact threshold and rule parameters will be established in the Classical Baseline document.

The purpose is not to claim that the classical rule is optimal.

Its purpose is to provide a reproducible reference against which the QAI approach can be evaluated.

---

## 21. QAI Decision Path

The QAI path receives the same defined problem and relevant inputs as the classical baseline.

Conceptually:

~~~text
Same Farm State
       ↓
Same Observations
       ↓
Same Constraints
       ├───────────────┐
       ↓               ↓
Classical Path      QAI Path
       ↓               ↓
Classical Decision  QAI Decision
       └───────┬───────┘
               ↓
        Comparative Evaluation
~~~

The comparison must avoid changing the problem definition merely to favor one computational approach.

---

## 22. QAI Advantage Evaluation

The pilot does not assume that QAI will automatically provide an advantage.

The QAI path must pass through the **QAI Advantage Gate**.

The evaluation may consider:

- solution quality;
- computational efficiency;
- resource requirements;
- scalability;
- robustness;
- confidence;
- repeatability;
- latency;
- cost;
- energy;
- classical fallback requirements.

A QAI implementation is therefore an evaluated option rather than a predetermined conclusion.

---

## 23. Classical / QAI Coexistence

The initial pilot supports:

~~~text
                 ┌───────────────┐
                 │ Farm Context  │
                 └───────┬───────┘
                         ↓
                ┌─────────────────┐
                │ Decision Layer  │
                └───────┬─────────┘
                    ┌───┴───┐
                    ↓       ↓
               Classical    QAI
                    ↓       ↓
                    └───┬───┘
                        ↓
                 Selected Action
~~~

The architecture therefore does not create an artificial separation between classical and QAI execution.

---

## 24. Fallback Principle

If QAI execution is:

- unavailable;
- unsuitable;
- outside resource limits;
- below the required confidence;
- unable to meet the required latency;
- or otherwise rejected by the Advantage Gate,

the system must be able to use the classical baseline.

Conceptually:

~~~text
                 QAI Candidate
                      ↓
               Advantage Gate
                ↙          ↘
          ACCEPT            REJECT
            ↓                 ↓
        QAI Action      Classical Action
             \             /
              \           /
               ↓         ↓
                Farm Actuation
~~~

---

## 25. Closed-Loop Operation

The pilot must support closed-loop operation.

~~~text
┌───────────────┐
│ Virtual Farm  │
└───────┬───────┘
        ↓
     Sensing
        ↓
   Farm Context
        ↓
    Processing
        ↓
     Decision
        ↓
     Actuation
        ↓
┌───────────────┐
│   Farm State  │
│    Update     │
└───────┬───────┘
        │
        └──────────────→ Next Cycle
~~~

This is the minimum CPS behavior required for the pilot.

---

## 26. Open-Loop Operation

Before closed-loop execution, the use case should also support open-loop evaluation.

Open-loop mode allows:

- replay of fixed observations;
- deterministic comparison;
- baseline testing;
- QAI testing;
- reproducibility;
- controlled experiments.

Conceptually:

~~~text
Recorded / Generated Inputs
          ↓
       Decision
          ↓
    Result Evaluation
~~~

Open-loop operation provides a controlled foundation before dynamic feedback is enabled.

---

## 27. Execution Modes

The same use case should be capable of progressing through:

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

The minimum pilot does not require physical realization.

---

## 28. Minimum Laptop Boundary

The complete initial pilot must be executable on a laptop.

The laptop may provide:

- virtual farm;
- simulation models;
- sensor emulation;
- actuator emulation;
- Digital Farm orchestration;
- classical computation;
- QAI experimentation;
- local storage;
- visualization;
- logging;
- evaluation.

No external physical infrastructure is required.

---

## 29. Optional Physical Extension

After successful laptop validation, the interfaces should permit introduction of:

- physical sensors;
- IoT gateways;
- edge devices;
- mini actuators;
- real communication networks;
- physical crop/soil demonstrators.

These are extensions, not prerequisites.

---

## 30. Human Role

The pilot should allow a human operator to:

- configure the experiment;
- inspect current state;
- review decisions;
- approve or reject selected actions where required;
- inspect performance;
- review evidence;
- compare classical and QAI results.

Human participation is therefore compatible with both augmentation and automation modes.

---

## 31. Automation Boundary

The minimum pilot may operate in:

### Assisted Mode

Human reviews or approves decisions.

### Automated Mode

The validated policy executes automatically within defined limits.

The pilot should establish explicit boundaries between these modes.

---

## 32. Governance Boundary

The pilot must respect the Digital Farm governance architecture.

Relevant controls include:

- safety;
- assurance;
- quality;
- security;
- data governance;
- compliance;
- traceability;
- reproducibility.

Governance mechanisms should be proportional to the pilot rather than introducing unnecessary enterprise complexity.

---

## 33. Data Boundary

The pilot data consists primarily of:

- virtual farm state;
- sensor observations;
- environmental values;
- decisions;
- actuator commands;
- resulting state;
- experiment metadata;
- evaluation results.

Data should remain structured so that future physical data can be introduced through compatible interfaces.

---

## 34. State and Event Boundary

The use case distinguishes between:

### State

What the farm currently is.

### Observation

What the sensing layer reports.

### Decision

What the intelligence layer determines.

### Command

What should be executed.

### Event

What happened during execution.

This distinction supports clean interfaces between managerial and technical layers.

---

## 35. Core Workflow

The minimum workflow is:

~~~text
1. Initialize Farm
        ↓
2. Initialize Crop / Soil State
        ↓
3. Generate Environment
        ↓
4. Generate Sensor Observations
        ↓
5. Build Farm Context
        ↓
6. Sense → Process
        ↓
7. Classical / QAI Decision
        ↓
8. Advantage / Policy Evaluation
        ↓
9. Issue Irrigation Command
        ↓
10. Execute Emulated Actuator
        ↓
11. Update Farm State
        ↓
12. Capture Feedback
        ↓
13. Evaluate KPIs
        ↓
14. Store Evidence
        ↓
15. Next Decision Cycle
~~~

---

## 36. Minimum Inputs

The pilot should require only a small controlled input set.

Initial inputs include:

- initial soil moisture;
- crop water requirement;
- environmental conditions;
- water availability;
- irrigation threshold or decision parameters;
- simulation duration;
- decision-cycle interval.

Additional variables may be introduced later.

---

## 37. Minimum Outputs

The pilot must produce:

- irrigation decision;
- irrigation command;
- resulting farm-state change;
- sensor observations;
- execution status;
- KPI measurements;
- classical result;
- QAI result where applicable;
- comparison evidence;
- experiment metadata.

---

## 38. Initial Success Criteria

The use case is successful at the minimum level when:

1. it can be initialized;
2. sensor observations can be generated;
3. a farm context can be constructed;
4. a classical decision can be generated;
5. a QAI decision can be evaluated;
6. an actuator command can be issued;
7. the virtual farm state changes;
8. feedback can be observed;
9. the workflow can repeat;
10. results can be measured and reproduced.

---

## 39. Functional Success

Functional success means:

> The complete Sense → Process → Decide → Act → Learn cycle executes correctly within the defined pilot boundary.

The pilot does not need to demonstrate commercial-scale performance at this stage.

---

## 40. Technical Success

Technical success means:

- interfaces operate correctly;
- state transitions are deterministic where required;
- simulation/emulation components are callable;
- classical and QAI paths can be invoked;
- fallback works;
- evidence is captured;
- execution is repeatable.

---

## 41. QAI Success

QAI success is **not** defined as simply producing a QAI answer.

The QAI path must provide evidence that allows it to be evaluated against the classical baseline.

The outcome may be:

- QAI advantage demonstrated;
- QAI advantage inconclusive;
- QAI not advantageous for the current problem;
- classical execution preferred.

All four outcomes are valid pilot results.

---

## 42. Value Success

The pilot should demonstrate measurable value dimensions such as:

- water-use efficiency;
- irrigation effectiveness;
- decision quality;
- operational efficiency;
- resource utilization;
- computational cost;
- energy consumption;
- decision latency.

Exact KPI definitions belong to the subsequent KPI and value documents.

---

## 43. Reproducibility

The same experiment configuration should produce reproducible results when deterministic execution is selected.

For stochastic execution, the pilot should record:

- seed where applicable;
- configuration;
- input dataset;
- execution mode;
- algorithm/model version;
- resource configuration;
- run metadata.

---

## 44. Experiment Identity

Each experiment should have a unique logical identity.

Conceptually:

~~~text
Experiment ID
    ↓
Configuration
    ↓
Input State / Dataset
    ↓
Execution
    ↓
Decision
    ↓
Result
    ↓
Evidence
~~~

This enables comparison across classical and QAI runs.

---

## 45. Technology-Neutrality

This document defines capabilities and behavior, not vendor-specific implementation.

It does not mandate:

- a particular cloud provider;
- a particular QPU;
- a particular GPU;
- a particular simulation framework;
- a particular IoT platform;
- a particular sensor vendor;
- a particular actuator vendor;
- a particular network protocol.

Technology selection belongs to implementation design.

---

## 46. Vendor-Neutrality

The use case must remain portable across alternative implementations.

The architectural contract is therefore expressed through:

- capabilities;
- interfaces;
- data;
- state;
- workflows;
- policies;
- measurements.

Vendor-specific adapters belong below the architectural interface boundary.

---

## 47. Non-Duplication Principle

The use case must not recreate technical capabilities already defined elsewhere.

For example:

- Digital Twin remains responsible for digital-twin realization;
- CPS remains responsible for CPS realization;
- QAI Runtime remains responsible for QAI execution;
- simulation remains responsible for simulation;
- sensing components remain responsible for sensing realization;
- communication components remain responsible for communication realization.

Digital Farm coordinates these capabilities as a service.

---

## 48. Future Physical Mapping

The future physical realization should preserve the same logical workflow.

~~~text
CURRENT PILOT

Virtual Farm
    ↓
Emulated Sensor
    ↓
Digital Farm
    ↓
QAI / Classical Decision
    ↓
Emulated Actuator


FUTURE REALIZATION

Physical Farm
    ↓
Physical Sensor / IoT
    ↓
Digital Farm
    ↓
QAI / Classical Decision
    ↓
Physical Actuator
~~~

The principal change is implementation of the endpoints, not redesign of the service logic.

---

## 49. Future Digital Twin Mapping

After sufficient validation, the virtual farm model may be promoted toward a Digital Twin realization.

The progression is:

~~~text
Simple Farm Model
       ↓
Validated Simulation Model
       ↓
Emulated Farm Environment
       ↓
Digital Twin Candidate
       ↓
Validated Digital Twin
       ↓
Production CPS
~~~

Promotion requires evidence rather than assumption.

---

## 50. Future QAI Evolution

The initial QAI implementation is deliberately small.

Future evolution may introduce:

- QAI Edge;
- QAI Runtime;
- QAI Pipeline;
- QAI Control Plane;
- Virtual Qubit Fabric;
- Real-Time QAI;
- QAI Network;
- QAI Hub;
- QAI Cloud;
- QAI Fusion;
- QAI-HAFL;
- adaptive QAI;
- quantum resource orchestration;
- classical/HPC fallback.

These capabilities are future realization extensions and are not prerequisites for the minimum pilot.

---

## 51. Pilot Expansion

Once the irrigation use case is validated, the same Digital Farm architecture can be extended to additional agricultural decisions.

Potential extensions include:

- crop health;
- pest detection;
- fertilization;
- water allocation;
- energy optimization;
- inventory;
- workforce coordination;
- farm economics;
- environmental optimization.

These should be added as additional use cases rather than overloading the minimum pilot.

---

## 52. Controlled Scope

The following are explicitly **inside** the use-case definition:

- one minimum irrigation decision problem;
- virtual farm state;
- emulated sensing;
- Digital Farm context;
- classical decision;
- QAI evaluation;
- emulated actuation;
- closed-loop state transition;
- KPI measurement;
- value evaluation;
- reproducibility;
- fallback.

---

## 53. Explicit Exclusions

The following are not required for the minimum use case:

- full physical farm deployment;
- production-scale IoT;
- commercial SaaS;
- enterprise-wide orchestration;
- multi-subsidiary federation;
- full farm ERP integration;
- complete autonomous farm operation;
- large-scale QPU deployment;
- production-grade cloud infrastructure.

These may be introduced after the pilot passes its gates.

---

## 54. Dependency on Other Phase 0 Deliverables

This document establishes the use-case definition.

It feeds the following documents:

~~~text
01 Pilot Use Case
       ↓
02 Asset Inventory
       ↓
03 Function Inventory
       ↓
04 Interface Inventory
       ↓
05 Workflow Catalogue
       ↓
06 Scenario Catalogue
       ↓
07 Classical Baseline
       ↓
08 QAI Evaluation
       ↓
09 KPI Definition
       ↓
10 Value Criteria
       ↓
11 Acceptance Criteria
       ↓
12 Implementation Scope
~~~

Each subsequent deliverable should refine this use case rather than redefine it without controlled change.

---

## 55. Change Control

Changes to the minimum use case must identify:

- what changed;
- why it changed;
- affected assets;
- affected functions;
- affected interfaces;
- affected workflows;
- affected scenarios;
- affected KPIs;
- affected value criteria;
- affected acceptance criteria.

Material changes should be reviewed at the Phase 0 G0 gate.

---

## 56. G0 Readiness Contribution

This document contributes to G0 by answering:

> **What exactly will the first callable Digital Farm pilot demonstrate?**

The answer is:

> A laptop-executable intelligent irrigation decision and control loop using virtual farm state, emulated sensing, classical and QAI decision paths, emulated actuation, closed-loop state transition, and measurable evaluation.

---

## 57. G0 Decision Condition

The use case is ready for implementation when:

- the problem is sufficiently bounded;
- inputs are defined;
- outputs are defined;
- assets can be identified;
- functions can be identified;
- interfaces can be identified;
- workflows can be defined;
- scenarios can be constructed;
- classical comparison is possible;
- QAI evaluation is possible;
- KPIs can be measured;
- implementation boundaries are clear.

---

## 58. Phase 1 Handoff

After G0 approval, this use case becomes the primary input to **Phase 1 — Virtualization**.

Phase 1 should transform the logical use case into callable virtual representations of:

- farm assets;
- state;
- sensing;
- functions;
- interfaces;
- workflows;
- decision mechanisms;
- actuation;
- measurement.

The use case itself should remain stable unless a controlled change is approved.

---

## 59. Minimum Viable Architecture

The minimum viable architecture for this use case is:

~~~text
                ┌─────────────────────┐
                │   Virtual Farm      │
                │   State / Model     │
                └──────────┬──────────┘
                           │
                           ↓
                ┌─────────────────────┐
                │ Emulated Sensing    │
                └──────────┬──────────┘
                           │
                           ↓
                ┌─────────────────────┐
                │   Digital Farm      │
                │ Context / Service   │
                └──────────┬──────────┘
                           │
                           ↓
                ┌─────────────────────┐
                │ Intelligence        │
                │ Sense → Process     │
                │ → Decide            │
                └──────────┬──────────┘
                           │
                     ┌─────┴─────┐
                     ↓           ↓
                 Classical      QAI
                     │           │
                     └─────┬─────┘
                           ↓
                  Advantage / Policy
                           ↓
                ┌─────────────────────┐
                │ Emulated Actuator   │
                └──────────┬──────────┘
                           ↓
                ┌─────────────────────┐
                │   Farm State        │
                │   Transition        │
                └──────────┬──────────┘
                           │
                           └──── Feedback ───→
~~~

This is the minimum architectural spine.

---

## 60. Final Use-Case Principle

The first Digital Farm pilot should prove **the architecture before the scale**.

It should demonstrate that:

> A real agricultural decision can be represented as a callable Digital Farm service, connected through sensing, computation, and communication paths, executed initially through virtualization/emulation, evaluated through classical and QAI approaches, closed through an emulated CPS loop, measured for technical and economic value, and subsequently promoted toward physical Digital Twin/CPS realization without architectural redesign.

The objective is therefore not to build a complete smart farm.

The objective is to establish the **first repeatable architectural proof point** from which the broader Digital Farm can evolve.

---

## 61. Status

**Document:** `01_pilot_use_case.md`

**Phase:** Phase 0 — Implementation Readiness & Scope Baseline

**Use Case:** Intelligent Irrigation Decision and Control

**Execution Boundary:** Laptop / Virtualization / Simulation / Emulation

**Primary Loop:** Sense → Process → Decide → Act → Learn

**Decision Paths:** Classical + QAI

**Actuation:** Emulated irrigation actuator

**Physical Infrastructure:** Optional future extension

**G0 Role:** Primary use-case definition and implementation baseline

**Status:** Ready for downstream Phase 0 deliverables, subject to G0 review.
---

