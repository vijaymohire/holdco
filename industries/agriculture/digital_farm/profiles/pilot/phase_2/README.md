# Phase 2 — Simulation & CPS Workflows

## 1. Purpose

Phase 2 establishes the **Simulation & CPS Workflow** layer of the Agriculture Digital Farm Pilot.

The purpose of this phase is to progress the virtualized assets and behaviours created in Phase 1 into independently testable:

- emulation environments;
- simulation environments;
- CPS state and transition models;
- open-loop workflows;
- closed-loop workflows;
- QAI-enabled experiments;
- structural-integrity assessments;
- fault and resilience scenarios; and
- integrated validation workflows.

Phase 2 is therefore the bridge between **virtual representation** and **validated CPS behaviour**.

---

## 2. Architectural Position

Phase 2 follows Phase 1 Virtualization & Emulation preparation and precedes the later phases of model promotion, Digital Twin realization and production CPS.

The high-level progression is:

~~~text
Phase 0
Foundation & Preparation
        │
        ▼
Phase 1
Virtualisation & Emulation Foundation
        │
        ▼
Phase 2
Simulation & CPS Workflows
        │
        ▼
Phase 3
Validation & Model Promotion
        │
        ▼
Phase 4
Digital Twin & Production CPS
        │
        ▼
Phase 5+
QAI Lab → Fabric → Scale
~~~

Phase 2 must therefore preserve the models, identities, mappings, interfaces and lifecycle semantics established by Phase 1.

---

## 3. Phase 2 Objective

The primary objective is:

> **Create independently testable emulation and simulation environments and use them to construct, execute and validate open-loop and closed-loop CPS workflows, including classical and QAI-based computational alternatives, while establishing structural integrity, safety, fault and resilience evidence.**

The objective is not to build a complete production CPS.

The objective is to establish a technically sound and experimentally useful CPS environment that can later be promoted toward physical validation and Digital Twin operation.

---

## 4. Core Engineering Principle

Phase 2 follows the principle:

> **Build the minimum. Prove it. Measure it. Stress it. Learn from it. Then expand it.**

Every subsystem should therefore be:

- identifiable;
- independently testable;
- interface-defined;
- observable;
- measurable;
- reproducible;
- replaceable where appropriate; and
- capable of participating in integrated testing.

---

## 5. Phase 2 Architectural Principle

Phase 2 treats the CPS as a composition of cooperating but independently testable subsystems.

The principal subsystems are:

~~~text
Emulator
   │
   ├──────────────┐
   │              │
   ▼              ▼
Simulator       QAI Pipeline
   │              │
   └──────┬───────┘
          ▼
        CPS
          │
          ▼
 Structural Integrity
          │
          ▼
 Integration
          │
          ▼
 Testing & Validation
~~~

The architecture must not hide one major subsystem inside another merely for implementation convenience.

---

## 6. Emulator and Simulator Separation

The **Emulator** and **Simulator** are separate peer subsystems.

The Emulator answers:

> **Can the target system and its relevant cyber-physical behaviour be reproduced faithfully within the defined emulation boundary?**

The Simulator answers:

> **What happens when the system, environment, parameters, policies or operating conditions are intentionally varied?**

Therefore:

~~~text
Emulator ≠ Simulator

Emulator
   │
   │ faithful reproduction
   ▼
Target behaviour

Simulator
   │
   │ controlled exploration
   ▼
Possible behaviour
~~~

Neither subsystem should depend on the other being implemented internally.

---

## 7. Emulator Responsibility

The Emulator represents the target CPS in a controlled execution environment.

Its responsibilities include:

- target asset representation;
- component behaviour;
- state behaviour;
- interfaces;
- timing;
- constraints;
- control responses;
- fault modes;
- communication behaviour;
- environmental interaction;
- uncertainty and noise where required; and
- executable reproduction of defined target behaviour.

The Emulator does not become the general-purpose scenario exploration engine.

---

## 8. Simulator Responsibility

The Simulator provides controlled exploration of system behaviour.

Its responsibilities include:

- scenario execution;
- parameter variation;
- environmental variation;
- perturbation;
- what-if analysis;
- open-loop experiments;
- closed-loop experiments;
- policy comparison;
- optimization experiments;
- stress testing; and
- comparative evaluation.

Simulation may deliberately introduce conditions that are not expected during nominal operation.

Such deviations are experimental conditions and must not automatically be interpreted as emulator errors.

---

## 9. Structural Integrity Principle

Before executing significant CPS experiments, the architecture must establish that the modeled CPS structure is internally coherent.

Structural integrity asks:

> **Is the CPS correctly constructed, connected, identified, mapped, configured and bounded?**

It includes analysis of:

- components;
- relationships;
- dependencies;
- interfaces;
- mappings;
- topology;
- identities;
- configuration;
- state;
- communication;
- control paths; and
- expected lifecycle relationships.

---

## 10. Structural Engineering Analogy

CPS structural analysis follows an engineering discipline similar in spirit to structural engineering.

A civil structure is examined for:

- elements;
- connections;
- load paths;
- stresses;
- failure modes;
- stability;
- safety margins; and
- behaviour under abnormal conditions.

A CPS is examined for:

- components;
- relationships;
- data/control paths;
- computational and physical dependencies;
- state transitions;
- failure modes;
- resilience;
- safety boundaries; and
- behaviour under abnormal conditions.

The analogy is useful as an engineering mindset, while the actual CPS analysis remains defined by the CPS architecture and its formal models.

---

## 11. CPS Structural Model

The Phase 2 CPS structural model represents the relationship between cyber and physical aspects of the system.

A generic CPS structure is:

~~~text
Physical Environment
        │
        ▼
     Sensors
        │
        ▼
 Communication
        │
        ▼
 Computation / AI / QAI
        │
        ▼
 Controller / Decision
        │
        ▼
 Communication
        │
        ▼
    Actuators
        │
        ▼
 Physical System
        │
        └────────── Feedback ──────────►
~~~

The actual Pilot realization may be entirely virtual, emulated or simulated.

---

## 12. CPS Structural Elements

The structural model may contain:

- physical assets;
- virtual assets;
- emulated devices;
- simulated assets;
- sensors;
- actuators;
- controllers;
- communication modules;
- computational resources;
- AI services;
- QAI services;
- storage;
- state models;
- behaviour models;
- external facilities;
- human participants; and
- environmental models.

The exact set is determined by the use case.

---

## 13. CPS Interactions

Structural analysis must represent interactions rather than only isolated components.

Important interactions include:

- sensing;
- communication;
- state transfer;
- computation;
- decision;
- control;
- actuation;
- feedback;
- synchronization;
- dependency;
- resource allocation; and
- human intervention.

These interactions create the operational structure of the CPS.

---

## 14. Three CPS Paths

Phase 2 preserves the three first-class Digital Farm paths established by the wider architecture:

1. **Sensing Path**
2. **Computational Path**
3. **Communication Path**

They must be independently testable before being evaluated as an integrated CPS.

~~~text
Sensing Path
    │
    ▼
Computational Path
    │
    ▼
Communication Path
    │
    ▼
CPS Behaviour
    │
    └──────────── Feedback ────────────►
~~~

The paths may interact, but their responsibilities and test boundaries must remain identifiable.

---

## 15. Path Independence

A test involving one path must not automatically be treated as validation of the complete CPS.

For example:

~~~text
Sensing Test
      ≠
Computational Test
      ≠
Communication Test
      ≠
Integrated CPS Test
~~~

Integrated tests must explicitly demonstrate the coupling between the paths.

This distinction is essential for locating design limitations.

---

## 16. Virtualization-to-Emulation Boundary

Phase 1 establishes what the virtual asset is.

Phase 2 establishes how the target asset behaves within an executable emulation environment.

Therefore:

~~~text
Virtualization
"What exists?"
      │
      ▼
Emulation
"How does the target behave?"
      │
      ▼
Simulation
"What happens if conditions change?"
~~~

This distinction prevents simulation assumptions from being silently incorporated into the emulator.

---

## 17. Emulator Structural Analysis

The Emulator must itself be structurally analyzed.

The analysis should determine whether:

- all required components exist;
- identities are valid;
- expected relationships exist;
- mappings are valid;
- dependencies are resolvable;
- interfaces are compatible;
- required states exist;
- configuration is complete;
- execution dependencies are available; and
- no unexplained structural conditions exist.

An emulator that executes successfully is not automatically structurally valid.

---

## 18. Structural Integrity Gate

Phase 2 introduces a **Structural Integrity Gate** before controlled experimentation.

~~~text
Phase 2 Environment
        │
        ▼
Structural Analysis
        │
   ┌────┴────┐
   │         │
 PASS       FAIL
   │         │
   ▼         ▼
Execute    Diagnose /
Experiment  Correct
~~~

The gate should prevent known structural inconsistencies from being presented as valid experimental results.

---

## 19. Orphan Conditions

An **orphan condition** occurs when an element has no valid expected relationship, parent, counterpart, ownership context or required structural association.

Examples may include:

- an asset without its expected model;
- an emulator component without its required dependency;
- a sensor without a valid target;
- a command without an addressable recipient;
- a relationship referencing a nonexistent endpoint.

Orphan detection is therefore part of structural integrity analysis.

---

## 20. Zombie Conditions

A **zombie condition** occurs when an element remains operational, addressable or executable after the source, lifecycle, dependency or context that should sustain it has become invalid.

Examples include:

- an inactive component continuing to emit commands;
- a terminated workflow continuing to execute;
- a removed dependency continuing to be treated as available;
- a stale controller continuing to issue actions.

Zombie conditions are particularly important because they can produce apparently valid but uncontrolled system behaviour.

---

## 21. Abnormal Conditions

Phase 2 must explicitly consider observable abnormal conditions.

These may include:

- inconsistent state;
- stale state;
- missing state;
- contradictory observations;
- invalid transitions;
- broken dependencies;
- communication loss;
- excessive latency;
- repeated commands;
- missing feedback;
- unexpected activation;
- uncontrolled execution;
- resource exhaustion; and
- fault propagation.

The purpose is not to eliminate every abnormal condition.

The purpose is to detect, classify, contain and evaluate them within defined boundaries.

---

## 22. Fault Analysis

Fault analysis is a first-class engineering concern in Phase 2.

Faults may be introduced deliberately to determine how the CPS behaves under:

- component failure;
- sensor failure;
- actuator failure;
- communication failure;
- computation failure;
- dependency failure;
- stale data;
- invalid data;
- timing delay;
- resource unavailability;
- model degradation;
- configuration error; and
- environmental disturbance.

Fault testing must remain controlled and observable.

---

## 23. Resilience Analysis

Resilience analysis evaluates the ability of the CPS to remain bounded and recoverable when subjected to disturbances or faults.

Relevant properties include:

- fault detection;
- fault isolation;
- graceful degradation;
- safe-state transition;
- recovery;
- redundancy where applicable;
- fallback;
- reconfiguration;
- controlled restart;
- loss containment; and
- restoration of normal operation.

The Pilot should implement only the resilience mechanisms required to demonstrate the architecture.

---

## 24. Safety-Oriented Behaviour

Phase 2 must establish that the CPS does not silently transition from a known state into uncontrolled behaviour.

Safety-oriented analysis therefore examines:

~~~text
Observed State
      │
      ▼
Interpretation
      │
      ▼
Decision
      │
      ▼
Control Action
      │
      ▼
Resulting State
      │
      ▼
Safety / Integrity Check
~~~

Where required, unsafe or uncertain conditions must result in controlled escalation, fallback or human intervention.

---

## 25. CPS State Analysis

The CPS state model defines the operational conditions through which the system may transition.

Typical states may include:

- initialization;
- idle;
- sensing;
- processing;
- decision;
- action;
- recovery;
- degraded;
- critical;
- failed; and
- safe state.

The actual state set must be derived from the use case rather than imposed unnecessarily.

---

## 26. CPS Automata

Where useful, Phase 2 may represent CPS behaviour using state-transition models or hybrid/discrete automata.

A simplified irrigation example is:

~~~text
        ┌──────────────┐
        │     IDLE     │
        └──────┬───────┘
               │ demand
               ▼
        ┌──────────────┐
        │    DEMAND    │
        └──────┬───────┘
               │ approve
               ▼
        ┌──────────────┐
        │  IRRIGATING  │
        └──────┬───────┘
               │ complete
               ▼
        ┌──────────────┐
        │   RECOVERY   │
        └──────┬───────┘
               │ stable
               └────────► IDLE

Fault paths:
low flow       ─────► DEGRADED
pump failure   ─────► CRITICAL
major failure  ─────► CATASTROPHIC / SAFE STATE
~~~

This is illustrative rather than a fixed Pilot implementation.

---

## 27. Desired State

The CPS must distinguish between:

- current state;
- desired state;
- deviation;
- decision;
- commanded action;
- observed action; and
- resulting state.

The general control relationship is:

~~~text
Desired State
      │
      ▼
Current State
      │
      ▼
Deviation
      │
      ▼
Decision / Policy
      │
      ▼
Control Action
      │
      ▼
Emulated / Simulated Response
      │
      ▼
New State
      │
      └──────── Feedback ────────►
~~~

This distinction is fundamental to closed-loop CPS analysis.

---

## 28. Calibration

Calibration is the process of adjusting model parameters so that the emulator or model reproduces an accepted reference behaviour within defined limits.

Calibration may involve:

- physical parameters;
- timing parameters;
- environmental parameters;
- sensor characteristics;
- actuator characteristics;
- communication characteristics;
- failure parameters; and
- other model parameters.

Calibration must not become unlimited curve fitting.

---

## 29. Fidelity

Fidelity determines how closely an emulator reproduces the relevant characteristics of the target.

Phase 2 may evaluate:

- functional fidelity;
- state fidelity;
- behavioural fidelity;
- temporal fidelity;
- interface fidelity;
- environmental fidelity;
- constraint fidelity;
- stochastic/noise fidelity;
- fault fidelity; and
- control-response fidelity.

Fidelity requirements must be proportional to the experiment being conducted.

---

## 30. Structural Integrity vs Fidelity vs Simulation Validity

These are separate quality dimensions.

~~~text
Structural Integrity
"Is the system correctly constructed?"
        │
        ▼
Emulation Fidelity
"Does the emulator reproduce the target adequately?"
        │
        ▼
Simulation Validity
"Are the experimental assumptions and results valid?"
        │
        ▼
CPS / QAI Result
~~~

A structurally correct emulator can still have inadequate fidelity.

A high-fidelity emulator can still be used in an invalid simulation scenario.

Therefore Phase 2 must preserve these distinctions throughout testing and validation.
---
## 31. Emulator as an Independent CPS Subsystem

The Emulator is a first-class CPS subsystem.

It must have:

- its own architecture;
- its own models;
- its own state;
- its own interfaces;
- its own execution lifecycle;
- its own fault model;
- its own validation criteria; and
- its own test suite.

The Emulator must be capable of being tested without requiring the Simulator.

---

## 32. Simulator as an Independent CPS Subsystem

The Simulator is also a first-class CPS subsystem.

It must have:

- its own simulation environment;
- its own models;
- its own scenarios;
- its own parameters;
- its own execution model;
- its own open-loop execution;
- its own closed-loop execution; and
- its own validation criteria.

The Simulator must be capable of being tested without requiring the Emulator.

---

## 33. Peer Subsystem Relationship

The intended relationship is:

~~~text
              ┌──────────────────┐
              │      Emulator    │
              └────────┬─────────┘
                       │
                 Controlled
                  Interface
                       │
              ┌────────┴─────────┐
              │                  │
              ▼                  ▼
        ┌───────────┐      ┌───────────┐
        │ Simulator │      │ QAI       │
        └───────────┘      │ Pipeline  │
                           └───────────┘
~~~

The diagram represents possible controlled interactions, not a mandatory execution sequence.

Neither Emulator nor Simulator owns the other.

---

## 34. Why Separation Matters

The separation allows the engineering team to determine whether an observed result originates from:

- the emulator;
- the simulator;
- the CPS model;
- the QAI pipeline;
- the interface;
- the state model;
- the communication path;
- the computational path;
- the sensing path; or
- their integration.

Without this separation, an integration failure can be incorrectly attributed to an individual subsystem.

---

## 35. Independent Emulator–QAI Testing

The architecture must support a direct:

~~~text
Emulator
    │
    ▼
QAI Pipeline
    │
    ▼
Result
~~~

test.

This allows the team to evaluate whether QAI algorithms can consume emulator-generated observations, state and behaviour outputs without requiring the Simulator.

The test may be open-loop or closed-loop depending on the experiment.

---

## 36. Independent Simulator–QAI Testing

The architecture must also support:

~~~text
Simulator
    │
    ▼
QAI Pipeline
    │
    ▼
Result
~~~

This allows scenario exploration and QAI evaluation without introducing emulator dependencies.

The resulting evidence must remain distinguishable from emulator-derived evidence.

---

## 37. Emulator–Simulator Integration

Where required, the two subsystems may be integrated through explicit interfaces:

~~~text
Emulator
    │
    │ state / observations /
    │ behaviour / events
    ▼
Simulator
    │
    │ scenario / perturbation /
    │ predicted response
    ▼
QAI Pipeline
~~~

Such integration is an experiment configuration rather than an architectural merger.

---

## 38. Closed-Loop Emulator Testing

A closed-loop emulator test may use:

~~~text
Emulator State
      │
      ▼
Observation
      │
      ▼
QAI / Classical Decision
      │
      ▼
Control Action
      │
      ▼
Emulator
      │
      ▼
New State
      │
      └──────── Feedback ────────►
~~~

This evaluates the interaction between reproduced target behaviour and the decision/control pipeline.

---

## 39. Closed-Loop Simulation Testing

A corresponding simulation test may use:

~~~text
Simulation State
      │
      ▼
Scenario / Observation
      │
      ▼
QAI / Classical Decision
      │
      ▼
Policy / Control Action
      │
      ▼
Simulator
      │
      ▼
New Simulated State
      │
      └──────── Feedback ────────►
~~~

This evaluates behaviour under controlled experimental conditions.

---

## 40. Mixed Emulator–Simulator–QAI Testing

A more advanced experiment may combine the two:

~~~text
                ┌──────────────┐
                │   Emulator   │
                └──────┬───────┘
                       │
                       ▼
                ┌──────────────┐
                │   Simulator  │
                └──────┬───────┘
                       │
                       ▼
                  QAI Pipeline
                       │
                       ▼
                  CPS Control
                       │
                       └──────────►
                       Emulator /
                       Simulator
~~~

The exact direction and semantics of exchange must be explicitly defined by the integration contract.

---

## 41. Open-Loop Testing

Open-loop testing evaluates a subsystem without feeding its resulting output back into the source system.

Examples include:

- emulator observation → QAI → result;
- simulator scenario → QAI → result;
- emulator state → analysis → result;
- simulator perturbation → analysis → result.

Open-loop testing provides controlled evidence before closed-loop complexity is introduced.

---

## 42. Closed-Loop Testing

Closed-loop testing introduces feedback between observation, decision, action and resulting state.

It is required to evaluate:

- state transitions;
- control behaviour;
- feedback;
- stability;
- response timing;
- fault response;
- policy behaviour;
- QAI decisions;
- fallback behaviour; and
- recovery.

Closed-loop results must not be inferred solely from open-loop tests.

---

## 43. Progressive Test Composition

Phase 2 testing should progress from simple to integrated configurations.

~~~text
Unit
  │
  ▼
Subsystem
  │
  ▼
Interface
  │
  ▼
Integration
  │
  ▼
Closed Loop
  │
  ▼
Fault / Resilience
  │
  ▼
End-to-End
  │
  ▼
Physical / HIL Validation
~~~

Each level should add controlled complexity.

---

## 44. Unit Testing

Unit tests validate individual implementation units.

Examples include:

- state transitions;
- model calculations;
- interface serialization;
- parameter validation;
- sensor transformations;
- actuator response functions;
- QAI function execution;
- fault injection functions.

Unit testing is necessary but insufficient for CPS assurance.

---

## 45. Subsystem Testing

Subsystem tests validate an entire independently defined subsystem.

Examples include:

- complete Emulator;
- complete Simulator;
- QAI pipeline;
- CPS state engine;
- structural integrity engine;
- calibration mechanism.

The objective is to establish that each subsystem works within its own defined boundary.

---

## 46. Interface Testing

Interface tests validate the contracts between subsystems.

They examine:

- data structure;
- identity;
- semantics;
- timing;
- state;
- commands;
- observations;
- events;
- errors;
- version compatibility;
- resource information; and
- failure responses.

Interface testing is particularly important because CPS failures frequently emerge at subsystem boundaries.

---

## 47. Integration Testing

Integration testing combines independently tested subsystems.

Examples include:

~~~text
Emulator + QAI
Simulator + QAI
CPS + QAI
Emulator + Simulator
Emulator + CPS + QAI
Simulator + CPS + QAI
Three Paths + CPS + QAI
~~~

Integration tests are expected to expose design limitations that may remain invisible during unit or subsystem testing.

---

## 48. Three-Path Test Matrix

The three paths must be evaluated independently and in combination.

A conceptual matrix is:

| Test Dimension | Sensing | Computational | Communication |
|---|---:|---:|---:|
| Unit | ✓ | ✓ | ✓ |
| Subsystem | ✓ | ✓ | ✓ |
| Interface | ✓ | ✓ | ✓ |
| Integration | ✓ | ✓ | ✓ |
| Open Loop | ✓ | ✓ | ✓ |
| Closed Loop | ✓ | ✓ | ✓ |
| Fault | ✓ | ✓ | ✓ |
| Resilience | ✓ | ✓ | ✓ |

The actual Pilot matrix may contain only the tests necessary for the selected irrigation use case.

---

## 49. Computational Test Classes

Phase 2 treats computational approaches as alternative performance-test classes.

The initial classes are:

1. Classical
2. Quantum-Inspired
3. Hybrid QAI
4. Quantum

These are alternatives to be evaluated against the same problem definition and constraints where applicable.

---

## 50. Comparative Computational Evaluation

The objective is not to assume that quantum computation is superior.

Instead:

~~~text
Same Problem
      │
      ├──► Classical
      │
      ├──► Quantum-Inspired
      │
      ├──► Hybrid QAI
      │
      └──► Quantum
             │
             ▼
       Common Evaluation
             │
             ▼
     Comparative Results
             │
             ▼
       Best Suitable
          Approach
~~~

The preferred approach is the one that provides the best measurable result within the applicable constraints and tolerance.

---

## 51. QAI Pipeline Independence

The QAI Pipeline must remain independently testable from both Emulator and Simulator.

It should be possible to provide controlled input datasets or states to the QAI pipeline without requiring a live CPS environment.

This enables:

- algorithm testing;
- benchmark testing;
- regression testing;
- resource testing;
- classical/QAI comparison;
- quantum-backend experiments; and
- reproducibility.

---

## 52. QAI with Emulator

The Emulator provides a controlled source of target-like observations and state.

The QAI pipeline consumes these through an explicit interface.

This enables experiments such as:

- anomaly detection;
- prediction;
- optimization;
- policy evaluation;
- control recommendation;
- resource optimization; and
- adaptive decision-making.

The QAI pipeline must not silently modify emulator truth.

---

## 53. QAI with Simulator

The Simulator provides controlled experimental conditions.

QAI may therefore be evaluated against:

- parameter variations;
- environmental changes;
- perturbations;
- alternative policies;
- what-if scenarios;
- optimization objectives; and
- stress conditions.

This provides a broader experimental space than nominal emulation alone.

---

## 54. Hardware-in-the-Loop and Software-in-the-Loop

Phase 2 must support future progression toward:

- Software-in-the-Loop (SIL);
- Hardware-in-the-Loop (HIL);
- external compute-in-the-loop;
- external AI service-in-the-loop;
- HPC-in-the-loop;
- quantum-backend-in-the-loop; and
- physical-asset validation.

These are integration configurations rather than replacements for the core Emulator or Simulator architecture.

---

## 55. External AI Facilities

An external AI server may participate in an experiment through a controlled interface.

~~~text
Emulator / Simulator
        │
        ▼
Controlled AI Interface
        │
        ▼
External AI Server
        │
        ▼
Result / Recommendation
        │
        ▼
CPS Experiment
~~~

The external facility must remain independently identifiable and observable.

---

## 56. External HPC Facilities

An HPC cluster may provide computational resources for experiments that exceed the local Pilot environment.

~~~text
Experiment
    │
    ▼
Resource Selection
    │
    ▼
HPC Interface
    │
    ▼
HPC Cluster
    │
    ▼
Result
    │
    ▼
QAI / CPS Evaluation
~~~

The architecture must not assume a particular HPC technology or provider.

---

## 57. Quantum Backend Integration

Quantum backends may participate in selected QAI experiments.

A conceptual flow is:

~~~text
Problem
   │
   ▼
QAI Representation
   │
   ▼
Quantum Execution Interface
   │
   ▼
Quantum Backend
   │
   ▼
Measurement / Result
   │
   ▼
Evaluation
~~~

The quantum backend may be local, remote, cloud-based or provided by an external facility.

---

## 58. Backend Independence

The QAI architecture must not embed assumptions about a particular quantum backend.

Backend-dependent characteristics should be represented through controlled interfaces and resource metadata such as:

- available qubits;
- execution limits;
- queue conditions;
- supported operations;
- fidelity information;
- latency;
- cost;
- shots;
- connectivity;
- calibration status; and
- availability.

---

## 59. External Resource Failure

External facilities must be treated as potentially unavailable.

Examples include:

- AI server unavailable;
- HPC queue unavailable;
- quantum backend unavailable;
- network interruption;
- authentication failure;
- execution timeout;
- resource exhaustion;
- backend capacity reduction; or
- unexpected result.

The CPS experiment must have an explicitly defined response.

---

## 60. Fallback

Where appropriate, an experiment may use:

~~~text
Preferred Resource
      │
      ├── Available ─────► Execute
      │
      └── Unavailable
              │
              ▼
       Alternative Resource
              │
              ▼
        Classical / HPC
           Fallback
~~~

Fallback must not silently change the meaning of an experiment.

The execution record must identify which computational path actually executed.

---

## 61. Resource-Aware Experimentation

Phase 2 experiments may consider:

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
- queue time;
- budget;
- shots; and
- confidence/fidelity constraints.

Resource information is part of experiment evidence when it affects the result.

---

## 62. Structural Integrity and Resource Dependencies

Structural integrity analysis must include required execution dependencies.

For example:

~~~text
CPS Experiment
     │
     ├── Model
     ├── Data
     ├── QAI Pipeline
     ├── Network
     ├── Compute Resource
     └── External Backend
              │
              ▼
       Dependency Check
              │
       ┌──────┴──────┐
       ▼             ▼
     Valid          Invalid
       │             │
       ▼             ▼
    Execute        Block /
                   Diagnose
~~~

This prevents resource failures from being mistaken for model or algorithm failures.

---

## 63. Runtime Sanity

Structural integrity is primarily concerned with whether the environment is correctly constructed.

Runtime sanity is concerned with whether the environment remains healthy during execution.

Runtime checks may include:

- heartbeat;
- state freshness;
- telemetry validity;
- execution status;
- dependency health;
- timing;
- resource availability;
- unexpected transitions;
- contradictory observations; and
- abnormal feedback.

This distinction should remain explicit.

---

## 64. Fault Injection

Fault injection provides controlled mechanisms for deliberately introducing abnormal conditions.

Examples include:

- sensor dropout;
- actuator failure;
- communication loss;
- packet delay;
- stale data;
- incorrect state;
- compute failure;
- external backend timeout;
- resource exhaustion;
- model parameter disturbance;
- dependency removal; and
- unexpected state transition.

Fault injection must be reproducible and bounded.

---

## 65. Fault Containment

A fault must not automatically propagate throughout the entire CPS.

The architecture should identify:

- fault source;
- affected component;
- affected relationships;
- propagation path;
- detection mechanism;
- containment boundary;
- resulting state;
- recovery mechanism; and
- residual risk.

This creates an evidence chain from fault introduction to observed outcome.

---

## 66. Resilience Testing

Resilience testing evaluates behaviour after faults or disturbances.

Representative outcomes include:

- continued operation;
- degraded operation;
- safe-state transition;
- fallback;
- recovery;
- controlled restart;
- isolation;
- human escalation; or
- experiment termination.

The expected response must be defined before the test where practical.

---

## 67. Reliability and Availability

Reliability and availability may be evaluated where relevant to the CPS use case.

Potential measures include:

- successful execution probability;
- failure frequency;
- recovery time;
- service availability;
- communication availability;
- compute availability;
- resource availability; and
- sustained operation.

These metrics support engineering assurance but should not overwhelm the minimum Pilot objective.

---

## 68. Resilience vs Reliability

Reliability and resilience are related but distinct.

**Reliability** asks whether the system performs without failure over a defined period or workload.

**Resilience** asks how the system behaves when disruption or failure occurs and how effectively it detects, contains and recovers.

Both may be relevant to CPS structural analysis.

---

## 69. Structural Analysis Evidence

Every significant structural analysis should produce evidence sufficient to answer:

- What structure was tested?
- Which version was tested?
- Which components participated?
- Which relationships participated?
- Which paths participated?
- Which dependencies were available?
- Which faults were introduced?
- Which conditions were used?
- What was observed?
- What thresholds applied?
- What abnormal conditions occurred?
- How were they handled?
- What was the final outcome?

This makes structural analysis auditable and reproducible.

---

## 70. Safety Boundary

Phase 2 experiments must operate within explicitly defined safety boundaries.

The system must distinguish between:

- permitted experiment;
- degraded but bounded behaviour;
- critical behaviour;
- unsafe behaviour;
- uncontrolled behaviour; and
- experiment termination condition.

A test must stop or transition to a defined safe state when its safety boundary is exceeded.

---

## 71. Human Oversight

Human oversight may be required for:

- critical faults;
- safety-relevant decisions;
- uncertain model behaviour;
- experimental boundary changes;
- external resource authorization;
- physical hardware connection;
- HIL activation; and
- promotion toward physical validation.

The Pilot should favour controlled and supervised experimentation rather than unrestricted automation.

---

## 72. AI Assistance

AI may assist structural analysis by:

- detecting anomalies;
- classifying states;
- identifying suspicious transitions;
- identifying likely faults;
- recommending scenarios;
- suggesting calibration parameters;
- detecting drift;
- ranking risks; and
- recommending corrective actions.

AI assistance does not replace formal structural checks or validation.

---

## 73. Controlled Automation

Automation may be progressively introduced:

~~~text
Human Only
    │
    ▼
AI Assisted
    │
    ▼
Human + AI Augmentation
    │
    ▼
Supervised Automation
    │
    ▼
High-Confidence Automation
~~~

The Pilot should use the maturity level appropriate to the risk of the experiment.

---

## 74. Phase 2 Quality Principle

The central quality principle is:

> **An executable CPS is not necessarily a valid CPS.**

Execution proves that software executed.

It does not by itself prove:

- structural integrity;
- behavioural correctness;
- emulator fidelity;
- simulation validity;
- safe state transitions;
- resilience;
- QAI suitability; or
- physical relevance.

Phase 2 therefore establishes evidence across these separate dimensions before progression to Phase 3.
---
## 75. Phase 2 Scope Boundary

Phase 2 is responsible for creating the experimental and engineering foundation required to evaluate CPS behaviour before production realization.

It includes:

- emulation;
- simulation;
- CPS state modelling;
- CPS workflows;
- structural integrity;
- calibration;
- fidelity;
- operating conditions;
- fault analysis;
- resilience analysis;
- QAI experimentation;
- integration testing; and
- validation preparation.

It does not require production-scale infrastructure.

---

## 76. Pilot Execution Boundary

The minimum Pilot remains executable within:

- laptop compute;
- local software;
- virtual assets;
- emulated assets;
- simulated environments;
- controlled datasets;
- local QAI pipelines; and
- controlled external interfaces where available.

Physical hardware is not a prerequisite for completing the Pilot.

---

## 77. Future Physical Extension

The Phase 2 architecture must nevertheless support later connection to:

- real sensors;
- real actuators;
- controllers;
- edge devices;
- IoT equipment;
- laboratory equipment;
- agricultural machinery; and
- other physical CPS components.

This is achieved through stable interfaces rather than redesigning the conceptual model.

---

## 78. Software-in-the-Loop

Software-in-the-Loop (SIL) is a natural extension of the Pilot environment.

A SIL configuration may connect:

~~~text
Virtual / Emulated CPS
          │
          ▼
Software Controller
          │
          ▼
QAI / AI / Classical Logic
          │
          ▼
Emulated Response
          │
          └──────── Feedback ────────►
~~~

SIL allows control and decision software to be tested before physical hardware is introduced.

---

## 79. Hardware-in-the-Loop

Hardware-in-the-Loop (HIL) may be introduced when the project requires physical component validation.

A HIL configuration may contain:

~~~text
Emulated Environment
        │
        ▼
Real Controller / Device
        │
        ▼
Real Interface
        │
        ▼
Emulated Physical Response
        │
        └──────── Feedback ────────►
~~~

HIL must be treated as an explicit integration configuration with defined safety and isolation boundaries.

---

## 80. Physical Asset Validation

Physical asset validation extends the evidence chain from virtual and emulated behaviour toward measured physical behaviour.

The progression is:

~~~text
Virtual Model
     │
     ▼
Emulator
     │
     ▼
Simulation
     │
     ▼
SIL
     │
     ▼
HIL
     │
     ▼
Physical Asset
     │
     ▼
Field Validation
~~~

Not every project must traverse every stage.

The required stage depends on risk, purpose, evidence requirements and project maturity.

---

## 81. Emulator-to-Physical Comparison

Where physical measurements become available, they may be compared against emulator outputs.

Comparison may consider:

- state;
- behaviour;
- timing;
- sensor values;
- actuator response;
- communication;
- fault response;
- environmental response; and
- recovery behaviour.

Differences must be classified rather than automatically treated as emulator failure.

---

## 82. Model Refinement Loop

Physical evidence may result in controlled model refinement.

~~~text
Physical Observation
        │
        ▼
Comparison
        │
        ▼
Difference Analysis
        │
        ▼
Parameter / Model Review
        │
        ▼
Controlled Calibration
        │
        ▼
Revalidation
        │
        ▼
Updated Emulator
~~~

Changes must remain versioned and traceable.

---

## 83. Calibration vs Validation

Calibration and validation must remain separate activities.

**Calibration** adjusts the model.

**Validation** evaluates whether the adjusted model satisfies the required evidence and acceptance criteria.

Therefore:

~~~text
Reference Evidence
       │
       ▼
Calibration
       │
       ▼
Candidate Model
       │
       ▼
Validation
       │
   ┌───┴────┐
   ▼        ▼
Accept    Reject /
           Revise
~~~

Validation must not be reduced to confirmation that calibration improved a selected metric.

---

## 84. Drift Analysis

Phase 2 must recognize that emulator and model quality may deteriorate over time.

Potential drift includes:

- state drift;
- behaviour drift;
- model drift;
- interface drift;
- calibration drift;
- parameter drift;
- environmental drift; and
- dependency drift.

Drift detection should identify when previously accepted assumptions may no longer remain valid.

---

## 85. Fidelity Tolerance

Fidelity must be interpreted within an explicitly defined tolerance band.

A model does not need perfect correspondence for every experiment.

Instead:

~~~text
Reference Behaviour
        │
        ▼
Accepted Tolerance Band
   ┌───────────────┐
   │               │
   │   Emulator    │
   │   Behaviour   │
   │               │
   └───────────────┘
        │
        ▼
Within / Outside
Tolerance
~~~

The tolerance must be appropriate to the purpose and risk of the experiment.

---

## 86. Experimental Conditions

Phase 2 supports controlled operating-condition classes.

The baseline classes are:

- **E0 — Nominal**
- **E1 — Perturbed**
- **E2 — Degraded**
- **E3 — Critical**
- **E4 — Catastrophic / Extreme**

These classes describe the condition of the target system or experimental environment.

They do not represent emulator quality.

---

## 87. E0 — Nominal

E0 represents expected operating conditions.

Examples may include:

- normal sensing;
- normal communication;
- normal computation;
- normal resource availability;
- normal environmental conditions; and
- expected control behaviour.

E0 establishes the baseline against which other conditions may be compared.

---

## 88. E1 — Perturbed

E1 introduces controlled deviations from nominal operation.

Examples include:

- moderate environmental changes;
- parameter variation;
- small communication delays;
- sensor noise;
- workload variation; or
- modest resource variation.

The system should remain within its defined operational boundary unless the experiment explicitly tests otherwise.

---

## 89. E2 — Degraded

E2 represents a system operating with reduced capability.

Examples include:

- partial sensor loss;
- degraded communication;
- reduced compute availability;
- actuator performance reduction;
- stale observations;
- increased latency; or
- partial dependency failure.

The objective is to determine whether the CPS degrades in a controlled manner.

---

## 90. E3 — Critical

E3 represents conditions that threaten normal operation.

Examples include:

- major component failure;
- critical communication loss;
- severe resource exhaustion;
- unsafe state deviation;
- significant control failure; or
- critical external dependency loss.

The expected response may include safe-state transition, fallback, isolation or human intervention.

---

## 91. E4 — Catastrophic / Extreme

E4 represents severe conditions beyond normal operational tolerance.

Examples may include:

- multiple simultaneous failures;
- uncontrolled feedback;
- major infrastructure loss;
- catastrophic dependency failure;
- extreme environmental conditions; or
- combinations of faults that exceed normal resilience assumptions.

E4 testing must be carefully controlled and may be restricted to simulation or isolated emulation environments.

---

## 92. Condition Escalation

Conditions may be used progressively:

~~~text
E0 Nominal
     │
     ▼
E1 Perturbed
     │
     ▼
E2 Degraded
     │
     ▼
E3 Critical
     │
     ▼
E4 Catastrophic / Extreme
~~~

The progression is not necessarily automatic.

Each experiment should explicitly define the condition being tested.

---

## 93. Fault Injection and Condition Classes

Fault injection provides mechanisms for creating defined operating conditions.

For example:

~~~text
Sensor Noise
    │
    ▼
E1 Perturbed

Sensor Loss
    │
    ▼
E2 Degraded

Controller Failure
    │
    ▼
E3 Critical

Multiple Dependency Failures
    │
    ▼
E4 Extreme
~~~

The classification must be determined by actual system impact rather than by the fault type alone.

---

## 94. Fault Propagation Analysis

A fault should be analyzed across the CPS structure.

~~~text
Fault Source
     │
     ▼
Affected Element
     │
     ▼
Relationship / Dependency
     │
     ▼
Propagation
     │
     ▼
Affected Path
     │
     ▼
CPS State
     │
     ▼
Observed Outcome
~~~

This helps identify whether a local fault can become a system-level failure.

---

## 95. Fault Containment Boundaries

The architecture should identify boundaries beyond which a fault should not propagate.

Potential boundaries include:

- component;
- subsystem;
- path;
- interface;
- workflow;
- resource;
- external facility;
- control domain; and
- physical boundary.

Containment effectiveness should be measurable where relevant.

---

## 96. Cascading Failure Analysis

Phase 2 should support analysis of cascading failures.

A cascading failure may occur when:

~~~text
Initial Fault
     │
     ▼
Component Failure
     │
     ▼
Dependency Failure
     │
     ▼
Secondary Fault
     │
     ▼
Control / State Deviation
     │
     ▼
System-Level Consequence
~~~

The objective is to identify vulnerable dependency chains before they reach physical deployment.

---

## 97. Uncontrolled Behaviour

Uncontrolled behaviour is a high-priority CPS integrity concern.

Examples include:

- commands continuing after shutdown;
- repeated control actions;
- oscillating control;
- invalid state transitions;
- feedback amplification;
- execution without valid observations;
- action after dependency loss; and
- conflicting controllers issuing simultaneous commands.

Such behaviour must be observable and classified.

---

## 98. Feedback Stability

Closed-loop experiments should evaluate whether feedback remains bounded for the applicable model and operating condition.

The analysis may consider:

- oscillation;
- divergence;
- delayed response;
- overshoot;
- repeated action;
- saturation;
- unstable transitions; and
- recovery.

The exact mathematical stability criteria depend on the selected CPS model.

---

## 99. Communication Faults

Communication faults are part of CPS structural analysis.

Relevant conditions include:

- packet loss;
- message duplication;
- message reordering;
- latency;
- timeout;
- disconnection;
- bandwidth reduction;
- stale messages; and
- unavailable communication endpoints.

These faults may affect both the communication path and the resulting control behaviour.

---

## 100. Computational Faults

Computational faults may include:

- unavailable compute;
- excessive execution time;
- failed process;
- incorrect result;
- resource exhaustion;
- queue delay;
- external service timeout;
- QPU unavailability;
- HPC unavailability; and
- AI service failure.

The architecture must distinguish a computational-resource failure from a model or algorithm failure.

---

## 101. Sensing Faults

Sensing faults may include:

- missing observation;
- stale observation;
- noisy observation;
- biased observation;
- contradictory observations;
- invalid range;
- sensor failure; and
- calibration degradation.

The system should identify whether a decision was made using valid, uncertain or invalid sensing information.

---

## 102. Actuation Faults

Actuation faults may include:

- command rejection;
- delayed actuation;
- partial actuation;
- incorrect actuation;
- actuator unavailability;
- repeated actuation; and
- actuator failure.

The CPS must distinguish the **commanded action** from the **observed physical or emulated response**.

---

## 103. State Contradiction

A state contradiction occurs when two or more sources assert incompatible state information.

Examples include:

- controller says active while asset registry says inactive;
- sensor says normal while fault monitor says failed;
- workflow says complete while execution remains active;
- external resource reports unavailable while the runtime treats it as available.

Contradictions must be detected and resolved or escalated.

---

## 104. Stale State

Stale state occurs when information remains technically available but is too old to support the intended decision.

Freshness therefore becomes part of CPS correctness.

A state record should be evaluated in terms of:

- timestamp;
- age;
- expected update interval;
- source;
- confidence;
- validity; and
- decision relevance.

---

## 105. Dependency Integrity

Every executable component should have its required dependencies explicitly represented.

Dependencies may include:

- data;
- models;
- services;
- compute;
- network;
- storage;
- QAI pipeline;
- external backend;
- state;
- configuration; and
- human authorization.

Missing dependencies should be detected before they produce unexplained runtime behaviour.

---

## 106. External Facility Integrity

External AI, HPC and quantum facilities are part of the experimental dependency graph when used.

The experiment should know:

- which facility was used;
- which endpoint was used;
- which resource was selected;
- when it was available;
- which configuration was supplied;
- which result was returned;
- whether execution succeeded; and
- whether fallback occurred.

This is essential for reproducibility.

---

## 107. External Facility Isolation

External facilities should not receive uncontrolled CPS state or commands.

The interface should establish:

- allowed inputs;
- allowed outputs;
- identity;
- authorization;
- resource scope;
- data boundary;
- execution boundary;
- timeout;
- error handling; and
- termination behaviour.

External integration must therefore be controlled rather than transparent or unrestricted.

---

## 108. Data Sovereignty

Phase 2 experiments must preserve applicable data-sovereignty boundaries.

Where external facilities are used, the system should know:

- what data leaves the local environment;
- where it is processed;
- what data returns;
- what is retained;
- what is transformed; and
- what restrictions apply.

The Pilot should use suitable synthetic, anonymized or permitted data where external execution requires it.

---

## 109. Security Boundary

Security must be considered as part of CPS structural integrity.

Relevant controls include:

- identity;
- authentication;
- authorization;
- interface protection;
- endpoint isolation;
- credential management;
- execution permissions;
- data protection;
- auditability; and
- secure termination.

Security mechanisms should be proportionate to the Pilot environment.

---

## 110. Experiment Isolation

Experiments should be isolated sufficiently to prevent one experiment from unintentionally changing another.

Isolation may apply to:

- state;
- configuration;
- models;
- scenarios;
- resources;
- external services;
- credentials;
- logs;
- outputs; and
- generated results.

This is especially important when multiple QAI experiments use the same external facilities.

---

## 111. Reproducible Experiment Configuration

A Phase 2 experiment should be reproducible from its recorded configuration.

Relevant information includes:

- model version;
- asset version;
- relationship version;
- mapping version;
- scenario;
- parameters;
- operating condition;
- QAI pipeline;
- algorithm class;
- resource;
- random seed where applicable;
- execution configuration;
- input data; and
- acceptance criteria.

---

## 112. Experiment Identity

Every significant experiment should have a unique identity.

The identity should allow the team to associate:

~~~text
Experiment
   │
   ├── Configuration
   ├── Models
   ├── Assets
   ├── Scenario
   ├── Resources
   ├── Execution
   ├── Observations
   ├── Faults
   ├── Results
   └── Evidence
~~~

This creates traceability across the complete experiment lifecycle.

---

## 113. Experiment Lineage

Experiment lineage records how an experiment was derived.

Examples include:

- baseline experiment;
- modified scenario;
- new model version;
- calibrated model;
- new QAI algorithm;
- changed resource;
- changed condition;
- changed control policy; or
- repeat experiment.

Lineage enables meaningful comparison between results.

---

## 114. Experiment Repetition

Experiments should be repeatable where stochastic behaviour, QAI execution or external resources can influence results.

Repeated execution may be required to evaluate:

- variance;
- stability;
- confidence;
- repeatability;
- sensitivity;
- resource variation; and
- stochastic outcomes.

A single result should not automatically be treated as definitive evidence.

---

## 115. Baseline Comparison

Phase 2 preserves the Phase 0 principle of comparing alternatives against a defined baseline.

The baseline may be:

- existing classical logic;
- deterministic control;
- current policy;
- reference model;
- existing algorithm; or
- accepted benchmark.

QAI results must be interpreted relative to the appropriate baseline.

---

## 116. QAI Evaluation Boundary

QAI is an experimental computational capability within Phase 2.

It may support:

- prediction;
- optimization;
- classification;
- anomaly detection;
- policy selection;
- control;
- resource allocation;
- parameter estimation;
- surrogate modelling; and
- other approved functions.

The specific capability depends on the Pilot problem.

---

## 117. QAI Does Not Define CPS Truth

QAI may interpret, predict, optimize or recommend.

It must not silently redefine:

- asset identity;
- physical state;
- system topology;
- safety boundaries;
- authoritative observations; or
- validated physical relationships.

Any change to a structural or physical assumption must pass through the appropriate controlled model, configuration or validation process.

---

## 118. QAI and Fault Conditions

QAI may be evaluated under different operating conditions.

For example:

~~~text
          ┌───────────────┐
          │ QAI Pipeline  │
          └───────┬───────┘
                  │
       ┌──────────┼──────────┐
       ▼          ▼          ▼
      E0         E2         E3
    Nominal    Degraded   Critical
       │          │          │
       └──────────┼──────────┘
                  ▼
          Comparative Result
~~~

This helps determine whether an algorithm remains useful as system conditions deteriorate.

---

## 119. QAI Resource Failure

A QAI experiment must account for the possibility that its preferred execution resource is unavailable.

Examples include:

- unavailable QPU;
- queue delay;
- backend timeout;
- unsupported operation;
- insufficient memory;
- insufficient compute;
- external service failure.

The experiment should record whether the result was produced by the intended execution class or by a fallback.

---

## 120. QAI Advantage Gate

The Advantage Gate remains the decision point for determining whether a quantum or QAI approach provides sufficient measurable benefit to justify its use.

The evaluation should consider:

- solution quality;
- execution time;
- resource usage;
- cost;
- scalability;
- confidence;
- fidelity;
- robustness;
- operational suitability; and
- value.

The gate must not assume quantum advantage in advance.
---
## 121. Classical, Quantum-Inspired, Hybrid and Quantum Execution

Phase 2 treats the following as distinct computational performance-test classes:

- Classical;
- Quantum-Inspired;
- Hybrid QAI; and
- Quantum.

These classes may be evaluated against the same problem definition, data, constraints and objective wherever technically applicable.

The purpose is comparative engineering evaluation rather than technology preference.

---

## 122. Common Problem Definition

Comparative experiments should begin from a common problem definition.

The common definition should specify:

- problem;
- objective;
- input data;
- constraints;
- expected output;
- acceptance criteria;
- applicable tolerance;
- resource boundary; and
- measurement criteria.

This prevents differences in problem formulation from being mistaken for computational advantage.

---

## 123. Classical Reference

The Classical pipeline provides a reference implementation where appropriate.

It may use:

- conventional algorithms;
- deterministic methods;
- statistical methods;
- machine learning;
- numerical methods;
- optimization;
- control algorithms; and
- available CPU/GPU/NPU/HPC resources.

The classical implementation provides an important baseline for QAI evaluation.

---

## 124. Quantum-Inspired Reference

Quantum-Inspired approaches may use classical hardware and algorithms inspired by quantum principles or representations.

They may be useful when:

- quantum hardware is unavailable;
- problem structure benefits from quantum-inspired methods;
- computational experimentation is required before QPU execution; or
- a classical approximation provides a useful benchmark.

Quantum-Inspired execution must remain identifiable as a separate computational class.

---

## 125. Hybrid QAI

Hybrid QAI combines classical and quantum or quantum-inspired processing according to the experiment.

A conceptual architecture is:

~~~text
Problem
   │
   ▼
Classical Pre-processing
   │
   ▼
Quantum / QAI Processing
   │
   ▼
Classical Post-processing
   │
   ▼
Result
~~~

The actual division of work depends on the selected algorithm and execution environment.

---

## 126. Quantum Execution

Quantum execution uses a quantum processing resource where the experiment requires it.

The quantum resource may be:

- local;
- remote;
- cloud-hosted;
- laboratory-based; or
- provided by an external QAI facility.

The architecture must remain independent of the specific quantum technology.

---

## 127. Common Evaluation Framework

All applicable computational classes should be evaluated using common measurements.

Potential measures include:

- solution quality;
- execution time;
- total elapsed time;
- resource consumption;
- cost;
- scalability;
- reliability;
- repeatability;
- confidence;
- constraint satisfaction;
- robustness; and
- value.

Not every metric is required for every experiment.

---

## 128. Computational Experiment Matrix

A typical comparison may be represented as:

| Dimension | Classical | Quantum-Inspired | Hybrid QAI | Quantum |
|---|---:|---:|---:|---:|
| Problem quality | ✓ | ✓ | ✓ | ✓ |
| Execution time | ✓ | ✓ | ✓ | ✓ |
| Resource use | ✓ | ✓ | ✓ | ✓ |
| Cost | ✓ | ✓ | ✓ | ✓ |
| Scalability | ✓ | ✓ | ✓ | ✓ |
| Robustness | ✓ | ✓ | ✓ | ✓ |
| Repeatability | ✓ | ✓ | ✓ | ✓ |
| Value | ✓ | ✓ | ✓ | ✓ |

The actual evaluation matrix is experiment-specific.

---

## 129. Open-Loop Computational Testing

Each computational class should first be testable in an open-loop configuration where appropriate.

~~~text
Input
  │
  ▼
Computational Pipeline
  │
  ▼
Output
  │
  ▼
Evaluation
~~~

This isolates computational performance from CPS feedback effects.

---

## 130. Closed-Loop Computational Testing

The same computational class may then participate in a CPS feedback loop.

~~~text
CPS State
    │
    ▼
Observation
    │
    ▼
Computational Pipeline
    │
    ▼
Decision
    │
    ▼
Control Action
    │
    ▼
CPS State
    │
    └──────── Feedback ────────►
~~~

Closed-loop performance must be evaluated independently from open-loop performance.

---

## 131. Emulator QAI Experiment

An Emulator + QAI experiment evaluates QAI using reproduced target behaviour.

~~~text
Emulator
   │
   ▼
Observation / State
   │
   ▼
QAI Pipeline
   │
   ▼
Decision / Result
~~~

The experiment should record emulator version, QAI version and configuration.

---

## 132. Simulator QAI Experiment

A Simulator + QAI experiment evaluates QAI under controlled experimental conditions.

~~~text
Simulation Scenario
        │
        ▼
Simulated State
        │
        ▼
QAI Pipeline
        │
        ▼
Decision / Result
~~~

The scenario and parameter configuration must be recorded.

---

## 133. Emulator QAI Closed Loop

The Emulator may participate in a closed-loop QAI experiment:

~~~text
Emulator
   │
   ▼
Observation
   │
   ▼
QAI Decision
   │
   ▼
Control Action
   │
   ▼
Emulator
   │
   ▼
New State
   │
   └──────── Feedback ────────►
~~~

This evaluates QAI against target-representative behaviour.

---

## 134. Simulator QAI Closed Loop

The Simulator may independently participate in a closed-loop QAI experiment:

~~~text
Simulator
   │
   ▼
Observation
   │
   ▼
QAI Decision
   │
   ▼
Control / Policy
   │
   ▼
Simulator
   │
   ▼
New Scenario State
   │
   └──────── Feedback ────────►
~~~

This evaluates QAI under intentionally controlled conditions.

---

## 135. Three-Path Computational Testing

Computational experiments must be capable of exercising the three paths.

The paths are:

~~~text
Sensing
   │
   ▼
Computational
   │
   ▼
Communication
~~~

Each path should have independent observations and failure conditions where relevant.

---

## 136. Sensing-Path Testing

Sensing-path tests may evaluate:

- observation acquisition;
- sensor transformation;
- freshness;
- noise;
- missing observations;
- sensor failure;
- data validity; and
- effect on downstream decisions.

QAI may be used to assess or process sensing information, but sensing integrity remains independently testable.

---

## 137. Computational-Path Testing

Computational-path tests may evaluate:

- algorithm execution;
- resource selection;
- execution latency;
- result quality;
- resource failure;
- fallback;
- reproducibility;
- computational scaling; and
- QAI/classical comparison.

Computational-path failure must be distinguishable from sensing or communication failure.

---

## 138. Communication-Path Testing

Communication-path tests may evaluate:

- latency;
- packet loss;
- message ordering;
- duplication;
- timeout;
- disconnection;
- bandwidth limitation;
- stale messages; and
- endpoint availability.

Communication degradation should be observable independently of the computational result.

---

## 139. Integrated Three-Path Testing

After independent path testing, the paths may be combined:

~~~text
Sensors
   │
   ▼
Sensing Path
   │
   ▼
Communication Path
   │
   ▼
Computational / QAI Path
   │
   ▼
Decision
   │
   ▼
Communication Path
   │
   ▼
Actuator
   │
   ▼
Physical / Emulated State
   │
   └──────── Feedback ────────►
~~~

The complete path must be tested as an integrated CPS.

---

## 140. Path Fault Isolation

When an integrated test fails, the architecture should support isolation of the affected path.

For example:

~~~text
Integrated Failure
       │
       ├──► Sensing?
       │
       ├──► Communication?
       │
       ├──► Computation?
       │
       ├──► CPS State?
       │
       ├──► Control?
       │
       └──► Integration?
~~~

This is one of the principal reasons the three paths remain first-class architectural elements.

---

## 141. CPS Workflow Definition

A CPS workflow defines the sequence and relationships between observations, processing, decisions, actions and resulting state.

A generic workflow is:

~~~text
Sense
  ↓
Communicate
  ↓
Contextualise
  ↓
Analyse
  ↓
Decide
  ↓
Act
  ↓
Observe
  └──────────────► Sense
~~~

The actual Pilot workflow must be derived from the irrigation use case.

---

## 142. Open-Loop CPS Workflow

An open-loop workflow may be:

~~~text
Input / Observation
       │
       ▼
Context
       │
       ▼
Analysis
       │
       ▼
Decision
       │
       ▼
Result
~~~

No resulting action is fed back into the originating state during the experiment.

---

## 143. Closed-Loop CPS Workflow

A closed-loop workflow adds feedback:

~~~text
Observation
     │
     ▼
Context
     │
     ▼
Analysis
     │
     ▼
Decision
     │
     ▼
Action
     │
     ▼
Changed State
     │
     ▼
Observation
     │
     └──────────────►
~~~

Closed-loop workflows are required to evaluate dynamic CPS behaviour.

---

## 144. Workflow Preconditions

A workflow should define its preconditions.

Examples include:

- valid state;
- required assets available;
- required data available;
- required relationships valid;
- required interfaces available;
- required resources available;
- safety conditions satisfied; and
- experiment authorized.

A workflow should not begin when mandatory preconditions fail.

---

## 145. Workflow Postconditions

A workflow should define expected postconditions.

Examples include:

- expected state transition;
- completed decision;
- completed action;
- valid result;
- recorded evidence;
- updated state;
- controlled fault response; or
- safe termination.

Postconditions provide evidence that execution completed as intended.

---

## 146. Workflow Failure Handling

A workflow should define what happens when an activity fails.

Possible responses include:

- retry;
- fallback;
- skip;
- degrade;
- isolate;
- escalate;
- transition to safe state; or
- terminate.

The selected response must be appropriate to the activity and risk.

---

## 147. Workflow State

Workflow execution state should be separately identifiable from CPS state.

For example:

~~~text
Workflow State
    │
    ├── Pending
    ├── Running
    ├── Paused
    ├── Completed
    ├── Failed
    ├── Cancelled
    └── Terminated
~~~

CPS state describes the system.

Workflow state describes execution of the workflow.

---

## 148. Scenario Definition

A scenario defines the conditions under which an experiment executes.

A scenario may specify:

- initial state;
- environment;
- assets;
- parameters;
- operating condition;
- perturbations;
- faults;
- policy;
- computational class;
- resource configuration;
- duration; and
- expected outcome.

Scenarios should be versioned.

---

## 149. Scenario Reuse

Scenarios should be reusable across:

- Emulator;
- Simulator;
- classical pipeline;
- quantum-inspired pipeline;
- hybrid QAI pipeline; and
- quantum pipeline,

where the scenario semantics remain compatible.

This allows meaningful comparative evaluation.

---

## 150. Scenario Variants

A base scenario may generate controlled variants.

~~~text
Base Scenario
      │
      ├── Nominal
      ├── Weather Perturbed
      ├── Sensor Degraded
      ├── Communication Delayed
      ├── Compute Limited
      └── Fault Injected
~~~

Each variant should retain lineage to the base scenario.

---

## 151. Parameter Management

Simulation and emulation parameters must be explicitly identified.

Parameters may include:

- physical characteristics;
- behavioural characteristics;
- environmental conditions;
- control parameters;
- timing;
- communication;
- failure;
- recovery;
- resource;
- QAI;
- optimization; and
- tolerance parameters.

Parameter changes should be traceable.

---

## 152. Parameter Sensitivity

Where relevant, Phase 2 may evaluate sensitivity to parameter changes.

Sensitivity analysis helps determine:

- influential parameters;
- stable parameters;
- fragile parameters;
- threshold effects;
- nonlinear effects; and
- conditions requiring further validation.

Sensitivity results should not be confused with emulator fidelity.

---

## 153. Perturbation Model

A perturbation is a controlled modification to an experimental condition.

Perturbations may affect:

- environment;
- state;
- parameters;
- sensing;
- communication;
- computation;
- resources;
- control;
- external dependencies; or
- workload.

Perturbations must have defined bounds.

---

## 154. What-If Analysis

Simulation should support controlled what-if analysis.

Examples include:

- What if soil moisture decreases?
- What if rainfall changes?
- What if communication is delayed?
- What if compute becomes unavailable?
- What if an actuator degrades?
- What if a QPU is unavailable?
- What if a different policy is used?

The objective is to understand consequences before operational deployment.

---

## 155. Stress Testing

Stress testing deliberately moves the system toward challenging operating conditions.

Stress may involve:

- increased workload;
- degraded resources;
- high event rates;
- communication congestion;
- environmental extremes;
- multiple faults; or
- prolonged operation.

Stress tests must remain bounded and observable.

---

## 156. Recovery Testing

Recovery testing evaluates behaviour after a fault or disturbance.

A recovery workflow may be:

~~~text
Fault
  │
  ▼
Detection
  │
  ▼
Classification
  │
  ▼
Containment
  │
  ▼
Recovery / Fallback
  │
  ▼
Validation
  │
  ▼
Normal / Degraded Operation
~~~

Recovery must not be assumed merely because the fault condition disappears.

---

## 157. Safe-State Testing

Where an unsafe condition is detected, the CPS may transition to a defined safe state.

Examples may include:

- stop actuation;
- disable control;
- isolate a failed component;
- switch to fallback;
- request human intervention;
- terminate experiment.

Safe-state behaviour should itself be tested.

---

## 158. Fault Combination Testing

Some system failures emerge only when multiple faults occur simultaneously.

Phase 2 may therefore support controlled combinations such as:

~~~text
Sensor Degradation
        +
Communication Delay
        +
Compute Limitation
        │
        ▼
Combined CPS Condition
        │
        ▼
Behaviour / Resilience Analysis
~~~

Combinations should be selected according to engineering relevance rather than exhaustive enumeration.

---

## 159. Failure Dependency Analysis

The analysis should identify whether one failure increases the likelihood or impact of another.

Examples:

- communication failure → stale state;
- stale state → incorrect decision;
- incorrect decision → incorrect actuation;
- incorrect actuation → degraded physical state.

This creates a causal chain that can be tested and measured.

---

## 160. Resilience Boundary

Every important CPS subsystem should have an identified resilience boundary.

The boundary defines:

- what failures it can tolerate;
- what degraded behaviour is acceptable;
- when fallback is required;
- when human intervention is required; and
- when execution must terminate.

Resilience is therefore evaluated against explicit expectations.

---

## 161. Emulator Integrity Evidence

The Emulator should provide evidence that:

- required components loaded;
- required relationships resolved;
- mappings were valid;
- dependencies were available;
- execution remained within defined boundaries;
- expected state transitions occurred;
- faults were handled as specified; and
- no unexplained abnormal condition remained.

---

## 162. Simulator Integrity Evidence

The Simulator should provide evidence that:

- scenario configuration was valid;
- parameters were accepted;
- initial state was valid;
- perturbations were correctly applied;
- execution remained within scenario boundaries;
- expected outputs were generated; and
- scenario results were reproducible where required.

---

## 163. QAI Integrity Evidence

QAI experiments should provide evidence including:

- algorithm class;
- algorithm/version;
- input representation;
- resource;
- execution configuration;
- execution result;
- timing;
- cost where relevant;
- confidence;
- failures;
- fallback;
- and comparative metrics.

This prevents QAI results from becoming opaque experimental claims.

---

## 164. External Execution Evidence

When an external AI, HPC or quantum resource participates, the evidence should include the external execution context.

Where permitted, this may include:

- facility identity;
- resource identity;
- interface version;
- request configuration;
- execution time;
- queue time;
- result;
- error;
- timeout;
- fallback; and
- resource status.

The evidence boundary must respect applicable security and data-sovereignty constraints.

---

## 165. External Resource as a CPS Participant

An external facility can become part of the effective CPS execution structure for an experiment.

For example:

~~~text
CPS
 │
 ▼
QAI Interface
 │
 ▼
External QPU
 │
 ▼
Measurement Result
 │
 ▼
Decision
 │
 ▼
CPS
~~~

The external resource therefore needs structural, interface, dependency and failure analysis.

---

## 166. External Resource Replacement

External resources should be replaceable where practical.

For example:

~~~text
Preferred QPU
     │
     ├── Available ───────► Execute
     │
     └── Unavailable
             │
             ▼
       Alternate QPU
             │
             └────► Classical / HPC Fallback
~~~

Replacement must preserve experiment identity and clearly record the actual execution resource.

---

## 167. Resource-Aware Comparative Testing

A computational approach should not be judged only by algorithmic output.

The comparison may consider the complete execution chain:

~~~text
Problem
  │
  ▼
Representation
  │
  ▼
Algorithm
  │
  ▼
Resource
  │
  ▼
Execution
  │
  ▼
Result
  │
  ▼
Operational Value
~~~

This is especially important for remote QPU, HPC and AI-server experiments.

---

## 168. Advantage Within Tolerance

A computational approach should be considered advantageous only when its measured improvement is meaningful within the applicable tolerance and operational constraints.

Possible dimensions include:

- better result;
- lower time;
- lower cost;
- lower resource demand;
- improved robustness;
- improved scalability; or
- improved operational value.

No single metric defines advantage universally.

---

## 169. Negative Advantage Result

A QAI experiment may demonstrate that the QAI approach is not preferable.

This is a valid engineering result.

Examples include:

- classical execution is faster;
- QAI cost is too high;
- quantum resource availability is insufficient;
- result quality is not better;
- robustness is inadequate;
- implementation complexity outweighs benefit.

The architecture must support recording such outcomes without bias.

---

## 170. Experiment Result Classification

Results may be classified as:

- successful;
- successful with limitations;
- inconclusive;
- failed due to model;
- failed due to integration;
- failed due to resource;
- failed due to algorithm;
- failed due to environment;
- unsafe / terminated; or
- requires further validation.

Classification improves engineering traceability.

---

## 171. Integration Failure Classification

Integration failures should be classified by boundary.

Potential categories include:

- Emulator–Simulator;
- Emulator–QAI;
- Simulator–QAI;
- CPS–QAI;
- Sensing–Communication;
- Communication–Computation;
- Computation–Control;
- Control–Actuation;
- External Resource;
- State;
- Timing; and
- Data.

This supports systematic design improvement.

---

## 172. Design Limitation Discovery

Phase 2 explicitly expects integration testing to reveal architectural limitations.

A limitation may be discovered when:

- unit tests pass;
- subsystem tests pass;
- interfaces appear valid;
- but integrated execution produces unexpected behaviour.

Such findings are not failures of the testing strategy.

They are valuable evidence about the architecture.

---

## 173. Unit-to-Integration Learning Loop

The engineering loop is:

~~~text
Unit Tests
    │
    ▼
Subsystem Tests
    │
    ▼
Interface Tests
    │
    ▼
Integration Tests
    │
    ▼
Design Issue Discovered
    │
    ▼
Architecture / Model Review
    │
    ▼
Correction
    │
    ▼
Regression Test
~~~

This loop should be expected throughout Phase 2.

---

## 174. Regression Protection

Every significant architectural correction should result in appropriate regression tests.

Regression tests protect:

- previously validated interfaces;
- state transitions;
- emulator behaviour;
- simulator behaviour;
- QAI pipelines;
- fault handling;
- path behaviour; and
- closed-loop workflows.

The objective is to prevent improvements in one area from silently breaking another.

---

## 175. Phase 2 Experimental Progression

The recommended progression is:

~~~text
Structural Integrity
        │
        ▼
Emulator Validation
        │
        ▼
Simulator Validation
        │
        ▼
Open-Loop QAI
        │
        ▼
Closed-Loop QAI
        │
        ▼
Three-Path Integration
        │
        ▼
Fault / Resilience
        │
        ▼
External Resource / HIL
        │
        ▼
Phase 2 Validation
~~~

Not every Pilot experiment must execute every stage.

---

## 176. Minimum Pilot Experiment

The minimum Pilot should demonstrate one complete callable agriculture CPS workflow.

The intended spine remains:

~~~text
Virtual Farm Assets / State
          │
          ▼
Emulated Sensors / Data Sources
          │
          ▼
Digital Farm Context
          │
          ▼
QAI Intelligence
Sense → Process → Decide
          │
          ▼
Decision / Policy
          │
          ▼
Emulated Actuator
          │
          ▼
Changed Farm State
          │
          ▼
Feedback
          │
          └──────────────► QAI
~~~

This remains laptop/simulation/emulation compatible.

---

## 177. Minimum Pilot QAI Comparison

The Pilot should be capable of comparing at least:

- classical;
- quantum-inspired; and
- hybrid QAI approaches,

where applicable to the selected irrigation problem.

A true quantum backend may remain an optional extension if resource availability, access and experiment requirements permit.

---

## 178. Minimum Pilot Fault Test

At least one meaningful controlled fault should be introduced.

For example:

~~~text
Normal Irrigation
       │
       ▼
Sensor / Flow Fault
       │
       ▼
Detection
       │
       ▼
CPS State Change
       │
       ▼
Controlled Decision
       │
       ▼
Safe / Degraded Response
~~~

The exact fault should be selected according to the Pilot use case.

---

## 179. Minimum Pilot Structural Test

The Pilot should demonstrate that the CPS can detect at least one structural inconsistency.

Examples include:

- missing relationship;
- invalid mapping;
- unresolved dependency;
- stale state;
- invalid interface;
- orphan asset; or
- zombie execution.

The test should demonstrate detection and controlled handling.

---

## 180. Minimum Pilot Open-Loop Test

At least one open-loop experiment should demonstrate:

~~~text
Input
  │
  ▼
CPS / Emulator / Simulator
  │
  ▼
QAI Pipeline
  │
  ▼
Measured Result
~~~

The result should be compared with the defined baseline.

---

## 181. Minimum Pilot Closed-Loop Test

At least one closed-loop experiment should demonstrate:

~~~text
State
  │
  ▼
Sense
  │
  ▼
Process
  │
  ▼
Decide
  │
  ▼
Act
  │
  ▼
Changed State
  │
  └────────► Feedback
~~~

The experiment should measure the resulting CPS behaviour.

---

## 182. Minimum Pilot Integration Test

The Pilot should demonstrate at least one integrated configuration involving:

- Emulator;
- CPS;
- QAI pipeline;
- sensing path;
- computational path;
- communication path; and
- feedback.

This establishes that the architecture functions beyond isolated component tests.

---

## 183. Minimum Pilot Evidence Package

The Pilot evidence package should contain sufficient information to reproduce and evaluate the experiment.

At minimum:

- experiment identity;
- configuration;
- model versions;
- asset versions;
- scenario;
- parameters;
- computational class;
- resource;
- execution result;
- KPI measurements;
- fault conditions;
- observed abnormalities;
- structural-integrity result; and
- acceptance outcome.

---

## 184. Evidence Does Not Equal Certification

Phase 2 evidence demonstrates behaviour within the defined experimental boundary.

It does not automatically constitute:

- production certification;
- regulatory approval;
- safety certification;
- physical-system certification;
- commercial SLA evidence; or
- field deployment authorization.

Those activities belong to later maturity stages where applicable.

---

## 185. Phase 2 Model Promotion Boundary

A model should progress toward Phase 3 only when sufficient evidence exists for its intended purpose.

Potential evidence includes:

- structural integrity;
- emulator validation;
- simulation validity;
- fidelity;
- scenario coverage;
- fault response;
- resilience;
- QAI comparison;
- reproducibility; and
- acceptance criteria.

Promotion is evidence-driven.

---

## 186. Promotion vs Deployment

Model promotion means that a model has achieved a defined evidence threshold for a subsequent lifecycle stage.

It does not mean that the model is automatically deployed to production.

The progression remains:

~~~text
Experimental
     │
     ▼
Validated
     │
     ▼
Promoted
     │
     ▼
Production Candidate
     │
     ▼
Production / Digital Twin
~~~

Each transition requires its own acceptance criteria.

---

## 187. QAI Lab Relationship

The Phase 2 QAI pipeline provides an experimental foundation for the QAI Lab.

The lifecycle is:

~~~text
Research
   ↓
Experiment
   ↓
Benchmark
   ↓
Validate
   ↓
Package
   ↓
Release
   ↓
Client Use
   ↓
Learn
   ↓
Improve
~~~

Phase 2 primarily occupies the Experiment, Benchmark and Validation portions of this lifecycle.

---

## 188. Reusable QAI Experiments

A successful Phase 2 experiment should be capable of becoming a reusable experiment definition.

Reuse may include:

- problem formulation;
- pipeline;
- model;
- scenario;
- evaluation;
- resource configuration;
- result schema; and
- acceptance criteria.

Reuse reduces future client implementation effort.

---

## 189. Ready-to-Use Cloud Model Principle

The broader QAI service objective is to make complex computational capabilities easier for clients to consume.

The client should increasingly focus on:

- problem;
- data;
- configuration;
- constraints; and
- desired outcome.

The platform and QAI engineering layers should absorb much of the complexity of:

- cloud execution;
- QAI orchestration;
- quantum execution;
- benchmarking;
- resource selection;
- fallback; and
- integration.

---

## 190. Client Boundary

The Pilot architecture should expose controlled interfaces rather than implementation complexity.

Conceptually:

~~~text
Client
  │
  ├── Problem
  ├── Data
  ├── Constraints
  └── Desired Outcome
          │
          ▼
   HoldCo Factory Interface
          │
          ▼
      QAI Platform
          │
     ┌────┼────┐
     ▼    ▼    ▼
   Cloud HPC  QPU
          │
          ▼
       Results
~~~

The internal implementation remains behind controlled service boundaries.

---

## 191. QAI Logic Location

QAI logic and reusable functions may reside within the controlled development and source-management environment.

The client-facing architecture should consume those capabilities through defined interfaces.

Private execution infrastructure may be used where required.

The Phase 2 architecture remains technology- and vendor-neutral.

---

## 192. External Execution Security

External execution must respect:

- identity;
- authorization;
- data boundaries;
- execution permissions;
- endpoint controls;
- auditability;
- secrets management;
- result validation; and
- termination.

No external facility should obtain uncontrolled authority over the CPS.

---

## 193. Experiment Termination

An experiment must have defined termination conditions.

Termination may occur because of:

- safety boundary violation;
- uncontrolled behaviour;
- resource exhaustion;
- invalid state;
- invalid result;
- external facility failure;
- timeout;
- structural-integrity violation; or
- operator request.

Termination itself should be recorded as experiment evidence.

---

## 194. Abnormal Condition Escalation

An abnormal condition should follow a controlled escalation path.

~~~text
Abnormal Condition
        │
        ▼
Detect
        │
        ▼
Classify
        │
        ▼
Assess
        │
   ┌────┴────┐
   ▼         ▼
Bounded    Unsafe
   │         │
   ▼         ▼
Continue   Contain /
           Safe State
             │
             ▼
           Review
~~~

This provides a common mechanism across Emulator, Simulator and CPS testing.

---

## 195. Observability

Every major Phase 2 subsystem should provide sufficient observability to determine what happened.

Observability may include:

- state;
- events;
- transitions;
- timing;
- inputs;
- outputs;
- resource use;
- errors;
- faults;
- decisions;
- actions; and
- recovery.

Observability is necessary for meaningful structural analysis.

---

## 196. Traceability

Phase 2 maintains traceability from:

~~~text
Requirement
   │
   ▼
Use Case
   │
   ▼
Asset
   │
   ▼
Relationship
   │
   ▼
Model
   │
   ▼
Scenario
   │
   ▼
Workflow
   │
   ▼
Execution
   │
   ▼
Observation
   │
   ▼
Decision
   │
   ▼
Result
   │
   ▼
Evidence
~~~

This chain supports engineering review and later model promotion.

---

## 197. Reproducibility

A Phase 2 result should be reproducible to the degree required by the experiment.

Reproducibility may require:

- fixed configuration;
- versioned models;
- versioned code;
- recorded data;
- controlled random seeds;
- recorded resource;
- scenario identity;
- execution parameters; and
- external execution metadata.

Stochastic experiments may produce distributions rather than identical outputs.

---

## 198. Configuration Management

Phase 2 configuration includes:

- models;
- assets;
- mappings;
- scenarios;
- parameters;
- workflows;
- interfaces;
- QAI pipelines;
- resources;
- fault settings;
- safety thresholds; and
- experiment controls.

Configuration changes must be identifiable.

---

## 199. Version Compatibility

Phase 2 components should declare relevant compatibility relationships.

Examples include:

- model version ↔ emulator version;
- model version ↔ simulator version;
- interface version ↔ QAI pipeline;
- workflow version ↔ CPS model;
- resource interface version ↔ external facility.

Incompatible combinations should be rejected or explicitly classified.

---

## 200. Change Impact

A change to one subsystem may affect other subsystems.

Potential impacts include:

- state;
- relationships;
- mappings;
- interfaces;
- workflows;
- scenarios;
- QAI;
- resource selection;
- safety;
- validation; and
- previously accepted results.

Change impact should therefore be assessed before relying on previous evidence.

---

## 201. Structural Integrity Before Experiment

The recommended execution sequence is:

~~~text
Load Configuration
       │
       ▼
Structural Integrity Checks
       │
       ▼
Dependency Checks
       │
       ▼
Runtime Sanity Checks
       │
       ▼
Experiment
~~~

This prevents avoidable structural problems from contaminating experimental results.

---

## 202. Runtime Integrity During Experiment

Integrity checks continue during execution.

The system should detect:

- unexpected state;
- missing feedback;
- stale information;
- invalid transition;
- dependency loss;
- abnormal latency;
- resource failure;
- unexpected command;
- conflicting action; and
- uncontrolled execution.

Runtime integrity is therefore continuous rather than a one-time precondition.

---

## 203. Post-Experiment Integrity

After execution, the system should verify that:

- the experiment terminated correctly;
- final state is valid;
- expected outputs exist;
- evidence is complete;
- no unresolved abnormal condition remains;
- resource usage is recorded;
- faults are classified; and
- the result is suitable for evaluation.

This closes the experiment integrity loop.

---

## 204. Structural Analysis Loop

The complete structural-analysis loop is:

~~~text
Define CPS Structure
        │
        ▼
Build / Configure Model
        │
        ▼
Structural Integrity Check
        │
        ▼
Execute Emulator / Simulator
        │
        ▼
Observe Behaviour
        │
        ▼
Inject / Encounter Faults
        │
        ▼
Analyze Response
        │
        ▼
Measure Integrity / Resilience
        │
        ▼
Correct / Refine
        │
        ▼
Regression Test
        │
        └──────────────►
~~~

This is the core engineering discipline of Phase 2.

---

## 205. Structural Analysis as Quality Assurance

Structural analysis provides a quality-assurance mechanism for the CPS architecture.

It helps establish that:

- the modeled structure is coherent;
- expected relationships exist;
- dependencies are resolvable;
- state transitions are bounded;
- faults are observable;
- abnormal conditions are detected;
- control behaviour remains bounded; and
- the Emulator operates within defined acceptance boundaries.

This does not replace formal safety certification where such certification is required.

---

## 206. Emulator Quality Statement

The desired quality statement for the Pilot is:

> **The Emulator reproduces the defined target behaviour within its declared fidelity and tolerance boundaries and does not exhibit unexplained structural or observable abnormal conditions under the tested operating conditions.**

The statement is intentionally bounded by the tested scope.

---

## 207. Simulator Quality Statement

The desired quality statement for the Simulator is:

> **The Simulator executes defined scenarios and perturbations consistently within its declared model and validity boundaries and produces observable, reproducible and interpretable experimental results.**

Simulation validity must be evaluated separately from emulator fidelity.

---

## 208. CPS Quality Statement

The desired CPS quality statement is:

> **The integrated CPS maintains coherent state, controlled transitions, bounded feedback and defined responses to faults and degraded conditions within the tested architecture and operating boundaries.**

This becomes a key Phase 2 validation objective.

---

## 209. QAI Quality Statement

The desired QAI quality statement is:

> **The selected computational approach provides measurable and reproducible results within the defined problem, resource, tolerance and operational constraints.**

A QAI approach may therefore be rejected when it does not provide sufficient measurable benefit.

---

## 210. External Facility Quality Statement

Where external facilities participate:

> **External execution is accepted only when its interface, dependency, execution result, resource context and failure behaviour remain observable and controlled within the experiment boundary.**

This applies to AI servers, HPC clusters, quantum backends and other external computational facilities.

---

## 211. Safety Quality Statement

The Phase 2 environment should demonstrate that:

- unsafe conditions are detectable;
- defined safety boundaries exist;
- uncontrolled behaviour is observable;
- fault containment is possible where required;
- safe-state behaviour is defined where applicable; and
- experiment termination is controlled.

The objective is evidence-based safety assurance within the declared Pilot scope.

---

## 212. No Silent Failure Principle

Phase 2 follows the principle:

> **A failure must not silently appear as a valid result.**

Failures should be:

- detected;
- classified;
- recorded;
- isolated where possible;
- propagated only when expected;
- handled according to policy; and
- visible in experiment evidence.

---

## 213. No Silent Fallback Principle

Fallback is permitted where designed, but it must never silently alter experiment classification.

For example:

~~~text
Quantum Experiment
       │
       ▼
QPU unavailable
       │
       ▼
Classical Fallback
       │
       ▼
Result
~~~

The result must explicitly state that classical fallback was used.

---

## 214. No Silent Model Change Principle

An experiment must not silently change its model, parameters, mappings or configuration during execution.

Controlled adaptation may be allowed when explicitly designed.

Such adaptation must be:

- observable;
- authorized;
- versioned;
- recorded; and
- subject to applicable validation.

---

## 215. No Silent State Correction Principle

The system should not silently overwrite contradictory or abnormal state merely to make an experiment complete.

Instead, it should:

- identify the contradiction;
- determine the authoritative source;
- classify the condition;
- apply the defined reconciliation policy; and
- preserve evidence.

This is essential for trustworthy CPS analysis.

---

## 216. Evidence-Based Adaptation

Adaptive QAI or AI mechanisms may modify decisions, parameters or policies where explicitly authorized.

Adaptation must remain distinguishable from structural truth.

~~~text
Observed State
      │
      ▼
AI / QAI Interpretation
      │
      ▼
Adaptive Recommendation
      │
      ▼
Controlled Change
      │
      ▼
Validation / Observation
~~~

This preserves the distinction between intelligence and system authority.

---

## 217. Virtual Qubit and Quantum Resource Abstraction

Where quantum execution is used, the architecture may represent quantum resources through the established QAI resource abstraction.

This can include:

- logical quantum workload;
- virtual qubit requirements;
- physical qubit availability;
- backend capability;
- fidelity;
- connectivity;
- shots;
- queue;
- execution time; and
- cost.

The Phase 2 architecture should not require direct dependence on a specific hardware representation.

---

## 218. QAI Resource Adaptation

QAI resource selection may adapt to current conditions.

For example:

~~~text
Problem
  │
  ▼
Resource Estimation
  │
  ▼
Available Resources
  │
  ├── QPU
  ├── HPC
  ├── GPU
  ├── CPU
  └── Other
  │
  ▼
Advantage / Feasibility Assessment
  │
  ▼
Selected Execution
~~~

The selection decision should be recorded.

---

## 219. Resource Constraint Failure

When a resource constraint prevents execution, the experiment should not be interpreted as an algorithm failure.

Examples:

- insufficient QPU capacity;
- unavailable HPC queue;
- insufficient memory;
- unavailable GPU;
- external network failure.

The result should distinguish **execution infeasibility** from **computational inadequacy**.

---

## 220. Experimental Resource Isolation

Where several experiments share resources, the architecture should prevent uncontrolled interference.

Potential mechanisms include:

- resource quotas;
- scheduling;
- isolation;
- execution priority;
- timeout;
- concurrency control;
- budget limits; and
- explicit reservation.

The exact mechanism depends on the execution environment.

---

## 221. Computational Resource Provenance

The result record should identify relevant resource provenance.

Examples include:

- resource class;
- resource identity;
- capacity;
- execution context;
- software/runtime version;
- backend status;
- execution timestamp;
- queue conditions; and
- relevant configuration.

This allows later comparison of results produced under different resource conditions.

---

## 222. Environment Provenance

An experiment should identify the environment in which it ran.

Environment provenance may include:

- emulator version;
- simulator version;
- model versions;
- operating condition;
- data version;
- QAI pipeline version;
- runtime;
- external resources;
- configuration; and
- execution timestamp.

This creates an experiment fingerprint.

---

## 223. Experiment Fingerprint

A useful experiment fingerprint is:

~~~text
Experiment ID
   +
Configuration
   +
Models
   +
Scenario
   +
Parameters
   +
Pipeline
   +
Resource
   +
Execution Context
   +
Result
~~~

The fingerprint supports reproducibility and regression comparison.

---

## 224. Comparison Across Environments

Results from different execution environments should be compared carefully.

Differences may arise from:

- hardware;
- software;
- backend;
- queue;
- compiler;
- runtime;
- model;
- configuration;
- network; or
- external service.

The architecture must distinguish environmental variation from algorithmic improvement.

---

## 225. Experimental Controls

Where comparative experiments are performed, relevant variables should be controlled.

For example:

- same input;
- same objective;
- same constraints;
- equivalent tolerance;
- equivalent scenario;
- comparable resource boundary;
- equivalent output criteria.

This improves the validity of the comparison.

---

## 226. Experiment Bias Control

The comparison framework should avoid selecting conditions that unfairly favour one computational class.

Where practical:

- problem definitions remain common;
- evaluation criteria remain common;
- relevant resources are disclosed;
- fallback is recorded;
- failures are included;
- negative results are preserved.

This supports objective engineering assessment.

---

## 227. Benchmarking

Benchmarking should measure computational approaches against a common reference.

Benchmark dimensions may include:

- quality;
- latency;
- throughput;
- resource use;
- cost;
- reliability;
- scalability;
- robustness; and
- value.

Benchmark results should identify the experimental boundary.

---

## 228. QAI Regression Benchmark

Once a QAI pipeline is accepted, its benchmark may become a regression reference.

Future changes can then be evaluated against:

- previous quality;
- previous execution time;
- previous resource use;
- previous failure rate;
- previous resilience; and
- previous value.

This protects the reusable QAI capability.

---

## 229. Emulator Regression

Emulator regression testing should verify that model or implementation changes do not unintentionally alter previously accepted behaviour.

Regression may compare:

- state transitions;
- timing;
- output;
- fault response;
- interface;
- fidelity metrics; and
- safety boundaries.

---

## 230. Simulator Regression

Simulator regression should verify that changes do not silently alter scenario semantics or expected results.

Regression may compare:

- scenario outputs;
- parameter response;
- perturbation behaviour;
- stochastic distributions;
- state transitions;
- workflow completion; and
- performance.

---

## 231. CPS Regression

CPS regression should verify integrated behaviour after changes to:

- assets;
- relationships;
- mappings;
- state;
- models;
- workflows;
- interfaces;
- QAI;
- resources; or
- control policies.

This is essential because CPS behaviour emerges from subsystem interaction.

---

## 232. Structural Regression

Structural regression should verify that accepted system topology remains coherent after changes.

Checks may include:

- missing elements;
- orphan elements;
- zombie elements;
- broken relationships;
- invalid mappings;
- unresolved dependencies;
- interface mismatch;
- configuration inconsistency.

Structural regression should precede expensive integrated testing.

---

## 233. Fault Regression

Previously tested fault conditions should be retained as regression cases when relevant.

Examples include:

- sensor loss;
- communication delay;
- actuator failure;
- resource failure;
- external backend timeout;
- stale state;
- dependency loss.

This protects previously established resilience behaviour.

---

## 234. Safety Regression

Safety-relevant tests should be repeated after changes affecting:

- control;
- state;
- interfaces;
- fault handling;
- resource selection;
- QAI decisions;
- external integration.

A change that improves performance must not silently degrade safety.

---

## 235. Experiment Lifecycle

The Phase 2 experiment lifecycle is:

~~~text
Define
  │
  ▼
Configure
  │
  ▼
Check Integrity
  │
  ▼
Execute
  │
  ▼
Observe
  │
  ▼
Analyze
  │
  ▼
Validate
  │
  ▼
Record
  │
  ▼
Reuse / Revise
~~~

This lifecycle applies across Emulator, Simulator and QAI experiments.

---

## 236. Phase 2 Architecture Closure Criteria

Phase 2 should be considered architecturally complete when the defined Pilot scope has demonstrated:

- independent Emulator;
- independent Simulator;
- structural integrity checks;
- calibration;
- fidelity evaluation;
- operating conditions;
- CPS states and workflows;
- open-loop execution;
- closed-loop execution;
- QAI comparison;
- three-path testing;
- integration testing;
- fault testing;
- resilience assessment; and
- validation evidence.

Not every future capability must be production-ready.

---

## 237. Phase 2 Readiness for Phase 3

Phase 2 should provide sufficient evidence for Phase 3 to perform formal validation and model promotion.

The handoff should identify:

- validated models;
- validated workflows;
- accepted scenarios;
- known limitations;
- unresolved risks;
- fidelity boundaries;
- fault/resilience results;
- QAI results;
- physical-validation requirements; and
- recommended next steps.

---

## 238. Phase 2 Formal Review Gate

The final Phase 2 review should determine:

~~~text
Phase 2 Evidence
       │
       ▼
Formal Review
       │
   ┌───┼────────┐
   │   │        │
 READY REVISE  DEFER
   │   │        │
   ▼   ▼        ▼
Phase 3
       │
       └──► Correct / Re-test
~~~

The decision must be evidence-based.

---

## 239. Deferred Capabilities

Capabilities not required for the Pilot may be explicitly deferred.

Potential deferred capabilities include:

- large-scale physical deployment;
- full HIL infrastructure;
- field trials;
- production QPU integration;
- large HPC integration;
- multi-farm federation;
- enterprise-scale orchestration;
- production SaaS;
- full regulatory certification.

Deferral must not create hidden architectural dependencies.

---

## 240. Phase 2 Architectural Principle

The Phase 2 architecture follows:

> **Separate the systems, test them independently, integrate them deliberately, introduce faults intentionally, observe the consequences, and validate the complete CPS before promoting it.**

This principle is central to preventing subsystem failures from being hidden by integration convenience.

---

## 241. Phase 2 End-to-End Architecture

The resulting conceptual architecture is:

~~~text
                    ┌──────────────────────┐
                    │   Digital Farm       │
                    │   Virtual Assets     │
                    └──────────┬───────────┘
                               │
                 ┌─────────────┴─────────────┐
                 │                           │
                 ▼                           ▼
        ┌─────────────────┐         ┌─────────────────┐
        │    EMULATOR     │         │    SIMULATOR    │
        │                 │         │                 │
        │ Target          │         │ Scenarios       │
        │ Behaviour       │         │ Perturbations   │
        │ State           │         │ What-if         │
        │ Interfaces      │         │ Open / Closed   │
        │ Faults          │         │ Loop            │
        └────────┬────────┘         └────────┬────────┘
                 │                           │
                 └─────────────┬─────────────┘
                               │
                               ▼
                     ┌───────────────────┐
                     │       CPS         │
                     │ State / Automata  │
                     │ Control / Feedback│
                     └─────────┬─────────┘
                               │
                               ▼
                     ┌───────────────────┐
                     │    QAI PIPELINE   │
                     │                   │
                     │ Classical         │
                     │ Quantum-Inspired  │
                     │ Hybrid QAI        │
                     │ Quantum           │
                     └─────────┬─────────┘
                               │
                  ┌────────────┼────────────┐
                  │            │            │
                  ▼            ▼            ▼
               Local         HPC          QPU
               Compute     Cluster      Backend
                  │            │            │
                  └────────────┼────────────┘
                               │
                               ▼
                     ┌───────────────────┐
                     │ Structural        │
                     │ Integrity /       │
                     │ Fault / Resilience│
                     └─────────┬─────────┘
                               │
                               ▼
                     ┌───────────────────┐
                     │ Integration       │
                     │ Testing           │
                     └─────────┬─────────┘
                               │
                               ▼
                     ┌───────────────────┐
                     │ Validation        │
                     │ & Evidence        │
                     └─────────┬─────────┘
                               │
                               ▼
                         Phase 3
                  Validation & Promotion
~~~

---

## 242. Separation of Concerns

The major Phase 2 responsibilities are therefore:

| Subsystem | Primary Question |
|---|---|
| Emulator | Can we reproduce the target adequately? |
| Simulator | What happens under changed conditions? |
| Structural Integrity | Is the CPS correctly constructed? |
| Calibration | Can model parameters be tuned to reference evidence? |
| Fidelity | Is reproduction within acceptable tolerance? |
| Conditions | How does the CPS behave under defined operating states? |
| CPS | How do state, control and feedback behave? |
| QAI Pipeline | Which computational approach is suitable? |
| Integration | Do the subsystems work together correctly? |
| Testing | What fails under controlled tests? |
| Validation | Is there sufficient evidence for the declared purpose? |
| Review | Is Phase 2 ready for the next lifecycle stage? |

---

## 243. Engineering Assurance Chain

The Phase 2 assurance chain is:

~~~text
Structure
   │
   ▼
Integrity
   │
   ▼
Execution
   │
   ▼
Fidelity / Validity
   │
   ▼
Fault Behaviour
   │
   ▼
Resilience
   │
   ▼
QAI Performance
   │
   ▼
Integration
   │
   ▼
Closed-Loop Behaviour
   │
   ▼
Evidence
   │
   ▼
Validation
~~~

Each layer contributes evidence without replacing the preceding layer.

---

## 244. No Single-Test Validation

No single test is sufficient to establish complete CPS validity.

For example:

- passing unit tests does not prove integration;
- passing integration does not prove resilience;
- passing nominal tests does not prove fault behaviour;
- high emulator fidelity does not prove simulation validity;
- strong QAI performance does not prove CPS safety;
- successful HIL does not automatically prove field validity.

Phase 2 therefore uses layered evidence.

---

## 245. Test Independence

Where practical, tests should be independently executable.

For example:

~~~text
Test A
Emulator + QAI

Test B
Simulator + QAI

Test C
Emulator + CPS

Test D
Simulator + CPS

Test E
Emulator + Simulator + QAI

Test F
Three Paths + CPS + QAI

Test G
Fault / Resilience

Test H
External Resource / HIL
~~~

This creates diagnosable evidence.

---

## 246. Integration as an Engineering Discovery Mechanism

Integration testing is not merely a final verification activity.

It is an engineering discovery mechanism.

It may reveal:

- hidden coupling;
- missing interfaces;
- incorrect assumptions;
- state inconsistencies;
- timing problems;
- dependency failures;
- resource limitations;
- control instability;
- unexpected fault propagation; and
- architectural limitations.

Such discoveries should feed back into architecture and design.

---

## 247. Design Feedback Loop

The architecture therefore supports:

~~~text
Implementation
     │
     ▼
Testing
     │
     ▼
Integration Finding
     │
     ▼
Design Review
     │
     ▼
Architecture Refinement
     │
     ▼
Implementation
     │
     └──────── Regression ────────►
~~~

This is an expected part of Phase 2 engineering.

---

## 248. Phase 2 Minimum Engineering Mindset

Phase 2 should be approached as an engineering laboratory rather than merely a software implementation exercise.

The laboratory must allow the team to:

- construct;
- observe;
- perturb;
- measure;
- compare;
- fail safely;
- diagnose;
- recover;
- refine; and
- repeat.

This mindset is especially important before physical deployment.

---

## 249. Physical Validation as Evidence Extension

Physical assets extend the evidence boundary.

They do not invalidate the virtual or emulated stages.

The evidence chain is:

~~~text
Virtual
   │
   ▼
Emulated
   │
   ▼
Simulated
   │
   ▼
SIL
   │
   ▼
HIL
   │
   ▼
Physical
   │
   ▼
Field
~~~

Each stage answers different engineering questions.

---

## 250. HIL as Controlled Bridge

HIL provides a controlled bridge between software models and physical components.

It can be used to test:

- controller logic;
- communication;
- sensor interfaces;
- actuator interfaces;
- timing;
- fault handling;
- control response; and
- interaction with real hardware.

HIL should be introduced only when the relevant earlier evidence is sufficient.

---

## 251. Physical Asset Parameter Validation

Physical measurements may provide evidence for:

- parameter refinement;
- calibration;
- timing;
- noise;
- actuator response;
- communication delay;
- fault behaviour.

Such changes must enter the controlled calibration and validation lifecycle.

---

## 252. Model–Reality Difference

Differences between model and physical behaviour are expected during engineering development.

The response should be:

~~~text
Difference
   │
   ▼
Classify
   │
   ├── Measurement
   ├── Model
   ├── Calibration
   ├── Environment
   ├── Interface
   └── Uncertainty
   │
   ▼
Correct / Accept / Bound
   │
   ▼
Revalidate
~~~

The objective is not to hide differences but to understand them.

---

## 253. Uncertainty

Phase 2 should explicitly represent uncertainty where it materially affects decisions.

Sources may include:

- sensing;
- model parameters;
- environmental conditions;
- stochastic behaviour;
- communication;
- external computation;
- quantum measurements;
- incomplete knowledge.

Uncertainty should be visible in experiment evidence.

---

## 254. Confidence

Results may include confidence or uncertainty indicators where meaningful.

Confidence should not be represented as an arbitrary score without a defined interpretation.

Where possible, the basis of confidence should be traceable to:

- data;
- repeated trials;
- model validation;
- statistical analysis;
- benchmark evidence; or
- physical measurements.

---

## 255. Measurement Integrity

Measurements used for validation must themselves be trustworthy.

The architecture should consider:

- measurement source;
- timestamp;
- units;
- calibration status;
- precision;
- uncertainty;
- provenance; and
- transformation history.

This is particularly important when comparing emulated and physical behaviour.

---

## 256. Metrology Relationship

Where physical validation is introduced, measurement and metrology controls become increasingly important.

Phase 2 should therefore preserve interfaces to the broader governance and metrology capabilities of the Digital Farm architecture.

The Pilot may use simplified controls appropriate to its scope.

---

## 257. Safety-Critical Boundary

If a Phase 2 experiment becomes safety-critical, the applicable safety requirements must take precedence over experimental convenience.

Potential responses include:

- additional review;
- stronger isolation;
- human approval;
- restricted fault injection;
- simulation-only testing;
- HIL-only testing;
- experiment termination.

The architecture must support escalation rather than forcing unsafe execution.

---

## 258. Catastrophic Scenario Isolation

Catastrophic or extreme conditions should generally be isolated from normal operational experiments.

This prevents destructive or unstable scenarios from contaminating:

- baseline state;
- shared resources;
- other experiments;
- production-like environments;
- external facilities.

Isolation may be logical, process-level, environment-level or physical depending on the risk.

---

## 259. Shared Infrastructure Principle

External and local resources may be shared, but experiments must preserve logical isolation.

This is consistent with the broader architecture principle that:

> **Physical infrastructure may be shared while logical autonomy, control, identity and data boundaries remain distinct.**

Phase 2 therefore does not require dedicated physical infrastructure for every experiment.

---

## 260. Multi-Experiment Operation

Where multiple experiments execute on shared infrastructure, each experiment should maintain independent:

- identity;
- state;
- configuration;
- data;
- resource accounting;
- logs;
- results; and
- fault context.

Cross-experiment interference should be detectable.

---

## 261. Experiment Resource Governance

Experiment resource consumption should be bounded by:

- compute limits;
- memory;
- storage;
- network;
- energy where measurable;
- budget;
- execution duration;
- queue;
- external service limits.

This protects both the experiment and shared infrastructure.

---

## 262. Experiment Priority

Where resources are constrained, experiments may have explicit priorities.

Priority should not bypass:

- safety;
- security;
- authorization;
- structural integrity;
- resource limits.

A high-priority experiment must still remain within its declared boundary.

---

## 263. Controlled External Connectivity

External connectivity should be enabled only when required by the experiment.

Examples include:

- AI service;
- HPC cluster;
- quantum backend;
- cloud service;
- market data;
- satellite data;
- external IoT.

Connectivity should be:

- explicit;
- authenticated;
- authorized;
- observable;
- bounded; and
- terminable.

---

## 264. External Result Trust

An external result should not automatically be treated as authoritative.

The result should be evaluated for:

- completeness;
- validity;
- provenance;
- expected schema;
- execution status;
- timing;
- confidence;
- consistency.

External execution therefore remains part of the experiment evidence chain.

---

## 265. External Backend Drift

External facilities may change over time.

Potential changes include:

- hardware;
- software;
- compiler;
- runtime;
- calibration;
- queue behaviour;
- service limits;
- pricing;
- performance.

Relevant backend changes may therefore affect experimental comparability.

---

## 266. Backend Versioning

Where possible, experiments should record sufficient backend information to identify the execution environment.

This supports comparison between:

- repeated experiments;
- backend versions;
- alternative facilities;
- local and remote execution;
- classical and quantum resources.

---

## 267. Cloud Model Modernization

The Phase 2 architecture supports future client modernization by allowing models and computational capabilities to evolve from local experimentation toward cloud execution.

The conceptual progression is:

~~~text
Local Model
    │
    ▼
Validated Model
    │
    ▼
Cloud-Compatible Model
    │
    ▼
Reusable Service
    │
    ▼
Client Solution
~~~

The Pilot does not need to implement the complete commercial service layer.

---

## 268. Productization Boundary

Phase 2 should focus on:

> **Functionality first, productization second, presentation third.**

The architecture should therefore establish reusable technical capability before extensive packaging and presentation work.

The resulting reusable components may later become:

- cloud models;
- QAI functions;
- workflows;
- experiment templates;
- services;
- APIs;
- client-ready capabilities.

---

## 269. Reuse Principle

A successful experiment should be reusable wherever its assumptions remain valid.

Reuse may occur across:

- farms;
- crops;
- assets;
- scenarios;
- clients;
- QAI pipelines;
- execution resources.

Reuse must preserve applicability and validation boundaries.

---

## 270. General-to-Specific Progression

Phase 2 should support a general-to-specific modelling progression.

~~~text
General Model
      │
      ▼
Domain Model
      │
      ▼
Target Model
      │
      ▼
Emulator / Simulator Configuration
      │
      ▼
Experiment Instance
~~~

This supports reusable QAI and CPS capabilities without forcing every implementation to start from zero.

---

## 271. Phase 2 Architecture Principle — Reusable Laboratory

Phase 2 should produce more than a single irrigation demonstration.

It should establish a reusable CPS experimentation pattern in which a future problem can be introduced by defining:

- assets;
- state;
- relationships;
- interfaces;
- behaviour;
- scenario;
- workflow;
- computational objective;
- constraints;
- resources; and
- acceptance criteria.

The underlying experimentation architecture should remain reusable.

---

## 272. Phase 2 Final Architecture Statement

Phase 2 establishes the Agriculture Digital Farm as a controlled CPS experimentation and assurance environment in which:

~~~text
Virtual Assets
      │
      ▼
Independent Emulator ─────────────┐
      │                           │
      │                           ▼
      │                     CPS Workflows
      │                           │
      ▼                           │
Independent Simulator ────────────┘
      │
      ▼
Open / Closed Loop Experiments
      │
      ▼
Classical / Quantum-Inspired /
Hybrid QAI / Quantum
      │
      ▼
Local / Cloud / AI / HPC / QPU
      │
      ▼
Three-Path Integration
      │
      ▼
Structural Integrity
      │
      ▼
Fault / Resilience / Safety Analysis
      │
      ▼
Testing
      │
      ▼
Validation & Evidence
      │
      ▼
Phase 3 Model Validation & Promotion
~~~

The architecture deliberately separates **what the system is**, **how the target behaves**, **what may happen under changed conditions**, **how intelligence is evaluated**, and **whether the resulting CPS remains structurally coherent, bounded and resilient**.

The Phase 2 objective is therefore not theoretical perfection.

It is to produce **measurable, reproducible and defensible engineering evidence within defined boundaries**, while exposing limitations early enough to correct them before physical deployment or production Digital Twin realization.
---
# Phase 2 — Simulation & CPS Workflows
## README.md
## Part 3 — Sections 273–392

---

## 273. Part 3 Purpose

This part extends the Phase 2 architecture from the established emulation, simulation, CPS, QAI, and integration foundations into a more explicit execution, testing, validation, and operational model.

The objective is to ensure that Phase 2 is not merely a collection of models, but a structurally coherent and independently testable CPS experimentation environment.

---

## 274. Phase 2 Execution Principle

Phase 2 execution follows:

**Construct → Validate → Execute → Observe → Compare → Decide → Act → Measure → Learn**

Each step must remain observable and traceable.

---

## 275. Independent Subsystem Principle

The Emulator, Simulator, CPS State Model, QAI Pipeline, and integration layer are independent architectural subsystems.

They may be composed during integration testing, but composition must not erase their individual boundaries.

---

## 276. Emulator Responsibility

The Emulator is responsible for reproducing the target system or component behavior within defined fidelity limits.

It answers:

> Can the target system be represented and reproduced faithfully enough for the intended experiment?

---

## 277. Simulator Responsibility

The Simulator is responsible for exploring possible system behavior under controlled scenarios, parameters, policies, and perturbations.

It answers:

> What could happen if conditions, parameters, decisions, or policies change?

---

## 278. CPS Responsibility

The CPS layer represents operational state, transitions, control relationships, desired state, actions, and feedback.

It answers:

> How does the cyber system interact with the represented physical process?

---

## 279. QAI Responsibility

The QAI Pipeline evaluates computational approaches against defined problems and constraints.

It answers:

> Which computational approach provides the best measurable result within the defined tolerance and resource constraints?

---

## 280. Integration Responsibility

The Integration layer connects independently validated subsystems through explicit contracts.

It answers:

> Can these subsystems operate together without violating their individual assumptions?

---

## 281. Integration Does Not Mean Coupling

Integration must not create unnecessary internal coupling.

A subsystem should expose only the information and controls required by its interface contract.

---

## 282. Execution Context

Every Phase 2 execution should have an identifiable execution context.

The context should include:

- experiment identity,
- scenario identity,
- model versions,
- asset versions,
- interface versions,
- parameter configuration,
- execution mode,
- QAI configuration,
- resource context,
- timing context,
- validation status.

---

## 283. Experiment Identity

Every experiment should have a unique experiment identifier.

The identifier provides the primary correlation mechanism across:

- models,
- inputs,
- executions,
- observations,
- decisions,
- results,
- metrics,
- evidence.

---

## 284. Experiment Configuration

An experiment configuration defines what is being tested.

It may include:

- target assets,
- selected models,
- scenario,
- initial state,
- parameters,
- constraints,
- QAI pipeline,
- baseline,
- evaluation metrics,
- acceptance thresholds.

---

## 285. Experiment Reproducibility

An experiment should be reproducible whenever deterministic or controlled stochastic execution is technically possible.

Reproducibility requires preservation of the relevant configuration and execution evidence.

---

## 286. Stochastic Reproducibility

Where stochastic models are used, reproducibility should be supported through controlled randomness.

This may include:

- random seeds,
- distributions,
- sampling configuration,
- stochastic model versions,
- execution counts.

---

## 287. Execution Snapshot

An execution snapshot captures the relevant configuration at the beginning of execution.

It protects the experiment from ambiguity caused by subsequent model or configuration changes.

---

## 288. Execution Trace

An execution trace records the significant events occurring during an experiment.

The trace may include:

- state changes,
- observations,
- commands,
- transitions,
- QAI calls,
- decisions,
- faults,
- timing events,
- completion events.

---

## 289. Observation Record

Each significant observation should be attributable to:

- source,
- asset,
- timestamp,
- experiment,
- model,
- scenario,
- measurement context,
- quality status.

---

## 290. Decision Record

A decision record should identify:

- decision source,
- input state,
- observations,
- selected method,
- constraints,
- output,
- confidence,
- expected effect.

---

## 291. Action Record

An action record represents the operational consequence of a decision.

In simulation, the action modifies the simulated environment.

In emulation, it exercises the emulated interface or behavior.

In a future physical environment, the same logical action may be mapped to a physical actuator.

---

## 292. Feedback Record

Feedback captures the resulting state or observation after an action.

Feedback closes the relationship between:

**Decision → Action → Result → Observation**

---

## 293. Open-Loop Execution

Open-loop execution evaluates decisions without allowing the resulting action to recursively influence subsequent decisions during the same experiment.

It is useful for:

- baseline comparison,
- policy evaluation,
- offline QAI testing,
- sensitivity analysis,
- controlled benchmarking.

---

## 294. Closed-Loop Execution

Closed-loop execution allows actions and resulting state changes to influence subsequent decisions.

The loop may be represented as:

~~~text
State
  ↓
Observation
  ↓
QAI / Decision Logic
  ↓
Decision
  ↓
Control Action
  ↓
System / Emulator / Simulator
  ↓
New State
  ↓
Feedback
  └──────────────→ Observation
~~~

---

## 295. Closed-Loop Importance

Closed-loop testing is necessary because a method that performs well on isolated input-output data may behave differently when its own decisions alter future system states.

---

## 296. Closed-Loop Stability

Closed-loop experiments should evaluate whether repeated decisions produce:

- stable behavior,
- oscillation,
- divergence,
- delayed correction,
- excessive control activity,
- unsafe transitions.

---

## 297. Control Frequency

Control frequency should be explicitly defined.

It may be determined by:

- process dynamics,
- sensor update rate,
- actuator response,
- communication latency,
- computational latency,
- safety requirements.

---

## 298. Timing Budget

Each closed-loop operation should be evaluated against a timing budget.

A conceptual budget is:

~~~text
Observation
   +
Data Preparation
   +
QAI / Algorithm Execution
   +
Decision
   +
Communication
   +
Actuation
   +
System Response
-----------------------------
Total Loop Time
~~~

---

## 299. Latency Measurement

Latency should be measured rather than assumed.

Relevant latency categories include:

- observation latency,
- preprocessing latency,
- algorithm latency,
- communication latency,
- decision latency,
- actuation latency,
- feedback latency.

---

## 300. Temporal Validity

A result is useful only if its temporal validity is understood.

An otherwise accurate decision may become ineffective when:

- data becomes stale,
- conditions change,
- the system evolves,
- communication is delayed,
- computation exceeds the control window.

---

## 301. State Freshness

The CPS state model should indicate whether its current representation is sufficiently fresh for the intended decision.

Freshness should be treated as a decision constraint rather than merely a data attribute.

---

## 302. State Consistency

State consistency requires that related state values do not contradict one another beyond defined tolerance.

For example:

- pump state,
- irrigation flow,
- valve state,
- water delivery,
- soil moisture

should form a logically consistent operational representation.

---

## 303. Structural Consistency

Structural consistency verifies that the environment itself is correctly constructed.

It checks:

- identity,
- topology,
- relationships,
- mappings,
- dependencies,
- interfaces,
- configuration.

---

## 304. Runtime Consistency

Runtime consistency verifies that the currently executing environment remains coherent.

It checks:

- current state,
- telemetry,
- heartbeats,
- execution status,
- timing,
- dependencies,
- unexpected transitions.

---

## 305. Structural Integrity Gate

The Structural Integrity Gate should execute before an experiment is admitted for execution.

The gate should determine whether the environment is structurally valid.

---

## 306. Structural Integrity Decision

The Structural Integrity Gate may return:

- **READY**
- **REVISE**
- **DEFER**
- **REJECT**

Only READY configurations should normally proceed to controlled execution.

---

## 307. Runtime Sanity

Runtime sanity checks occur after execution begins.

They detect conditions that could invalidate the current experiment even when its initial structural configuration was valid.

---

## 308. Runtime Sanity Response

A runtime sanity failure may trigger:

- warning,
- controlled pause,
- experiment termination,
- rollback,
- reinitialization,
- human review.

---

## 309. Orphan Detection

An orphan object is an object that lacks an expected valid relationship or ownership context.

Examples include:

- asset without required parent,
- state without asset,
- interface without endpoint,
- model without target,
- workflow activity without workflow.

---

## 310. Zombie Detection

A zombie object is an object that remains operational or addressable even though its originating lifecycle, dependency, or context is no longer valid.

Zombie detection is therefore a runtime and lifecycle integrity concern.

---

## 311. Orphan and Zombie Distinction

The distinction is:

**Orphan**
→ structurally disconnected.

**Zombie**
→ operationally alive despite invalid lifecycle or dependency context.

The two conditions should not be conflated.

---

## 312. Dependency Integrity

Each executable component should have its required dependencies resolved before execution.

Dependencies may include:

- models,
- assets,
- interfaces,
- data,
- resources,
- services,
- QAI functions,
- execution engines.

---

## 313. Missing Dependency

A missing dependency should prevent execution when that dependency is mandatory.

The system should not silently substitute an unrelated component.

---

## 314. Optional Dependency

Optional dependencies may be absent when explicitly permitted by the experiment configuration.

The resulting capability reduction should remain visible.

---

## 315. Dependency Version Integrity

A dependency should be resolved against a compatible version.

An experiment should record the actual version used rather than only the requested version.

---

## 316. Interface Integrity

Every subsystem interaction should be checked against the applicable interface contract.

Interface integrity includes:

- endpoint identity,
- input schema,
- output schema,
- semantics,
- timing,
- error behavior,
- lifecycle state.

---

## 317. Data Contract Integrity

Data exchanged between subsystems should comply with the expected data contract.

Validation should include:

- type,
- range,
- units,
- completeness,
- timestamp,
- provenance,
- semantic meaning.

---

## 318. Unit Integrity

Physical quantities must preserve their declared units.

For example:

- water volume,
- flow rate,
- pressure,
- soil moisture,
- temperature,
- energy

must not be silently interpreted using incompatible units.

---

## 319. Coordinate Integrity

Geospatial information should preserve:

- coordinate reference,
- spatial resolution,
- location identity,
- orientation,
- temporal association.

---

## 320. Temporal Coordinate Integrity

Time values should preserve their intended:

- clock,
- resolution,
- ordering,
- synchronization context,
- validity interval.

---

## 321. Model Integrity

A model should be checked for:

- identity,
- version,
- target compatibility,
- required parameters,
- supported operating conditions,
- known limitations.

---

## 322. Parameter Integrity

Parameters should be checked for:

- completeness,
- type,
- range,
- units,
- dependencies,
- validity,
- source.

---

## 323. Parameter Provenance

Every material parameter should have a known origin.

Possible sources include:

- measured data,
- reference model,
- domain knowledge,
- calibration,
- estimation,
- scenario definition,
- user configuration.

---

## 324. Calibration Boundary

Calibration modifies model parameters to improve correspondence with the reference system.

Calibration must not silently change the conceptual identity of the model.

---

## 325. Validation Boundary

Validation determines whether the calibrated model satisfies the defined fidelity or validity requirements.

Calibration and validation are therefore separate activities.

---

## 326. Overfitting Protection

Calibration should avoid producing a model that performs well only on the data used for calibration.

Independent validation evidence should be used where practical.

---

## 327. Emulator Fidelity

Emulator fidelity evaluates how closely the emulator reproduces the intended target behavior.

Relevant dimensions include:

- functional,
- state,
- behavioral,
- temporal,
- interface,
- environmental,
- constraint,
- stochastic,
- fault,
- control-response fidelity.

---

## 328. Simulation Validity

Simulation validity evaluates whether the simulation produces credible and useful results for the intended analytical purpose.

Simulation validity is not identical to emulator fidelity.

---

## 329. Deliberate Simulation Deviation

A simulator may intentionally depart from nominal conditions.

Examples include:

- increased temperature,
- reduced rainfall,
- lower water availability,
- changed demand,
- equipment degradation,
- policy changes.

Such deviation is valid when explicitly defined as part of the scenario.

---

## 330. Emulator Error

Unexpected deviation between an emulator and its reference target is treated as a fidelity or emulation-quality issue.

It should not automatically be interpreted as a real-world scenario.

---

## 331. Simulation Deviation

A simulation deviation may represent an intentional experimental condition.

Its meaning must therefore be determined from the scenario definition.

---

## 332. Error Classification

Errors should be classified where possible.

Possible classes include:

- structural,
- data,
- parameter,
- temporal,
- behavioral,
- interface,
- numerical,
- stochastic,
- communication,
- control,
- QAI execution.

---

## 333. Tolerance Model

Every material experiment should define acceptable tolerance bands where meaningful.

Tolerance may apply to:

- state,
- timing,
- output,
- control action,
- prediction,
- optimization objective,
- resource use.

---

## 334. Advantage Tolerance

A QAI method should not be considered advantageous merely because it produces a theoretically superior value.

The improvement must be meaningful within the accepted tolerance and resource context.

---

## 335. Classical Baseline

The classical baseline provides a reference against which other computational approaches can be compared.

The baseline should be sufficiently credible for the intended problem.

---

## 336. Quantum-Inspired Baseline

A quantum-inspired method may be evaluated independently as a computational performance-test class.

It should be compared using the same problem definition and applicable metrics.

---

## 337. Hybrid QAI Baseline

A hybrid QAI method combines classical and quantum or quantum-inspired components as defined by the experiment.

Its evaluation should identify the contribution and cost of each relevant component.

---

## 338. Quantum Pipeline

A quantum pipeline evaluates execution involving a quantum computational backend where applicable.

The evaluation should include the complete relevant execution path rather than only the theoretical quantum algorithm.

---

## 339. Comparative Evaluation

The four computational performance-test classes are:

1. Classical
2. Quantum-Inspired
3. Hybrid QAI
4. Quantum

They should be evaluated using comparable problem definitions and measurable criteria.

---

## 340. QAI Comparison Principle

The purpose of comparison is not to prove that quantum technology is always superior.

The purpose is to determine the best practical computational approach for the problem.

---

## 341. QAI Evaluation Dimensions

Comparison may include:

- solution quality,
- accuracy,
- optimization objective,
- execution time,
- resource consumption,
- scalability,
- robustness,
- confidence,
- reproducibility,
- operational suitability,
- economic value.

---

## 342. Advantage Gate

The Advantage Gate determines whether a proposed QAI method provides sufficient measurable benefit to justify its use.

It should consider:

- problem suitability,
- measurable improvement,
- resource cost,
- operational constraints,
- confidence,
- classical alternatives.

---

## 343. Classical Fallback

A classical or HPC fallback should remain available where appropriate.

Fallback may be used when:

- QAI execution fails,
- QAI advantage is insufficient,
- resources are unavailable,
- timing constraints cannot be met,
- confidence is inadequate.

---

## 344. Fallback Transparency

Fallback execution must remain visible in the experiment record.

The system should not report a fallback result as if it originated from the intended QAI method.

---

## 345. Resource-Aware Evaluation

QAI evaluation should consider available resources.

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
- execution time,
- queue availability.

---

## 346. Resource Feasibility

A method that cannot execute within the available resource envelope may be technically interesting but operationally unsuitable.

Resource feasibility therefore forms part of practical evaluation.

---

## 347. Computational Path Testing

The Computational Path should be tested independently.

A minimum test sequence is:

~~~text
Problem
  ↓
Representation
  ↓
Computational Method
  ↓
Execution
  ↓
Result
  ↓
Evaluation
~~~

---

## 348. Sensing Path Testing

The Sensing Path should be tested independently.

A minimum sequence is:

~~~text
Target State
  ↓
Sensor / Emulated Sensor
  ↓
Observation
  ↓
Validation
  ↓
State Update
~~~

---

## 349. Communication Path Testing

The Communication Path should be tested independently.

A minimum sequence is:

~~~text
Source
  ↓
Communication Interface
  ↓
Transport / Network
  ↓
Destination
  ↓
Acknowledgement / Feedback
~~~

---

## 350. Three-Path Independence

The three paths should be independently testable before being evaluated as an integrated system.

---

## 351. Three-Path Integration

Integrated execution may then combine:

~~~text
Sensing
   ↓
State
   ↓
Computational
   ↓
Decision
   ↓
Communication
   ↓
Action
   ↓
Feedback
~~~

---

## 352. Path Failure Isolation

A failure in one path should be identifiable without being misclassified as a failure in another path.

---

## 353. Sensing Failure Example

A stale or invalid sensor observation should not automatically be classified as a computational failure.

---

## 354. Computational Failure Example

An unavailable QAI backend should not automatically be classified as a sensing failure.

---

## 355. Communication Failure Example

A delayed command should be distinguishable from an incorrect decision.

---

## 356. Cross-Path Timing

Integrated testing should measure the timing contribution of each path.

This supports identification of the dominant latency source.

---

## 357. Emulator + QAI Test

An independent Emulator + QAI test should answer:

> Can QAI operate correctly against an emulated target representation?

---

## 358. Simulator + QAI Test

An independent Simulator + QAI test should answer:

> Can QAI operate correctly against a simulated scenario space?

---

## 359. Emulator + Simulator + QAI Test

A composed test should answer:

> Can a validated emulator provide a credible starting point for simulation and QAI experimentation?

---

## 360. CPS + QAI Test

A CPS + QAI test should evaluate:

- observation,
- decision,
- control,
- state transition,
- feedback,
- timing,
- stability.

---

## 361. Open-Loop QAI Test

Open-loop QAI testing compares computational methods against fixed inputs or predefined scenarios.

It is useful for controlled benchmarking.

---

## 362. Closed-Loop QAI Test

Closed-loop QAI testing evaluates the effect of repeated decisions on future system state.

It is essential for control-oriented applications.

---

## 363. Emulator Open-Loop Test

The emulator receives defined inputs and produces expected target behavior without feedback-driven recursive execution.

---

## 364. Emulator Closed-Loop Test

The emulator participates in a feedback loop where subsequent inputs depend on previous outputs.

---

## 365. Simulator Open-Loop Test

The simulator executes a predefined scenario without allowing resulting decisions to recursively modify subsequent decision inputs.

---

## 366. Simulator Closed-Loop Test

The simulator updates the scenario state based on control decisions and continues execution through the feedback loop.

---

## 367. Combined Test Matrix

A minimum Phase 2 integration matrix should include:

| Source | QAI | Loop | Primary Objective |
|---|---|---|---|
| Emulator | Classical | Open | Baseline |
| Emulator | QI | Open | QI evaluation |
| Emulator | Hybrid QAI | Open | Hybrid evaluation |
| Emulator | Quantum | Open | Quantum evaluation |
| Simulator | Classical | Open | Scenario baseline |
| Simulator | QI | Open | Scenario comparison |
| Simulator | Hybrid QAI | Open | Hybrid comparison |
| Simulator | Quantum | Open | Quantum comparison |
| Emulator | QAI | Closed | Control evaluation |
| Simulator | QAI | Closed | Scenario-control evaluation |
| Emulator + Simulator | QAI | Closed | Integrated CPS evaluation |

---

## 368. Test Matrix Extension

The matrix may later be extended across:

- nominal conditions,
- perturbed conditions,
- degraded conditions,
- critical conditions,
- catastrophic/extreme conditions.

---

## 369. Condition Independence

Operating condition classes should remain independent from model quality.

A degraded target condition does not mean that the emulator itself is degraded.

---

## 370. E0 — Nominal

E0 represents normal or expected operating conditions.

It provides the principal baseline for initial testing.

---

## 371. E1 — Perturbed

E1 represents controlled deviation from nominal conditions.

Examples include:

- weather variation,
- demand variation,
- parameter change,
- moderate environmental disturbance.

---

## 372. E2 — Degraded

E2 represents reduced operational capability.

Examples include:

- reduced pump efficiency,
- sensor degradation,
- reduced communication quality,
- partial resource loss.

---

## 373. E3 — Critical

E3 represents conditions where continued operation may require corrective action or controlled intervention.

---

## 374. E4 — Catastrophic / Extreme

E4 represents severe conditions that may exceed normal operating boundaries.

Experiments using E4 should be explicitly controlled and isolated.

---

## 375. Condition Transition

A system may transition between condition classes during a closed-loop experiment.

Such transitions should be recorded as CPS events.

---

## 376. Condition Detection

Condition classification may use:

- deterministic rules,
- thresholds,
- statistical methods,
- machine learning,
- QAI-supported classification.

---

## 377. AI-Assisted Condition Detection

AI may assist in recognizing emerging condition changes.

The AI result should remain distinguishable from authoritative system state.

---

## 378. AI-Assisted Calibration

AI may recommend calibration parameters.

The recommendation should pass through defined validation or approval mechanisms before becoming authoritative.

---

## 379. AI-Assisted Drift Detection

AI may identify patterns indicating:

- state drift,
- behavior drift,
- model drift,
- interface drift,
- calibration drift.

---

## 380. AI-Assisted Fault Classification

AI may classify observed anomalies into probable fault categories.

Classification should include confidence where applicable.

---

## 381. AI Recommendation Boundary

AI recommendations should not silently modify validated physical or operational truth.

Changes affecting model validity should enter a controlled recalibration and validation workflow.

---

## 382. Controlled Automation

Automation may be permitted when:

- the action is authorized,
- the state is valid,
- confidence is sufficient,
- constraints are satisfied,
- safety conditions are satisfied.

---

## 383. Human Oversight

Human oversight should remain available for decisions where:

- confidence is low,
- consequences are material,
- conditions are critical,
- model validity is uncertain,
- policy requires approval.

---

## 384. Human-AI Maturity

The Phase 2 environment supports a progression:

~~~text
Human Only
    ↓
AI Assisted
    ↓
Human + AI Augmentation
    ↓
Supervised Automation
    ↓
High-Confidence Automation
~~~

---

## 385. Pilot Automation Position

The Pilot should normally begin at the AI-assisted or supervised-automation level rather than assuming unrestricted autonomous control.

---

## 386. Safety Boundary

No optimization objective should override an explicit safety constraint.

Safety constraints remain authoritative over performance optimization.

---

## 387. Constraint Hierarchy

A conceptual hierarchy is:

~~~text
Safety / Regulatory Constraints
          ↓
Operational Constraints
          ↓
Resource Constraints
          ↓
Business Objectives
          ↓
Optimization Objectives
~~~

---

## 388. Constraint Violation

A proposed decision that violates a mandatory constraint should be rejected, modified, or routed for authorized human review.

---

## 389. Decision Confidence

Decision confidence should be recorded where the selected method supports meaningful confidence estimation.

Confidence should not be confused with correctness.

---

## 390. Evidence Chain

Each material result should be traceable through:

~~~text
Problem
  ↓
Data / State
  ↓
Model
  ↓
Scenario
  ↓
Method
  ↓
Execution
  ↓
Decision / Result
  ↓
Metric
  ↓
Evaluation
  ↓
Evidence
~~~

---

## 391. Phase 2 Evidence Package

A completed experiment should be capable of producing an evidence package containing:

- experiment definition,
- configuration,
- model versions,
- scenario,
- input data,
- execution trace,
- results,
- metrics,
- comparison,
- exceptions,
- validation status.

---

## 392. Part 3 Closure

Phase 2 must therefore be treated as an independently testable CPS experimentation architecture rather than as a single emulator or simulation subsystem.

The architectural separation is:

~~~text
                 ┌──────────────────────┐
                 │      Emulator        │
                 │ Faithful Reproduction │
                 └──────────┬───────────┘
                            │
                            │
                 ┌──────────▼───────────┐
                 │       Simulator      │
                 │ Exploration / What-If│
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │      CPS Layer       │
                 │ State / Control /    │
                 │ Feedback / Automata  │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │     QAI Pipeline     │
                 │ Classical / QI /    │
                 │ Hybrid / Quantum    │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │ Comparative Evidence│
                 │ Advantage / Value   │
                 └──────────────────────┘
~~~

The resulting Phase 2 architecture supports independent subsystem validation followed by controlled integration.

**Part 3 status: COMPLETE — PHASE 2 EXECUTION, INTEGRITY, PATH, AND QAI TESTING BASELINE**
---
# Phase 2 — Simulation & CPS Workflows
## README.md
## Part 4 — Sections 393–512

---

## 393. Part 4 Purpose

This part defines the deeper relationship between simulation, CPS workflows, scenarios, state transitions, control actions, and QAI evaluation.

The objective is to establish simulation as an independent experimental environment while ensuring that CPS workflows can operate consistently across emulated and simulated representations.

---

## 394. Simulation as an Independent Subsystem

Simulation is a first-class Phase 2 subsystem.

It is not an internal execution mode of the Emulator.

The Simulator has its own:

- models,
- parameters,
- scenarios,
- execution lifecycle,
- validation,
- results,
- interfaces,
- testing.

---

## 395. Simulation Boundary

The Simulator may consume validated information from the Emulator architecture, but it must not become dependent on the internal implementation of the Emulator.

The relationship should be contract-based.

---

## 396. Simulation Input

Simulation inputs may include:

- initial state,
- asset configuration,
- model parameters,
- environmental conditions,
- operating conditions,
- policies,
- control strategies,
- constraints,
- scenario definitions.

---

## 397. Simulation Output

Simulation outputs may include:

- state trajectories,
- events,
- observations,
- control actions,
- performance metrics,
- resource consumption,
- constraint violations,
- scenario outcomes.

---

## 398. Simulation Model

A simulation model represents the system or process for the purpose of controlled exploration.

The model may contain:

- state variables,
- equations,
- transition rules,
- behavioral rules,
- stochastic components,
- constraints,
- environmental dependencies.

---

## 399. Simulation Model Independence

A simulation model may reuse validated domain knowledge from an emulator without becoming an emulator.

Reuse of model knowledge does not imply subsystem identity.

---

## 400. Model Reuse

Reusable model components may include:

- asset characteristics,
- process equations,
- physical constraints,
- behavioral rules,
- environmental relationships,
- timing characteristics.

---

## 401. Simulation Asset Model

The simulation asset model represents assets in the context required for simulation.

It should maintain compatibility with the Phase 1 virtual asset model where the same logical asset identity is reused.

---

## 402. Simulation Asset Identity

A simulated asset should retain a traceable identity.

Where it represents a Phase 1 virtual asset, the relationship should be explicitly recorded.

---

## 403. Simulation Representation

A single logical asset may have multiple simulation representations.

For example:

~~~text
Logical Farm Pump
      │
      ├── Nominal Simulation Model
      ├── Degraded Simulation Model
      ├── Failure Simulation Model
      └── Energy-Constrained Simulation Model
~~~

---

## 404. Simulation Representation Context

Each representation should identify its intended context.

Context may include:

- scenario,
- experiment,
- operating condition,
- fidelity requirement,
- analytical objective.

---

## 405. Scenario Model

A scenario defines the conditions under which simulation occurs.

A scenario may specify:

- initial conditions,
- environmental conditions,
- parameter values,
- disturbances,
- policies,
- constraints,
- expected objectives.

---

## 406. Scenario Identity

Each scenario should have a unique identity and version.

This permits comparison of results across repeated experiments.

---

## 407. Scenario Lifecycle

A scenario may progress through:

~~~text
Draft
  ↓
Defined
  ↓
Validated
  ↓
Approved
  ↓
Executable
  ↓
Executed
  ↓
Reviewed
  ↓
Archived
~~~

---

## 408. Scenario Validation

A scenario should be checked before execution for:

- completeness,
- parameter validity,
- compatible models,
- valid initial state,
- supported operating conditions,
- executable constraints.

---

## 409. Scenario Composition

A scenario may combine multiple conditions.

For example:

~~~text
Weather Variation
        +
Water Demand Variation
        +
Pump Degradation
        +
Energy Constraint
        ↓
Composite Scenario
~~~

---

## 410. Scenario Isolation

Scenario execution should not silently modify the baseline model or shared authoritative state.

Experimental changes should remain isolated.

---

## 411. Scenario Branch

A scenario may be represented as a branch from a baseline configuration.

The branch should retain lineage to its originating configuration.

---

## 412. Scenario Lineage

Scenario lineage should allow identification of:

- parent scenario,
- derived scenario,
- modified parameters,
- added conditions,
- removed conditions,
- execution history.

---

## 413. Scenario Comparison

Two scenarios should be comparable when their relevant:

- model,
- asset,
- state,
- parameter,
- metric

definitions are compatible.

---

## 414. Parameter Model

Simulation parameters define the numerical or categorical values governing model behavior.

Parameters may be:

- fixed,
- variable,
- estimated,
- calibrated,
- randomized,
- scenario-specific.

---

## 415. Parameter Bounds

Where meaningful, parameters should define acceptable lower and upper bounds.

Out-of-bound values should be detected before execution.

---

## 416. Parameter Dependencies

Some parameters depend on others.

For example:

~~~text
Crop Type
    ↓
Crop Water Requirement
    ↓
Irrigation Demand
    ↓
Pump Requirement
~~~

Parameter dependencies should be explicit where they materially affect execution.

---

## 417. Parameter Sensitivity

Simulation should support analysis of how parameter variation affects outcomes.

Sensitivity analysis can identify parameters with disproportionate influence.

---

## 418. Parameter Perturbation

Perturbation intentionally changes one or more parameters from the baseline.

Perturbation should be recorded as part of the scenario.

---

## 419. Environmental Perturbation

Environmental perturbation may include:

- rainfall changes,
- temperature changes,
- humidity changes,
- wind changes,
- evaporation changes,
- soil conditions.

---

## 420. Demand Perturbation

Demand perturbation may include:

- crop demand changes,
- irrigation requirements,
- water availability changes,
- workforce demand,
- energy demand.

---

## 421. Equipment Perturbation

Equipment perturbation may include:

- reduced efficiency,
- reduced capacity,
- intermittent faults,
- increased energy consumption,
- delayed response.

---

## 422. Communication Perturbation

Communication perturbation may include:

- latency,
- packet loss,
- reduced bandwidth,
- temporary disconnection,
- delayed acknowledgement.

---

## 423. Sensing Perturbation

Sensing perturbation may include:

- noise,
- missing observations,
- stale observations,
- bias,
- reduced sampling frequency.

---

## 424. Computational Perturbation

Computational perturbation may include:

- reduced compute capacity,
- delayed execution,
- queue delay,
- unavailable accelerator,
- limited QPU access.

---

## 425. Open-Loop Simulation

Open-loop simulation provides a controlled environment for evaluating:

- model behavior,
- policies,
- optimization,
- predictions,
- parameter sensitivity,
- QAI methods.

---

## 426. Open-Loop Simulation Flow

~~~text
Scenario
  ↓
Initial State
  ↓
Simulation
  ↓
Outputs
  ↓
Metrics
  ↓
Evaluation
~~~

---

## 427. Closed-Loop Simulation

Closed-loop simulation allows decisions to influence subsequent simulated states.

This enables evaluation of control strategies and adaptive decision systems.

---

## 428. Closed-Loop Simulation Flow

~~~text
State
  ↓
Observation
  ↓
Decision / QAI
  ↓
Control
  ↓
Simulation
  ↓
New State
  ↓
Feedback
  └──────────────→ Observation
~~~

---

## 429. Closed-Loop Scenario

A closed-loop scenario should define:

- observation frequency,
- decision frequency,
- control actions,
- state transitions,
- termination conditions,
- safety constraints.

---

## 430. Closed-Loop Termination

Execution may terminate when:

- objective is achieved,
- time horizon is reached,
- unsafe state occurs,
- critical failure occurs,
- resource limit is reached,
- convergence is achieved,
- execution error occurs.

---

## 431. Simulation Horizon

Each simulation should define its intended temporal horizon.

Examples include:

- seconds,
- minutes,
- hours,
- days,
- seasons,
- multi-year planning horizons.

---

## 432. Time Resolution

Simulation time resolution should be selected according to the dynamics being studied.

A model should not imply precision that its temporal resolution cannot support.

---

## 433. Multi-Scale Simulation

Phase 2 may support multiple temporal and spatial scales.

For example:

~~~text
Device Level
    ↓
Field Level
    ↓
Farm Level
    ↓
Regional Level
~~~

---

## 434. Scale Consistency

When multiple scales are composed, the interfaces between scales must preserve relevant state and aggregation semantics.

---

## 435. Aggregation

Simulation may aggregate detailed asset states into higher-level representations.

Aggregation rules should be explicit.

---

## 436. Disaggregation

A higher-level representation may be decomposed into lower-level simulation entities where sufficient information exists.

Disaggregation must not invent authoritative detail.

---

## 437. Model Resolution

Model resolution should correspond to the intended analytical objective.

High resolution is not automatically better if it increases complexity without improving decision quality.

---

## 438. Simulation Fidelity

Simulation fidelity should be defined relative to the intended analytical question.

A simplified model may be valid for one experiment and inadequate for another.

---

## 439. Model Adequacy

The key question is:

> Is the model adequate for the decision being evaluated?

This is distinct from asking whether the model reproduces every physical detail.

---

## 440. Model Limitation

Known model limitations should be explicitly recorded.

Limitations may include:

- unavailable parameters,
- simplified physics,
- omitted interactions,
- limited calibration data,
- restricted operating range.

---

## 441. Validity Domain

Every important simulation model should define the conditions under which its results are considered valid.

---

## 442. Extrapolation

Results outside the model's validated domain should be marked as extrapolation.

They should not automatically receive the same confidence as in-domain results.

---

## 443. Simulation Confidence

Simulation outputs may carry confidence or quality indicators where meaningful.

Confidence should reflect the evidence supporting the result.

---

## 444. Scenario Confidence

Confidence may depend on:

- model validity,
- parameter quality,
- data quality,
- scenario realism,
- calibration evidence,
- execution quality.

---

## 445. Model Selection

Different models may be appropriate for different scenarios.

Model selection should therefore be explicit rather than hidden inside execution logic.

---

## 446. Model Ensemble

Multiple models may be evaluated for the same problem.

An ensemble may improve robustness when model uncertainty is material.

---

## 447. Model Comparison

Model comparison should evaluate:

- accuracy,
- execution cost,
- stability,
- coverage,
- complexity,
- suitability.

---

## 448. Surrogate Model

A surrogate model may approximate a more expensive simulation model.

Surrogate use should preserve traceability to the reference model.

---

## 449. Surrogate Validation

A surrogate should be validated against the reference model over its intended domain.

---

## 450. Simulation Acceleration

Acceleration techniques may include:

- reduced-order models,
- surrogate models,
- parallel execution,
- cached computations,
- approximate methods,
- hardware acceleration.

---

## 451. Acceleration Trade-Off

Acceleration should be evaluated against:

- accuracy,
- reproducibility,
- resource cost,
- complexity,
- operational value.

---

## 452. Simulation Resource Model

Simulation execution should identify its resource requirements.

Resources may include:

- CPU,
- GPU,
- NPU,
- TPU,
- FPGA,
- memory,
- storage,
- network,
- execution time.

---

## 453. Parallel Simulation

Independent scenarios may be executed in parallel where resources permit.

Parallel execution should preserve experiment and scenario identity.

---

## 454. Batch Simulation

A batch may contain multiple scenario configurations executed under a common experiment definition.

---

## 455. Parameter Sweep

A parameter sweep executes multiple configurations across a defined parameter space.

---

## 456. Design Space

The design space defines the range of possible parameter combinations being investigated.

---

## 457. Search Strategy

A search strategy may be:

- exhaustive,
- grid-based,
- random,
- heuristic,
- evolutionary,
- optimization-driven,
- QAI-assisted.

---

## 458. Optimization Objective

An optimization experiment should define one or more objectives.

For irrigation, objectives might include:

- water efficiency,
- crop stress reduction,
- energy consumption,
- operating cost,
- productivity.

---

## 459. Multi-Objective Optimization

Multiple objectives may conflict.

The experiment should therefore define:

- objective priorities,
- constraints,
- weighting,
- Pareto analysis,
- acceptable trade-offs.

---

## 460. Feasible Solution

A solution is feasible only if mandatory constraints are satisfied.

Optimization quality should be evaluated only after feasibility is established.

---

## 461. Infeasible Solution

An infeasible result should remain visible as such.

The system should not silently repair the result without recording the transformation.

---

## 462. Constraint Repair

Where authorized, a solution may be repaired to satisfy constraints.

The original result and repaired result should remain distinguishable.

---

## 463. Decision Policy

A policy defines how decisions are selected from observed state and contextual information.

---

## 464. Policy Evaluation

Policies should be evaluated across:

- nominal conditions,
- perturbations,
- degraded conditions,
- relevant failure conditions.

---

## 465. Policy Robustness

A robust policy should maintain acceptable performance under defined variations.

---

## 466. Policy Sensitivity

Policy sensitivity measures how decision behavior changes when relevant inputs change.

---

## 467. Policy Stability

A stable policy should avoid undesirable oscillatory or runaway behavior in closed-loop execution.

---

## 468. Policy Explainability

Where practical, the experiment should retain sufficient evidence to understand why a decision was selected.

---

## 469. Policy Version

Every executable policy should have an identifiable version.

This is essential for comparing experiments across time.

---

## 470. Policy Promotion

A policy should not move directly from experimentation into operational use.

Promotion should require defined evidence and validation.

---

## 471. Policy Rollback

Promoted policies should support rollback to an earlier validated version where operational architecture permits.

---

## 472. CPS Workflow

A CPS workflow defines the ordered or conditional interaction between:

- sensing,
- state,
- computation,
- decision,
- communication,
- control,
- physical or emulated response,
- feedback.

---

## 473. Workflow Independence

A workflow is independent from the implementation details of the emulator or simulator.

The same logical workflow may be executed against different compatible environments.

---

## 474. Workflow Reuse

A validated workflow should be reusable across:

- scenarios,
- assets,
- farms,
- model configurations,
- execution environments,

subject to compatibility constraints.

---

## 475. Workflow Parameterization

Workflows should use explicit parameters rather than duplicated workflow definitions whenever the logical process remains the same.

---

## 476. Workflow Instance

A workflow definition describes reusable logic.

A workflow instance represents one execution of that logic.

---

## 477. Workflow State

Workflow state should indicate:

- pending,
- ready,
- running,
- paused,
- completed,
- failed,
- cancelled,
- terminated.

---

## 478. Workflow Activity

Each workflow consists of activities with defined:

- inputs,
- outputs,
- dependencies,
- execution conditions,
- failure behavior.

---

## 479. Workflow Dependency

An activity should execute only when its mandatory predecessors have completed successfully or an explicitly supported alternative condition applies.

---

## 480. Conditional Workflow

Conditional workflows allow execution paths to depend on state or observation.

Example:

~~~text
Observe Soil Moisture
       ↓
Below Threshold?
   ┌───┴───┐
  Yes      No
   ↓        ↓
Irrigate   Monitor
~~~

---

## 481. Iterative Workflow

An iterative workflow repeats activities until:

- target condition is reached,
- maximum iterations are reached,
- termination condition occurs,
- safety condition requires stop.

---

## 482. Parallel Workflow

Independent activities may execute concurrently.

Parallel execution must not violate shared-state or resource constraints.

---

## 483. Synchronization Point

A synchronization point ensures that dependent activities observe a consistent required state before continuing.

---

## 484. Workflow Timing

Each workflow should define timing requirements where applicable.

Timing may include:

- start deadline,
- maximum duration,
- activity timeout,
- synchronization window,
- control cycle.

---

## 485. Workflow Failure

Failure of an activity should produce an identifiable workflow event.

The workflow may then:

- retry,
- branch,
- compensate,
- pause,
- terminate,
- request human intervention.

---

## 486. Retry Policy

Retries should be explicitly bounded.

Uncontrolled retry loops may mask structural or runtime failures.

---

## 487. Compensation

A compensation action attempts to restore a safe or consistent state after a failed activity.

---

## 488. Workflow Recovery

Recovery should preserve the execution history necessary to understand what occurred before recovery.

---

## 489. Workflow Cancellation

Cancellation should distinguish:

- requested cancellation,
- accepted cancellation,
- completed cancellation,
- forced termination.

---

## 490. Workflow Evidence

A workflow execution should produce sufficient evidence to reconstruct:

- inputs,
- decisions,
- actions,
- transitions,
- outputs,
- failures.

---

## 491. Workflow-to-Model Traceability

Each workflow activity should be traceable to the model or interface it invokes.

---

## 492. Workflow-to-Asset Traceability

Each asset affected by a workflow should be identifiable.

---

## 493. Workflow-to-Scenario Traceability

Each workflow execution should identify the scenario under which it ran.

---

## 494. Workflow-to-QAI Traceability

Where QAI is invoked, the workflow should record:

- QAI method,
- version,
- execution context,
- resource context,
- result,
- evaluation status.

---

## 495. Workflow-to-Decision Traceability

The workflow should connect QAI output to the resulting decision.

---

## 496. Workflow-to-Action Traceability

The workflow should connect the decision to the resulting control action.

---

## 497. Workflow-to-Feedback Traceability

The resulting state or observation should be connected back to the workflow execution.

---

## 498. End-to-End CPS Traceability

The complete chain should be:

~~~text
Asset
  ↓
Observation
  ↓
State
  ↓
Workflow
  ↓
QAI
  ↓
Decision
  ↓
Communication
  ↓
Action
  ↓
New State
  ↓
Feedback
~~~

---

## 499. Workflow Reproducibility

A workflow should be reproducible when:

- model versions are known,
- inputs are preserved,
- configuration is preserved,
- execution environment is known,
- stochastic controls are recorded.

---

## 500. Workflow Determinism

Where deterministic execution is expected, repeated execution with equivalent inputs should produce equivalent results within defined tolerances.

---

## 501. Workflow Non-Determinism

Where non-determinism is intentional, the source should be identifiable.

Examples include:

- stochastic simulation,
- randomized optimization,
- probabilistic sensing,
- quantum measurement.

---

## 502. Workflow Comparison

Two workflow executions should be comparable only when their relevant assumptions and configurations are sufficiently aligned.

---

## 503. Baseline Workflow

A baseline workflow provides the reference process against which alternative computational or control approaches are evaluated.

---

## 504. QAI Workflow Variant

A QAI workflow variant changes the computational method while preserving the comparable problem definition where possible.

---

## 505. Classical Workflow

The classical workflow establishes the conventional computational reference.

---

## 506. Quantum-Inspired Workflow

The quantum-inspired workflow evaluates an alternative computational approach without requiring execution on quantum hardware.

---

## 507. Hybrid QAI Workflow

The hybrid QAI workflow combines appropriate classical and quantum or quantum-inspired processing components.

---

## 508. Quantum Workflow

The quantum workflow evaluates a quantum computational approach where a suitable backend and problem formulation exist.

---

## 509. Workflow Comparison Principle

Computational-method comparison should change the method under evaluation while avoiding unnecessary changes to:

- problem definition,
- input data,
- constraints,
- evaluation criteria,
- scenario.

---

## 510. Workflow Result Normalization

Results from different computational methods should be normalized sufficiently to support meaningful comparison.

---

## 511. Workflow Result Qualification

Every result should identify whether it is:

- valid,
- invalid,
- incomplete,
- degraded,
- fallback-generated,
- outside validity domain.

---

## 512. Part 4 Closure

Simulation and CPS workflows form an independent experimentation layer.

The resulting architectural relationship is:

~~~text
                    ┌───────────────────────┐
                    │      Virtual Assets    │
                    │   State / Relationships│
                    └───────────┬───────────┘
                                │
                 ┌──────────────┴──────────────┐
                 │                             │
                 ▼                             ▼
       ┌──────────────────┐         ┌──────────────────┐
       │     Emulator     │         │    Simulator     │
       │ Faithful Target  │         │ Scenario Space   │
       │ Reproduction     │         │ What-If Analysis │
       └────────┬─────────┘         └────────┬─────────┘
                │                            │
                └──────────────┬─────────────┘
                               ▼
                     ┌───────────────────┐
                     │    CPS Workflow   │
                     │ State / Decision  │
                     │ Control / Feedback│
                     └─────────┬─────────┘
                               │
                               ▼
                     ┌───────────────────┐
                     │    QAI Pipeline   │
                     │ Classical / QI /  │
                     │ Hybrid / Quantum  │
                     └─────────┬─────────┘
                               │
                               ▼
                     ┌───────────────────┐
                     │ Comparative      │
                     │ Evaluation       │
                     └───────────────────┘
~~~

This separation enables independent Emulator testing, independent Simulator testing, independent QAI testing, and controlled CPS integration testing.

**Part 4 status: COMPLETE — PHASE 2 SIMULATION, SCENARIO, AND CPS WORKFLOW BASELINE**
---
# Phase 2 — Simulation & CPS Workflows
## README.md
## Part 5 — Sections 513–632

---

## 513. Part 5 Purpose

This part defines the integration architecture between the Emulator, Simulator, CPS, QAI Pipeline, and the three architectural paths.

The objective is to ensure that integrated execution remains controlled, observable, testable, and traceable.

---

## 514. Integration Principle

Integration should connect independently validated subsystems through explicit contracts.

Integration must not be used to hide unresolved subsystem defects.

---

## 515. Integration Readiness

A subsystem should enter integration only after its required local validation has reached the defined readiness state.

---

## 516. Integration Contract

An integration contract defines:

- participating subsystems,
- interfaces,
- exchanged data,
- state semantics,
- timing,
- errors,
- dependencies,
- ownership,
- expected outcomes.

---

## 517. Contract-First Integration

Integration should begin with contract validation before full execution.

This allows structural incompatibilities to be identified early.

---

## 518. Emulator-Simulator Relationship

The Emulator and Simulator may exchange validated representations, states, parameters, or outputs.

They remain separate execution systems.

---

## 519. Emulator-to-Simulator Transfer

A validated emulator result may provide:

- initial conditions,
- calibrated parameters,
- observed behavior,
- validated constraints,
- reference state.

---

## 520. Simulator-to-Emulator Transfer

Simulation may identify:

- candidate operating points,
- expected conditions,
- stress scenarios,
- policy candidates,
- parameter ranges.

Such results do not automatically modify the emulator.

---

## 521. Controlled Model Promotion

Simulation findings may initiate model changes only through a controlled promotion process.

The process should include:

~~~text
Experiment
  ↓
Evidence
  ↓
Review
  ↓
Candidate Change
  ↓
Calibration
  ↓
Validation
  ↓
Promotion
~~~

---

## 522. No Silent Promotion

A simulation result must not silently become a new authoritative model.

---

## 523. Emulator-Simulator Compatibility

Integration requires compatible:

- asset identities,
- state semantics,
- units,
- time references,
- model assumptions,
- interfaces.

---

## 524. State Transfer

State transfer between Emulator and Simulator should preserve:

- identity,
- timestamp,
- units,
- validity,
- provenance,
- uncertainty.

---

## 525. State Translation

Where representations differ, an explicit translation layer should be used.

Translation must remain traceable.

---

## 526. State Translation Error

Translation errors should be distinguishable from:

- emulator errors,
- simulation errors,
- QAI errors,
- communication errors.

---

## 527. Model Parameter Transfer

Parameters transferred from one subsystem to another should retain:

- parameter identity,
- value,
- unit,
- source,
- version,
- validity range.

---

## 528. Scenario-to-Emulator Transfer

A simulation scenario may be used to configure an emulator test where the emulator supports the corresponding operating condition.

---

## 529. Emulator-to-Scenario Transfer

Observed or validated emulator behavior may inform scenario construction.

The resulting scenario should remain explicitly identified as derived.

---

## 530. QAI Integration Boundary

The QAI Pipeline should consume well-defined problem representations rather than directly depending on internal Emulator or Simulator implementation.

---

## 531. QAI Input Contract

A QAI invocation should identify:

- problem,
- representation,
- data,
- state,
- constraints,
- objective,
- method,
- resource limits.

---

## 532. QAI Output Contract

A QAI result should identify:

- result,
- method,
- execution status,
- metrics,
- confidence,
- resource use,
- constraint status,
- provenance.

---

## 533. Emulator + QAI Integration

The Emulator + QAI integration path is:

~~~text
Emulator
   ↓
Validated State / Observation
   ↓
Problem Representation
   ↓
QAI Pipeline
   ↓
Decision / Result
   ↓
Evaluation
~~~

---

## 534. Simulator + QAI Integration

The Simulator + QAI integration path is:

~~~text
Simulator
   ↓
Scenario State / Outputs
   ↓
Problem Representation
   ↓
QAI Pipeline
   ↓
Decision / Result
   ↓
Scenario Evaluation
~~~

---

## 535. Emulator + Simulator + QAI

The combined path may be:

~~~text
Emulator
   ↓
Validated Reference
   ↓
Simulator
   ↓
Scenario Exploration
   ↓
QAI
   ↓
Candidate Solution
~~~

---

## 536. CPS + QAI Integration

The CPS integration path is:

~~~text
CPS State
   ↓
Observation
   ↓
QAI
   ↓
Decision
   ↓
Control Action
   ↓
CPS State Transition
   ↓
Feedback
~~~

---

## 537. QAI Independence

QAI should remain independently testable without requiring the complete CPS environment.

---

## 538. QAI Pipeline Variants

The same problem representation may be evaluated through:

- Classical,
- Quantum-Inspired,
- Hybrid QAI,
- Quantum

pipeline variants.

---

## 539. Method Substitution

Method substitution should occur through a stable problem and evaluation contract.

This allows comparative testing without redesigning the workflow.

---

## 540. Comparative Integration

Comparative execution should preserve common:

- problem definition,
- scenario,
- constraints,
- objectives,
- evaluation metrics.

---

## 541. Result Comparability

Results should be compared only after checking that the underlying problem definitions are equivalent or appropriately normalized.

---

## 542. Integration Metrics

Integration metrics may include:

- end-to-end latency,
- state consistency,
- data loss,
- interface failures,
- decision accuracy,
- control effectiveness,
- resource usage,
- recovery behavior.

---

## 543. Integration Latency

Total latency should be decomposed into subsystem contributions.

~~~text
Sensing
  +
Transport
  +
State Update
  +
QAI
  +
Decision
  +
Communication
  +
Action
  +
Feedback
~~~

---

## 544. Integration Throughput

Throughput measures how many valid observations, decisions, workflows, or scenarios can be processed within a defined interval.

---

## 545. Integration Capacity

Capacity should identify the practical operating envelope of the integrated environment.

---

## 546. Resource Contention

Integrated execution may create resource contention even when each subsystem operates correctly in isolation.

---

## 547. Resource Arbitration

Where multiple workloads compete for shared resources, allocation should follow explicit policy.

---

## 548. Resource Isolation

Where necessary, experiments should be isolated to prevent one execution from invalidating another.

---

## 549. Execution Priority

Priority may be used for:

- safety-critical tasks,
- real-time tests,
- validation runs,
- exploratory experiments,
- background workloads.

---

## 550. Queue Awareness

QAI and cloud-backed execution may involve queue delays.

Queue time should be distinguished from algorithm execution time.

---

## 551. QPU Queue

Where quantum hardware is used, QPU queue time should be recorded separately from:

- circuit preparation,
- execution,
- measurement,
- post-processing.

---

## 552. Cloud Execution

Cloud execution should preserve:

- endpoint identity,
- model version,
- execution configuration,
- resource type,
- execution time,
- result provenance.

---

## 553. Private Execution

Private execution environments may be used where client data, proprietary logic, or controlled experimentation requires isolation.

---

## 554. External Backend

An external computational backend should be treated as an explicit integration boundary.

---

## 555. Backend Failure

Backend failure should be distinguishable from:

- QAI algorithm failure,
- interface failure,
- network failure,
- resource exhaustion.

---

## 556. Backend Fallback

Where authorized, an unavailable backend may trigger classical or alternative execution.

---

## 557. Fallback Integration

Fallback should preserve the same problem and evaluation contract wherever technically possible.

---

## 558. Three-Path Integration Architecture

The three paths should converge only where their contracts require interaction.

~~~text
              ┌──────────────┐
              │ Sensing Path │
              └──────┬───────┘
                     │
                     ▼
              ┌──────────────┐
              │  CPS State   │
              └──────┬───────┘
                     │
                     ▼
          ┌──────────────────────┐
          │ Computational Path   │
          │ QAI / Classical /   │
          │ Hybrid / Quantum    │
          └──────────┬───────────┘
                     │
                     ▼
              ┌──────────────┐
              │   Decision   │
              └──────┬───────┘
                     │
                     ▼
          ┌──────────────────────┐
          │ Communication Path   │
          └──────────┬───────────┘
                     │
                     ▼
              ┌──────────────┐
              │ Control/Act  │
              └──────┬───────┘
                     │
                     ▼
                 New State
~~~

---

## 559. Sensing-Computational Boundary

The Sensing Path provides validated observations to the Computational Path.

The Computational Path should not silently reinterpret raw sensing semantics.

---

## 560. Computational-Communication Boundary

The Computational Path produces decisions or commands that the Communication Path transports according to the defined contract.

---

## 561. Communication-Control Boundary

The Communication Path delivers commands to the intended endpoint.

Successful transmission does not guarantee successful physical or emulated execution.

---

## 562. Control-Feedback Boundary

The control result becomes an observable state or event that can re-enter the Sensing Path.

---

## 563. End-to-End Loop

The complete integrated loop is:

~~~text
Sense
  ↓
Validate
  ↓
State
  ↓
Process
  ↓
Decide
  ↓
Communicate
  ↓
Act
  ↓
Observe
  ↓
Learn
  └──────────────→ Sense
~~~

---

## 564. Sense Stage

Sense obtains observations from:

- emulated sensors,
- simulated observations,
- future physical sensors,
- external data sources.

---

## 565. Validate Stage

Validation determines whether the observation is usable.

Checks may include:

- completeness,
- freshness,
- range,
- units,
- provenance,
- consistency.

---

## 566. Process Stage

Processing transforms validated observations into decision-ready representations.

Processing may include:

- normalization,
- aggregation,
- feature construction,
- state estimation,
- model preparation.

---

## 567. Decide Stage

Decision logic selects an action or recommendation based on:

- current state,
- objectives,
- constraints,
- computational method,
- confidence.

---

## 568. Communicate Stage

Communication transfers the decision to the intended execution endpoint.

---

## 569. Act Stage

Actuation applies the decision to:

- emulator,
- simulator,
- CPS representation,
- future physical system.

---

## 570. Learn Stage

Learning evaluates the resulting outcome and may update:

- knowledge,
- parameters,
- models,
- policies,
- scenario assumptions.

Updates remain subject to validation and governance.

---

## 571. Learning Boundary

Learning must not automatically alter authoritative models without controlled validation.

---

## 572. Integration Failure Taxonomy

Integration failures may include:

- identity mismatch,
- schema mismatch,
- semantic mismatch,
- timing mismatch,
- state mismatch,
- mapping mismatch,
- dependency failure,
- resource failure,
- communication failure,
- computational failure.

---

## 573. Identity Mismatch

An identity mismatch occurs when two subsystems refer to incompatible or ambiguous entities.

---

## 574. Schema Mismatch

A schema mismatch occurs when exchanged data does not conform to the required structural contract.

---

## 575. Semantic Mismatch

A semantic mismatch occurs when structurally valid data has incompatible meaning.

---

## 576. Timing Mismatch

A timing mismatch occurs when data or decisions arrive outside the acceptable timing envelope.

---

## 577. State Mismatch

A state mismatch occurs when participating subsystems disagree about the relevant system state.

---

## 578. Mapping Mismatch

A mapping mismatch occurs when a logical entity is incorrectly associated with a virtual, simulated, emulated, or physical representation.

---

## 579. Dependency Failure

A dependency failure occurs when a required component or service is unavailable or incompatible.

---

## 580. Resource Failure

A resource failure occurs when execution cannot obtain required compute, memory, network, energy, quantum, or other resources.

---

## 581. Communication Failure

Communication failure occurs when required information cannot be transferred reliably within the defined contract.

---

## 582. Computational Failure

Computational failure occurs when the selected algorithm or pipeline cannot produce a valid result.

---

## 583. Failure Correlation

Every integration failure should be correlated to the relevant:

- experiment,
- workflow,
- subsystem,
- interface,
- asset,
- scenario.

---

## 584. Failure Containment

A subsystem failure should be contained where possible so that unrelated experiments are not invalidated.

---

## 585. Failure Propagation

Where failure propagation is expected, the dependency chain should be explicit.

---

## 586. Fault Injection

Controlled fault injection should be used to evaluate resilience.

Possible faults include:

- missing sensor,
- delayed message,
- unavailable resource,
- failed actuator,
- invalid parameter,
- QAI backend failure.

---

## 587. Fault Injection Boundary

Fault injection should occur only inside explicitly defined experimental boundaries.

---

## 588. Fault Injection Evidence

Injected faults must be distinguishable from naturally occurring execution errors.

---

## 589. Recovery Test

Recovery tests should evaluate whether the integrated environment can return to a valid operating condition after controlled disruption.

---

## 590. Recovery Strategies

Possible recovery strategies include:

- retry,
- fallback,
- reinitialization,
- state restoration,
- model substitution,
- workflow restart,
- human intervention.

---

## 591. Recovery Validation

A recovered execution should be validated before being treated as equivalent to uninterrupted execution.

---

## 592. Graceful Degradation

The integrated environment should support defined degraded modes where practical.

---

## 593. Degraded QAI Mode

A QAI pipeline may operate in degraded mode when:

- fewer resources are available,
- lower precision is acceptable,
- a reduced model is used,
- a classical fallback is selected.

---

## 594. Degraded Sensing Mode

Sensing may operate with reduced observation quality when explicitly supported.

---

## 595. Degraded Communication Mode

Communication may operate with reduced bandwidth or increased latency when the workflow remains within its acceptable limits.

---

## 596. Degraded Control Mode

Control may switch to a safe fallback policy when the preferred decision mechanism becomes unavailable.

---

## 597. Safe State

Every critical workflow should define a safe state where applicable.

---

## 598. Safe Transition

Transition into a safe state should itself be validated and observable.

---

## 599. Emergency Stop

Critical experiments should support an explicit termination or emergency-stop mechanism where the execution architecture requires it.

---

## 600. Experiment Isolation

Experiments should not unintentionally modify:

- shared baseline models,
- authoritative assets,
- validated configurations,
- unrelated experiments.

---

## 601. Experiment Sandbox

A sandbox provides controlled isolation for experimental changes.

---

## 602. Shared Resource Boundary

Shared resources should have explicit ownership or allocation semantics.

---

## 603. Shared Model Boundary

A shared model should be immutable during an experiment unless the experiment explicitly defines model evolution.

---

## 604. Configuration Immutability

Execution configuration should remain immutable after execution begins except through explicitly controlled runtime configuration mechanisms.

---

## 605. Configuration Change

A runtime configuration change should produce a traceable event.

---

## 606. Experiment Branching

An experiment may branch into multiple configurations for comparison.

Each branch should preserve parent lineage.

---

## 607. Experiment Merge

Results from multiple branches may be aggregated after validating comparability.

---

## 608. Result Aggregation

Aggregation should preserve the identity of individual runs.

Aggregated results must not erase underlying evidence.

---

## 609. Benchmark Run

A benchmark run evaluates one computational method under a defined configuration.

---

## 610. Benchmark Set

A benchmark set contains multiple comparable runs.

---

## 611. Benchmark Fairness

Comparative benchmarking should use equivalent problem definitions and disclose material differences in:

- resources,
- hardware,
- software,
- execution environment,
- parameter settings.

---

## 612. Benchmark Repetition

Where stochasticity or measurement variation exists, repeated runs may be required.

---

## 613. Statistical Summary

Repeated experiments may be summarized using appropriate statistical measures.

The summary should not hide significant variance.

---

## 614. Outlier Handling

Outlier treatment should be explicitly defined.

Outliers should not be removed solely because they weaken a preferred conclusion.

---

## 615. Benchmark Evidence

Benchmark results should preserve the evidence required to reproduce or independently inspect the comparison.

---

## 616. QAI Advantage Evidence

Evidence for QAI advantage should include more than algorithmic output.

It may include:

- solution quality,
- runtime,
- resource consumption,
- robustness,
- scalability,
- economic relevance.

---

## 617. Practical Advantage

Practical advantage exists when the measured improvement is meaningful under the actual execution constraints.

---

## 618. Theoretical Advantage

Theoretical advantage may motivate experimentation but is not sufficient for operational promotion.

---

## 619. No-Advantage Result

A valid experiment may conclude that no QAI advantage was demonstrated.

This is an acceptable scientific and engineering outcome.

---

## 620. Classical Selection

The classical method should remain the selected approach when it provides the best validated result under the applicable constraints.

---

## 621. Quantum-Inspired Selection

A quantum-inspired method may be selected when it provides the best validated trade-off for the problem.

---

## 622. Hybrid Selection

A hybrid QAI method may be selected when combining computational approaches provides measurable benefit.

---

## 623. Quantum Selection

A quantum method may be selected when its measured benefit and operational feasibility justify its use.

---

## 624. Method Selection Record

The final selected method should have an explicit selection record containing:

- alternatives,
- metrics,
- constraints,
- results,
- evidence,
- rationale.

---

## 625. Promotion Candidate

A successful experiment may create a promotion candidate.

Promotion candidate status does not imply production readiness.

---

## 626. Promotion Gate

A promotion gate should evaluate:

- validation,
- reproducibility,
- robustness,
- safety,
- resource feasibility,
- value,
- governance requirements.

---

## 627. Promotion Outcome

The promotion gate may return:

- PROMOTE,
- PROMOTE WITH CONDITIONS,
- REVISE,
- REJECT,
- DEFER.

---

## 628. Pilot Promotion Boundary

Pilot results should normally promote only validated artifacts required for the next phase.

Unnecessary production complexity should remain deferred.

---

## 629. Phase 2 Learning

Phase 2 should generate learning about:

- architecture,
- models,
- workflows,
- QAI suitability,
- resource requirements,
- limitations,
- value.

---

## 630. Architecture Feedback

Integration testing should be allowed to reveal weaknesses in the architecture.

Failures should not automatically be treated as implementation defects.

---

## 631. Architecture Revision

Where repeated integration evidence identifies an architectural limitation, the architecture should be reviewed before adding workaround complexity.

---

## 632. Part 5 Closure

Phase 2 integration is therefore based on independent subsystems connected through explicit contracts.

The architectural objective is:

~~~text
Independent Components
        ↓
Local Validation
        ↓
Contract Validation
        ↓
Subsystem Integration
        ↓
Three-Path Integration
        ↓
Open-Loop Testing
        ↓
Closed-Loop Testing
        ↓
Comparative QAI Evaluation
        ↓
Evidence
        ↓
Promotion Decision
~~~

This provides a controlled bridge from Phase 1 virtualization and emulation foundations toward Phase 2 simulation, CPS workflows, and QAI experimentation.

**Part 5 status: COMPLETE — PHASE 2 INTEGRATION AND COMPARATIVE EVALUATION BASELINE**
---
# Phase 2 — Simulation & CPS Workflows
## README.md
## Part 6 — Sections 633–752

---

## 633. Part 6 Purpose

This part defines the validation architecture for Phase 2.

Validation must determine whether the Emulator, Simulator, CPS workflows, QAI pipelines, and their integrated execution produce sufficiently credible and reproducible results for the intended engineering purpose.

---

## 634. Validation Principle

Validation follows:

**Define → Execute → Measure → Compare → Assess → Record**

A result should not be considered validated merely because execution completed successfully.

---

## 635. Execution Success Is Not Validation

Successful execution means that a workflow completed.

Validation means that the resulting behavior and evidence satisfy the applicable acceptance criteria.

---

## 636. Validation Layers

Phase 2 validation operates at multiple levels:

1. Structural validation
2. Interface validation
3. Emulator validation
4. Simulation validation
5. CPS validation
6. QAI validation
7. Integration validation
8. End-to-end validation

---

## 637. Structural Validation

Structural validation confirms that the environment is correctly constructed before execution.

---

## 638. Structural Validation Scope

Structural validation includes:

- identity,
- completeness,
- relationships,
- mappings,
- dependencies,
- interfaces,
- configuration,
- model availability.

---

## 639. Structural Validation Outcome

The structural validation result should identify:

- passed checks,
- failed checks,
- warnings,
- unresolved conditions,
- overall readiness.

---

## 640. Structural Validation Gate

The structural validation gate should occur before executable testing.

~~~text
Configuration
     ↓
Structural Checks
     ↓
Integrity Gate
     ↓
READY / REVISE / DEFER / REJECT
     ↓
Execution
~~~

---

## 641. Interface Validation

Interface validation confirms that participating components can exchange information according to their contracts.

---

## 642. Interface Validation Dimensions

Interface validation may evaluate:

- schema,
- semantics,
- units,
- identity,
- timing,
- errors,
- acknowledgements,
- lifecycle state.

---

## 643. Emulator Validation

Emulator validation determines whether the emulator reproduces the intended target behavior within defined fidelity limits.

---

## 644. Emulator Reference

Validation requires a reference against which emulator behavior can be compared.

The reference may be:

- physical observation,
- trusted reference model,
- validated data,
- controlled test case,
- analytical expectation.

---

## 645. Emulator Validation Scope

Emulator validation may include:

- state,
- behavior,
- timing,
- interface,
- constraints,
- faults,
- control response.

---

## 646. Emulator Functional Validation

Functional validation checks whether expected functions occur under defined inputs.

---

## 647. Emulator State Validation

State validation checks whether the emulator reaches expected states under defined conditions.

---

## 648. Emulator Behavioral Validation

Behavioral validation checks whether the sequence and response of the emulator are consistent with the reference.

---

## 649. Emulator Temporal Validation

Temporal validation checks whether events and responses occur within defined timing expectations.

---

## 650. Emulator Interface Validation

Interface validation checks whether the emulator exposes and consumes interfaces consistently with the target system contract.

---

## 651. Emulator Constraint Validation

Constraint validation checks whether defined operating constraints are correctly represented.

---

## 652. Emulator Fault Validation

Fault validation checks whether defined fault conditions produce expected degraded or failure behavior.

---

## 653. Emulator Control Validation

Control validation checks whether control actions produce the expected emulator response.

---

## 654. Emulator Fidelity Profile

An emulator should have a defined fidelity profile describing which fidelity dimensions are validated.

---

## 655. Fidelity Is Purpose-Dependent

An emulator does not need maximum fidelity for every possible purpose.

It needs sufficient fidelity for its intended use.

---

## 656. Fidelity Threshold

Each material fidelity dimension should have an applicable threshold or acceptance condition where measurable.

---

## 657. Fidelity Evidence

Fidelity evidence should identify:

- reference,
- emulator version,
- test condition,
- measured difference,
- tolerance,
- result.

---

## 658. Fidelity Error

Fidelity error is the difference between emulator behavior and the selected reference under comparable conditions.

---

## 659. Error Context

An error should always be interpreted within:

- operating condition,
- measurement resolution,
- model validity,
- reference uncertainty,
- intended use.

---

## 660. Reference Uncertainty

Reference data may itself contain uncertainty.

Validation should avoid treating uncertain reference values as exact truth.

---

## 661. Emulator Calibration

Calibration may be used to improve correspondence between emulator and reference.

---

## 662. Calibration Evidence

Calibration should preserve:

- parameters changed,
- original values,
- new values,
- calibration data,
- method,
- result.

---

## 663. Calibration Freeze

After calibration, the validated parameter set should be frozen for the corresponding validation run.

---

## 664. Independent Validation

Where practical, validation should use evidence independent from calibration data.

---

## 665. Emulator Drift

Over time, emulator correspondence may deteriorate.

Drift may result from:

- changed target behavior,
- changed environment,
- changed parameters,
- interface evolution,
- calibration changes.

---

## 666. Drift Detection

Drift detection should compare current evidence against defined reference or baseline behavior.

---

## 667. Drift Classification

Drift may be classified as:

- state drift,
- behavioral drift,
- model drift,
- interface drift,
- calibration drift.

---

## 668. Drift Response

Detected drift may result in:

- continued use,
- monitoring,
- recalibration,
- revalidation,
- suspension,
- replacement.

---

## 669. Simulation Validation

Simulation validation determines whether the simulator is suitable for the intended analytical purpose.

---

## 670. Simulation Reference

Simulation validation may use:

- analytical solutions,
- trusted models,
- historical observations,
- emulator results,
- controlled experiments,
- domain expectations.

---

## 671. Simulation Verification

Verification asks:

> Was the simulation model implemented according to its intended specification?

---

## 672. Simulation Validation

Validation asks:

> Is the resulting simulation sufficiently representative for the intended purpose?

---

## 673. Verification and Validation Distinction

Verification and validation should remain separate concepts.

~~~text
Specification
     ↓
Implementation
     ↓
Verification
     ↓
Model
     ↓
Validation
     ↓
Intended Use
~~~

---

## 674. Simulation Functional Verification

Functional verification checks whether model rules execute as designed.

---

## 675. Simulation Numerical Verification

Numerical verification checks numerical behavior, convergence, stability, and expected computational properties where applicable.

---

## 676. Simulation Scenario Validation

Scenario validation checks whether the scenario represents the intended experimental condition.

---

## 677. Simulation Parameter Validation

Parameter validation checks whether selected parameter values are valid for the scenario and model.

---

## 678. Simulation Output Validation

Output validation checks whether resulting outputs are credible and within the expected domain.

---

## 679. Simulation Stability

Simulation should be evaluated for undesirable:

- divergence,
- instability,
- numerical explosion,
- oscillation,
- deadlock.

---

## 680. Simulation Conservation Checks

Where domain physics require conservation laws, appropriate conservation checks should be applied.

---

## 681. Agriculture Conservation Examples

Where applicable, simulation may check relationships involving:

- water,
- energy,
- mass,
- nutrient balance.

---

## 682. Simulation Boundary Conditions

Boundary conditions should be explicit.

Examples include:

- field boundaries,
- water availability,
- energy limits,
- environmental limits,
- operating constraints.

---

## 683. Scenario Validity Domain

A scenario should remain within the supported validity domain of the selected model unless it is explicitly designated as exploratory extrapolation.

---

## 684. Extrapolation Flag

Out-of-domain execution should generate an explicit qualification flag.

---

## 685. Simulation Confidence

Simulation confidence should reflect the strength of evidence supporting the selected model and scenario.

---

## 686. Confidence Components

Confidence may consider:

- model validation,
- parameter quality,
- data quality,
- calibration quality,
- scenario realism,
- execution quality.

---

## 687. CPS Validation

CPS validation evaluates whether the cyber and physical representations operate consistently as an integrated control system.

---

## 688. CPS Validation Scope

CPS validation includes:

- state,
- transitions,
- sensing,
- computation,
- decision,
- communication,
- actuation,
- feedback.

---

## 689. CPS State Validation

CPS state validation checks whether state representations remain internally coherent during execution.

---

## 690. CPS Transition Validation

State transitions should occur only when their defined conditions are satisfied.

---

## 691. CPS Automata Validation

Where state automata are used, validation should verify:

- states,
- transitions,
- guards,
- actions,
- terminal conditions.

---

## 692. Desired State Validation

The system should distinguish:

- current state,
- desired state,
- deviation.

---

## 693. State Deviation

State deviation should be calculated or classified according to the applicable domain model.

---

## 694. Control Validation

Control validation evaluates whether actions move the system toward the desired state without violating constraints.

---

## 695. Feedback Validation

Feedback validation confirms that resulting state information correctly re-enters the control loop.

---

## 696. Closed-Loop Validation

Closed-loop validation should evaluate repeated operation rather than only a single control cycle.

---

## 697. Closed-Loop Performance

Performance may include:

- convergence,
- stability,
- response time,
- control effort,
- overshoot,
- recovery.

---

## 698. Closed-Loop Robustness

Robustness should be evaluated under defined perturbations and degraded conditions.

---

## 699. Closed-Loop Fault Validation

Fault conditions should be introduced where appropriate to determine whether the loop remains within acceptable behavior.

---

## 700. Safety Validation

Safety validation checks that mandatory safety constraints remain enforced during closed-loop execution.

---

## 701. QAI Validation

QAI validation determines whether the selected computational method produces valid results under the defined problem and execution conditions.

---

## 702. QAI Problem Validation

Before algorithm evaluation, the problem representation itself should be validated.

---

## 703. QAI Representation Validation

The representation should preserve the semantics required by the original problem.

---

## 704. QAI Constraint Validation

Constraints should be represented correctly and remain enforceable during execution.

---

## 705. QAI Objective Validation

Optimization or decision objectives should preserve their intended meaning.

---

## 706. QAI Result Validation

A result should be checked for:

- feasibility,
- completeness,
- numerical validity,
- constraint compliance,
- expected output structure.

---

## 707. QAI Runtime Validation

Runtime validation should record:

- execution status,
- runtime,
- resource use,
- backend status,
- errors,
- fallback status.

---

## 708. QAI Reproducibility

Where possible, QAI experiments should be repeated to evaluate result consistency.

---

## 709. Quantum Measurement Variation

Quantum execution may produce statistical variation.

Such variation should be represented explicitly rather than treated automatically as execution failure.

---

## 710. QAI Comparative Validation

Each computational method should be validated independently before comparative conclusions are drawn.

---

## 711. Classical Validation

The classical baseline should first demonstrate that the problem can be solved correctly using the reference approach.

---

## 712. Quantum-Inspired Validation

The quantum-inspired implementation should demonstrate correctness against the same problem and constraints.

---

## 713. Hybrid QAI Validation

The hybrid implementation should validate both:

- component-level correctness,
- integrated correctness.

---

## 714. Quantum Validation

Quantum execution should validate:

- problem encoding,
- circuit or computational representation,
- execution,
- measurement,
- post-processing.

---

## 715. Comparative Result Validation

Comparison should use validated results rather than raw execution outputs.

---

## 716. Advantage Validation

An Advantage Gate conclusion should be supported by validated evidence.

---

## 717. No-Advantage Validation

A conclusion of no demonstrated advantage should also be considered a valid validated result.

---

## 718. Integration Validation

Integration validation evaluates whether independently validated components operate correctly together.

---

## 719. Integration Validation Sequence

~~~text
Subsystem Validation
        ↓
Interface Validation
        ↓
Pairwise Integration
        ↓
Multi-Subsystem Integration
        ↓
Three-Path Integration
        ↓
Closed-Loop Integration
        ↓
End-to-End Validation
~~~

---

## 720. Pairwise Integration

Pairwise integration should validate critical relationships such as:

- Emulator ↔ QAI,
- Simulator ↔ QAI,
- CPS ↔ QAI,
- Emulator ↔ Simulator,
- State ↔ Workflow.

---

## 721. Multi-Subsystem Integration

Multi-subsystem integration evaluates the combined behavior of more than two subsystems.

---

## 722. Emulator-QAI Validation

This test validates the direct interaction between the emulator and QAI pipeline.

---

## 723. Simulator-QAI Validation

This test validates the direct interaction between the simulator and QAI pipeline.

---

## 724. Emulator-Simulator Validation

This test validates controlled transfer between emulated and simulated representations.

---

## 725. CPS-QAI Validation

This test validates QAI decisions within a CPS state and control context.

---

## 726. Three-Path Validation

The three paths should be validated both independently and collectively.

---

## 727. Computational Path Validation

The Computational Path should validate:

- representation,
- algorithm,
- execution,
- result,
- comparison.

---

## 728. Sensing Path Validation

The Sensing Path should validate:

- observation generation,
- transport,
- quality,
- state update.

---

## 729. Communication Path Validation

The Communication Path should validate:

- routing,
- delivery,
- latency,
- integrity,
- acknowledgement.

---

## 730. Cross-Path Validation

Cross-path validation should identify whether a failure originates from:

- sensing,
- computation,
- communication,
- or their interaction.

---

## 731. End-to-End Validation

End-to-end validation verifies the complete logical chain from observation to resulting state.

---

## 732. End-to-End Validation Flow

~~~text
Observation
    ↓
State
    ↓
Workflow
    ↓
QAI
    ↓
Decision
    ↓
Communication
    ↓
Action
    ↓
System Response
    ↓
Feedback
    ↓
New State
~~~

---

## 733. End-to-End Success

End-to-end success requires more than completion.

It requires that:

- state remained valid,
- interfaces remained valid,
- decisions were valid,
- actions were valid,
- feedback was valid,
- acceptance metrics were satisfied.

---

## 734. Validation Evidence

Validation evidence should be retained for every material gate.

---

## 735. Evidence Types

Evidence may include:

- test outputs,
- logs,
- traces,
- metrics,
- comparisons,
- screenshots,
- configuration records,
- model versions,
- execution records.

---

## 736. Evidence Integrity

Evidence should remain attributable to the execution that generated it.

---

## 737. Evidence Provenance

Evidence provenance should identify:

- source,
- execution,
- timestamp,
- version,
- method,
- scenario.

---

## 738. Validation Record

Each validation activity should have a structured record.

---

## 739. Validation Result States

A validation result may be:

- PASS,
- PASS WITH CONDITIONS,
- FAIL,
- INCONCLUSIVE,
- NOT APPLICABLE.

---

## 740. Conditional Pass

A conditional pass indicates that the result is acceptable only under explicit restrictions.

---

## 741. Inconclusive Result

An inconclusive result indicates that available evidence is insufficient to establish validity.

---

## 742. Validation Failure

A validation failure should identify the failed criterion and relevant evidence.

---

## 743. Failure Severity

Failures may be classified according to their impact on:

- safety,
- correctness,
- fidelity,
- reproducibility,
- performance,
- value.

---

## 744. Validation Exception

An exception may be accepted only when:

- the limitation is understood,
- impact is bounded,
- authority exists,
- the exception is recorded.

---

## 745. Validation Waiver

A waiver should not be used to disguise an unresolved critical defect.

---

## 746. Validation Re-Test

After corrective action, affected validation activities should be repeated.

---

## 747. Regression Validation

Changes should trigger regression validation where they could affect previously validated behavior.

---

## 748. Validation Scope

Regression scope should be proportional to the impact of the change.

---

## 749. Validation Traceability

Every validation result should trace back to:

- requirement,
- model,
- interface,
- workflow,
- scenario,
- execution.

---

## 750. Acceptance Traceability

Validation should ultimately trace to the Phase 2 acceptance criteria.

---

## 751. Phase 2 Validation Gate

The Phase 2 Validation Gate should determine whether the integrated environment is sufficiently validated for the next stage.

Possible outcomes:

- READY,
- READY WITH CONDITIONS,
- REVISE,
- DEFER.

---

## 752. Part 6 Closure

Phase 2 validation establishes the distinction between:

~~~text
Structural Correctness
        ↓
Emulator Fidelity
        ↓
Simulation Validity
        ↓
CPS Correctness
        ↓
QAI Correctness
        ↓
Integration Correctness
        ↓
End-to-End Validity
~~~

This layered validation model prevents a successful execution of one subsystem from being mistaken for validation of the complete CPS architecture.

**Part 6 status: COMPLETE — PHASE 2 VALIDATION ARCHITECTURE BASELINE**
---
