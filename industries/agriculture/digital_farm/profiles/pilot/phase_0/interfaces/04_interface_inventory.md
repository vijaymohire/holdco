# Phase 0 — Interface Inventory

**File:** `profiles/pilot/phase_0/interfaces/04_interface_inventory.md`
**Architecture:** HoldCo → Agriculture → Digital Farm → Pilot
**Phase:** Phase 0 — Implementation Readiness & Scope Baseline
**Status:** Draft for G0 Review
**Classification:** Architecture / Interface Definition / Controlled Baseline

---

## 1. Purpose

This document defines the **interface inventory for the minimum callable Digital Farm pilot use case**.

It translates the assets and loose functions identified in:

- `01_pilot_use_case.md`
- `02_asset_inventory.md`
- `03_function_inventory.md`

into logical interaction boundaries.

The purpose is to establish:

- what must communicate with what;
- what information crosses each boundary;
- which direction information flows;
- which functions use each interface;
- which assets participate;
- which interfaces are required for virtualization;
- which interfaces support emulation and simulation;
- which interfaces can later connect to physical CPS assets;
- which interfaces support QAI Lab experimentation.

The interfaces are defined as **logical contracts**, not technology-specific APIs.

---

## 2. Architectural Position

The interface inventory sits between functions and workflows.

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
Virtualization
    ↓
Emulation / Simulation
    ↓
CPS / QAI Lab
~~~

The interface layer is therefore critical to keeping the pilot modular.

---

## 3. Interface Principle

An interface defines a controlled boundary through which one capability interacts with another capability.

An interface may describe:

- information exchange;
- command exchange;
- state access;
- event exchange;
- control;
- observation;
- resource interaction;
- lifecycle interaction.

The interface does **not** prescribe whether the implementation uses:

- a function call;
- object interaction;
- local process communication;
- message exchange;
- service API;
- network protocol;
- IoT protocol;
- hardware interface;
- quantum runtime interface.

Those decisions belong to later implementation phases.

---

## 4. Interface as Logical Contract

Each interface should define at least:

~~~text
Interface
├── Interface ID
├── Name
├── Purpose
├── Producer
├── Consumer
├── Direction
├── Input
├── Output
├── State / Event Semantics
├── Preconditions
├── Postconditions
├── Error Conditions
├── Realization Mode
└── Validation
~~~

The logical interface remains stable while its implementation may evolve.

---

## 5. Interface Categories

The pilot interface inventory is organized into:

1. Farm State Interfaces
2. Sensing Interfaces
3. Context Interfaces
4. Computational Interfaces
5. QAI Interfaces
6. Decision Interfaces
7. Policy Interfaces
8. Actuation Interfaces
9. Simulation Interfaces
10. Feedback Interfaces
11. Communication Interfaces
12. Resource Interfaces
13. Experiment Interfaces
14. Measurement Interfaces
15. Evidence Interfaces
16. Human Interaction Interfaces
17. Governance Interfaces
18. Future Physical Interfaces

---

## 6. Minimum Interface Spine

The minimum callable pilot requires:

~~~text
Virtual Farm
    ↓
State Interface
    ↓
Sensor Interface
    ↓
Observation Interface
    ↓
Context Interface
    ↓
Decision Input Interface
    ├───────────────┐
    ↓               ↓
Classical        QAI
Interface        Interface
    └───────┬───────┘
            ↓
      Decision Interface
            ↓
       Policy / Gate
            ↓
      Command Interface
            ↓
      Actuator Interface
            ↓
      Farm State Interface
            ↓
        Feedback
~~~

This is the minimum logical interaction structure.

---

## 7. Interface Identification Convention

Interfaces should use stable identifiers.

Recommended convention:

`IFC-001`, `IFC-002`, etc.

The identifier represents the logical interaction boundary rather than its implementation.

---

## 8. Farm State Access Interface

### Interface ID

`IFC-001`

### Name

Farm State Interface

### Purpose

Provides controlled access to the current virtual farm state.

### Producer

Virtual Farm

### Consumers

- Digital Farm;
- Simulation;
- Validation;
- Sensing.

### Information

Potential state includes:

- field/zone state;
- crop state;
- soil state;
- water state;
- environmental state;
- operational state;
- time/cycle.

### Direction

Primarily:

**Farm → Consumer**

---

## 9. Farm State Update Interface

### Interface ID

`IFC-002`

### Name

Farm State Update Interface

### Purpose

Allows state transitions to be applied to the virtual farm.

### Producers

- State Transition Function;
- Actuation Effect Function;
- Environment Evolution Function.

### Consumer

Virtual Farm.

### Inputs

- state transition;
- environmental update;
- irrigation effect;
- time progression.

### Outputs

- updated state;
- update status.

---

## 10. Crop State Interface

### Interface ID

`IFC-003`

### Name

Crop State Interface

### Purpose

Provides access to crop-state information required by the pilot.

### Information

Potential fields include:

- crop type;
- growth stage;
- water requirement;
- crop condition.

### Consumers

- Digital Farm;
- simulation;
- intelligence.

---

## 11. Soil State Interface

### Interface ID

`IFC-004`

### Name

Soil State Interface

### Purpose

Provides logical access to soil state.

### Primary Information

- soil moisture.

### Future Information

- soil temperature;
- infiltration;
- drainage;
- field capacity.

The minimum pilot requires only the variables needed for irrigation decision-making.

---

## 12. Water Resource Interface

### Interface ID

`IFC-005`

### Name

Water Availability Interface

### Purpose

Provides the current water-resource constraint.

### Information

Potential values include:

- available;
- unavailable;
- available quantity;
- current consumption;
- remaining allocation.

### Consumers

- policy;
- decision;
- simulation;
- resource management.

---

## 13. Environmental State Interface

### Interface ID

`IFC-006`

### Name

Environmental State Interface

### Purpose

Provides environmental conditions used by the pilot.

### Initial Information

- temperature;
- humidity.

### Future Information

May include:

- rainfall;
- solar radiation;
- wind;
- evapotranspiration;
- forecast data.

---

## 14. Time / Cycle Interface

### Interface ID

`IFC-007`

### Name

Decision Cycle Interface

### Purpose

Provides temporal context and controls cycle progression.

### Information

- experiment time;
- cycle number;
- timestamp;
- interval;
- elapsed duration.

### Consumers

- simulation;
- sensing;
- intelligence;
- execution management.

---

## 15. Sensor Observation Interface

### Interface ID

`IFC-008`

### Name

Sensor Observation Interface

### Purpose

Transfers sensor observations from sensing capabilities to consuming functions.

### Producer

Sensor layer.

### Consumers

- Digital Farm;
- context construction;
- intelligence;
- evidence.

### Conceptual Observation

~~~text
Observation
├── Observation ID
├── Source
├── Timestamp
├── Variable
├── Value
├── Unit
├── Quality
└── Confidence
~~~

---

## 16. Soil Moisture Sensing Interface

### Interface ID

`IFC-009`

### Name

Soil Moisture Sensing Interface

### Purpose

Provides the soil moisture observation.

### Producer

Soil moisture sensing capability.

### Consumer

Digital Farm / intelligence.

### Future Compatibility

The producer may transition from:

~~~text
Virtual Model
     ↓
Emulator
     ↓
Physical Sensor
~~~

without changing the logical sensing contract.

---

## 17. Temperature Sensing Interface

### Interface ID

`IFC-010`

### Name

Temperature Sensing Interface

### Purpose

Provides temperature observations.

### Producer

Temperature sensing capability.

### Consumer

Digital Farm / intelligence.

---

## 18. Humidity Sensing Interface

### Interface ID

`IFC-011`

### Name

Humidity Sensing Interface

### Purpose

Provides humidity observations.

### Producer

Humidity sensing capability.

### Consumer

Digital Farm / intelligence.

---

## 19. Observation Validation Interface

### Interface ID

`IFC-012`

### Name

Observation Validation Interface

### Purpose

Provides the validation result for incoming observations.

### Inputs

- observation;
- expected variable;
- expected range;
- timestamp information.

### Outputs

- valid / invalid;
- quality status;
- validation reason.

---

## 20. Farm Context Interface

### Interface ID

`IFC-013`

### Name

Farm Context Interface

### Purpose

Transfers the assembled farm context to downstream decision functions.

### Producer

Digital Farm Context capability.

### Consumer

Intelligence.

### Information

May include:

- sensor observations;
- farm state;
- crop state;
- soil state;
- water state;
- environmental state;
- temporal context;
- operational constraints.

---

## 21. Context Enrichment Interface

### Interface ID

`IFC-014`

### Name

Context Enrichment Interface

### Purpose

Adds historical, operational, resource, and scenario information to the current context.

### Inputs

- base context;
- history;
- policy;
- resource state;
- scenario.

### Output

- enriched context.

---

## 22. Decision Input Interface

### Interface ID

`IFC-015`

### Name

Decision Input Interface

### Purpose

Provides a normalized logical representation of the problem to decision engines.

### Producer

Digital Farm intelligence preparation.

### Consumers

- Classical Decision Engine;
- QAI Decision Engine.

### Principle

Both decision paths receive logically equivalent problem information.

---

## 23. Classical Decision Interface

### Interface ID

`IFC-016`

### Name

Classical Decision Interface

### Purpose

Invokes the classical baseline decision capability.

### Inputs

- decision input;
- baseline configuration.

### Outputs

- classical decision;
- decision metadata.

### Role

Provides the reference result for comparison.

---

## 24. QAI Representation Interface

### Interface ID

`IFC-017`

### Name

QAI Problem Representation Interface

### Purpose

Transfers the logical decision problem into the QAI representation layer.

### Inputs

- decision input;
- QAI configuration.

### Outputs

- QAI problem representation.

The interface must remain independent of the eventual QAI framework or backend.

---

## 25. QAI Execution Interface

### Interface ID

`IFC-018`

### Name

QAI Execution Interface

### Purpose

Submits a QAI problem representation for execution.

### Inputs

- QAI representation;
- execution configuration;
- resource requirements.

### Outputs

- QAI result;
- execution metadata;
- confidence / quality information where available.

### Possible Realizations

- local emulation;
- simulation;
- hybrid execution;
- external QPU.

---

## 26. QAI Result Interface

### Interface ID

`IFC-019`

### Name

QAI Result Interface

### Purpose

Transfers the QAI execution result to the interpretation and evaluation layers.

### Information

Potentially includes:

- result;
- confidence;
- execution metadata;
- resource consumption;
- timing;
- status.

---

## 27. Decision Candidate Interface

### Interface ID

`IFC-020`

### Name

Decision Candidate Interface

### Purpose

Provides a common logical representation for classical and QAI decision candidates.

### Inputs

- decision result;
- source;
- confidence;
- metadata.

### Output

- normalized decision candidate.

This enables fair comparison.

---

## 28. Advantage Evaluation Interface

### Interface ID

`IFC-021`

### Name

QAI Advantage Evaluation Interface

### Purpose

Provides the information required by the QAI Advantage Gate.

### Inputs

- QAI candidate;
- classical candidate;
- KPI evidence;
- resource measurements;
- confidence;
- policy constraints.

### Output

- accept;
- reject;
- inconclusive;
- assessment metadata.

---

## 29. Policy Evaluation Interface

### Interface ID

`IFC-022`

### Name

Irrigation Policy Interface

### Purpose

Provides policy and constraint evaluation for candidate actions.

### Inputs

- candidate decision;
- water state;
- farm state;
- operational constraints.

### Outputs

- permitted;
- rejected;
- constrained;
- policy rationale.

---

## 30. Decision Selection Interface

### Interface ID

`IFC-023`

### Name

Final Decision Interface

### Purpose

Transfers the selected irrigation decision to the command layer.

### Inputs

- classical candidate;
- QAI candidate;
- advantage result;
- policy result;
- fallback result.

### Output

- selected decision;
- source;
- confidence;
- rationale.

---

## 31. Fallback Interface

### Interface ID

`IFC-024`

### Name

Classical Fallback Interface

### Purpose

Activates the classical decision path when QAI execution is unavailable or unsuitable.

### Inputs

- QAI status;
- advantage result;
- policy result;
- resource availability.

### Outputs

- fallback decision;
- fallback reason.

---

## 32. Irrigation Command Interface

### Interface ID

`IFC-025`

### Name

Irrigation Command Interface

### Purpose

Transfers the selected decision into a logical irrigation command.

### Minimum Command

~~~text
IRRIGATION_ON
IRRIGATION_OFF
~~~

Future extensions may include:

- duration;
- volume;
- zone;
- intensity.

---

## 33. Command Validation Interface

### Interface ID

`IFC-026`

### Name

Irrigation Command Validation Interface

### Purpose

Validates an irrigation command before execution.

### Checks

- command validity;
- target validity;
- water availability;
- policy;
- safety constraints;
- operational limits.

### Output

- validated command;
- validation status.

---

## 34. Actuator Interface

### Interface ID

`IFC-027`

### Name

Irrigation Actuator Interface

### Purpose

Transfers a validated command to the irrigation actuator.

### Initial Producer

Digital Farm / control layer.

### Initial Consumer

Emulated actuator.

### Future Consumer

Physical actuator.

The interface must remain independent of the actuator implementation.

---

## 35. Actuator Status Interface

### Interface ID

`IFC-028`

### Name

Actuator Status Interface

### Purpose

Returns the execution status of an actuator command.

### Information

Potential values include:

- accepted;
- executing;
- completed;
- rejected;
- failed;
- stopped.

---

## 36. State Transition Interface

### Interface ID

`IFC-029`

### Name

Farm State Transition Interface

### Purpose

Transfers actuator effects and environmental changes to the state-transition model.

### Inputs

- previous state;
- irrigation action;
- environmental conditions;
- elapsed time.

### Output

- updated state.

---

## 37. Simulation Control Interface

### Interface ID

`IFC-030`

### Name

Simulation Control Interface

### Purpose

Controls the simulation environment.

Potential operations include:

- initialize;
- start;
- pause;
- resume;
- advance;
- stop;
- reset.

The exact implementation is intentionally unspecified.

---

## 38. Environment Generation Interface

### Interface ID

`IFC-031`

### Name

Environmental Condition Interface

### Purpose

Provides environmental conditions to the simulation environment and sensing layer.

### Inputs

- scenario;
- time;
- environmental model.

### Outputs

- environmental state.

---

## 39. Feedback Interface

### Interface ID

`IFC-032`

### Name

Farm Feedback Interface

### Purpose

Transfers updated farm-state information back into the next decision cycle.

### Producer

Virtual Farm / Simulation.

### Consumer

Digital Farm / Intelligence.

### Role

Closes the CPS loop.

---

## 40. Event Interface

### Interface ID

`IFC-033`

### Name

Pilot Event Interface

### Purpose

Transfers significant events between participating components.

Potential events include:

- observation received;
- decision generated;
- QAI execution completed;
- fallback activated;
- actuator executed;
- state updated;
- experiment completed;
- error detected.

---

## 41. Resource Interface

### Interface ID

`IFC-034`

### Name

Pilot Resource Interface

### Purpose

Provides resource availability and consumption information.

Potential resources include:

- CPU;
- memory;
- storage;
- network;
- energy;
- QAI resources;
- execution time.

---

## 42. Resource Measurement Interface

### Interface ID

`IFC-035`

### Name

Resource Measurement Interface

### Purpose

Transfers resource consumption measurements to the evaluation layer.

### Outputs

- resource usage;
- measurement timestamp;
- execution context.

---

## 43. Experiment Configuration Interface

### Interface ID

`IFC-036`

### Name

Experiment Configuration Interface

### Purpose

Provides the configuration required to initialize and execute a pilot experiment.

Potential configuration includes:

- farm state;
- scenario;
- thresholds;
- algorithm selection;
- execution mode;
- cycle interval;
- experiment duration;
- QAI configuration.

---

## 44. Experiment Lifecycle Interface

### Interface ID

`IFC-037`

### Name

Experiment Lifecycle Interface

### Purpose

Controls and reports the lifecycle state of an experiment.

Potential states:

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

---

## 45. KPI Measurement Interface

### Interface ID

`IFC-038`

### Name

KPI Measurement Interface

### Purpose

Transfers measurements to the KPI evaluation capability.

Potential measurements include:

- water consumption;
- soil moisture outcome;
- decision quality;
- latency;
- resource use;
- energy.

---

## 46. Value Measurement Interface

### Interface ID

`IFC-039`

### Name

Value Measurement Interface

### Purpose

Transfers technical and agricultural results into value evaluation.

Potential dimensions include:

- water efficiency;
- operational efficiency;
- resource efficiency;
- decision effectiveness;
- computational cost;
- QAI value.

---

## 47. Classical / QAI Comparison Interface

### Interface ID

`IFC-040`

### Name

Classical-QAI Comparison Interface

### Purpose

Provides comparable results for classical and QAI evaluation.

### Inputs

- classical result;
- QAI result;
- common inputs;
- common scenario;
- KPI measurements;
- resource measurements.

### Output

- comparison result.

---

## 48. Evidence Capture Interface

### Interface ID

`IFC-041`

### Name

Experiment Evidence Interface

### Purpose

Transfers experiment information into the evidence record.

### Information

Potentially includes:

- configuration;
- input state;
- observations;
- decisions;
- commands;
- execution metadata;
- results;
- KPI measurements;
- errors;
- fallback events.

---

## 49. Execution Log Interface

### Interface ID

`IFC-042`

### Name

Execution Log Interface

### Purpose

Transfers execution events to the pilot logging capability.

### Minimum Information

- timestamp;
- event;
- source;
- status;
- experiment ID;
- relevant asset/function identifier.

---

## 50. Human Review Interface

### Interface ID

`IFC-043`

### Name

Human Review Interface

### Purpose

Provides a human operator with access to information needed to review a decision.

### Information

- farm context;
- proposed decision;
- decision source;
- confidence;
- rationale;
- relevant measurements.

---

## 51. Human Override Interface

### Interface ID

`IFC-044`

### Name

Human Override Interface

### Purpose

Allows an authorized operator to override a decision in assisted mode.

### Inputs

- operator action;
- revised decision;
- override reason.

### Outputs

- revised decision;
- override record.

---

## 52. Visualization Interface

### Interface ID

`IFC-045`

### Name

Pilot Visualization Interface

### Purpose

Provides current pilot state and results to visualization capabilities.

Potential information includes:

- farm state;
- sensor observations;
- decisions;
- actuator state;
- cycle state;
- KPI results.

---

## 53. Governance / Traceability Interface

### Interface ID

`IFC-046`

### Name

Pilot Traceability Interface

### Purpose

Maintains traceability between architectural and execution artifacts.

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
Execution
   ↓
Result
   ↓
Evidence
~~~

---

## 54. Security / Authorization Interface

### Interface ID

`IFC-047`

### Name

Pilot Authorization Interface

### Purpose

Provides logical authorization boundaries for protected actions.

Potential protected actions include:

- configuration changes;
- experiment execution;
- actuator commands;
- human override;
- evidence modification.

The implementation remains technology-neutral.

---

## 55. Error Interface

### Interface ID

`IFC-048`

### Name

Pilot Error Interface

### Purpose

Provides a common mechanism for reporting execution errors.

Potential error categories include:

- invalid input;
- missing observation;
- invalid state;
- QAI failure;
- resource failure;
- actuation failure;
- policy rejection.

---

## 56. Recovery Interface

### Interface ID

`IFC-049`

### Name

Pilot Recovery Interface

### Purpose

Coordinates controlled recovery after an execution problem.

Potential recovery actions include:

- retry;
- fallback;
- skip;
- stop;
- reset.

The selected recovery action must remain traceable.

---

## 57. Interface-to-Function Mapping

The principal mapping is:

~~~text
Farm State Interfaces
    ↓
FNC-001 to FNC-007
FNC-028 / FNC-029 / FNC-045

Sensing Interfaces
    ↓
FNC-008 to FNC-012

Context Interfaces
    ↓
FNC-013 to FNC-015

Classical / QAI Interfaces
    ↓
FNC-016 to FNC-020

Policy / Decision Interfaces
    ↓
FNC-021 to FNC-023

Command / Actuation Interfaces
    ↓
FNC-024 to FNC-027

Simulation / Feedback Interfaces
    ↓
FNC-028 to FNC-030

Evaluation Interfaces
    ↓
FNC-031 to FNC-035

Execution / Governance Interfaces
    ↓
FNC-036 to FNC-050
~~~

---

## 58. Interface-to-Asset Mapping

The major asset-interface relationships are:

| Asset | Primary Interfaces |
|---|---|
| Virtual Farm | IFC-001, IFC-002, IFC-029, IFC-032 |
| Field / Zone | IFC-001, IFC-002 |
| Crop State | IFC-003 |
| Soil State | IFC-004 |
| Water State | IFC-005 |
| Environment | IFC-006, IFC-031 |
| Time / Cycle | IFC-007 |
| Sensors | IFC-008 to IFC-012 |
| Digital Farm | IFC-013 to IFC-015, IFC-023 to IFC-026 |
| Classical Engine | IFC-016, IFC-020 |
| QAI Engine | IFC-017 to IFC-019 |
| Advantage Gate | IFC-021 |
| Policy | IFC-022 |
| Actuator | IFC-027, IFC-028 |
| Simulation | IFC-029 to IFC-032 |
| Resources | IFC-034, IFC-035 |
| Experiment | IFC-036, IFC-037 |
| KPI / Value | IFC-038 to IFC-040 |
| Evidence | IFC-041, IFC-042 |
| Human | IFC-043, IFC-044 |
| Governance | IFC-046 to IFC-049 |

---

## 59. Interface-to-Path Mapping

### Sensing Path

~~~text
IFC-001 / IFC-004 / IFC-006
        ↓
IFC-009 / IFC-010 / IFC-011
        ↓
IFC-008
        ↓
IFC-012
        ↓
IFC-013
~~~

### Computational Path

~~~text
IFC-013
    ↓
IFC-014
    ↓
IFC-015
    ├───────────────┐
    ↓               ↓
IFC-016          IFC-017
Classical          QAI
                    ↓
                 IFC-018
                    ↓
                 IFC-019
    └───────────────┬───┘
                    ↓
                 IFC-020
                    ↓
             IFC-021 / IFC-022
                    ↓
                 IFC-023
~~~

### Communication Path

The communication path provides the transport and exchange boundary supporting the interfaces above.

The logical interfaces must remain independent of the communication technology.

---

## 60. Interface-to-Execution-Mode Mapping

The interfaces must survive the progression:

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

~~~text
Logical Sensor Interface
        │
        ├── Virtual Sensor
        ├── Sensor Emulator
        └── Physical Sensor

Logical Actuator Interface
        │
        ├── Virtual Actuator
        ├── Actuator Emulator
        └── Physical Actuator

Logical QAI Interface
        │
        ├── QAI Simulator
        ├── QAI Emulator
        ├── Hybrid Runtime
        └── QPU Backend
~~~

The logical interface contract should remain stable wherever practical.

---

## 61. Interface Stability Principle

The pilot should distinguish:

**Interface identity**

from:

**Interface implementation.**

For example:

`IFC-009 Soil Moisture Sensing Interface`

may initially connect to a simulated value generator, later to a sensor emulator, and eventually to a physical IoT sensor.

The interface should not be renamed simply because its implementation changes.

---

## 62. Interface Virtualization Principle

Every asset that is intended to be virtualized should have an identifiable logical interface where interaction is required.

This creates:

~~~text
Logical Asset
      ↓
Logical Interface
      ↓
Virtual Implementation
      ↓
Emulated Implementation
      ↓
Physical Implementation
~~~

This principle is central to future CPS realization.

---

## 63. Interface Emulation Principle

Emulation should reproduce the externally observable behavior required by the logical interface.

For example:

~~~text
Physical Sensor
      ↕
Sensor Interface
      ↕
Sensor Emulator
~~~

The emulator does not need to reproduce the physical internals of the sensor.

It needs to reproduce the interface-visible behavior relevant to the pilot.

---

## 64. Interface Simulation Principle

Simulation may operate below or behind the interface boundary.

~~~text
Simulation Model
      ↓
Simulated State
      ↓
Logical Interface
      ↓
Pilot Function
~~~

This allows different simulation models to be substituted without changing the higher-level function contract.

---

## 65. CPS Interface Principle

A CPS realization should preserve the logical interfaces established during the pilot.

~~~text
Physical World
     ↕
Physical Sensor / Actuator
     ↕
CPS Interface
     ↕
Digital Representation
     ↕
Digital Farm
     ↕
Decision / QAI
~~~

The interface therefore becomes one of the key mechanisms for transitioning from virtual pilot to CPS.

---

## 66. QAI Lab Interface Principle

The QAI Lab should be able to replace or introduce computational implementations behind stable logical interfaces.

For example:

~~~text
Decision Input Interface
          ↓
   ┌──────┼──────┐
   ↓      ↓      ↓
Classical QAI  Experimental
Baseline Backend Backend
   │      │      │
   └──────┼──────┘
          ↓
Decision Candidate Interface
~~~

This enables controlled experimentation without changing the agricultural use case.

---

## 67. Experiment Substitution

The interface architecture should allow one implementation to be substituted for another.

Examples:

- simulated sensor ↔ emulated sensor;
- emulated sensor ↔ physical sensor;
- classical algorithm ↔ alternative classical algorithm;
- QAI simulator ↔ QPU backend;
- simulated actuator ↔ physical actuator;
- local runtime ↔ distributed runtime.

Substitution must preserve the logical contract.

---

## 68. Interface Composition

Interfaces should support composition into workflows.

~~~text
Observation Interface
        ↓
Context Interface
        ↓
Decision Input Interface
        ↓
Decision Interface
        ↓
Command Interface
        ↓
Actuator Interface
        ↓
State Update Interface
        ↓
Feedback Interface
~~~

The Workflow Catalogue will define the actual sequence and branching behavior.

---

## 69. Interface Direction

Interfaces may be:

- inbound;
- outbound;
- bidirectional;
- request/response;
- event-driven;
- state-oriented;
- command-oriented.

The direction should describe logical information flow, not necessarily network direction.

---

## 70. Interface Data Semantics

Interface payloads should distinguish:

- state;
- observation;
- decision;
- command;
- event;
- result;
- measurement;
- evidence.

This prevents semantic ambiguity as the system evolves.

---

## 71. Interface State Semantics

Where an interface carries state, the state should have defined meaning.

For example:

**Soil State**

represents the logical current condition.

**Soil Observation**

represents what the sensing mechanism reports.

These are related but are not necessarily identical.

---

## 72. Interface Error Semantics

Interfaces should provide explicit error outcomes where appropriate.

Conceptually:

~~~text
SUCCESS
WARNING
REJECTED
FAILED
TIMEOUT
FALLBACK
INCONCLUSIVE
~~~

Error semantics should be consistent enough for workflow orchestration.

---

## 73. Interface Validation

Each mandatory interface should eventually be validated for:

- input validity;
- output validity;
- direction;
- state semantics;
- error behavior;
- timing where relevant;
- compatibility;
- repeatability.

---

## 74. Interface Observability

Important interfaces should expose sufficient information to determine:

- when interaction occurred;
- which assets participated;
- which function invoked it;
- whether it succeeded;
- what logical result was returned;
- whether an error or fallback occurred.

This is particularly important for CPS and QAI experimentation.

---

## 75. Interface Security

Interfaces affecting:

- actuation;
- configuration;
- QAI execution;
- resource allocation;
- human override;
- evidence;

should support appropriate authorization and integrity controls.

The exact security mechanism is outside this Phase 0 document.

---

## 76. Interface Performance

Relevant interfaces may be measured for:

- latency;
- throughput;
- response time;
- reliability;
- availability;
- resource consumption.

The minimum pilot should measure only those metrics necessary for meaningful evaluation.

---

## 77. Interface Versioning

Interfaces should support controlled evolution.

Changes should distinguish:

- compatible extension;
- behavior change;
- breaking change.

Material interface changes should be traceable to affected:

- functions;
- workflows;
- scenarios;
- implementations;
- experiments.

---

## 78. Interface Compatibility

An implementation is compatible with an interface when it preserves:

- expected inputs;
- expected outputs;
- semantic meaning;
- required state behavior;
- error behavior;
- relevant timing constraints.

Implementation technology may change without changing compatibility.

---

## 79. Interface Non-Duplication

The Digital Farm interface inventory should not duplicate technical interfaces unnecessarily.

For example:

- a physical sensor protocol may exist below the sensing interface;
- a QAI provider API may exist below the QAI execution interface;
- an IoT protocol may exist below the actuator interface;
- a simulation framework API may exist below the simulation interface.

The Digital Farm uses logical boundaries to coordinate these technical interfaces.

---

## 80. Interface Ownership

Interface ownership should follow the capability boundary.

~~~text
Digital Farm
    │
    ├── Defines / Coordinates
    │
    └── Consumes / Produces Logical Contracts
              ↓
Technical Realization
    ├── Simulation
    ├── Sensing
    ├── Communication
    ├── QAI
    ├── CPS
    └── Physical Systems
~~~

An interface may be defined at the architectural level while implemented elsewhere.

---

## 81. Interface Traceability

Every mandatory interface should be traceable to:

- at least one asset;
- at least one function;
- at least one workflow interaction;
- and, where applicable, at least one scenario.

This ensures that interfaces exist for a defined reason.

---

## 82. Interface Dependency Chain

The principal dependency chain is:

~~~text
State
 ↓
Sensing
 ↓
Observation
 ↓
Context
 ↓
Decision Input
 ↓
Classical / QAI
 ↓
Decision Candidate
 ↓
Policy / Advantage
 ↓
Final Decision
 ↓
Command
 ↓
Actuator
 ↓
State Transition
 ↓
Feedback
~~~

Supporting interfaces provide:

- resources;
- experiments;
- measurements;
- evidence;
- governance;
- human interaction.

---

## 83. Interface Inventory and Virtualization

The interface inventory is one of the primary inputs to Phase 1 virtualization.

Phase 1 should determine how each logical interface is exposed by the virtualized asset.

For example:

~~~text
IFC-009 Soil Moisture Interface
        ↓
Virtual Soil State
        ↓
Virtual Sensor
        ↓
Callable Observation
~~~

This establishes the first implementation boundary without prematurely deciding the final object/service architecture.

---

## 84. Interface Inventory and Emulation

During emulation, the same interface should connect:

~~~text
Virtual / Simulated Asset
        ↕
Logical Interface
        ↕
Emulated Asset
~~~

The objective is to prove that the interface abstraction is sufficient to support alternative realizations.

---

## 85. Interface Inventory and Simulation

Simulation should use the same interfaces to connect:

- farm models;
- environmental models;
- sensor models;
- actuator models;
- QAI experiments.

~~~text
Simulation Model
      ↓
Model State
      ↓
Logical Interface
      ↓
Pilot Function
~~~

This permits model replacement without redesigning the higher-level workflow.

---

## 86. Interface Inventory and CPS

The CPS system should eventually preserve these boundaries when physical components are introduced.

~~~text
Physical Sensor
      ↓
Sensor Interface
      ↓
Digital Farm
      ↓
Decision / QAI
      ↓
Actuator Interface
      ↓
Physical Actuator
      ↓
Physical World
~~~

The pilot therefore becomes the logical precursor to the CPS interface architecture.

---

## 87. Interface Inventory and QAI Lab

The QAI Lab can use the same interfaces to conduct controlled experiments.

For example:

~~~text
Farm Context
     ↓
Decision Input Interface
     ↓
┌───────────────┬────────────────┬─────────────────┐
│ Classical     │ QAI Simulator  │ QAI Experimental│
│ Baseline      │                │ Backend         │
└───────┬───────┴───────┬────────┴────────┬────────┘
        │               │                 │
        └───────────────┼─────────────────┘
                        ↓
               Decision Candidate
                        ↓
                 Evaluation Layer
~~~

This enables experimentation while preserving the common problem definition.

---

## 88. Interface Change Control

Changes to a mandatory interface should identify:

- interface changed;
- reason;
- affected assets;
- affected functions;
- affected workflows;
- affected scenarios;
- affected implementations;
- affected experiments.

Breaking changes should require explicit review.

---

## 89. Interface Versioning Principle

Interface versioning should be driven by **contract change**, not implementation change.

For example:

~~~text
Sensor Interface v1
      ↓
Sensor Emulator
      ↓
Physical Sensor
~~~

does not require a new logical interface merely because the implementation changed.

A new version is justified when the logical contract itself changes.

---

## 90. Minimum Mandatory Interface Set

The minimum callable pilot should establish at least:

~~~text
IFC-001  Farm State Interface
IFC-002  Farm State Update Interface
IFC-003  Crop State Interface
IFC-004  Soil State Interface
IFC-005  Water Availability Interface
IFC-006  Environmental State Interface
IFC-007  Decision Cycle Interface

IFC-008  Sensor Observation Interface
IFC-009  Soil Moisture Sensing Interface
IFC-010  Temperature Sensing Interface
IFC-011  Humidity Sensing Interface
IFC-012  Observation Validation Interface

IFC-013  Farm Context Interface
IFC-014  Context Enrichment Interface
IFC-015  Decision Input Interface

IFC-016  Classical Decision Interface
IFC-017  QAI Problem Representation Interface
IFC-018  QAI Execution Interface
IFC-019  QAI Result Interface
IFC-020  Decision Candidate Interface
IFC-021  QAI Advantage Evaluation Interface
IFC-022  Irrigation Policy Interface
IFC-023  Final Decision Interface
IFC-024  Classical Fallback Interface

IFC-025  Irrigation Command Interface
IFC-026  Irrigation Command Validation Interface
IFC-027  Irrigation Actuator Interface
IFC-028  Actuator Status Interface

IFC-029  Farm State Transition Interface
IFC-030  Simulation Control Interface
IFC-031  Environmental Condition Interface
IFC-032  Farm Feedback Interface
~~~

---

## 91. Supporting Interface Set

Supporting interfaces include:

~~~text
IFC-033  Pilot Event Interface
IFC-034  Pilot Resource Interface
IFC-035  Resource Measurement Interface
IFC-036  Experiment Configuration Interface
IFC-037  Experiment Lifecycle Interface
IFC-038  KPI Measurement Interface
IFC-039  Value Measurement Interface
IFC-040  Classical-QAI Comparison Interface
IFC-041  Experiment Evidence Interface
IFC-042  Execution Log Interface
IFC-043  Human Review Interface
IFC-044  Human Override Interface
IFC-045  Pilot Visualization Interface
IFC-046  Pilot Traceability Interface
IFC-047  Pilot Authorization Interface
IFC-048  Pilot Error Interface
IFC-049  Pilot Recovery Interface
~~~

These may be simplified during the first implementation while retaining their logical boundaries.

---

## 92. Minimum End-to-End Interface Chain

The minimum callable path is:

~~~text
IFC-001 Farm State
       ↓
IFC-009 / IFC-010 / IFC-011
       ↓
IFC-008 Observation
       ↓
IFC-012 Validation
       ↓
IFC-013 Context
       ↓
IFC-014 Enrichment
       ↓
IFC-015 Decision Input
       ↓
IFC-016 Classical
       +
IFC-017 → IFC-018 → IFC-019 QAI
       ↓
IFC-020 Decision Candidate
       ↓
IFC-021 Advantage
       ↓
IFC-022 Policy
       ↓
IFC-023 Final Decision
       ↓
IFC-024 Fallback if Required
       ↓
IFC-025 Command
       ↓
IFC-026 Validation
       ↓
IFC-027 Actuator
       ↓
IFC-028 Status
       ↓
IFC-029 State Transition
       ↓
IFC-002 State Update
       ↓
IFC-032 Feedback
       ↓
Next Cycle
~~~

---

## 93. Interface Acceptance

The interface inventory is sufficiently defined for G0 when:

1. every core asset interaction has a logical interface;
2. every critical function interaction has a logical boundary;
3. sensing interfaces are defined;
4. computational interfaces are defined;
5. QAI interfaces are defined;
6. decision and policy interfaces are defined;
7. actuation interfaces are defined;
8. simulation and feedback interfaces are defined;
9. resource and measurement interfaces are defined;
10. evidence and governance interfaces are defined;
11. future physical mappings are possible;
12. QAI Lab substitution is possible;
13. no unnecessary implementation-specific interfaces are imposed.

---

## 94. Phase 1 Virtualization Handoff

After G0 approval, Phase 1 should use this inventory to determine how the logical interfaces are exposed by virtualized assets.

The objective is not to create a final software architecture.

The objective is to prove:

> **Every required pilot interaction can cross a stable logical boundary in a virtual environment.**

---

## 95. Emulation Handoff

Once virtualization is functional, emulation should replace selected virtual implementations while preserving the same interface contracts.

This provides evidence that the architecture is not dependent on the initial virtual implementation.

---

## 96. Simulation Handoff

Simulation should use the same interfaces to connect:

- farm models;
- environmental models;
- sensor models;
- actuator models;
- QAI experiments.

The interfaces therefore become the stable coupling points between models and functions.

---

## 97. CPS Handoff

When physical components are introduced, the logical interfaces should be retained wherever practical.

The resulting progression is:

~~~text
Virtual Interface
      ↓
Emulated Interface
      ↓
Simulated / CPS Interface
      ↓
Physical Interface Adapter
~~~

This reduces architectural redesign during physical expansion.

---

## 98. QAI Lab Handoff

The QAI Lab should treat the interface set as an experimental control boundary.

It should be possible to vary:

- QAI representation;
- QAI execution backend;
- computational resources;
- classical baseline;
- simulation conditions;

while retaining the same:

- use case;
- logical inputs;
- decision semantics;
- outcome measurements.

This is essential for meaningful QAI experimentation.

---

## 99. Final Interface Principle

The interface architecture should make the following possible:

> **A logical asset can be virtualized, emulated, simulated, experimentally executed, and eventually connected to a physical CPS implementation without changing the fundamental use-case contract.**

The interface therefore becomes the principal architectural boundary between **what a capability does** and **how that capability is realized**.

---

## 100. Status

**Document:** `04_interface_inventory.md`

**Phase:** Phase 0 — Implementation Readiness & Scope Baseline

**Primary Use Case:** Intelligent Irrigation Decision and Control

**Interface Model:** Logical / Contract-Oriented / Technology-Neutral

**Primary Paths:** Computational + Sensing + Communication

**Primary Lifecycle:** Sense → Process → Decide → Act → Learn

**Initial Realization:** Laptop / Virtualization / Simulation / Emulation

**Future Realization:** CPS / Physical Sensors / IoT / Physical Actuators / QAI Lab

**Virtualization Role:** Stable logical interaction boundaries for asset virtualization

**Emulation Role:** Preserve behavior across alternative implementations

**Simulation Role:** Connect models without changing higher-level contracts

**CPS Role:** Bridge virtual/logical assets to physical systems

**QAI Lab Role:** Provide stable experimental boundaries for classical/QAI substitution

**G0 Role:** Establish the controlled interface baseline for workflow, scenario, virtualization, emulation, simulation, CPS, and QAI experimentation.

**Status:** Ready for downstream Phase 0 deliverables, subject to G0 review.
---
