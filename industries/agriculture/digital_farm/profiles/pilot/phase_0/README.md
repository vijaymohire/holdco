# Digital Farm — Phase 0
## Implementation Readiness & Scope Baseline

---

## 1. Purpose

Phase 0 establishes the **implementation readiness and scope baseline** for the first callable Digital Farm Pilot.

The purpose is not to implement the Digital Farm or its technical components. The purpose is to define **what will be implemented, why it will be implemented, what is required, how it will be evaluated, and where the implementation boundary lies**.

Phase 0 therefore provides the controlled managerial baseline from which subsequent technical realization can proceed.

---

## 2. Architectural Position

Digital Farm is the **managerial, service, orchestration, lifecycle, value, and coordination layer** for the agriculture realization.

It does not replace or duplicate technical implementations such as:

- Digital Twin
- CPS
- QAI
- Simulation
- Sensing
- Edge
- Networking
- Physical devices
- Technical execution environments

Those capabilities remain in their respective technical realization areas.

Phase 0 defines the requirements and boundaries that those technical layers will subsequently realize.

~~~text
Agriculture
│
├── Digital Farm
│   │
│   └── profiles/pilot/phase_0/
│       │
│       ├── Scope
│       ├── Use Case
│       ├── Assets
│       ├── Functions
│       ├── Interfaces
│       ├── Workflows
│       ├── Scenarios
│       ├── Baselines
│       ├── QAI Evaluation
│       ├── KPIs
│       ├── Value
│       └── Acceptance
│
└── Technical Realization
    │
    ├── Digital Twin
    ├── CPS
    ├── QAI
    ├── Simulation
    ├── Sensing
    ├── Edge
    └── Networking
~~~

---

## 3. Phase 0 Objective

The objective is:

> Select and define one minimum callable end-to-end agriculture use case that can run completely within the laptop, simulation, virtualization, and emulation boundary, while preserving the interfaces required for later physical realization.

The resulting definition must be sufficiently precise to allow Phase 1 implementation to begin without redesigning the managerial architecture.

---

## 4. Phase 0 Principle

Phase 0 follows:

> **Define before realizing.**

The pilot must first establish:

- the problem,
- the use case,
- the assets,
- the functions,
- the interfaces,
- the workflow,
- the scenarios,
- the baseline,
- the QAI evaluation,
- the measurements,
- the value criteria,
- the acceptance criteria,
- and the implementation boundary.

Only then should technical realization begin.

---

## 5. Minimum Callable Pilot

The first pilot should demonstrate a complete callable flow rather than a collection of disconnected technical components.

The minimum flow is:

~~~text
Virtual Farm Assets / State
        │
        ▼
Emulated Sensors / Data Sources
        │
        ▼
Digital Farm State / Context
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
        └──────────────► QAI Intelligence
~~~

The implementation may initially use entirely virtual, simulated, or emulated components.

---

## 6. Phase 0 Deliverables

Phase 0 consists of twelve controlled deliverables.

| # | Deliverable | Folder | Primary Purpose |
|---|---|---|---|
| 1 | Pilot Use Case Definition | `use_case/` | Define the selected pilot problem and objective |
| 2 | Asset Inventory | `assets/` | Identify managed farm assets and their states |
| 3 | Function Inventory | `functions/` | Define required managerial and operational functions |
| 4 | Interface Inventory | `interfaces/` | Define boundaries with data, systems, sensors and services |
| 5 | Workflow Catalogue | `workflows/` | Define end-to-end operational workflows |
| 6 | Scenario Catalogue | `scenarios/` | Define normal, alternate and boundary scenarios |
| 7 | Classical Baseline | `baselines/` | Establish the non-QAI reference implementation |
| 8 | QAI Evaluation Definition | `qai_evaluation/` | Define what QAI will evaluate and how |
| 9 | KPI / Measurement Definition | `kpis/` | Define measurable technical and operational outcomes |
| 10 | Value / MVV Criteria | `value/` | Define minimum viable value and economic/operational value |
| 11 | Pilot Acceptance Criteria | `acceptance/` | Define conditions for successful pilot completion |
| 12 | Implementation Scope / Boundary | `scope/` | Define what is and is not included in the pilot |

---

## 7. Deliverable Dependency

The deliverables are related and should be developed in a controlled sequence.

~~~text
Scope
  │
  ▼
Use Case
  │
  ├──────────────► Assets
  │
  ├──────────────► Functions
  │
  └──────────────► Interfaces
                    │
                    ▼
                 Workflows
                    │
                    ▼
                 Scenarios
                    │
          ┌─────────┴─────────┐
          ▼                   ▼
      Classical           QAI Evaluation
       Baseline                 │
          │                     │
          └─────────┬───────────┘
                    ▼
                  KPIs
                    │
                    ▼
                  Value
                    │
                    ▼
               Acceptance
                    │
                    ▼
                  G0 Gate
~~~

---

## 8. Master Phase 0 Folder

The Phase 0 artifacts are contained within:

`digital_farm/profiles/pilot/phase_0/`

The folder is a **pilot-definition and readiness workspace**.

It does not become a replacement for the existing Digital Farm architecture.

---

## 9. `use_case/`

The `use_case/` folder defines the selected agriculture problem.

The use-case definition should establish:

- business/operational problem,
- agricultural context,
- objective,
- actors,
- managed assets,
- required inputs,
- expected decisions,
- expected actions,
- expected outputs,
- success conditions,
- pilot limitations.

The first use case should remain deliberately small enough to execute completely within the pilot boundary.

---

## 10. `assets/`

The `assets/` folder identifies the assets participating in the pilot.

Assets may include:

- farm zones,
- crops,
- soil regions,
- irrigation resources,
- water resources,
- pumps,
- valves,
- reservoirs,
- sensors,
- virtual sensors,
- actuators,
- weather/environment representations,
- computational resources.

The inventory describes the assets from the **Digital Farm management perspective**.

Technical models of those assets belong in the appropriate technical realization areas.

---

## 11. `functions/`

The `functions/` folder defines what the Digital Farm needs to accomplish.

Functions may include:

- sensing,
- state collection,
- state processing,
- contextualisation,
- decision support,
- decision generation,
- actuation coordination,
- feedback handling,
- monitoring,
- evaluation,
- learning,
- exception handling.

Functions are defined independently of any particular vendor, processor, framework, or implementation technology.

---

## 12. `interfaces/`

The `interfaces/` folder defines the boundaries through which the pilot exchanges information or commands.

Interfaces may connect to:

- virtual sensors,
- simulated sensors,
- emulated IoT,
- Digital Twin,
- CPS,
- QAI,
- external services,
- farm data,
- market/context data,
- enterprise systems.

The existing Digital Farm `interfaces/` architecture remains the authoritative reusable interface layer.

Phase 0 defines only the interfaces required by this particular pilot.

---

## 13. `workflows/`

The `workflows/` folder defines how the selected use case operates.

A workflow should identify:

1. trigger,
2. input state,
3. sensing/data acquisition,
4. processing,
5. decision,
6. action,
7. resulting state,
8. feedback,
9. evaluation.

The workflow must be callable within the Phase 0 implementation boundary.

---

## 14. `scenarios/`

The `scenarios/` folder defines the situations against which the pilot will be evaluated.

At minimum, scenarios should distinguish:

- normal operation,
- changing conditions,
- constrained conditions,
- degraded conditions,
- exceptional conditions,
- recovery conditions.

Scenarios should be reproducible so that classical and QAI approaches can be compared under equivalent conditions.

---

## 15. `baselines/`

The `baselines/` folder defines the classical reference approach.

The baseline establishes what happens without QAI.

Possible baseline approaches include:

- deterministic rules,
- threshold logic,
- conventional optimisation,
- classical heuristic,
- classical machine learning,
- classical/HPC computation.

The baseline is essential because QAI evaluation must compare against a meaningful reference.

---

## 16. `qai_evaluation/`

The `qai_evaluation/` folder defines the QAI experiment.

It should establish:

- problem representation,
- candidate QAI formulation,
- required resources,
- execution assumptions,
- expected outputs,
- comparison method,
- advantage criteria,
- fallback conditions.

QAI is not assumed to provide an advantage merely because it is used.

The existing `advantage_gate/` architecture remains responsible for the technical Advantage Gate process.

Phase 0 defines the **pilot-specific evaluation requirement**.

---

## 17. `kpis/`

The `kpis/` folder defines how success will be measured.

Measurements should cover relevant dimensions such as:

- decision quality,
- resource efficiency,
- water usage,
- energy usage,
- execution time,
- computational cost,
- accuracy,
- robustness,
- resilience,
- operational improvement,
- QAI versus classical performance.

Only measurements relevant to the selected use case should be included.

---

## 18. `value/`

The `value/` folder defines the minimum viable value of the pilot.

Value should be evaluated from the Digital Farm perspective rather than only from computational performance.

The definition may include:

- operational value,
- economic value,
- resource value,
- sustainability value,
- productivity value,
- decision value,
- learning value.

The existing `value_management/` architecture remains the reusable value-management layer.

Phase 0 defines the specific value criteria for this pilot.

---

## 19. `acceptance/`

The `acceptance/` folder defines when the pilot can be considered successful.

Acceptance should require evidence that:

- the use case executes end-to-end,
- required inputs are available,
- the workflow completes,
- decisions are produced,
- actions can be represented,
- state changes are observable,
- feedback is captured,
- classical baseline results are available,
- QAI evaluation is completed,
- KPIs are measured,
- minimum viable value is demonstrated.

---

## 20. `scope/`

The `scope/` folder defines the implementation boundary.

### In Scope

- Laptop execution
- Virtualization
- Emulation
- Simulation
- Digital Farm
- QAI stack
- Open-loop CPS
- Closed-loop CPS
- Classical baseline
- QAI comparison
- Value measurement

### Optional Later

- Physical sensors
- IoT devices
- Mini actuators
- Physical demonstrator
- Edge hardware

### Out of Pilot Scope

- Heavy enterprise management
- Full HoldCo lifecycle implementation
- Large-scale production deployment
- Complete SaaS platform
- Full multi-subsidiary federation

---

## 21. Managerial-to-Technical Boundary

Phase 0 must preserve the following boundary.

~~~text
Digital Farm
Managerial Definition
        │
        │ specifies
        ▼
Technical Realization
        │
        ├── Digital Twin
        ├── CPS
        ├── Simulation
        ├── Sensing
        ├── QAI
        ├── Edge
        └── Networking
        │
        ▼
Pilot Execution
        │
        ▼
Evidence
        │
        ▼
Digital Farm
Management / Evaluation
~~~

Digital Farm therefore does not implement the technical mechanism simply because it defines the requirement for that mechanism.

---

## 22. Pilot Realisation Progression

The pilot is expected to progress through increasingly realistic realization levels.

~~~text
Asset / Function / Interface Identification
                  │
                  ▼
             Virtualization
                  │
                  ▼
               Emulation
                  │
                  ▼
           Workflow Definition
                  │
                  ▼
       Open-Loop Simulation
                  │
                  ▼
      Closed-Loop Simulation
                  │
                  ▼
          QAI Evaluation
                  │
                  ▼
       Model Validation
                  │
                  ▼
        Digital Twin
                  │
                  ▼
          Production CPS
                  │
                  ▼
             QAI Lab
                  │
                  ▼
        Fabric / Slice Integration
                  │
                  ▼
        Commercial Service
~~~

Phase 0 establishes the starting conditions for this progression.

---

## 23. Three-Path Consideration

The Phase 0 use case should identify requirements across the three fundamental paths:

- Computational Path
- Sensing Path
- Communication Path

~~~text
                 Digital Farm
                      │
       ┌──────────────┼──────────────┐
       ▼              ▼              ▼
 Computational     Sensing      Communication
     Path            Path            Path
       │              │              │
       └──────────────┼──────────────┘
                      ▼
             Pilot Workflow
~~~

The paths are architectural concerns. Their technical implementations remain in their existing technical layers.

---

## 24. Digital Twin Boundary

Digital Twin is a technical realization capability.

Phase 0 may require a Digital Twin representation, but does not create a second Digital Twin architecture inside the Digital Farm management layer.

The Phase 0 artifact should instead specify:

- what state must be represented,
- what entities must be represented,
- what state transitions matter,
- what observations are required,
- what decisions need representation.

The technical Digital Twin implementation then realizes those requirements.

---

## 25. CPS Boundary

The same principle applies to CPS.

Phase 0 defines:

- managed physical/virtual entities,
- control intent,
- sensing requirements,
- actuation requirements,
- feedback requirements,
- workflow states.

Technical CPS realization remains outside this managerial folder.

---

## 26. Simulation Boundary

Simulation is a technical capability used to validate the pilot.

Phase 0 defines:

- what needs to be simulated,
- which scenarios are required,
- what outputs must be measured,
- what evidence must be generated.

Technical simulation models belong in the existing Digital Farm simulation architecture and/or appropriate Agriculture technical realization areas.

---

## 27. QAI Boundary

Phase 0 does not assume quantum advantage.

The pilot must establish a fair evaluation process:

~~~text
Problem
  │
  ▼
Classical Baseline
  │
  ├───────────────┐
  ▼               ▼
QAI Formulation   Classical / HPC Fallback
  │
  ▼
Execution
  │
  ▼
Measurement
  │
  ▼
Comparison
  │
  ▼
Advantage Assessment
~~~

The result may be:

- QAI Advantage,
- Potential QAI Advantage,
- No demonstrated advantage,
- Classical solution preferred,
- Further research required.

---

## 28. Resource Boundary

Phase 0 identifies resource requirements without prematurely binding the implementation to specific hardware.

Relevant resources may include:

- CPU,
- GPU,
- NPU,
- TPU,
- FPGA,
- HPC,
- QPU,
- edge compute,
- storage,
- network,
- energy,
- budget,
- execution time,
- shots,
- queue capacity,
- fidelity,
- confidence.

The actual resource allocation remains governed by the existing Digital Farm resource-management architecture.

---

## 29. Human + AI Boundary

The pilot should explicitly identify where:

- humans decide,
- AI assists,
- AI recommends,
- AI acts,
- human approval is required,
- automated execution is permitted.

This prevents the technical workflow from implicitly defining governance or authority.

---

## 30. Governance Boundary

Governance requirements should be identified during Phase 0 but heavy governance implementation remains outside the minimum pilot.

Relevant concerns include:

- safety,
- security,
- trust,
- provenance,
- data sovereignty,
- compliance,
- assurance,
- quality,
- metrology,
- AI ethics.

The existing Digital Farm governance architecture remains authoritative.

---

## 31. Evidence Model

Every major Phase 0 decision should ultimately be traceable to evidence.

~~~text
Requirement
    │
    ▼
Use Case
    │
    ▼
Workflow / Scenario
    │
    ▼
Implementation
    │
    ▼
Execution Result
    │
    ▼
Measurement
    │
    ▼
Evidence
    │
    ▼
Acceptance Decision
~~~

This provides the foundation for later validation and promotion.

---

## 32. Reproducibility

The pilot must be reproducible.

The Phase 0 definition should therefore establish:

- input conditions,
- scenario parameters,
- expected workflow,
- baseline method,
- QAI evaluation method,
- measurements,
- acceptance criteria.

A result that cannot be reproduced should not be treated as sufficient pilot evidence.

---

## 33. Vendor Neutrality

Phase 0 must remain vendor-neutral.

No particular:

- cloud,
- quantum provider,
- processor,
- IoT platform,
- simulation platform,
- ERP,
- database,
- AI framework,
- networking technology

is required by this definition.

Specific technologies may be selected later as implementation choices.

---

## 34. Technology Neutrality

The Phase 0 artifacts describe **capabilities and requirements**, not implementation technologies.

For example:

> "A soil-moisture observation is required."

rather than:

> "Use a particular soil-moisture sensor."

Similarly:

> "An optimisation decision must be generated."

rather than:

> "Use a particular quantum algorithm."

---

## 35. Reuse

Phase 0 artifacts should be reusable.

The same managerial structure should support:

- Pilot,
- Post-Pilot,
- Research,
- future Digital Farm instances,
- additional agriculture use cases.

Only the use-case-specific content should change.

---

## 36. Non-Duplication

Phase 0 must not create duplicate architecture for capabilities already established elsewhere.

Examples:

| Concern | Phase 0 | Authoritative Architecture |
|---|---|---|
| Digital Twin requirement | Define need | `fabrics/digital_twin/` |
| Simulation requirement | Define scenarios | `simulation/` |
| QAI evaluation requirement | Define experiment | `advantage_gate/` |
| Resource requirement | Define demand | `resource_management/` |
| Interfaces | Define pilot needs | `interfaces/` |
| Governance | Identify requirements | `governance/` |
| Service lifecycle | Identify lifecycle need | `service_management/` |
| Execution mode | Select required mode | `execution_modes/` |

---

## 37. Phase 0 and Agriculture Pilot

The broader Agriculture Pilot structure remains separate.

~~~text
industries/agriculture/
│
├── pilot/
│   ├── cps/
│   ├── digital_twin/
│   ├── edge/
│   ├── networking/
│   ├── qai/
│   ├── sensing/
│   └── validation/
│
└── digital_farm/
    └── profiles/
        └── pilot/
            └── phase_0/
~~~

`digital_farm/profiles/pilot/phase_0/` defines the managerial pilot baseline.

`agriculture/pilot/` contains the broader Agriculture Pilot technical realization boundary.

---

## 38. Phase 0 Governance

Changes to the Phase 0 baseline should be controlled.

A material change to:

- use case,
- scope,
- workflow,
- evaluation method,
- KPI,
- acceptance criteria,
- implementation boundary

should trigger review of dependent deliverables.

---

## 39. Dependency Control

The following dependency principle applies:

> A downstream artifact must not silently redefine an upstream decision.

For example:

- a simulation model must not redefine the use case;
- a QAI experiment must not redefine the KPI;
- an implementation choice must not redefine the scope;
- a technical limitation must be recorded as a constraint rather than silently changing the managerial requirement.

---

## 40. Change Propagation

When a Phase 0 decision changes, affected artifacts must be reviewed.

~~~text
Change
  │
  ▼
Affected Deliverable Identification
  │
  ▼
Dependency Review
  │
  ▼
Update
  │
  ▼
Validation
  │
  ▼
Baseline Revision
~~~

---

## 41. Phase 0 Baseline

At completion, Phase 0 establishes a controlled baseline containing:

- selected use case,
- asset definition,
- function definition,
- interface definition,
- workflow definition,
- scenario definition,
- classical baseline,
- QAI evaluation definition,
- KPI definition,
- value definition,
- acceptance criteria,
- scope boundary.

---

## 42. Readiness Conditions

Phase 0 is ready for gate review when:

- the use case is unambiguous;
- the minimum callable flow is defined;
- required assets are identified;
- required functions are identified;
- interfaces are identified;
- workflows are defined;
- scenarios are reproducible;
- a classical baseline is defined;
- QAI evaluation is defined;
- KPIs are measurable;
- value criteria are defined;
- acceptance criteria are testable;
- implementation boundaries are explicit.

---

## 43. G0 Gate

The Phase 0 gate is:

> **G0 — Implementation Readiness & Scope Gate**

The gate determines whether the pilot definition is sufficiently complete to begin technical realization.

Possible outcomes:

- **READY** — proceed to Phase 1;
- **REVISE** — resolve identified gaps;
- **DEFER** — postpone the use case or capability.

---

## 44. G0 Decision Model

~~~text
                 Phase 0
                    │
                    ▼
          Readiness Assessment
                    │
        ┌───────────┼───────────┐
        ▼           ▼           ▼
      READY       REVISE       DEFER
        │           │           │
        ▼           ▼           ▼
     Phase 1      Correct      Future
   Virtualization   Gaps       Scope
~~~

---

## 45. Phase 1 Handoff

A READY G0 gate provides the inputs required to begin Phase 1.

The handoff includes:

- approved use case,
- approved scope,
- asset baseline,
- function baseline,
- interface baseline,
- workflow baseline,
- scenario baseline,
- classical baseline,
- QAI evaluation baseline,
- KPI baseline,
- value baseline,
- acceptance baseline.

Phase 1 then begins technical realization without reopening already-settled managerial decisions unless a formally identified dependency requires change.

---

## 46. Phase 0 Artifact Naming

Artifacts should use descriptive, stable names.

Recommended pattern:

`<sequence>_<artifact_name>.md`

For example:

~~~text
01_pilot_use_case.md
02_asset_inventory.md
03_function_inventory.md
04_interface_inventory.md
05_workflow_catalogue.md
06_scenario_catalogue.md
07_classical_baseline.md
08_qai_evaluation.md
09_kpi_definition.md
10_value_criteria.md
11_acceptance_criteria.md
12_implementation_scope.md
~~~

The exact filenames can be finalized when each artifact is created.

---

## 47. README Responsibility

This README is the **Phase 0 master navigation and deliverable definition**.

It should not contain the complete detailed content of every Phase 0 artifact.

Each dedicated artifact will contain the authoritative detailed definition for its subject.

---

## 48. Controlled Relationship

The relationship is:

~~~text
Phase 0 README
      │
      ├── defines deliverables
      ├── defines dependencies
      ├── defines boundaries
      └── defines G0
              │
              ▼
     Individual Phase 0 Artifacts
              │
              ▼
       G0 Baseline Package
              │
              ▼
       Technical Realization
~~~

---

## 49. Future Evolution

After the first pilot, the same managerial structure can evolve toward:

- Post-Pilot operations,
- continuous service management,
- Digital Twin promotion,
- physical CPS,
- QAI Lab integration,
- resource federation,
- multi-farm operation,
- commercial Digital Farm services.

The Phase 0 structure therefore establishes a reusable foundation rather than a one-off prototype document.

---

## 50. First Pilot Philosophy

The first pilot should optimize for:

> **Callable, observable, measurable, reproducible, and extensible.**

It does not need to demonstrate the entire Digital Farm architecture.

It needs to demonstrate that one meaningful agriculture workflow can move through the architecture from managed state to decision to action and feedback.

---

## 51. Minimum Viable Architecture

The minimum architecture is:

~~~text
Managed Farm Context
        │
        ▼
Virtual / Emulated State
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
        ▼
Feedback
        │
        ▼
Measure
        │
        ▼
Evaluate
~~~

This is sufficient as the initial architectural spine.

---

## 52. Expansion Principle

Additional capabilities should be added only when they support a defined pilot requirement.

The first pilot should avoid unnecessary expansion into:

- enterprise-scale management,
- complete IoT deployment,
- physical automation,
- multi-farm federation,
- full production operations,
- commercial SaaS packaging.

---

## 53. Promotion Principle

A technical capability should be promoted to a higher realization level only when sufficient evidence exists.

~~~text
Prototype
   │
   ▼
Validated
   │
   ▼
Promoted
   │
   ▼
Operational
   │
   ▼
Reusable
~~~

Promotion is evidence-driven rather than technology-driven.

---

## 54. Value Before Scale

The first pilot should establish that the workflow has meaningful value before significant physical or operational scale is introduced.

The sequence is:

> **Prove → Measure → Validate → Promote → Scale**

not:

> **Scale → Experiment → Discover Value**

---

## 55. Classical and QAI Coexistence

The architecture must allow classical and QAI execution to coexist.

QAI should be treated as an additional computational capability rather than a mandatory replacement for classical computing.

~~~text
             Pilot Problem
                  │
        ┌─────────┴─────────┐
        ▼                   ▼
 Classical Path         QAI Path
        │                   │
        └─────────┬─────────┘
                  ▼
              Compare
                  │
                  ▼
              Evaluate
~~~

---

## 56. Fallback Principle

If QAI does not demonstrate sufficient value or advantage, the pilot remains operational through the classical or HPC path where appropriate.

This ensures that QAI experimentation does not compromise pilot continuity.

---

## 57. Learning Principle

Phase 0 is itself an architectural learning stage.

Evidence from the pilot may identify:

- missing requirements,
- unnecessary components,
- interface improvements,
- resource constraints,
- modelling gaps,
- QAI limitations,
- value opportunities.

Such findings should feed controlled revisions rather than uncontrolled architectural drift.

---

## 58. Phase 0 Completion Package

The completed Phase 0 package consists of:

~~~text
phase_0/
│
├── README.md
│
├── use_case/
├── assets/
├── functions/
├── interfaces/
├── workflows/
├── scenarios/
├── baselines/
├── qai_evaluation/
├── kpis/
├── value/
├── acceptance/
└── scope/
~~~

The README is the package-level index.

The individual folders contain the detailed artifacts.

---

## 59. Phase 0 Completion Test

Phase 0 should be considered complete only when the following question can be answered clearly:

> **What exactly are we going to demonstrate, what must exist for it to work, how will it operate, how will we compare it, how will we measure it, what value must it produce, and what is explicitly outside the pilot?**

If the answer is unambiguous, the project is ready for G0 review.

---

## 60. Phase 0 Final Principle

> **Digital Farm defines and manages the pilot; technical layers realize the pilot.**

Phase 0 establishes the managerial contract between these two worlds.

It ensures that the first implementation is:

- bounded,
- callable,
- measurable,
- reproducible,
- technically realizable,
- QAI-evaluable,
- value-oriented,
- and extensible toward future physical and production realization.

---

## 61. Phase 0 Status

**Status:** Active / Implementation Readiness

**Architecture:** Managerial / Service / Orchestration

**Scope:** Agriculture Digital Farm Pilot

**Gate:** G0 — Implementation Readiness & Scope

**Next Phase:** Phase 1 — Virtualization

**Master Principle:**

> **Define the managed problem first; realize the technical solution second.**

---
---

## 62. September 2026 Architecture Update

Phase 0 remains the authoritative **implementation-readiness and scope-baseline layer** for the Digital Farm Pilot.

The September 2026 update extends the Phase 0 baseline to explicitly support the staged Digital Farm realization strategy developed after the original Phase 0 definition.

This update does not replace the existing Phase 0 architecture, deliverables, boundaries, or G0 gate.

It clarifies how the Phase 0 definition feeds increasingly realistic technical realization stages while preserving the principle:

> **Define the managed problem first; realize the technical solution second.**

The updated realization strategy is:

~~~text
Phase 0
Implementation Readiness
        │
        ▼
Phase 1
Asset Virtualization
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
Phase 4+
Digital Twin / Production CPS
        │
        ▼
QAI Lab / Fabrics / Scale
~~~

Phase 0 therefore remains the point at which the managed problem, use case, assets, functions, interfaces, workflows, scenarios, baselines, measurements, value criteria, and acceptance conditions are established before technical realization proceeds.

---

## 63. Staged Demonstration and Realisation Model

The Digital Farm Pilot should support progressively increasing levels of implementation realism.

The staged demonstration model is:

~~~text
Stage 1 — Laptop Simulation
        │
        ▼
Stage 2 — Synthetic CPS
        │
        ▼
Stage 3 — Real Data + Emulation
        │
        ▼
Stage 4 — Physical MVP
        │
        ▼
Stage 5 — Physical CPS
~~~

### Stage 1 — Laptop Simulation

The first demonstration may operate completely within a laptop environment using:

- synthetic data,
- virtual assets,
- simulated state,
- emulated data sources,
- classical computation,
- AI/QAI software,
- simulation,
- optimisation,
- visualisation,
- measurement.

The objective is to establish a callable and reproducible end-to-end workflow before physical deployment.

### Stage 2 — Synthetic CPS

The architecture is extended to represent CPS behaviour using synthetic sensing, state transitions, events, decision logic, feedback, and emulated actuation.

The purpose is to demonstrate the CPS architecture without requiring physical field deployment.

### Stage 3 — Real Data + Emulation

Historical or externally supplied real data may be introduced while physical devices remain emulated.

This allows model and interface behaviour to be evaluated against representative conditions without prematurely requiring a complete physical deployment.

### Stage 4 — Physical MVP

Selected physical sensing, edge, networking, or other infrastructure may be introduced.

The physical implementation should remain deliberately small and should be introduced only where it provides validation value.

### Stage 5 — Physical CPS

The system may progress toward live physical sensing, edge/cloud execution, supervised closed-loop operation, and controlled physical interaction.

Physical CPS deployment remains subject to separate technical, operational, safety, security, regulatory, and acceptance requirements.

The staged model therefore provides a controlled path from laptop demonstration to physical realization without requiring the entire future architecture to be implemented at the beginning.

---

## 64. Data Realism and Device Realism

The staged realization model should distinguish **data realism** from **device realism**.

These are independent dimensions.

### Data Realism

~~~text
Synthetic Data
      │
      ▼
Historical / Representative Real Data
      │
      ▼
Live Real Data
~~~

### Device Realism

~~~text
Virtual Devices
      │
      ▼
Emulated Devices
      │
      ▼
Physical Devices
~~~

The two dimensions may progress independently.

For example:

~~~text
                    DEVICE REALISM

                 Virtual     Emulated     Physical
                    │            │            │
Synthetic Data     ●            ●            ●
                    │            │            │
Historical Data    ●            ●            ●
                    │            │            │
Live Data          ●            ●            ●
~~~

Therefore:

> **Real data does not require physical devices, and physical devices do not automatically imply live operational deployment.**

This distinction allows the pilot to increase evidence quality progressively while controlling cost, complexity, operational risk, and implementation dependency.

Phase 0 should therefore specify the required **data realism level** and **device realism level** for each pilot requirement rather than assuming that the highest level is required from the beginning.

---

## 65. Updated Digital Farm Technical and Value Flow

The Phase 0 minimum architecture is extended to explicitly represent the relationship between physical/CPS state, Digital Twin state, intelligence, optimisation, decisions, actions, feedback, and value measurement.

The conceptual flow is:

~~~text
Physical / CPS State
        │
        ▼
Digital Farm Twin
        │
        ▼
AI / QAI Intelligence
        │
        ▼
Optimisation / Model Library
        │
        ▼
Decision
        │
        ▼
Authorised Action
        │
        ▼
Changed State
        │
        ▼
Feedback
        │
        ▼
Technical / Operational / Economic Measurement
        │
        ▼
Evidence and Evaluation
~~~

The corresponding pilot realization may initially be entirely virtual, simulated, or emulated.

The architecture must preserve the distinction between:

- physical state,
- virtual state,
- Digital Twin state,
- simulated state,
- intelligence,
- optimisation,
- decision,
- authorised action,
- feedback,
- measurement,
- evidence,
- economic/value outcomes.

### Classical and QAI Execution

QAI remains an optional computational capability within the broader execution architecture.

The evaluation flow is:

~~~text
                 Pilot Problem
                       │
                       ▼
               Classical Baseline
                       │
              ┌────────┴────────┐
              │                 │
              ▼                 ▼
        Classical / AI       QAI / Hybrid
          Execution           Execution
              │                 │
              └────────┬────────┘
                       ▼
                   Comparison
                       │
                       ▼
                Advantage Gate
                       │
          ┌────────────┴────────────┐
          ▼                         ▼
      Use QAI                 Classical / HPC
     if justified             fallback where
                              appropriate
~~~

No quantum advantage is assumed.

The result of an experiment may indicate:

- QAI Advantage,
- Potential QAI Advantage,
- No Demonstrated Advantage,
- Classical Solution Preferred,
- Further Research Required.

The existing `advantage_gate/` architecture remains authoritative for the technical Advantage Gate process.

Phase 0 defines the **pilot-specific evaluation requirement** and the evidence required to support the eventual decision.

### Economic and Value Measurement

Technical performance alone is not sufficient to establish pilot value.

Where relevant, the pilot should connect technical and operational outcomes to economic and resource outcomes:

~~~text
Technical State
      │
      ▼
Operational Outcome
      │
      ▼
Resource Outcome
      │
      ▼
Economic / Value Outcome
      │
      ▼
Evidence
~~~

Candidate value dimensions include:

- operational value,
- economic value,
- resource value,
- sustainability value,
- productivity value,
- decision value,
- resilience value,
- learning value.

Only value dimensions relevant to the selected use case should be measured.

---

## 66. Phase 0 → Phase 1 Architectural Handoff Update

The Phase 0 → Phase 1 handoff is extended to explicitly distinguish **requirements definition** from **technical realization**.

Phase 0 defines what the pilot requires.

Phase 1 realizes the required assets and state representations within the virtual environment.

The relationship is:

| Phase 0 Definition | Phase 1 Realisation |
|---|---|
| Managed assets | Virtual assets |
| Required asset state | Asset state model |
| Required functions | Virtualized functional representation |
| Required interfaces | Virtual interfaces and mappings |
| Workflow inputs and outputs | Executable virtual representations |
| Scenario definitions | Scenario-ready virtual environment |
| Data requirements | Data structures and input representations |
| QAI evaluation requirements | QAI-ready problem representation |
| KPI definitions | Measurement and observation hooks |
| Value criteria | Value measurement hooks |
| Acceptance criteria | Evidence and validation hooks |
| Implementation boundary | Phase 1 realization boundary |

The handoff must preserve the following principle:

> **A downstream technical implementation must not silently redefine an upstream Phase 0 managerial decision.**

If a technical limitation is discovered during Phase 1, it must be recorded as:

- a constraint,
- a design issue,
- an implementation gap,
- a requirement clarification,
- or a formally approved Phase 0 change,

as appropriate.

It must not silently change the approved pilot objective or scope.

### Updated Phase Handoff

~~~text
                 PHASE 0
       Implementation Readiness
                 │
                 │
                 ├── Use Case
                 ├── Scope
                 ├── Assets
                 ├── Functions
                 ├── Interfaces
                 ├── Workflows
                 ├── Scenarios
                 ├── Baseline
                 ├── QAI Evaluation
                 ├── KPIs
                 ├── Value
                 └── Acceptance
                       │
                       ▼
                 G0 Gate
                       │
                  ┌────┴────┐
                  │         │
                READY     REVISE
                  │
                  ▼
                 PHASE 1
          Asset Virtualization
                  │
                  ▼
             Virtual Assets
                  │
                  ▼
             Virtual State
                  │
                  ▼
          Phase 2 Simulation
~~~

Phase 1 should therefore begin with an approved Phase 0 baseline rather than reopening the entire managerial definition.

The overall realization principle becomes:

> **Define → Virtualize → Emulate → Simulate → Experiment → Validate → Promote → Scale**

The first pilot remains intentionally bounded.

The purpose of the September 2026 update is to ensure that the Phase 0 definition can support this progression without requiring architectural redesign when the Digital Farm moves from a laptop demonstrator toward real data, physical assets, Digital Twin operation, CPS deployment, QAI experimentation, and eventual commercial realization.

---
