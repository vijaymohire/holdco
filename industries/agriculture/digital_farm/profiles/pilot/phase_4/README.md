# Phase 4 — Open-Loop Simulation / QAI Evaluation

## Pilot

**Notebook-based QAI CPS Open-Loop Simulation and Evaluation**

---

## 1. Purpose

Phase 4 validates the sensing, processing, intelligence, optimization, recommendation, measurement, and evidence flows defined in the preceding phases without introducing automated physical actuation.

Phase 4 provides the controlled experimental bridge between:

- Phase 3 — CPS Workflow Definition
- Phase 4 — Open-Loop Simulation
- Phase 5 — Closed-Loop CPS Validation

The primary objective is to determine whether the defined CPS workflows can execute reproducibly from an input state and scenario through processing and intelligence to a measurable recommendation.

---

## 2. Architectural Position

Phase 4 sits after workflow definition and before closed-loop CPS execution.

~~~text
Phase 0
Define
   |
   v
Phase 1
Virtualize
   |
   v
Phase 2
Emulate / Simulate / Experiment
   |
   v
Phase 3
CPS Workflow Definition
   |
   v
+--------------------------------+
| Phase 4                        |
| Open-Loop Simulation           |
|                                |
| Sense/Input                    |
|      |                         |
|      v                         |
| Process                        |
|      |                         |
|      v                         |
| Digital Farm Twin Context      |
|      |                         |
|      v                         |
| Classical / AI / QAI           |
|      |                         |
|      v                         |
| Optimisation / Models          |
|      |                         |
|      v                         |
| Recommendation                 |
|      |                         |
|      v                         |
| Measure / Compare / Evidence   |
+--------------------------------+
   |
   v
Phase 5
Closed-Loop CPS
~~~

Phase 4 therefore validates the decision path without requiring an automated physical control path.

---

## 3. Objective

The Phase 4 objective is to establish credible experimental evidence that:

1. required inputs can be represented;
2. sensing and environmental data can be processed;
3. relevant asset and system state can be constructed;
4. Digital Farm Twin context can be established;
5. Classical, AI and/or QAI computational paths can be executed where justified;
6. optimization or model outputs can be generated;
7. recommendations can be produced;
8. recommendations can be measured against defined KPIs;
9. alternative computational approaches can be compared;
10. results can be reproduced and recorded;
11. economic and operational value can be evaluated where applicable; and
12. the complete open-loop workflow can pass formal review before Phase 5.

---

## 4. Governing Principle

> **Validate the decision path before automating the action path.**

Phase 4 deliberately separates:

- sensing from actuation;
- recommendation from execution;
- simulation from physical operation;
- computational evaluation from physical control;
- experimental evidence from operational claims.

No automated physical actuation is required for Phase 4.

---

## 5. Realisation Principle

The overall FAEP realisation progression remains:

~~~text
Define
  |
Virtualize
  |
Emulate
  |
Simulate
  |
Experiment
  |
Validate
  |
Promote
  |
Scale
~~~

Phase 4 primarily occupies:

~~~text
Simulate
   |
Experiment
   |
Measure
   |
Compare
   |
Evaluate
~~~

---

## 6. Relationship to Phase 3

Phase 3 defines the executable logical CPS workflow.

Phase 4 executes and evaluates that workflow under controlled open-loop conditions.

~~~text
Phase 3
Workflow Definition
     |
     v
Workflow Nodes
     |
     v
Workflow Dependencies
     |
     v
Assets / States / Events
     |
     v
Scenarios / Parameters
     |
     v
Phase 4
Open-Loop Execution
~~~

Phase 4 must not silently redefine the workflow semantics established in Phase 3.

Where an implementation limitation is discovered, it shall be classified as an:

- implementation limitation;
- model limitation;
- data limitation;
- interface limitation;
- computational limitation;
- resource limitation;
- requirement clarification; or
- formally approved architecture change.

---

## 7. Open-Loop Definition

For Phase 4, open-loop operation means that the system can:

- receive inputs;
- process inputs;
- update represented state;
- execute models;
- perform optimization;
- generate recommendations;
- calculate KPIs;
- compare alternatives; and
- record evidence;

without automatically applying the resulting recommendation to a physical asset.

~~~text
Input / Sensing
       |
       v
Processing
       |
       v
System / Twin State
       |
       v
Intelligence
       |
       v
Optimization
       |
       v
Recommendation
       |
       v
Human / Evaluation Boundary
       |
       X
No Automated Physical Actuation
~~~

---

## 8. Phase 4 Input Boundary

Inputs may include:

- synthetic sensor data;
- controlled historical data;
- representative real data;
- environmental scenarios;
- weather conditions;
- crop state;
- water state;
- asset state;
- inventory state;
- workforce parameters;
- economic parameters;
- supply-chain parameters; and
- scenario-specific constraints.

The source and realism level of each input shall be explicitly recorded.

---

## 9. Data Realism

Phase 4 supports progressive data realism:

~~~text
Synthetic
   |
Historical / Representative Real
   |
Live Real
~~~

Phase 4 does not require live operational data.

Synthetic and real data must remain explicitly distinguishable.

No synthetic experiment shall be presented as measured physical-field performance.

---

## 10. Device Realism

Phase 4 may operate with:

~~~text
Virtual Device
      |
      v
Emulated Device
      |
      v
Physical Device
~~~

Physical devices are not required for Phase 4 open-loop simulation.

Where physical sensing data becomes available, it may be introduced without automatically enabling physical actuation.

---

## 11. Input State and Scenario

Each experiment shall define an explicit starting state and scenario.

Examples include:

- normal operating condition;
- low soil moisture;
- excessive rainfall;
- frost condition;
- cold-weather condition;
- water constraint;
- equipment degradation;
- labour constraint;
- inventory constraint;
- transport disruption;
- demand variation;
- resource shortage; and
- synthetic crop stress.

The scenario definition shall include the applicable assumptions and constraints.

---

## 12. Sensing Representation

Phase 4 shall represent the sensing stage required by the selected workflow.

~~~text
Sensor / Data Source
        |
        v
Input Validation
        |
        v
Data Normalisation
        |
        v
State Representation
~~~

Sensing may initially be simulated or emulated.

Where real data is used, provenance and acquisition context shall be recorded.

---

## 13. Processing Flow

The processing path shall transform input observations into usable system context.

~~~text
Raw / Synthetic Input
        |
        v
Validation
        |
        v
Normalisation
        |
        v
Feature / State Extraction
        |
        v
Digital Farm Twin Context
~~~

Processing steps must remain traceable to the workflow and experiment configuration.

---

## 14. Digital Farm Twin Context

Phase 4 uses the virtualized assets, relationships, state and workflow definitions established by previous phases to construct the required Digital Farm Twin context.

The Twin context may include:

- field;
- crop;
- soil;
- water;
- weather;
- equipment;
- energy;
- workforce;
- inventory;
- logistics;
- market;
- economic resources; and
- relevant external conditions.

The level of Twin fidelity shall be explicitly documented.

---

## 15. Intelligence Layer

Phase 4 may evaluate one or more computational paths:

- Classical;
- Classical optimization;
- AI;
- QAI-inspired;
- Hybrid QAI;
- optional quantum execution where justified and available.

The architecture remains computationally neutral.

No computational technology receives an assumed performance advantage.

---

## 16. Classical Baseline

A Classical baseline shall be established before making a QAI advantage claim.

The baseline should represent the appropriate conventional solution to the selected bounded problem.

~~~text
Pilot Problem
      |
      v
Classical Baseline
      |
      +----------------------+
      |                      |
      v                      v
AI / QAI Alternative     Other Baseline
      |                      |
      +----------+-----------+
                 |
                 v
          Common Evaluation
~~~

The baseline provides the reference against which alternative approaches are evaluated.

---

## 17. AI Path

Where appropriate, the experiment may include an AI path for:

- prediction;
- classification;
- anomaly detection;
- state estimation;
- pattern recognition;
- forecasting; or
- decision support.

AI execution shall be evaluated using the same problem definition and relevant evaluation criteria.

---

## 18. QAI Path

Where justified by the problem structure, Phase 4 may evaluate a QAI or hybrid QAI formulation.

The QAI path may include:

- problem transformation;
- representation transformation;
- dimensionality reduction;
- optimization formulation;
- quantum-inspired execution;
- hybrid classical-QAI execution;
- optional remote quantum execution; and
- classical fallback.

The purpose is experimental evaluation, not assumption of quantum superiority.

---

## 19. Classical / AI / QAI Comparison

Alternative computational paths shall use common evaluation criteria wherever technically appropriate.

~~~text
                 Pilot Problem
                      |
          +-----------+-----------+
          |           |           |
          v           v           v
      Classical       AI          QAI
          |           |           |
          +-----------+-----------+
                      |
                      v
              Common Evaluation
                      |
                      v
              Comparative Evidence
~~~

Comparison may include:

- solution quality;
- feasibility;
- execution time;
- resource consumption;
- scalability;
- robustness;
- repeatability;
- constraint satisfaction;
- recommendation quality;
- economic outcome; and
- operational relevance.

---

## 20. QAI Advantage Gate

Phase 4 shall use the existing QAI Advantage Gate.

The gate determines whether QAI provides sufficient demonstrated value to justify continued use.

Possible outcomes include:

- QAI Advantage Demonstrated;
- Potential QAI Advantage;
- No Demonstrated Advantage;
- Classical Solution Preferred; or
- Further Research Required.

No quantum advantage shall be declared without appropriate measured evidence.

---

## 21. Optimization and Model Library

The open-loop experiment may use composable models from the model library.

Candidate model families include:

- crop;
- water;
- asset;
- inventory;
- workforce;
- cost;
- crop value;
- resource allocation;
- resilience economics;
- sustainability and energy;
- logistics; and
- market or demand.

Models shall remain independently identifiable and testable.

---

## 22. Recommendation Generation

The result of Phase 4 is primarily a recommendation rather than an automated physical action.

~~~text
System State
     |
     v
Models / Intelligence
     |
     v
Optimization
     |
     v
Candidate Alternatives
     |
     v
Evaluation
     |
     v
Recommended Action
     |
     v
Human / Review Boundary
~~~

The recommendation should identify relevant assumptions, constraints and expected outcomes.

---

## 23. Recommendation Alternatives

Where practical, the experiment should compare multiple alternatives.

For example:

- maintain current condition;
- intervention A;
- intervention B;
- intervention C;
- alternative resource allocation;
- alternative crop/resource configuration; or
- alternative logistics strategy.

The purpose is to demonstrate decision support rather than merely generate a single output.

---

## 24. Economic and Value Evaluation

Technical results should be connected to operational and economic outcomes where applicable.

~~~text
Technical Result
      |
      v
Operational Outcome
      |
      v
Resource Outcome
      |
      v
Economic / Value Outcome
      |
      v
Evidence
~~~

Candidate measures include:

- total cost;
- resource consumption;
- expected avoided loss;
- productivity;
- energy use;
- water use;
- inventory;
- transport;
- resilience;
- recovery;
- sustainability; and
- decision quality.

Values generated by simulation remain model outputs until independently validated.

---

## 25. Open-Loop Safety Boundary

Phase 4 does not authorize autonomous physical intervention.

The boundary is:

~~~text
Recommendation
      |
      v
Human / Governance Review
      |
      X
Automated Physical Actuation
~~~

Any future physical action must be separately validated and authorized through the appropriate Phase 5 or later control boundary.

---

## 26. Closed-Loop Boundary

Closed-loop operation is intentionally deferred.

Phase 4:

**Observe → Analyse → Decide → Recommend**

Phase 5:

**Observe → Analyse → Decide → Authorised Action → Observe**

The transition must occur only after formal Phase 4 review.

---

## 27. Fault and Edge Scenarios

Phase 4 may introduce controlled abnormal scenarios to evaluate decision robustness.

Examples:

- missing sensor value;
- noisy sensor value;
- inconsistent data;
- stale data;
- unavailable model;
- computational timeout;
- infeasible optimization;
- resource limitation;
- conflicting constraints;
- unexpected scenario;
- degraded asset state; and
- incomplete external data.

The experiment shall record the resulting system behaviour.

---

## 28. Fallback

Where a QAI or AI path is unavailable, unsuitable or fails its acceptance criteria, the workflow shall support a defined fallback.

~~~text
Classical
   |
   +--> AI
   |
   +--> QAI / Hybrid
   |
   v
Advantage / Feasibility Gate
   |
   +--> Selected Approach
   |
   +--> Classical / HPC Fallback
~~~

Fallback behaviour must remain deterministic and auditable where required by the experiment.

---

## 29. Resource Awareness

Phase 4 shall record relevant computational resources.

Examples include:

- CPU;
- GPU/NPU where applicable;
- memory;
- storage;
- network;
- execution time;
- external compute;
- optional remote quantum resources; and
- energy/resource estimates where measurable.

Performance results shall be interpreted in the context of the execution environment.

---

## 30. Reproducibility

Each Phase 4 experiment should be reproducible from a defined configuration.

The experiment record should identify:

- experiment ID;
- workflow version;
- model versions;
- input dataset;
- scenario;
- parameters;
- computational path;
- resource context;
- execution timestamp;
- software/configuration version;
- outputs;
- KPIs; and
- evidence location.

---

## 31. Experiment Record

The experiment result is a first-class engineering object.

~~~text
Experiment
   |
   +-- Configuration
   +-- Workflow
   +-- Scenario
   +-- Data
   +-- Models
   +-- Computational Path
   +-- Resources
   +-- Execution
   +-- Results
   +-- KPIs
   +-- Value
   +-- Evidence
   +-- Limitations
   +-- Review Decision
~~~

---

## 32. Measurement

Phase 4 shall distinguish between:

- execution success;
- technical performance;
- operational relevance;
- economic/value outcome; and
- validation status.

A workflow executing successfully does not automatically establish that the underlying model is valid or that a recommendation is operationally beneficial.

---

## 33. Evidence Chain

The Phase 4 evidence chain is:

~~~text
Problem
  |
Model
  |
Experiment
  |
Execution
  |
Observation
  |
Result
  |
Measurement
  |
Evidence
  |
Evaluation
  |
Decision
~~~

Evidence shall be sufficient to support the Phase 4 review decision.

---

## 34. Claims Discipline

Phase 4 shall use controlled claim status.

Possible classifications:

- Documented;
- Measured;
- Proposed;
- To Be Validated;
- Independently Validated.

The following shall not be assumed:

- quantum advantage;
- production performance;
- physical-field performance;
- commercial savings;
- customer outcomes;
- autonomous operation; or
- production readiness.

---

## 35. Notebook Implementation

The Phase 3 notebook-based workflow playground remains the initial execution environment.

Phase 4 may extend the notebook environment to execute:

- experiment configuration;
- input generation/loading;
- state construction;
- model execution;
- Classical baseline;
- AI/QAI alternatives;
- optimization;
- comparison;
- KPI calculation;
- value calculation;
- visualization;
- experiment recording; and
- evidence export.

The logical workflow remains independent of the notebook.

---

## 36. Minimum Executable Phase 4 Slice

The minimum Phase 4 slice is:

~~~text
Input State / Scenario
        |
        v
Virtual Asset
        |
        v
Sensing / Input Processing
        |
        v
Digital Farm Twin Context
        |
        v
Classical Baseline
        |
        +------> AI / QAI Alternative
        |
        v
Optimization / Decision
        |
        v
Recommendation
        |
        v
KPI / Value Measurement
        |
        v
Evidence
~~~

The objective is one complete, measurable and reproducible open-loop experiment.

---

## 37. Minimum Complexity Principle

Phase 4 shall not attempt to implement the complete future FAEP platform.

The initial experiment should be deliberately bounded.

Priority shall be given to:

1. one high-value problem;
2. a small asset/state representation;
3. a clear scenario;
4. a Classical baseline;
5. one or more justified computational alternatives;
6. measurable KPIs;
7. reproducibility; and
8. evidence.

---

## 38. Technology Neutrality

Phase 4 shall remain independent of any single:

- cloud provider;
- AI framework;
- quantum framework;
- optimization library;
- workflow engine;
- database;
- hardware platform; or
- future QAI runtime.

Technology may implement the architecture but shall not redefine the architecture.

---

## 39. Phase 4 Scope

### Included

- open-loop simulation;
- sensing/input representation;
- data processing;
- Digital Farm Twin context;
- Classical baseline;
- AI evaluation;
- QAI/QAI-inspired evaluation where justified;
- optimization;
- recommendation;
- KPI measurement;
- economic/value evaluation;
- comparative experiments;
- fault scenarios;
- fallback;
- reproducibility;
- evidence generation; and
- formal review.

### Excluded from the Phase 4 Pilot Boundary

- automated physical actuation;
- autonomous farm operation;
- production deployment;
- production Digital Twin;
- uncontrolled live-field intervention;
- physical QPU deployment;
- large-scale HPC infrastructure;
- full QAI Data Center;
- multi-tenant SaaS production;
- advanced autonomous robotics; and
- mass-scale commercial deployment.

These remain future realization paths unless separately promoted by evidence.

---

## 40. Phase 4 Folder Structure

The Phase 4 high-level implementation boundary is expected to organize around:

~~~text
phase_4/
|
+-- simulation/
+-- inputs/
+-- states/
+-- models/
+-- baselines/
+-- intelligence/
+-- optimization/
+-- experiments/
+-- scenarios/
+-- execution/
+-- comparison/
+-- metrics/
+-- value/
+-- validation/
+-- results/
+-- evidence/
+-- notebook/
+-- README.md
~~~

The exact subfolder implementation may be refined after the high-level architecture is frozen.

---

## 41. Relationship to Phase 5

Phase 4 produces the evidence required to determine whether the workflow is ready for controlled closed-loop experimentation.

~~~text
Phase 4
Open-Loop
    |
    v
Measured Recommendation
    |
    v
Formal Review
    |
    +---- REVISE
    |
    +---- ACCEPT
    |
    v
Phase 5
Closed-Loop CPS
~~~

Phase 5 should not be entered merely because Phase 4 executes successfully.

The Phase 4 evidence must demonstrate sufficient confidence in the relevant models, workflows, interfaces, measurements and safety boundaries.

---

## 42. Phase 4 → Phase 5 Handoff

The handoff package should contain:

- workflow version;
- asset definitions;
- state definitions;
- scenario definitions;
- input datasets;
- model versions;
- baseline implementation;
- AI/QAI implementation where applicable;
- experiment configurations;
- computational resource context;
- KPI results;
- economic/value results;
- fault results;
- limitations;
- evidence;
- reproducibility information;
- safety boundary; and
- formal review decision.

---

## 43. Phase 4 Acceptance Criteria

Phase 4 is ready for formal review when:

1. the selected use case is bounded;
2. the input state is defined;
3. the scenario is reproducible;
4. sensing/input processing is executable;
5. required Twin context is constructed;
6. the workflow executes end-to-end;
7. the Classical baseline is established;
8. alternative computational paths are evaluated where justified;
9. recommendations are generated;
10. KPIs are measured;
11. value measures are calculated where applicable;
12. abnormal cases are tested where relevant;
13. fallback behaviour is defined;
14. experiments are reproducible;
15. evidence is recorded; and
16. no automated physical actuation occurs within the Phase 4 pilot boundary.

---

## 44. Phase 4 Gate

The Phase 4 gate is:

~~~text
Use Case Defined
      |
      v
Input / Scenario Defined
      |
      v
Workflow Executable
      |
      v
Twin Context Established
      |
      v
Classical Baseline Established
      |
      v
AI / QAI Evaluated Where Justified
      |
      v
Recommendation Generated
      |
      v
KPI / Value Measured
      |
      v
Fault / Limitation Evidence
      |
      v
Evidence Package Complete
      |
      v
Formal Review
      |
      +---- READY FOR PHASE 5
      |
      +---- READY WITH CONTROLLED LIMITATIONS
      |
      +---- REVISE
      |
      +---- BLOCKED
~~~

---

## 45. Formal Review

The Phase 4 review shall evaluate:

- architecture;
- workflow execution;
- input/sensing flow;
- model behaviour;
- computational performance;
- Classical baseline;
- AI/QAI comparison;
- recommendation quality;
- KPI results;
- economic/value interpretation;
- resilience;
- reproducibility;
- limitations;
- evidence quality; and
- readiness for closed-loop operation.

---

## 46. Review Principle

> **Execution success is necessary but not sufficient for promotion.**

A technically executable workflow may still require:

- model improvement;
- additional data;
- better validation;
- stronger evidence;
- computational refinement;
- economic validation; or
- safety review.

---

## 47. Post-Pilot Handover Boundary

Advanced capabilities remain outside the Phase 4 Pilot implementation unless specifically promoted.

Potential future capabilities include:

- production Digital Twin;
- physical CPS;
- supervised closed-loop operation;
- physical actuation;
- HIL;
- QAI Runtime;
- QAI OS;
- QAI Station;
- QAI Data Center;
- Domain Fabric;
- advanced real-time QAI;
- federated CPS;
- multi-client orchestration;
- SaaS;
- advanced robotics;
- advanced sensing;
- remote QPU integration; and
- commercial deployment.

Phase 4 preserves architectural compatibility with these capabilities without requiring their implementation.

---

## 48. One Architecture — Multiple Realisation Levels

The same logical architecture shall support:

~~~text
Laptop Simulation
       |
Synthetic CPS
       |
Real Data + Emulation
       |
Physical MVP
       |
Physical CPS
       |
Production Digital Twin
       |
QAI Lab / Fabrics
       |
Scaled Products
~~~

Phase 4 therefore advances realism without requiring architectural redesign.

---

## 49. Phase 4 Engineering Principles

Phase 4 shall preserve the following principles:

- Classical baseline before QAI advantage;
- open-loop before automated closed-loop;
- recommendation before physical action;
- synthetic/real data separation;
- virtual/emulated/physical device separation;
- technical/operational/economic measurement together;
- human control;
- computational neutrality;
- reproducibility;
- traceability;
- evidence before promotion;
- safety before automation;
- minimum credible implementation;
- technology-independent architecture; and
- controlled progression toward Phase 5.

---

## 50. Master Realisation Principle

~~~text
Define
   |
Virtualize
   |
Emulate
   |
Simulate
   |
Experiment
   |
Validate
   |
Promote
   |
Scale
~~~

Phase 4 is the controlled open-loop experimentation and evaluation stage within this progression.

---

## 51. Final Phase 4 Principle

> **Prove the sensing-to-recommendation path before connecting the recommendation to physical action.**

The purpose of Phase 4 is not to demonstrate the maximum possible technology.

The purpose is to establish a credible, reproducible and measurable evidence chain for a bounded CPS decision problem.

---

## 52. Status

**INITIAL HIGH-LEVEL BASELINE — SEPTEMBER 2026**

### Phase 4 Status

- Open-Loop Simulation: **DEFINED**
- Sensing/Input Flow: **DEFINED**
- Processing Flow: **DEFINED**
- Digital Farm Twin Context: **DEFINED**
- Classical Baseline: **REQUIRED**
- AI/QAI Evaluation: **DEFINED**
- QAI Advantage Gate: **REQUIRED**
- Recommendation Flow: **DEFINED**
- KPI/Value Measurement: **DEFINED**
- Evidence Chain: **DEFINED**
- Automated Physical Actuation: **EXCLUDED**
- Phase 5 Closed-Loop Path: **DEFINED**
- Formal Review Gate: **DEFINED**
- Post-Pilot Architecture: **PRESERVED**

---

## 53. Completion Statement

Phase 4 establishes the controlled open-loop simulation and evaluation layer between CPS workflow definition and closed-loop physical CPS realization.

It provides a disciplined environment in which sensing, processing, Digital Farm Twin state, Classical/AI/QAI computation, optimization, recommendation, measurement, economic/value interpretation, resilience and evidence can be evaluated before automated physical actuation is introduced.

The governing progression remains:

**Define → Virtualize → Emulate → Simulate → Experiment → Validate → Promote → Scale**

And the governing Phase 4 rule is:

> **Validate the decision path before automating the action path.**

---

**Phase 4 README: HIGH-LEVEL BASELINE COMPLETE — SEPTEMBER 2026**

**Phase 4 Role: OPEN-LOOP SIMULATION**

**Next Formal Stage: PHASE 4 REVIEW → PHASE 5 CLOSED-LOOP CPS**
---
