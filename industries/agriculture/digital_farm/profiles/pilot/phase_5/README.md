# Phase 5 — Closed-Loop CPS Simulation

## 1. Pilot

**Notebook-based QAI CPS Closed-Loop Simulation**

Phase 5 extends the Phase 4 open-loop simulation into a controlled closed-loop CPS environment.

The Phase 5 pilot validates the transition from:

**Decision → Authorised Actuation → Changed State → Sensing Feedback**

without requiring unrestricted autonomous physical operation.

---

## 2. Purpose

Phase 5 validates controlled decision → actuation → changed state → sensing feedback cycles.

The purpose is to determine whether a defined CPS workflow can:

1. observe a represented system state;
2. process sensing information;
3. construct the required Digital Farm Twin context;
4. execute Classical, AI and/or QAI decision logic;
5. generate a decision;
6. apply a controlled simulated or emulated actuation;
7. calculate the resulting changed state;
8. feed the changed state back into the sensing/observation path;
9. execute subsequent control cycles;
10. measure technical and operational outcomes;
11. evaluate resilience and degraded behaviour;
12. maintain human and safety boundaries; and
13. generate evidence for formal Phase 5 review.

---

## 3. Architectural Position

Phase 5 follows Phase 4 Open-Loop Simulation and precedes later validated Digital Twin and production-oriented realization.

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
Phase 4
Open-Loop Simulation
   |
   v
+--------------------------------------+
| Phase 5                              |
| Closed-Loop CPS Simulation           |
|                                      |
| Sense / Observe                      |
|        |                             |
|        v                             |
| Process / Contextualise              |
|        |                             |
|        v                             |
| Digital Farm Twin State              |
|        |                             |
|        v                             |
| Classical / AI / QAI                 |
|        |                             |
|        v                             |
| Optimisation / Decision              |
|        |                             |
|        v                             |
| Authorised Actuation                 |
|        |                             |
|        v                             |
| Changed State                        |
|        |                             |
|        v                             |
| Sensing / Observation Feedback       |
|        |                             |
|        +-----------------------------+
+--------------------------------------+
   |
   v
Phase 6
QAI Advantage & Value
~~~

---

## 4. Governing Principle

> **Validate the closed-loop decision-to-action-to-feedback cycle before introducing uncontrolled physical automation.**

Phase 5 therefore introduces the logical closed-loop behaviour while maintaining controlled execution boundaries.

---

## 5. Pilot Boundary

Closed-loop behaviour is initially simulated/emulated.

Physical autonomous actuation is not assumed.

The Phase 5 pilot may represent:

- simulated actuators;
- emulated actuators;
- virtual equipment;
- simulated state transitions;
- controlled command execution;
- feedback generation;
- human approval;
- human override;
- fault injection; and
- degraded/recovery behaviour.

Actual physical actuation may only be introduced later through an explicitly governed implementation and validation path.

---

## 6. Realisation Principle

The overall FAEP realization principle remains:

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

Phase 5 primarily validates:

**Experiment → Closed-Loop Behaviour → Measure → Validate**

---

## 7. Relationship to Phase 4

Phase 4 established the open-loop decision path.

Phase 5 adds the controlled action and feedback path.

~~~text
Phase 4

Sense
  |
Process
  |
Twin Context
  |
Intelligence
  |
Optimisation
  |
Recommendation
  |
Measure


Phase 5

Sense
  |
Process
  |
Twin Context
  |
Intelligence
  |
Optimisation
  |
Decision
  |
Authorised Actuation
  |
Changed State
  |
Sense
  |
Feedback
  +---------------------> next cycle
~~~

Phase 5 must preserve the Phase 4 experiment and measurement foundations.

---

## 8. Closed-Loop Definition

For Phase 5, closed-loop CPS simulation means that an action generated from a system decision produces a represented state change that becomes an input to a subsequent observation/sensing cycle.

~~~text
Initial State
     |
     v
Observe
     |
     v
Process
     |
     v
Analyse
     |
     v
Decide
     |
     v
Authorise
     |
     v
Actuate
     |
     v
Changed State
     |
     v
Observe
     |
     +----------------------+
                            |
                            v
                       Next Cycle
~~~

The cycle is executable within a controlled simulation/emulation boundary.

---

## 9. Decision Boundary

Phase 5 distinguishes:

- recommendation;
- decision;
- authorization;
- command;
- actuation; and
- resulting state.

These concepts shall not be collapsed into a single operation.

~~~text
Recommendation
      |
      v
Decision
      |
      v
Authorization
      |
      v
Command
      |
      v
Actuation
~~~

A simulated or emulated action may proceed automatically within the controlled experiment only where the experiment explicitly defines that behaviour.

---

## 10. Actuation Boundary

Actuation in Phase 5 is primarily a simulated or emulated representation.

Examples may include:

- simulated irrigation;
- simulated valve state;
- simulated pump state;
- simulated heating/cooling intervention;
- simulated equipment command;
- simulated inventory movement;
- simulated logistics action; or
- other domain-specific state-changing action.

The purpose is to validate CPS control logic rather than to claim field-level operational deployment.

---

## 11. Changed State

Every controlled actuation should produce an explicit resulting state.

~~~text
Action
  |
  v
Actuator Model
  |
  v
State Transition
  |
  v
Changed System State
~~~

The resulting state may affect:

- crop condition;
- soil moisture;
- water availability;
- equipment state;
- energy/resource consumption;
- inventory;
- logistics;
- workforce allocation;
- economic state; or
- other represented system variables.

---

## 12. Feedback

The changed state becomes an input to the next observation cycle.

~~~text
Changed State
      |
      v
Sensing / Observation
      |
      v
State Estimation
      |
      v
Digital Farm Twin
      |
      v
Next Decision Cycle
~~~

This establishes the essential Phase 5 feedback relationship.

---

## 13. Digital Farm Twin State

The closed-loop experiment shall maintain an explicit state representation.

The state may include:

- physical asset state;
- environmental state;
- crop state;
- water state;
- equipment state;
- inventory state;
- energy/resource state;
- workforce state;
- logistics state; and
- economic/value state.

The Twin remains an experimental representation unless and until promoted through later validation.

---

## 14. State Transition Model

The Phase 5 experiment shall explicitly represent state transitions.

~~~text
State S0
   |
   | Decision / Action
   v
State S1
   |
   | Observation
   v
State S1'
   |
   | Next Decision
   v
State S2
~~~

The implementation shall distinguish expected state transitions from unexpected or degraded transitions.

---

## 15. Control Model

Phase 5 introduces a controlled CPS control boundary.

The control model may contain:

- sensing;
- state estimation;
- decision;
- authorization;
- command;
- actuation;
- feedback;
- timing;
- constraints;
- safety conditions;
- fallback; and
- recovery.

The control model remains technology-neutral.

---

## 16. Human Participation

Human participation remains a first-class architectural capability.

The experiment may support:

- human approval;
- human rejection;
- human modification;
- human override;
- emergency stop;
- policy enforcement; and
- manual recovery.

~~~text
System Recommendation
        |
        v
Human / Policy Review
        |
   +----+----+
   |         |
Approve    Reject / Modify
   |         |
   v         v
Action     Alternative
~~~

---

## 17. Safety Boundary

Phase 5 shall explicitly define the boundary between:

- simulation;
- emulation;
- supervised execution; and
- physical actuation.

The initial Phase 5 pilot does not require autonomous physical operation.

Safety controls should be represented before any future physical actuator is introduced.

---

## 18. Fault Scenarios

Phase 5 extends fault testing from the open-loop decision path into the closed-loop cycle.

Potential scenarios include:

- missing sensor data;
- stale feedback;
- incorrect state estimate;
- failed simulated actuator;
- delayed actuation;
- incomplete state transition;
- unexpected state;
- command rejection;
- unavailable computational path;
- resource exhaustion;
- conflicting constraints;
- unstable control response; and
- recovery condition.

---

## 19. Degraded Operation

The closed-loop system shall define degraded behaviour where appropriate.

~~~text
Normal
  |
  v
Fault
  |
  v
Detection
  |
  v
Containment
  |
  v
Fallback / Safe State
  |
  v
Recovery
  |
  v
Normal / Degraded Operation
~~~

A failed action should not silently appear as a successful state transition.

---

## 20. Stability and Convergence

Where applicable, Phase 5 shall examine whether repeated decision/action/feedback cycles remain stable.

Candidate observations include:

- state convergence;
- oscillation;
- overshoot;
- delayed response;
- repeated corrective action;
- resource depletion;
- constraint violation;
- recovery time; and
- control stability.

These are experimental validation measures rather than claims of production control-system certification.

---

## 21. Timing

Closed-loop experiments may record:

- sensing time;
- processing time;
- decision time;
- authorization time;
- actuation time;
- state-transition time;
- feedback time; and
- total cycle time.

Timing results shall be interpreted according to the execution environment.

---

## 22. Synchronization

Phase 5 shall maintain consistency between:

- simulated/emulated assets;
- Digital Farm Twin state;
- workflow state;
- actuator state; and
- feedback state.

State synchronization errors shall be observable and recorded where relevant.

---

## 23. Classical / AI / QAI Execution

The closed-loop architecture remains compatible with:

- Classical execution;
- Classical optimization;
- AI;
- QAI-inspired methods;
- Hybrid QAI;
- optional quantum execution; and
- Classical/HPC fallback.

The computational path remains independent of the CPS control semantics.

---

## 24. QAI Advantage Boundary

Phase 5 does not automatically establish quantum advantage.

Where computational alternatives are evaluated, the comparison should use common problem definitions, scenarios and relevant metrics.

~~~text
Same CPS Problem
       |
       +---- Classical
       |
       +---- AI
       |
       +---- QAI / Hybrid
       |
       +---- Optional Quantum
       |
       v
Common Evaluation
       |
       v
Advantage Gate
~~~

Possible outcomes remain:

- QAI Advantage Demonstrated;
- Potential QAI Advantage;
- No Demonstrated Advantage;
- Classical Solution Preferred;
- Further Research Required.

---

## 25. Resource Feedback

Closed-loop behaviour should consider whether actions change resource conditions.

Examples include:

- water consumption;
- energy consumption;
- inventory consumption;
- equipment availability;
- labour utilization;
- transport capacity; and
- economic resources.

~~~text
Decision
   |
   v
Action
   |
   v
Resource Consumption
   |
   v
Changed State
   |
   v
Feedback
~~~

This connects CPS behaviour with the FAEP economic/value plane.

---

## 26. Economic and Value Feedback

Phase 5 may extend feedback beyond technical state.

~~~text
Technical State
      |
      v
Operational State
      |
      v
Resource State
      |
      v
Economic / Value State
      |
      v
Next Decision Cycle
~~~

This establishes the foundation for the deeper QAI Advantage and Value work of Phase 6.

---

## 27. Experiment Configuration

Each closed-loop experiment shall define:

- experiment ID;
- workflow version;
- asset configuration;
- initial state;
- scenario;
- input data;
- model versions;
- computational path;
- control policy;
- authorization mode;
- actuation model;
- feedback model;
- cycle count;
- timing parameters;
- constraints;
- safety conditions;
- KPIs; and
- acceptance criteria.

---

## 28. Cycle Definition

A Phase 5 experiment should explicitly define the cycle.

~~~text
Cycle N
  |
Observe
  |
Process
  |
Decide
  |
Authorize
  |
Actuate
  |
State Change
  |
Observe
  |
Cycle N+1
~~~

The number of cycles may be fixed or scenario-dependent.

---

## 29. Minimum Executable Closed-Loop Slice

The minimum Phase 5 slice is:

~~~text
Initial State
      |
      v
Sensor / Observation
      |
      v
State Construction
      |
      v
Classical / AI / QAI Decision
      |
      v
Authorisation
      |
      v
Simulated / Emulated Actuation
      |
      v
Changed State
      |
      v
Feedback
      |
      v
Next Cycle
      |
      v
Measurement / Evidence
~~~

The objective is to demonstrate at least one complete closed-loop cycle and preferably multiple repeatable cycles.

---

## 30. Reproducibility

Each experiment shall be reproducible from its configuration.

The experiment record should identify:

- initial state;
- scenario;
- workflow;
- model;
- computational path;
- actuation policy;
- feedback policy;
- cycle configuration;
- execution environment;
- results;
- KPIs;
- faults;
- recovery behaviour; and
- evidence.

---

## 31. Results as First-Class Objects

Phase 5 results should capture both individual actions and resulting state transitions.

~~~text
Experiment
   |
   +-- Initial State
   +-- Cycle 1
   |     +-- Decision
   |     +-- Actuation
   |     +-- Changed State
   |     +-- Feedback
   |
   +-- Cycle 2
   |     +-- Decision
   |     +-- Actuation
   |     +-- Changed State
   |     +-- Feedback
   |
   +-- Cycle N
   |
   +-- KPIs
   +-- Value
   +-- Faults
   +-- Recovery
   +-- Evidence
~~~

---

## 32. Comparison

Phase 5 may compare:

- open-loop versus closed-loop behaviour;
- Classical versus AI/QAI decision paths;
- different control policies;
- different actuation strategies;
- different feedback intervals;
- normal versus degraded scenarios; and
- alternative resource policies.

---

## 33. KPI Categories

Candidate Phase 5 metrics include:

### Technical

- cycle completion;
- state-transition correctness;
- timing;
- computational performance;
- synchronization;
- fault detection.

### Operational

- response;
- resource utilization;
- constraint satisfaction;
- recovery;
- stability;
- resilience.

### Economic / Value

- cost;
- resource value;
- avoided loss;
- productivity;
- sustainability;
- economic outcome.

All simulation-derived results remain experimental outputs until appropriately validated.

---

## 34. Evidence Chain

The Phase 5 evidence chain is:

~~~text
Problem
  |
Initial State
  |
Scenario
  |
Workflow
  |
Decision
  |
Actuation
  |
Changed State
  |
Feedback
  |
Next Cycle
  |
Measurement
  |
Evidence
  |
Evaluation
  |
Review Decision
~~~

---

## 35. Claims Discipline

Phase 5 shall not automatically claim:

- autonomous farm operation;
- production CPS readiness;
- safe physical actuation;
- commercial savings;
- field-level productivity improvement;
- production Digital Twin performance;
- quantum advantage; or
- operational deployment readiness.

Claims shall be classified according to evidence.

---

## 36. Technology Neutrality

The Phase 5 architecture shall remain independent of:

- workflow engines;
- cloud providers;
- AI frameworks;
- quantum frameworks;
- PLC platforms;
- actuator vendors;
- IoT platforms;
- databases;
- networking technologies; and
- future QAI runtime platforms.

Technology implements the architecture; it does not redefine the architecture.

---

## 37. Phase 5 Folder Architecture

The high-level Phase 5 implementation structure is:

~~~text
phase_5/
|
+-- simulation/
+-- inputs/
+-- states/
+-- models/
+-- baselines/
+-- intelligence/
+-- optimization/
+-- decisions/
+-- actuation/
+-- feedback/
+-- control/
+-- experiments/
+-- scenarios/
+-- execution/
+-- comparison/
+-- metrics/
+-- value/
+-- safety/
+-- validation/
+-- results/
+-- evidence/
|
+-- notebook/
    |
    +-- QAI_Agriculture_Optimization_Phase5_ClosedLoop.ipynb
    +-- README.md
~~~

This structure is intentionally high-level and may be refined during detailed implementation.

---

## 38. Notebook Lineage

The Phase 5 notebook shall extend the Phase 4 notebook.

~~~text
Phase 3
QAI_Agriculture_Optimization.ipynb
        |
        v
Phase 4
QAI_Agriculture_Optimization_Phase4_OpenLoop.ipynb
        |
        v
Phase 5
QAI_Agriculture_Optimization_Phase5_ClosedLoop.ipynb
~~~

The previous phase notebooks remain preserved as historical implementation baselines.

The Phase 5 notebook should not overwrite the Phase 4 notebook.

---

## 39. Notebook Principle

The notebook is an execution and experimentation environment.

It is not the definition of the complete CPS architecture.

The logical workflow, assets, state model, control model, actuation semantics and feedback semantics remain independent of the notebook.

---

## 40. Phase 5 → Phase 6 Handoff

Phase 5 produces evidence concerning closed-loop CPS behaviour.

~~~text
Closed-Loop Simulation
        |
        v
Decision / Actuation / Feedback Evidence
        |
        v
Technical / Operational Measurement
        |
        v
Economic / Value Measurement
        |
        v
Formal Review
        |
        v
Phase 6
QAI Advantage & Value
~~~

Phase 6 can then examine whether the QAI path provides demonstrated technical, operational or economic value within the validated problem.

---

## 41. Phase 5 Acceptance Criteria

Phase 5 is ready for formal review when:

1. the closed-loop problem is bounded;
2. the initial state is defined;
3. the sensing/observation path executes;
4. the decision path executes;
5. authorization is represented;
6. actuation is simulated or emulated;
7. the resulting state changes are represented;
8. feedback is generated;
9. subsequent cycles execute;
10. abnormal/degraded behaviour is tested where relevant;
11. safety and human-control boundaries are explicit;
12. timing and relevant KPIs are measured;
13. experiments are reproducible;
14. evidence is recorded; and
15. no unsupported physical autonomy claim is made.

---

## 42. Phase 5 Gate

~~~text
Initial State Defined
        |
        v
Observation Executable
        |
        v
Decision Executable
        |
        v
Authorization Defined
        |
        v
Actuation Executable
        |
        v
Changed State Verified
        |
        v
Feedback Executable
        |
        v
Repeated Cycle Executable
        |
        v
Fault / Recovery Evaluated
        |
        v
KPI / Value Measured
        |
        v
Evidence Complete
        |
        v
Formal Review
        |
        +---- READY FOR PHASE 6
        |
        +---- READY WITH CONTROLLED LIMITATIONS
        |
        +---- REVISE
        |
        +---- BLOCKED
~~~

---

## 43. Formal Review

The Phase 5 formal review shall evaluate:

- architecture;
- decision logic;
- actuation representation;
- state transitions;
- feedback;
- synchronization;
- timing;
- control behaviour;
- human intervention;
- safety;
- fault handling;
- resilience;
- computational path;
- resource impact;
- technical KPIs;
- operational KPIs;
- economic/value outputs;
- reproducibility; and
- evidence quality.

---

## 44. Review Principle

> **A closed-loop cycle is not considered validated merely because it executes.**

The review must determine whether:

- the state transition is credible;
- the feedback is correctly represented;
- the control behaviour is sufficiently understood;
- the experiment is reproducible;
- limitations are documented; and
- the evidence supports progression to Phase 6.

---

## 45. Post-Pilot Boundary

The following remain potential future realization paths:

- physical sensors;
- physical actuators;
- supervised physical CPS;
- production Digital Twin;
- Hardware-in-the-Loop;
- real-time QAI;
- QAI Runtime;
- QAI OS;
- QAI Station;
- QAI Data Center;
- Domain Fabric;
- advanced robotics;
- autonomous operation;
- federated CPS;
- multi-client orchestration; and
- commercial SaaS.

Phase 5 architecture should remain compatible with these future capabilities without requiring their implementation in the Pilot.

---

## 46. Progressive Realisation

The same logical architecture continues through increasing levels of realism:

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

Phase 5 strengthens the CPS loop without prematurely crossing into unrestricted physical deployment.

---

## 47. Phase 5 Engineering Principles

Phase 5 shall preserve:

- open-loop evidence from Phase 4;
- controlled closed-loop progression;
- explicit state transitions;
- decision/action separation;
- authorization;
- human control;
- safety boundaries;
- feedback integrity;
- fault handling;
- degraded operation;
- resilience;
- reproducibility;
- technical/operational/economic measurement;
- computational neutrality;
- Classical fallback;
- no assumed quantum advantage;
- evidence before promotion; and
- controlled progression toward physical CPS.

---

## 48. Master Realisation Principle

**Define → Virtualize → Emulate → Simulate → Experiment → Validate → Promote → Scale**

Phase 5 represents the transition from open-loop experimentation toward controlled closed-loop CPS validation.

---

## 49. Final Phase 5 Principle

> **Validate decision → actuation → changed state → sensing feedback cycles before promoting the system toward physical closed-loop operation.**

The goal is not unrestricted autonomy.

The goal is to establish a credible, reproducible and measurable closed-loop CPS capability.

---

## 50. Status

**HIGH-LEVEL BASELINE — SEPTEMBER 2026**

### Phase 5 Status

- Closed-Loop CPS Simulation: **DEFINED**
- Decision Path: **DEFINED**
- Authorization Boundary: **DEFINED**
- Actuation Model: **DEFINED**
- Changed-State Model: **DEFINED**
- Sensing Feedback: **DEFINED**
- Repeated Cycles: **DEFINED**
- Human Override: **PRESERVED**
- Safety Boundary: **DEFINED**
- Fault/Recovery: **DEFINED**
- Technical Measurement: **DEFINED**
- Economic/Value Measurement: **DEFINED**
- QAI Evaluation Compatibility: **PRESERVED**
- Automated Physical Actuation: **NOT REQUIRED**
- Autonomous Physical Operation: **NOT ASSUMED**
- Phase 6 Handoff: **DEFINED**
- Formal Review Gate: **DEFINED**
- Post-Pilot Architecture: **PRESERVED**

---

## 51. Completion Statement

Phase 5 establishes the controlled closed-loop CPS simulation layer between open-loop QAI evaluation and subsequent QAI advantage/value assessment.

It validates the essential CPS cycle:

**Decision → Authorised Actuation → Changed State → Sensing Feedback → Next Decision**

while maintaining explicit control, safety, human intervention, reproducibility, resilience, measurement and evidence boundaries.

The governing realization progression remains:

**Define → Virtualize → Emulate → Simulate → Experiment → Validate → Promote → Scale**

And the governing Phase 5 rule is:

> **Validate the closed-loop cycle before promoting the system toward physical autonomous operation.**

---

**PHASE 5 HIGH-LEVEL README — COMPLETE**

**Phase 5 Role: CLOSED-LOOP CPS SIMULATION**

**Next Formal Stage: PHASE 5 REVIEW → PHASE 6 QAI ADVANTAGE & VALUE**
---
