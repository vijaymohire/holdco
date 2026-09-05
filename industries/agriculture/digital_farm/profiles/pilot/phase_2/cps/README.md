# Phase 2 — CPS

## README

### Part 1 — Purpose, Architectural Position and CPS Foundation

### 1. Purpose

This document defines the architectural role, scope, principles and operating model of the **Cyber-Physical System (CPS)** subsystem within Phase 2 of the Digital Farm Pilot.

The CPS subsystem establishes the relationship between:

- physical or emulated assets;
- cyber representations;
- state;
- behavior;
- sensing;
- communication;
- computation;
- control;
- actuation;
- feedback.

---

### 2. Core CPS Question

The CPS subsystem answers:

> **How does a system sense, reason, decide, act and respond while maintaining a controlled relationship between cyber and physical or emulated reality?**

---

### 3. CPS Architectural Position

CPS is a Phase 2 integration subsystem.

It does not replace:

- Virtualization;
- Emulation;
- Simulation;
- Conditions;
- Calibration;
- Fidelity;
- QAI.

---

### 4. CPS Position in Phase 2

~~~text
Phase 1
Virtual Assets / State / Relationships / Interfaces
                    |
                    v
        +-----------------------+
        |          CPS          |
        | State + Control Loop  |
        +-----------------------+
          |       |       |
          v       v       v
      Emulator Simulator QAI
          |       |       |
          +-------+-------+
                  |
                  v
             Measurements
~~~

---

### 5. CPS as a System Boundary

CPS represents the operational relationship between cyber decision-making and physical-system behavior.

During the Pilot, the physical side may be represented by emulation.

---

### 6. Pilot CPS Boundary

The minimum Pilot CPS may therefore operate entirely within:

- laptop;
- virtual assets;
- emulated sensors;
- emulated actuators;
- simulated environment;
- QAI pipeline;
- classical baseline.

---

### 7. Physical CPS Extension

Physical sensors, IoT devices and actuators may later replace or complement emulated components without changing the logical CPS architecture.

---

### 8. CPS Principle

The architecture should define the CPS logically before selecting specific hardware or software technologies.

---

### 9. Technology-Neutral CPS

The CPS model should remain independent of:

- processor vendor;
- operating system;
- simulation framework;
- IoT platform;
- cloud provider;
- QPU provider;
- communication protocol.

---

### 10. CPS Does Not Mean Physical Hardware Only

A CPS architecture may be exercised using emulated physical components during development and experimentation.

---

### 11. Emulated CPS

~~~text
Virtual Asset
      |
      v
Emulated Sensor
      |
      v
Cyber Processing
      |
      v
Control Decision
      |
      v
Emulated Actuator
      |
      v
Emulated Physical Response
      |
      v
Feedback
~~~

---

### 12. Physical CPS

The same logical flow may later connect to physical assets.

~~~text
Physical Asset
      |
      v
Physical Sensor
      |
      v
Cyber Processing
      |
      v
Control Decision
      |
      v
Physical Actuator
      |
      v
Physical Response
      |
      v
Feedback
~~~

---

### 13. Logical Equivalence

The emulated and physical implementations should expose compatible logical interfaces wherever practical.

---

### 14. CPS Core Elements

The minimum CPS architecture consists of:

- physical or represented environment;
- sensing;
- communication;
- computation;
- control;
- actuation;
- feedback.

---

### 15. Physical Environment

The physical environment is the real-world system being observed or controlled.

---

### 16. Represented Environment

During Pilot execution, the physical environment may be represented by an Emulator or Simulator.

---

### 17. Cyber Domain

The cyber domain contains:

- state representation;
- processing;
- decision logic;
- QAI;
- control policies;
- orchestration.

---

### 18. Physical Domain

The physical domain contains or represents:

- assets;
- environment;
- sensors;
- actuators;
- processes.

---

### 19. CPS Boundary

The CPS boundary defines which elements participate in the cyber-physical control relationship.

---

### 20. CPS Boundary Example

For intelligent irrigation:

~~~text
                 CPS Boundary
+------------------------------------------------+
|                                                |
|  Soil / Crop / Water / Pump / Irrigation Zone |
|       ^                         |              |
|       |                         v              |
|    Sensors                 Actuator            |
|       |                         ^              |
|       v                         |              |
|  Cyber State --> QAI --> Control Policy        |
|                                                |
+------------------------------------------------+
~~~

---

### 21. CPS Asset Identity

CPS elements should reference authoritative asset identities from Phase 1.

---

### 22. No Duplicate Asset Registry

The CPS subsystem should not create an independent asset registry.

---

### 23. CPS Asset References

CPS may reference:

- virtual assets;
- physical assets;
- emulated assets;
- simulated assets.

---

### 24. CPS Relationships

CPS relationships should use the authoritative relationship model established in Phase 1.

---

### 25. CPS Mapping

Physical-to-virtual correspondence should use the Phase 1 mapping architecture.

---

### 26. CPS State

CPS operation depends on an explicit state representation.

---

### 27. State Authority

The authoritative state model remains the Phase 1 Virtual State Model.

---

### 28. CPS State View

CPS may maintain an operational view of state without duplicating the authoritative state model.

---

### 29. State Components

Relevant CPS state may include:

- current state;
- desired state;
- commanded state;
- observed state;
- emulated state;
- predicted state.

---

### 30. Current State

Current state represents the best available representation of the present operating condition.

---

### 31. Desired State

Desired state represents the state the CPS seeks to achieve or maintain.

---

### 32. Commanded State

Commanded state represents the state requested through control action.

---

### 33. Observed State

Observed state represents information obtained from sensing or other observation sources.

---

### 34. Emulated State

Emulated state represents the state produced by an Emulator representing target behavior.

---

### 35. Predicted State

Predicted state represents an expected future state produced by a model or computational method.

---

### 36. State Distinction

These state concepts should not be silently collapsed into one value.

---

### 37. CPS State Relationship

~~~text
Observed State
      |
      v
Current State
      |
      +------> Desired State
      |             |
      v             v
Deviation / Gap
      |
      v
Decision
      |
      v
Commanded State
      |
      v
Action
      |
      v
New Observed State
~~~

---

### 38. CPS Control Loop

The CPS control loop connects observation, decision and action.

---

### 39. Basic CPS Loop

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
Observe
  |
  +---------> repeat
~~~

---

### 40. QAI in the CPS Loop

QAI may participate in the processing or decision stages.

---

### 41. QAI Does Not Own the CPS Loop

The CPS architecture owns the operational control relationship.

QAI provides computational capability within that relationship.

---

### 42. Classical Baseline

A classical computational method should remain available as a baseline.

---

### 43. Computational Alternatives

The CPS decision stage may evaluate:

- classical;
- quantum-inspired;
- hybrid QAI;
- quantum

approaches.

---

### 44. Comparative CPS Evaluation

The computational alternatives should be evaluated under comparable CPS conditions.

---

### 45. Advantage Gate

The Advantage Gate may determine whether a QAI approach provides sufficient benefit for the intended CPS decision.

---

### 46. CPS Fallback

If the selected QAI approach is unavailable or unsuitable, the CPS may use an approved classical or HPC fallback.

---

### 47. CPS Fallback Principle

~~~text
CPS Decision
      |
      v
Advantage / Availability Check
      |
 +----+----+
 |         |
Pass     Fail
 |         |
 v         v
QAI     Classical / HPC
 |         |
 +----+----+
      |
      v
Control Decision
~~~

---

### 48. CPS and Conditions

The CPS operates under the applicable condition context defined by the Conditions subsystem.

---

### 49. Condition-Aware CPS

CPS behavior may differ according to:

- E0 nominal;
- E1 perturbed;
- E2 degraded;
- E3 critical;
- E4 extreme.

---

### 50. Condition Does Not Belong to CPS

The Conditions subsystem defines condition semantics.

CPS consumes those conditions to determine appropriate behavior.

---

### 51. CPS and Desired State

The desired state provides the control objective.

---

### 52. CPS and Deviation

The CPS may calculate deviation between current and desired states.

---

### 53. Deviation

Deviation may represent:

- magnitude;
- direction;
- duration;
- confidence;
- uncertainty.

---

### 54. Control Objective

A control objective defines what the CPS attempts to achieve.

---

### 55. Irrigation Control Objective

For the Pilot, an example objective is:

> Maintain soil moisture within an acceptable target range while respecting water, energy and equipment constraints.

---

### 56. Multi-Objective Control

CPS control may involve multiple objectives.

Examples include:

- crop health;
- water conservation;
- energy consumption;
- equipment protection;
- economic value.

---

### 57. Objective Priority

Objectives should have explicit priority or trade-off rules where they conflict.

---

### 58. Constraint-Aware Control

Control decisions should respect declared constraints.

---

### 59. CPS Constraints

Constraints may include:

- water availability;
- pump capacity;
- energy;
- soil limits;
- crop requirements;
- safety;
- communication;
- computational resources.

---

### 60. Hard Constraint

A hard constraint cannot be violated by an accepted control action.

---

### 61. Soft Constraint

A soft constraint may be violated within a defined tolerance when necessary.

---

### 62. Constraint Priority

Constraint priority should be explicit.

---

### 63. Safety Constraint

Safety constraints take precedence over optimization objectives where applicable.

---

### 64. CPS State Transition

A CPS may transition between operational states.

---

### 65. CPS Operational States

A minimum irrigation example may include:

- IDLE;
- DEMAND;
- IRRIGATING;
- RECOVERY.

---

### 66. Fault States

The CPS may additionally represent:

- DEGRADED;
- CRITICAL;
- EMERGENCY.

---

### 67. State Machine Example

~~~text
              +--------+
              |  IDLE  |
              +---+----+
                  |
              demand
                  v
            +-----+------+
            |   DEMAND   |
            +-----+------+
                  |
             authorize
                  v
          +-------+--------+
          |   IRRIGATING   |
          +-------+--------+
                  |
              complete
                  v
           +------+------+
           |  RECOVERY   |
           +------+------+
                  |
              stable
                  v
                IDLE
~~~

---

### 68. Degraded Transition

A degradation may interrupt the normal state sequence.

---

### 69. Degraded Example

~~~text
IRRIGATING
     |
     +--> Low Flow
             |
             v
          DEGRADED
~~~

---

### 70. Critical Transition

A severe condition may transition the CPS into a critical state.

---

### 71. Critical Example

~~~text
IRRIGATING
     |
     +--> Pump Failure
             |
             v
          CRITICAL
~~~

---

### 72. Extreme Transition

An extreme condition may require an emergency state.

---

### 73. Emergency Example

~~~text
CRITICAL
    |
    +--> Major System Failure
    |
    v
EMERGENCY
~~~

---

### 74. State Transition Guard

A state transition should have an explicit guard.

---

### 75. Guard Example

~~~text
IF
    soil_moisture < lower_bound
AND
    water_available = TRUE
AND
    pump_available = TRUE
THEN
    transition to DEMAND
~~~

---

### 76. Transition Action

A transition may trigger an action.

---

### 77. Transition Action Example

~~~text
DEMAND
   |
   v
QAI / Classical Decision
   |
   v
Irrigation Command
~~~

---

### 78. Transition Validation

A transition should be checked against:

- state validity;
- condition;
- constraints;
- safety;
- actuator availability.

---

### 79. Invalid Transition

An invalid transition should be rejected or explicitly escalated.

---

### 80. CPS State Consistency

At every significant execution point, the CPS should maintain consistency between:

- current state;
- condition;
- desired state;
- commanded action.

---

### 81. State Contradiction

A contradiction should be detected rather than silently overwritten.

---

### 82. Example Contradiction

~~~text
CPS State:
    Pump = OFF

Commanded State:
    Pump = ON

Observed State:
    Pump = OFF
~~~

This represents a meaningful control-response discrepancy.

---

### 83. Control-Response Mismatch

The CPS should identify mismatches between commanded and observed behavior.

---

### 84. Mismatch Categories

Examples include:

- actuator delay;
- actuator failure;
- communication failure;
- incorrect model;
- stale observation;
- unexpected physical behavior.

---

### 85. Feedback

Feedback closes the CPS control loop.

---

### 86. Feedback Types

Feedback may include:

- sensor observations;
- actuator response;
- state transitions;
- environmental response;
- performance measurements.

---

### 87. Feedback Timing

Feedback timing may materially affect control quality.

---

### 88. Feedback Latency

The CPS should preserve relevant latency information.

---

### 89. Delayed Feedback

Delayed feedback may cause:

- stale decisions;
- overshoot;
- instability;
- unnecessary actions.

---

### 90. Feedback Quality

Feedback should carry relevant quality information.

---

### 91. Feedback Confidence

Where observations are uncertain, confidence should remain visible to the CPS decision process.

---

### 92. Feedback Provenance

Feedback should preserve its source and provenance.

---

### 93. Feedback Aggregation

Multiple feedback signals may be aggregated where appropriate.

---

### 94. Feedback Conflict

Conflicting feedback should trigger explicit reconciliation or uncertainty handling.

---

### 95. CPS Sensing Path

Sensing provides observations to the CPS.

---

### 96. CPS Computational Path

Computation transforms observations into:

- state estimates;
- predictions;
- decisions;
- control policies.

---

### 97. CPS Communication Path

Communication transports observations, decisions, commands and feedback.

---

### 98. Three-Path CPS Architecture

~~~text
                    CPS
                     |
       +-------------+-------------+
       |             |             |
       v             v             v
   Sensing      Computational   Communication
       |             |             |
       +-------------+-------------+
                     |
                     v
              Control / Actuation
                     |
                     v
                 Feedback
~~~

---

### 99. Path Independence

Each path should remain independently testable.

---

### 100. Path Interaction

The CPS may integrate all three paths during end-to-end execution.

---

### 101. Sensing Failure

A sensing-path failure should be distinguishable from computational failure.

---

### 102. Computational Failure

A computational-path failure should be distinguishable from communication failure.

---

### 103. Communication Failure

A communication-path failure should be distinguishable from actuator or sensor failure.

---

### 104. Independent Path Testing

The CPS test architecture should support:

- sensing-only tests;
- computational-only tests;
- communication-only tests;
- combined three-path tests.

---

### 105. Open-Loop CPS

Open-loop CPS testing evaluates system behavior without feeding the resulting action back into the state evolution.

---

### 106. Open-Loop Example

~~~text
Input State
    |
    v
CPS Decision
    |
    v
Control Output
    |
    v
Measure Result
~~~

---

### 107. Open-Loop Purpose

Open-loop testing supports:

- decision validation;
- algorithm comparison;
- control-policy analysis;
- baseline comparison.

---

### 108. Closed-Loop CPS

Closed-loop CPS testing feeds the action response back into subsequent state and decision cycles.

---

### 109. Closed-Loop Example

~~~text
State
  |
  v
Sense
  |
  v
Process / QAI
  |
  v
Decide
  |
  v
Act
  |
  v
New State
  |
  +------> Sense
~~~

---

### 110. Closed-Loop Purpose

Closed-loop testing evaluates:

- dynamic response;
- stability;
- adaptation;
- recovery;
- control quality;
- cumulative effects.

---

### 111. Open and Closed Loop Independence

Open-loop and closed-loop tests should remain independently executable.

---

### 112. Emulator-CPS Integration

The Emulator may provide the target-system response within the CPS loop.

---

### 113. Emulator-CPS Flow

~~~text
CPS Command
     |
     v
Emulator
     |
     v
Emulated Physical Response
     |
     v
CPS State
     |
     v
Feedback
~~~

---

### 114. Simulator-CPS Integration

The Simulator may explore alternative CPS responses under changed conditions or parameters.

---

### 115. Simulator-CPS Flow

~~~text
CPS Policy
     |
     v
Simulation
     |
     v
Alternative State Trajectory
     |
     v
CPS Evaluation
~~~

---

### 116. Emulator and Simulator Separation

The Emulator and Simulator remain peer subsystems.

---

### 117. CPS Does Not Contain Simulation

Simulation is not a hidden subsystem inside CPS.

---

### 118. CPS Does Not Contain Emulation

Emulation is not a hidden subsystem inside CPS.

---

### 119. Controlled CPS Interfaces

CPS interacts with Emulator and Simulator through explicit interfaces.

---

### 120. Part 1 Closure

Part 1 establishes the CPS foundation and architectural position.

The principal conclusions are:

1. CPS is a first-class Phase 2 integration subsystem.
2. CPS connects cyber decision-making with physical or represented physical behavior.
3. The Pilot may implement CPS entirely through virtualization and emulation.
4. Physical sensors and actuators are future extensions rather than Pilot prerequisites.
5. CPS remains technology-neutral.
6. Phase 1 asset, relationship, mapping and state artifacts remain authoritative.
7. CPS must not duplicate the Phase 1 asset registry or state model.
8. CPS distinguishes current, desired, commanded, observed, emulated and predicted state.
9. The CPS control loop follows Sense → Process → Decide → Act → Observe.
10. QAI may participate in processing and decision-making but does not own the CPS loop.
11. Classical, quantum-inspired, hybrid QAI and quantum approaches may be compared.
12. Advantage Gate evaluation may determine whether a QAI approach is appropriate.
13. Classical or HPC fallback remains available.
14. CPS consumes the Conditions subsystem rather than redefining condition semantics.
15. Desired state and operating condition remain distinct.
16. Control decisions must respect declared constraints.
17. Safety constraints take precedence over optimization objectives where applicable.
18. CPS state transitions should use explicit guards and actions.
19. Commanded and observed states should be compared for response mismatch.
20. Feedback must preserve timing, quality, confidence and provenance where relevant.
21. Computational, sensing and communication paths remain independently testable.
22. Open-loop and closed-loop CPS testing are distinct and both are required where applicable.
23. Emulator and Simulator are peer subsystems.
24. CPS does not contain or absorb the Emulator.
25. CPS does not contain or absorb the Simulator.
26. Emulator-CPS and Simulator-CPS interactions use controlled interfaces.
27. The architecture therefore supports independent:
    - Emulator + QAI tests;
    - Simulator + QAI tests;
    - Emulator + CPS tests;
    - Simulator + CPS tests;
    - open-loop tests;
    - closed-loop tests;
    - three-path tests;
    - end-to-end CPS tests.

The governing principle is:

> **CPS is the controlled cyber-physical feedback relationship—not the Emulator, not the Simulator, and not the QAI pipeline. Keep these capabilities independent, connect them through explicit interfaces, and prove their integrity through progressively deeper open-loop and closed-loop integration tests.**

**PART 1 STATUS: COMPLETE — CPS FOUNDATION, STATE MODEL, CONTROL LOOP, THREE-PATH ARCHITECTURE, OPEN/CLOSED LOOP AND EMULATOR/SIMULATOR SEPARATION BASELINE**
---
### 121. Purpose of Part 2

Part 2 defines the CPS structural model in greater detail, including CPS components, roles, state relationships, control policies, transitions, actions and feedback semantics.

---

### 122. CPS Structural Model

The CPS should be represented as a connected set of cooperating elements rather than as one monolithic component.

~~~text
                 CPS
                  |
     +------------+------------+
     |            |            |
  Sensing     Computation   Communication
     |            |            |
     +------------+------------+
                  |
               Control
                  |
               Actuation
                  |
             Environment
                  |
               Feedback
                  |
                  +----> CPS
~~~

---

### 123. CPS Component Identity

Each CPS component should have an identifiable logical identity.

---

### 124. CPS Component Types

Components may include:

- sensor;
- actuator;
- controller;
- computational function;
- communication function;
- environment;
- state representation;
- decision function.

---

### 125. CPS Component Registry Boundary

The CPS subsystem may maintain component references and execution relationships, but authoritative asset identity remains with Phase 1.

---

### 126. Component Reference

A CPS component should reference its corresponding authoritative asset or function where one exists.

---

### 127. CPS Functional Roles

A component may perform one or more roles.

Examples include:

- sensing;
- estimation;
- prediction;
- decision;
- control;
- actuation;
- feedback.

---

### 128. Role Separation

Logical roles should remain distinguishable even when one implementation performs multiple roles.

---

### 129. Sensor Role

A sensor provides observations about the represented physical environment or system.

---

### 130. Sensor Observation

An observation should identify:

- source;
- measurement;
- unit;
- timestamp;
- quality;
- confidence where applicable.

---

### 131. Sensor-to-State Relationship

~~~text
Sensor
  |
  v
Observation
  |
  v
State Estimation
  |
  v
Current State
~~~

---

### 132. Actuator Role

An actuator executes an accepted command against the represented physical system.

---

### 133. Actuator Command

A command should identify:

- target;
- requested action;
- parameters;
- timing;
- constraints;
- authorization where applicable.

---

### 134. Actuator Response

The actuator should provide an observable response where the target supports such feedback.

---

### 135. Controller Role

The controller coordinates state, objectives, constraints and actions.

---

### 136. Controller Independence

The controller should not be tightly coupled to one computational method.

It should be capable of consuming an approved decision from:

- classical computation;
- quantum-inspired computation;
- hybrid QAI;
- quantum computation.

---

### 137. Decision Function

The decision function transforms relevant state and objective information into a proposed control action or policy.

---

### 138. Decision Inputs

Decision inputs may include:

- current state;
- desired state;
- operating condition;
- constraints;
- predictions;
- resource availability;
- historical information.

---

### 139. Decision Output

The decision output should identify:

- selected action;
- parameters;
- expected outcome;
- confidence where available;
- applicable policy.

---

### 140. Decision Versus Command

A decision is a selected course of action.

A command is the executable request sent to an actuator or downstream control component.

---

### 141. Decision-to-Command Boundary

~~~text
Decision
   |
   v
Policy / Safety Validation
   |
   v
Command
   |
   v
Actuator
~~~

---

### 142. Policy

A control policy defines how the CPS converts state and conditions into actions.

---

### 143. Policy Types

Policies may be:

- deterministic;
- rule-based;
- optimization-based;
- model-based;
- learned;
- QAI-assisted;
- hybrid.

---

### 144. Policy Version

Every operational policy should have an identifiable version.

---

### 145. Policy Provenance

The origin of a policy should be traceable.

---

### 146. Policy Applicability

A policy should declare the conditions and state ranges for which it is intended to operate.

---

### 147. Policy Constraints

Policies should respect:

- physical constraints;
- resource constraints;
- safety constraints;
- operational constraints;
- governance constraints.

---

### 148. Policy Validation

A policy should be validated before being used for consequential automated action.

---

### 149. Policy Selection

The CPS may select among multiple validated policies according to current conditions.

---

### 150. Policy Selection Boundary

Policy selection should remain explicit and auditable.

---

### 151. QAI Policy Evaluation

QAI may be used to generate or evaluate candidate control policies.

---

### 152. QAI Policy Status

A QAI-derived policy should have an explicit maturity state such as:

- experimental;
- evaluated;
- validated;
- approved;
- operational.

---

### 153. Experimental QAI Policy

An experimental policy should not automatically control a physical system.

---

### 154. QAI Control Boundary

~~~text
QAI Experiment
      |
      v
Candidate Policy
      |
      v
Validation
      |
      v
Approval
      |
      v
CPS Operational Use
~~~

---

### 155. Classical Baseline Policy

A classical policy should remain available for comparison and fallback where practical.

---

### 156. Comparative Policy Evaluation

Policy comparisons should use equivalent:

- problem definition;
- state;
- condition;
- constraints;
- measurement criteria.

---

### 157. Control Action

A control action is an authorized action intended to change or maintain the system state.

---

### 158. Control Action Identity

Each consequential control action should be traceable to its decision context.

---

### 159. Control Action Parameters

Parameters may include:

- target;
- magnitude;
- duration;
- start time;
- priority;
- constraints.

---

### 160. Control Action Validation

Before execution, the action should be checked for:

- validity;
- applicability;
- authorization;
- safety;
- resource availability.

---

### 161. Action Rejection

An unsafe or invalid action should be rejected or routed to an approved fallback path.

---

### 162. Action Modification

Where policy permits, an action may be modified to satisfy constraints.

---

### 163. Action Modification Traceability

Modified actions should preserve the original decision and the reason for modification.

---

### 164. Action Execution

Execution should produce an observable execution record.

---

### 165. Action Outcome

The CPS should determine whether the action:

- succeeded;
- partially succeeded;
- failed;
- remains unknown.

---

### 166. Action Outcome Feedback

The outcome should feed back into the CPS state and condition evaluation.

---

### 167. Control Cycle

~~~text
Observe
   |
   v
Estimate State
   |
   v
Evaluate Condition
   |
   v
Compare with Desired State
   |
   v
Select Policy
   |
   v
Generate Decision
   |
   v
Validate Action
   |
   v
Execute
   |
   v
Observe Result
~~~

---

### 168. Control Cycle Identity

Each closed-loop cycle should be identifiable where traceability is required.

---

### 169. Control Cycle Timestamp

The cycle should preserve relevant temporal information.

---

### 170. Control Cycle Latency

End-to-end control latency may include:

- sensing;
- communication;
- processing;
- QAI execution;
- decision;
- validation;
- actuation;
- feedback.

---

### 171. End-to-End Latency

~~~text
Sensor
  |
  +--> sensing latency
  |
  v
Communication
  |
  +--> network latency
  |
  v
Computation / QAI
  |
  +--> compute latency
  |
  v
Decision / Control
  |
  +--> control latency
  |
  v
Actuator
  |
  +--> actuation latency
  |
  v
Feedback
~~~

---

### 172. Latency Budget

Where real-time behavior matters, the CPS should define an acceptable latency budget.

---

### 173. Latency Violation

A latency violation should be observable and should not be silently classified as successful control.

---

### 174. Real-Time QAI

Real-Time QAI may be used where QAI execution latency satisfies the declared CPS requirement.

---

### 175. QAI Queue Delay

QPU or remote accelerator queue delay may become part of the CPS computational latency.

---

### 176. QAI Latency Eligibility

A computational approach should not be selected solely on solution quality if its latency makes the CPS action unusable.

---

### 177. Resource-Aware Control

CPS decisions should consider available computational and physical resources where resource constraints affect feasibility.

---

### 178. Resource State

Relevant resources may include:

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
- water.

---

### 179. Resource Constraint Example

~~~text
Desired irrigation
       |
       v
Optimal QAI decision
       |
       v
Available compute?
       |
   +---+---+
   |       |
  Yes      No
   |       |
   v       v
Execute   Fallback
~~~

---

### 180. Control Resource Arbitration

Where multiple actions compete for limited resources, an explicit arbitration policy should determine priority.

---

### 181. Control Priority

Priority may be based on:

- safety;
- urgency;
- crop requirements;
- asset protection;
- economic value;
- resource efficiency.

---

### 182. Safety Priority

Safety-critical actions should receive appropriate priority over economic optimization.

---

### 183. Emergency Control

Emergency conditions may require simplified or predetermined control actions.

---

### 184. Emergency Policy

Emergency policy should be validated independently of the normal optimization pipeline.

---

### 185. Fallback Control

Fallback control provides an alternative when the preferred control path cannot execute.

---

### 186. Fallback Sources

Fallback may use:

- classical algorithm;
- deterministic rule;
- previously validated policy;
- manual control.

---

### 187. Fallback Trigger

Fallback may be triggered by:

- QAI unavailability;
- resource exhaustion;
- excessive latency;
- invalid output;
- confidence failure;
- communication failure.

---

### 188. Fallback Traceability

Every fallback event should record:

- trigger;
- original method;
- fallback method;
- decision;
- result.

---

### 189. Fallback Does Not Mean Failure

A fallback may represent normal resilience behavior.

---

### 190. Control Resilience

The CPS should remain capable of safe operation when individual components degrade where the target system permits it.

---

### 191. Graceful Degradation

The CPS should define how control capability changes under degraded conditions.

---

### 192. Degraded Control Example

~~~text
E0 --> Full optimization
E1 --> Adjusted optimization
E2 --> Constrained optimization
E3 --> Safe critical policy
E4 --> Emergency response
~~~

This is an architectural example rather than a mandatory control policy.

---

### 193. Control Stability

Closed-loop control should be evaluated for stability where the system dynamics make stability relevant.

---

### 194. Stability Measures

Possible measures include:

- settling time;
- overshoot;
- oscillation;
- convergence;
- steady-state error.

---

### 195. Control Performance

Control performance may be measured using:

- target attainment;
- resource consumption;
- response time;
- action count;
- deviation;
- recovery time.

---

### 196. Control Objective Function

A control objective may be represented as:

~~~text
Minimize:
    Cost
  + Water Use
  + Energy Use
  + Deviation

Subject to:
    Crop Requirements
    Equipment Limits
    Safety Constraints
    Resource Constraints
~~~

---

### 197. Multi-Objective Control

Where objectives conflict, the CPS should preserve the trade-off model used to select the action.

---

### 198. Optimization Boundary

Optimization selects among feasible actions.

It does not override hard safety or physical constraints.

---

### 199. Control Feasibility

A proposed control action must be physically or emulatively feasible within the declared model.

---

### 200. Feasibility Check

The feasibility check may consider:

- actuator capacity;
- resource availability;
- timing;
- state;
- condition;
- safety.

---

### 201. Infeasible Decision

An infeasible decision should not be directly executed.

---

### 202. Replanning

The CPS may request a new decision when the selected action becomes infeasible.

---

### 203. Replanning Trigger

Replanning may occur after:

- condition transition;
- state change;
- resource change;
- action failure;
- new observation.

---

### 204. Replanning Loop

~~~text
Decision
   |
   v
Feasibility Check
   |
   +--> feasible --> Execute
   |
   +--> infeasible
            |
            v
         Replan
~~~

---

### 205. State Estimation

The CPS may need to estimate current state when observations are incomplete or noisy.

---

### 206. State Estimation Inputs

Inputs may include:

- sensor data;
- previous state;
- model predictions;
- environmental information;
- actuator response.

---

### 207. State Estimation Method

State estimation may use:

- deterministic rules;
- filtering;
- statistical methods;
- machine learning;
- QAI experimentation.

---

### 208. State Estimation Confidence

Estimated state should carry uncertainty or confidence where meaningful.

---

### 209. State Estimation Error

The CPS should preserve the difference between estimated and observed state when both are available.

---

### 210. State Reconciliation

Where new observations contradict the estimated state, the state should be reconciled according to the authoritative state model.

---

### 211. Prediction

The CPS may predict future state to support proactive control.

---

### 212. Prediction Horizon

A prediction should identify its forecast horizon.

---

### 213. Prediction Uncertainty

Predictions should preserve uncertainty where relevant.

---

### 214. Prediction Versus Observation

A prediction should never be silently represented as an observation.

---

### 215. QAI Prediction

QAI may be evaluated for:

- state prediction;
- demand forecasting;
- anomaly prediction;
- failure prediction.

---

### 216. Prediction Evaluation

Prediction quality should be evaluated independently from control performance.

---

### 217. Prediction-to-Control Boundary

~~~text
Prediction
    |
    v
Predicted State
    |
    v
Decision
    |
    v
Control
~~~

---

### 218. CPS Learning

The CPS may learn from historical outcomes.

---

### 219. Learning Boundary

Learning should not silently modify operational control behavior without an approved promotion process.

---

### 220. Learning Sources

Learning may use:

- historical data;
- simulation results;
- emulation results;
- operational feedback;
- validated experiments.

---

### 221. Learning and QAI Lab

The QAI Lab may use CPS execution results to develop and evaluate improved models or policies.

---

### 222. Research-to-Operation Boundary

~~~text
CPS Operation
      |
      v
Evidence
      |
      v
QAI Lab
      |
      v
Experiment
      |
      v
Benchmark
      |
      v
Validate
      |
      v
Package
      |
      v
Approve
      |
      v
Operational CPS
~~~

---

### 223. Online Learning

Online learning may be considered only where its safety, governance and validation requirements are satisfied.

---

### 224. Pilot Learning Boundary

The Pilot should favor controlled learning and evaluation rather than unrestricted self-modifying control.

---

### 225. Adaptive Control

Adaptive behavior may change control parameters or policy selection in response to changing conditions.

---

### 226. Adaptive Control Governance

Adaptive control should remain bounded by:

- approved operating envelope;
- safety constraints;
- control limits;
- rollback capability.

---

### 227. Adaptive QAI

Adaptive QAI may change computational strategy based on:

- problem characteristics;
- condition;
- resource availability;
- observed performance.

---

### 228. Adaptive Algorithm Selection

The Advantage Gate may support dynamic selection among validated computational approaches.

---

### 229. Computational Performance Classes

CPS computational evaluation should preserve the four primary performance classes:

1. Classical;
2. Quantum-Inspired;
3. Hybrid QAI;
4. Quantum.

---

### 230. Performance-Test Principle

The four classes are alternatives to be tested and compared for a given problem.

They are not architectural layers that must all execute simultaneously.

---

### 231. CPS Benchmark Context

Each performance test should preserve:

- CPS state;
- condition;
- workload;
- constraints;
- resources;
- execution mode.

---

### 232. Computational Result

A computational result should identify:

- method;
- version;
- execution context;
- result quality;
- latency;
- resources;
- outcome.

---

### 233. Control Decision Comparison

Alternative computational approaches may produce different control decisions.

---

### 234. Decision Equivalence

Different computational methods need not produce identical decisions to be considered comparable.

They must instead be evaluated against the declared objective and constraints.

---

### 235. Decision Quality

Decision quality may consider:

- objective value;
- constraint satisfaction;
- robustness;
- latency;
- resource consumption.

---

### 236. QAI Advantage in CPS

QAI advantage should be evaluated in terms of measurable CPS-relevant outcomes rather than algorithmic novelty alone.

---

### 237. Advantage Example

A QAI approach may be valuable if it provides:

- better control quality;
- faster decision-making;
- lower resource use;
- better robustness;
- improved economic value.

---

### 238. No Assumed QAI Advantage

The CPS architecture must not assume QAI superiority before measurement.

---

### 239. CPS Experiment

A CPS experiment defines a controlled execution intended to evaluate a hypothesis.

---

### 240. Experiment Context

An experiment should identify:

- initial state;
- condition;
- scenario;
- policy;
- computational method;
- execution mode;
- metrics.

---

### 241. Open-Loop Experiment

An open-loop experiment may compare candidate decisions without applying their outputs back into the evolving state.

---

### 242. Closed-Loop Experiment

A closed-loop experiment applies actions and measures resulting state changes.

---

### 243. Closed-Loop Evaluation

Closed-loop evaluation should consider cumulative behavior rather than only one-step decision quality.

---

### 244. Control Horizon

A control horizon defines how far into the future decisions are evaluated.

---

### 245. Receding Horizon

A CPS may repeatedly optimize over a future horizon and execute only the immediate approved action.

---

### 246. Receding-Horizon Flow

~~~text
Current State
     |
     v
Optimize Future Horizon
     |
     v
Select Immediate Action
     |
     v
Execute
     |
     v
Observe New State
     |
     +------> Re-optimize
~~~

---

### 247. Control Cycle Frequency

Control frequency should be selected according to:

- system dynamics;
- sensing rate;
- communication;
- computation;
- actuation.

---

### 248. Control Frequency Constraint

Increasing control frequency does not automatically improve system performance.

---

### 249. Timing Compatibility

The CPS should verify that sensing, computation and actuation timing are compatible with the control objective.

---

### 250. Asynchronous CPS

Some CPS components may operate asynchronously.

---

### 251. Synchronous CPS

Other CPS implementations may use synchronized execution cycles.

---

### 252. Timing Model

The timing model should define whether execution is:

- synchronous;
- asynchronous;
- event-driven;
- time-stepped;
- hybrid.

---

### 253. Event-Driven Control

Event-driven control initiates processing when relevant events occur.

---

### 254. Time-Stepped Control

Time-stepped control evaluates the CPS at defined intervals.

---

### 255. Hybrid Timing

A CPS may combine periodic sensing with event-driven response.

---

### 256. Timing Determinism

Where required, deterministic timing should be preserved.

---

### 257. Timing Uncertainty

Where timing is uncertain, the uncertainty should remain visible to evaluation.

---

### 258. Communication Timing

Communication delay should be included in closed-loop analysis where it materially affects behavior.

---

### 259. Sensor Sampling

Sensor sampling frequency should be represented where it affects state estimation or control.

---

### 260. Actuator Response Time

Actuator response time should be represented where it affects control behavior.

---

### 261. QAI Execution Timing

QAI execution time should include relevant:

- preparation;
- queue;
- execution;
- result retrieval;
- post-processing

components where applicable.

---

### 262. CPS Timing Budget

~~~text
Control Cycle Budget
    |
    +--> Sense
    +--> Communicate
    +--> Compute
    +--> Decide
    +--> Validate
    +--> Act
    +--> Feedback
~~~

---

### 263. Timing Violation Handling

If timing requirements cannot be met, the CPS should apply an approved fallback or safe response.

---

### 264. CPS Synchronization

Synchronization should maintain coherent state across cooperating CPS components.

---

### 265. State Synchronization

Relevant shared state should be synchronized according to its consistency requirements.

---

### 266. Event Synchronization

Events affecting control should be delivered in an order consistent with the CPS timing model.

---

### 267. Distributed CPS

The CPS may span:

- local laptop processes;
- edge devices;
- private cloud;
- public cloud;
- regional infrastructure;
- QAI Data Center.

---

### 268. Distributed Boundary

The logical CPS architecture should remain independent of where individual components execute.

---

### 269. Edge CPS

Edge execution may provide low-latency sensing, control and local fallback.

---

### 270. Cloud CPS

Cloud execution may provide:

- large-scale computation;
- historical analysis;
- model training;
- QAI experimentation;
- fleet-level optimization.

---

### 271. Part 2 Closure

Part 2 establishes the CPS structural and control semantics.

The principal conclusions are:

1. CPS is composed of cooperating sensing, computation, communication, control and actuation roles.
2. CPS components retain authoritative Phase 1 identities.
3. The CPS subsystem does not create a duplicate asset registry.
4. Sensors produce observations with relevant quality and temporal metadata.
5. Actuators execute validated commands and should expose response where possible.
6. Controllers coordinate state, objectives, constraints and actions.
7. Decision and command remain distinct concepts.
8. Policies require identity, provenance, applicability and validation.
9. QAI-derived policies require an explicit maturity and approval boundary.
10. Control actions require validation before execution.
11. Action outcomes feed back into state and condition evaluation.
12. Control latency spans sensing, communication, computation, decision, actuation and feedback.
13. Real-Time QAI must satisfy the declared timing requirements.
14. Resource availability may constrain CPS decisions.
15. Safety receives priority over optimization where applicable.
16. Fallback is a resilience mechanism rather than necessarily a failure.
17. Graceful degradation should be defined for meaningful degraded conditions.
18. Control stability and performance should be measured where relevant.
19. Optimization cannot override hard constraints.
20. Infeasible decisions require rejection, modification or replanning.
21. State estimation must preserve uncertainty and distinguish estimates from observations.
22. Prediction must remain distinct from observation.
23. Learning must not silently modify operational control behavior.
24. Adaptive control requires bounded and governed adaptation.
25. Classical, quantum-inspired, hybrid QAI and quantum approaches remain computational performance-test classes.
26. QAI advantage must be demonstrated through measurable CPS outcomes.
27. Open-loop and closed-loop experiments remain distinct.
28. Closed-loop testing evaluates cumulative system behavior.
29. Timing models may be synchronous, asynchronous, event-driven, time-stepped or hybrid.
30. Distributed CPS execution must preserve logical architectural boundaries independent of deployment location.
31. Edge and cloud execution are deployment options rather than different CPS architectures.
32. QAI Data Center execution can participate in CPS-related experimentation and computation without becoming the CPS itself.

The governing principle is:

> **The CPS subsystem should coordinate state, conditions, decisions, control and feedback through explicit contracts while remaining computationally agnostic. Classical, QAI and quantum methods compete within the decision layer based on measured CPS value, feasibility, timing, resource use and safety—not on architectural assumption.**

**PART 2 STATUS: COMPLETE — CPS COMPONENT MODEL, CONTROL POLICY, ACTION, FEEDBACK, TIMING, RESOURCE, QAI COMPARISON AND DISTRIBUTED EXECUTION BASELINE**
---
### 272. Purpose of Part 3

Part 3 defines CPS state-transition semantics, desired-state management, feedback behavior, fault handling, operating-condition interaction and controlled closed-loop execution.

---

### 273. CPS State Model

The CPS state model represents the operational state required to observe, decide, act and evaluate response.

---

### 274. State Ownership

The authoritative state representation remains the Phase 1 Virtual State Model.

CPS consumes and updates state through controlled interfaces.

---

### 275. CPS State View

The CPS may maintain an operational state view containing:

- current state;
- desired state;
- commanded state;
- observed state;
- predicted state;
- transition state.

---

### 276. State Transition

A state transition changes the operational state of the CPS or one of its managed elements.

---

### 277. Transition Identity

Each significant transition should be identifiable.

---

### 278. Transition Source

A transition may originate from:

- observation;
- control action;
- condition change;
- external event;
- scheduled event;
- operator action;
- model output.

---

### 279. Transition Trigger

The transition should preserve the trigger that caused it.

---

### 280. Transition Guard

A transition may require one or more guard conditions.

---

### 281. Transition Guard Example

~~~text
Current State = DEMAND
AND
Condition = E0
AND
Water Available = TRUE
AND
Pump Available = TRUE

        |
        v

Transition = IRRIGATING
~~~

---

### 282. Guard Evaluation

Guard evaluation should use the authoritative state and condition context.

---

### 283. Guard Failure

A failed guard should prevent the corresponding transition unless an explicit exception policy exists.

---

### 284. Transition Action

A transition may trigger:

- command generation;
- notification;
- logging;
- condition evaluation;
- QAI execution;
- fallback;
- human escalation.

---

### 285. Transition Completion

A transition should be considered complete only when its completion criteria are satisfied.

---

### 286. Transition Timeout

Where a transition is time-bound, timeout behavior should be defined.

---

### 287. Transition Timeout Example

~~~text
Command Pump ON
      |
      v
Wait for Response
      |
      +--> Response received --> Continue
      |
      +--> Timeout --> Evaluate Fault / Fallback
~~~

---

### 288. Transition Failure

A failed transition should produce an identifiable outcome.

---

### 289. Transition Recovery

Recovery may transition the CPS to:

- previous safe state;
- degraded state;
- fallback state;
- maintenance state;
- emergency state.

---

### 290. State Transition Safety

Safety constraints should be evaluated before transitions that can affect consequential behavior.

---

### 291. Illegal State

An illegal or undefined state should be detected explicitly.

---

### 292. Undefined State Handling

The CPS may:

- halt the affected action;
- enter fallback;
- request human intervention;
- reinitialize;
- recover from a checkpoint.

---

### 293. State Initialization

A CPS execution should begin from a defined initial state.

---

### 294. Initial State Evidence

The initial state should identify its source:

- baseline;
- observation;
- scenario;
- snapshot;
- experiment definition.

---

### 295. State Reset

The CPS may reset to a defined state for controlled experiments.

---

### 296. Reset Isolation

A test reset must not modify the authoritative production or baseline state.

---

### 297. State Snapshot

A CPS snapshot should preserve sufficient state to reproduce the declared execution point.

---

### 298. Snapshot Contents

Relevant snapshot information may include:

- state;
- condition;
- active policy;
- pending commands;
- resource context;
- model versions;
- execution time.

---

### 299. State Restore

A restored CPS state should undergo validity checks before execution resumes.

---

### 300. State Continuity

State continuity should be preserved across:

- pause;
- resume;
- restart;
- checkpoint;
- migration.

---

### 301. Desired State Model

Desired state represents the target state or acceptable target range that the CPS seeks to achieve.

---

### 302. Desired State Types

Desired state may be:

- point-valued;
- range-valued;
- bounded;
- multi-variable;
- time-dependent;
- condition-dependent.

---

### 303. Point Desired State

Example:

> Target soil moisture = defined value.

---

### 304. Range Desired State

Example:

> Soil moisture must remain between lower and upper limits.

---

### 305. Desired State Constraint

Desired state should not be interpreted as permission to violate physical or safety constraints.

---

### 306. Desired State Priority

Multiple desired-state objectives may require explicit priorities.

---

### 307. Desired State Version

Desired-state definitions should be versioned when they materially affect control decisions.

---

### 308. Desired State Provenance

Desired-state values should identify their source or justification.

---

### 309. Desired State Change

A desired state may change because of:

- crop stage;
- weather;
- farm policy;
- resource availability;
- operator instruction;
- optimization objective.

---

### 310. Desired State Change Control

Material desired-state changes should be authorized where required.

---

### 311. Current-to-Desired Deviation

Deviation measures the difference between current and desired state.

---

### 312. Deviation Types

Deviation may be:

- absolute;
- relative;
- directional;
- temporal;
- multidimensional.

---

### 313. Deviation Example

~~~text
Desired Soil Moisture
          |
          v
      35 units
          |
          v
Current Soil Moisture
          |
          v
      27 units

Deviation = -8 units
~~~

---

### 314. Acceptable Deviation

The CPS may define a tolerance within which no corrective action is required.

---

### 315. Deadband

A deadband can prevent unnecessary control actions for small deviations.

---

### 316. Deadband Example

~~~text
Desired = 35
Acceptable Range = 33–37

Current = 34
      |
      v
No corrective action required
~~~

---

### 317. Deviation Persistence

A deviation may need to persist for a defined duration before corrective action.

---

### 318. Deviation Rate

The rate of change of deviation may be relevant to proactive control.

---

### 319. Deviation Trend

The CPS may use historical deviation to determine whether the system is:

- converging;
- stable;
- diverging.

---

### 320. Control Decision

A control decision selects an action or policy response based on state, desired state, condition and constraints.

---

### 321. Decision Context

Every consequential decision should preserve its context.

---

### 322. Decision Context Contents

The context may include:

- current state;
- desired state;
- condition;
- constraints;
- policy;
- computational method;
- resources;
- timestamp.

---

### 323. Decision Candidate

A computational method may generate one or more candidate decisions.

---

### 324. Candidate Ranking

Candidates may be ranked using the declared objective and constraints.

---

### 325. Candidate Feasibility

Only feasible candidates should proceed toward execution.

---

### 326. Candidate Confidence

Where applicable, a candidate may include confidence or uncertainty.

---

### 327. Candidate Selection

The CPS should record why a candidate was selected.

---

### 328. Decision Approval

Certain decisions may require:

- policy validation;
- safety validation;
- human approval;
- governance approval.

---

### 329. Decision Expiry

A decision may become invalid if the underlying state or condition changes before execution.

---

### 330. Decision Staleness

A stale decision should not automatically be executed.

---

### 331. Decision Revalidation

The CPS may revalidate a decision immediately before execution.

---

### 332. Pre-Action Check

~~~text
Candidate Decision
       |
       v
Current State Check
       |
       v
Condition Check
       |
       v
Constraint Check
       |
       v
Safety Check
       |
       v
Execute / Reject / Replan
~~~

---

### 333. Command Lifecycle

A command may progress through:

- proposed;
- validated;
- authorized;
- issued;
- acknowledged;
- executing;
- completed;
- failed;
- cancelled.

---

### 334. Command Identity

Every consequential command should have a unique identity.

---

### 335. Command Correlation

The command should reference the decision and control cycle that produced it.

---

### 336. Command Target

The command must identify its intended target.

---

### 337. Command Parameters

Command parameters should be validated against target capability and operating constraints.

---

### 338. Command Authorization

Authorization should be applied where required.

---

### 339. Command Acknowledgement

Where supported, the target should acknowledge command receipt.

---

### 340. Command Completion

Command completion should be distinguished from command acknowledgement.

---

### 341. Command Failure

A command may fail because of:

- target unavailability;
- communication failure;
- constraint violation;
- actuator failure;
- timeout;
- invalid parameters.

---

### 342. Command Cancellation

A pending command may be cancelled when:

- state changes;
- condition changes;
- safety requires cancellation;
- decision becomes stale.

---

### 343. Command Idempotency

Where repeated delivery is possible, commands should define whether they are idempotent.

---

### 344. Duplicate Command Protection

The CPS should prevent unintended duplicate consequential actions where required.

---

### 345. Command Ordering

Commands affecting the same target may require explicit ordering.

---

### 346. Command Conflict

Conflicting commands should be detected and resolved before execution.

---

### 347. Command Priority

Command priority may depend on:

- safety;
- urgency;
- process dependency;
- resource allocation.

---

### 348. Command Queue

A CPS may maintain a queue of pending commands.

---

### 349. Queue Management

Queued commands should remain subject to:

- expiry;
- revalidation;
- cancellation;
- priority changes.

---

### 350. Actuation

Actuation changes or attempts to change the represented physical state.

---

### 351. Emulated Actuation

During the Pilot, actuation may be performed by an Emulator.

---

### 352. Physical Actuation

Future deployments may connect the same logical control interface to physical actuators.

---

### 353. Actuator Capability

The CPS should know the declared capability and limits of the actuator.

---

### 354. Capability Check

A command should be rejected if it exceeds the target's declared capability unless an explicit controlled mode permits otherwise.

---

### 355. Actuator State

Actuator state should distinguish:

- commanded;
- acknowledged;
- executing;
- completed;
- failed.

---

### 356. Actuator Response

The actual response should be measured or emulated.

---

### 357. Response Verification

The CPS should verify whether the observed response is consistent with the expected response.

---

### 358. Expected Response

Expected response may come from:

- actuator model;
- Emulator;
- validated behavior model;
- historical reference.

---

### 359. Response Deviation

A response that differs materially from expectation should trigger evaluation.

---

### 360. Response Diagnosis

Possible causes include:

- actuator degradation;
- incorrect model;
- command error;
- communication delay;
- environmental change;
- sensor error.

---

### 361. Feedback Loop

Feedback transfers information about the result of actions back into the CPS.

---

### 362. Feedback Components

Feedback may contain:

- observed state;
- actuator response;
- condition;
- error;
- timing;
- quality;
- confidence.

---

### 363. Feedback Correlation

Feedback should be correlated with the action that produced it where causality is meaningful.

---

### 364. Feedback Timeout

The CPS should define behavior when expected feedback is not received.

---

### 365. Missing Feedback

Missing feedback should not automatically be interpreted as successful action.

---

### 366. Feedback Recovery

Recovery may include:

- retry;
- alternate communication;
- state estimation;
- fallback;
- human intervention.

---

### 367. Feedback Filtering

Noise or transient observations may require filtering before affecting control.

---

### 368. Filtering Boundary

Filtering should not remove meaningful events or hide genuine system transitions.

---

### 369. Feedback Aggregation

Multiple observations may be aggregated when required to estimate system response.

---

### 370. Feedback Confidence

Confidence should accompany derived feedback where appropriate.

---

### 371. Feedback Provenance

Feedback should retain its source and processing history.

---

### 372. Feedback Latency

The CPS should preserve feedback latency where it affects control quality.

---

### 373. Feedback Jitter

Variable feedback timing may affect closed-loop stability and should be measurable where relevant.

---

### 374. Feedback Completeness

The CPS should identify when required feedback is incomplete.

---

### 375. Feedback Contradiction

Contradictory feedback should trigger reconciliation rather than silent replacement.

---

### 376. Sensor Fusion

Multiple sensors may contribute to a shared state estimate.

---

### 377. Sensor Fusion Boundary

Sensor fusion should preserve source-level observations and their quality information.

---

### 378. Sensor Failure

Sensor failure should be distinguishable from a genuine environmental change.

---

### 379. Sensor Redundancy

Redundant sensing may improve resilience where appropriate.

---

### 380. Redundancy Evaluation

Redundancy should be evaluated for:

- coverage;
- independence;
- latency;
- reliability;
- cost.

---

### 381. Communication Failure

Communication failure may interrupt the CPS loop without necessarily changing the target's physical condition.

---

### 382. Communication Recovery

Recovery may include:

- retry;
- alternate path;
- local execution;
- buffering;
- fallback.

---

### 383. Local Control

A CPS may continue locally when external connectivity is unavailable, provided the operating policy permits it.

---

### 384. Local-First Principle

~~~text
Normal Operation
      |
      v
Local CPS Control
      |
      +--> Cloud / QAI available
      |          |
      |          v
      |      Enhanced Capability
      |
      +--> Cloud / QAI unavailable
                 |
                 v
             Local Fallback
~~~

---

### 385. Communication Partition

A partition should not automatically imply that the physical process has failed.

---

### 386. Computational Failure

Computational failure may affect decision generation while the physical process continues.

---

### 387. Computational Recovery

Recovery may use:

- classical computation;
- local rule;
- cached policy;
- alternate accelerator;
- manual operation.

---

### 388. QAI Failure

QAI failure may include:

- unavailable backend;
- excessive queue time;
- invalid result;
- resource exhaustion;
- quality below threshold.

---

### 389. QAI Failure Boundary

QAI failure should not automatically imply CPS failure if an approved fallback remains available.

---

### 390. QAI Result Validation

QAI results should pass applicable validation before becoming control decisions.

---

### 391. QAI Confidence

Where QAI produces probabilistic or uncertain results, the uncertainty should remain visible.

---

### 392. QAI-to-Control Gate

~~~text
QAI Result
    |
    v
Validity Check
    |
    v
Constraint Check
    |
    v
Safety Check
    |
    v
Decision
~~~

---

### 393. QAI Pipeline Isolation

The QAI pipeline should remain independently testable from CPS execution.

---

### 394. Emulator + QAI Test

The architecture should support:

~~~text
Emulator
    |
    v
State / Observation
    |
    v
QAI Pipeline
    |
    v
Result
~~~

without requiring the complete closed-loop CPS.

---

### 395. Simulator + QAI Test

The architecture should independently support:

~~~text
Simulator
    |
    v
Scenario / State
    |
    v
QAI Pipeline
    |
    v
Result
~~~

---

### 396. Emulator + CPS Test

The architecture should support:

~~~text
CPS
 |
 v
Command
 |
 v
Emulator
 |
 v
Response
 |
 v
CPS
~~~

without requiring the Simulator.

---

### 397. Simulator + CPS Test

The architecture should support:

~~~text
CPS
 |
 v
Simulation
 |
 v
Alternative Response
 |
 v
CPS Evaluation
~~~

without requiring the Emulator.

---

### 398. Full Integration Test

A full Phase 2 integration may combine:

~~~text
Condition
   |
   v
CPS
   |
   +--> Emulator
   |
   +--> Simulator
   |
   +--> QAI
   |
   +--> Three Paths
   |
   v
Feedback
   |
   v
CPS
~~~

---

### 399. Integration Independence

The ability to execute each integration pattern independently is an architectural requirement.

---

### 400. Integration Failure Localization

Independent integration paths make it possible to determine whether failure originates in:

- CPS;
- Emulator;
- Simulator;
- QAI;
- sensing;
- communication;
- computational path.

---

### 401. Closed-Loop Integration

Closed-loop integration should be introduced only after the participating subsystem interfaces are individually validated.

---

### 402. Closed-Loop Entry Gate

~~~text
Unit Tests
    |
    v
Subsystem Tests
    |
    v
Interface Tests
    |
    v
Integration Tests
    |
    v
Closed-Loop Tests
~~~

---

### 403. Closed-Loop State Evolution

The closed-loop CPS should permit state to evolve from one control cycle to the next.

---

### 404. Cycle State

Each cycle should preserve:

- input state;
- condition;
- decision;
- action;
- response;
- output state.

---

### 405. Cycle Trace

~~~text
Cycle N
  |
  +--> State
  +--> Condition
  +--> Decision
  +--> Command
  +--> Response
  +--> New State
  |
  v
Cycle N+1
~~~

---

### 406. Cycle Consistency

The output state of one cycle should become the valid input state of the next cycle unless an explicit reset or branch occurs.

---

### 407. Cycle Failure

If a cycle fails, the CPS should preserve enough information to determine where the failure occurred.

---

### 408. Partial Cycle

A cycle may complete partially when one subsystem becomes unavailable.

---

### 409. Partial Cycle Handling

Partial-cycle behavior should be governed by explicit fallback or recovery rules.

---

### 410. Cycle Timeout

The CPS should define behavior when a complete control cycle exceeds its timing budget.

---

### 411. Cycle Overrun

An overrun may require:

- skip;
- fallback;
- reduced computation;
- local policy;
- human intervention.

---

### 412. Control Stability Under Overrun

The effect of cycle overruns should be evaluated where they can affect control stability.

---

### 413. Condition Transition During Cycle

Conditions may change while a control cycle is executing.

---

### 414. Mid-Cycle Condition Change

The CPS should define whether a changed condition:

- invalidates the decision;
- modifies the decision;
- permits completion;
- triggers emergency handling.

---

### 415. Decision Revalidation

For consequential actions, current condition should be rechecked before execution when practical.

---

### 416. Race Condition

Concurrent state, condition and command changes may create race conditions.

---

### 417. Race Handling

Race resolution should be deterministic or explicitly governed where control correctness depends on it.

---

### 418. Concurrent Commands

Concurrent commands affecting the same target require coordination.

---

### 419. Command Serialization

Where necessary, commands should be serialized to preserve safe behavior.

---

### 420. Parallel Control

Independent targets may be controlled in parallel where their dependencies permit it.

---

### 421. Control Dependency

Control dependencies should be represented explicitly.

---

### 422. Dependency Example

~~~text
Water Pump
    |
    v
Water Pressure
    |
    v
Irrigation Valve
    |
    v
Field Irrigation
~~~

---

### 423. Dependency Violation

A dependent control action should not execute when its required upstream dependency is unavailable unless an approved fallback exists.

---

### 424. Control Dependency Recovery

Recovery should restore dependencies in a safe order.

---

### 425. CPS Fault Model

The CPS should classify faults by their location and effect.

---

### 426. Fault Categories

Examples include:

- sensing fault;
- communication fault;
- computational fault;
- control fault;
- actuator fault;
- environment-model fault;
- synchronization fault.

---

### 427. Fault Versus Condition

A fault identifies an abnormal failure mechanism.

A condition identifies the resulting or prevailing operating circumstances.

---

### 428. Fault-to-Condition Relationship

~~~text
Fault
  |
  v
Observed Effect
  |
  v
Condition Change
  |
  v
CPS Response
~~~

---

### 429. Fault Detection

Fault detection may use:

- thresholds;
- rules;
- model residuals;
- anomaly detection;
- QAI experiments.

---

### 430. Fault Classification

Detected faults should be classified before selecting recovery where possible.

---

### 431. Fault Isolation

The CPS should attempt to determine the affected subsystem where practical.

---

### 432. Fault Propagation

Fault effects may propagate through CPS dependencies.

---

### 433. Fault Propagation Example

~~~text
Sensor Failure
     |
     v
Missing Observation
     |
     v
State Uncertainty
     |
     v
Decision Constraint
     |
     v
Fallback Control
~~~

---

### 434. Fault Containment

The CPS should limit fault propagation where architecture and safety requirements permit.

---

### 435. Fault Recovery

Recovery may involve:

- retry;
- substitution;
- fallback;
- isolation;
- repair;
- human intervention.

---

### 436. Fault Recovery Validation

The recovered state should be validated before returning to normal operation.

---

### 437. Safe State

The CPS should define safe states for consequential failure modes where appropriate.

---

### 438. Safe State Example

~~~text
Critical Fault
     |
     v
Stop Irrigation
     |
     v
Preserve Equipment
     |
     v
Alert / Human Review
~~~

---

### 439. Emergency State

An emergency state represents an exceptional control condition requiring predefined handling.

---

### 440. Emergency Exit

Returning from emergency operation should require explicit recovery criteria.

---

### 441. Maintenance State

Maintenance state may suspend normal control behavior.

---

### 442. Maintenance Isolation

Maintenance actions should be isolated from automatic control where required.

---

### 443. Human Intervention

Human intervention may be:

- advisory;
- approval-based;
- supervisory;
- manual;
- emergency.

---

### 444. Human Override

Human override should be explicit and auditable.

---

### 445. Human Override Expiry

Temporary overrides should have defined expiry or restoration conditions where appropriate.

---

### 446. Human-AI Operating Model

The CPS may operate across maturity levels:

~~~text
Human Only
    |
    v
AI Assisted
    |
    v
Human + AI Augmentation
    |
    v
Supervised Automation
    |
    v
High-Confidence Automation
~~~

---

### 447. Pilot Human-AI Position

The Pilot should favor:

- AI-assisted;
- supervised

operation for consequential decisions.

---

### 448. Automated Control Boundary

Automation should remain bounded by:

- validated policies;
- conditions;
- safety;
- constraints;
- fallback.

---

### 449. CPS Auditability

Consequential CPS decisions and actions should be auditable.

---

### 450. Audit Record

An audit record may include:

- state;
- condition;
- decision;
- policy;
- command;
- response;
- operator action;
- outcome.

---

### 451. CPS Reproducibility

Controlled CPS experiments should preserve sufficient execution context for reproduction.

---

### 452. Reproducibility Context

This may include:

- model versions;
- condition version;
- policy version;
- QAI pipeline version;
- random seeds where applicable;
- resource context;
- timing context.

---

### 453. CPS Determinism

Where deterministic execution is required, sources of nondeterminism should be controlled or recorded.

---

### 454. Stochastic CPS

Where stochastic behavior is intentional, distributions and randomization context should be preserved.

---

### 455. CPS Evidence

CPS execution should generate evidence sufficient to support:

- debugging;
- validation;
- comparison;
- review;
- promotion.

---

### 456. Evidence Lineage

~~~text
State
  |
  v
Condition
  |
  v
Decision
  |
  v
Command
  |
  v
Response
  |
  v
New State
  |
  v
Measurement / Result
~~~

---

### 457. CPS Regression

Validated CPS cases should become regression tests.

---

### 458. Regression Scope

Regression should include:

- nominal operation;
- perturbations;
- degradation;
- fallback;
- relevant failure modes;
- open-loop cases;
- closed-loop cases.

---

### 459. CPS Change Impact

Changes to any of the following may require CPS regression:

- state model;
- behavior model;
- interface;
- condition rule;
- control policy;
- QAI pipeline;
- emulator;
- simulator.

---

### 460. Change Isolation

Change impact should identify which CPS integration paths require retesting.

---

### 461. Part 3 Closure

Part 3 establishes the CPS state-transition, desired-state, command, feedback, fault and integration semantics.

The principal conclusions are:

1. CPS state transitions must be explicit and traceable.
2. Transition guards determine whether state changes are permitted.
3. Transition failures require explicit handling.
4. Desired state is the control target and remains distinct from operating condition.
5. Desired state may be point-valued, range-valued, bounded, multidimensional or time-dependent.
6. Deviation determines the relationship between current and desired state.
7. Deadbands and persistence may prevent unnecessary control actions.
8. Control decisions must preserve their context.
9. Decisions should be revalidated when state or condition changes before execution.
10. Commands have their own lifecycle and identity.
11. Command acknowledgement and command completion remain distinct.
12. Duplicate and conflicting commands require explicit handling.
13. Actuator capability must constrain executable commands.
14. Actuation may be emulated during the Pilot and physically realized later.
15. Feedback must preserve source, quality, timing and correlation.
16. Missing feedback must not be interpreted as successful action.
17. Sensor fusion should preserve source-level evidence.
18. Communication failure is distinct from physical-process failure.
19. Local-first operation may provide resilience during connectivity loss.
20. QAI failure does not necessarily imply CPS failure when approved fallback exists.
21. QAI outputs must pass validity, constraint and safety checks before control use.
22. Emulator + QAI and Simulator + QAI must remain independently testable.
23. Emulator + CPS and Simulator + CPS must remain independently testable.
24. Full integration should be introduced only after subsystem and interface validation.
25. Closed-loop execution must preserve each control cycle's state, condition, decision, action and response.
26. Mid-cycle condition changes require explicit handling.
27. Concurrent commands and dependencies require controlled coordination.
28. Faults and operating conditions are distinct concepts.
29. Fault propagation should be observable and, where possible, contained.
30. Safe and emergency states should be defined for relevant failure modes.
31. Human intervention and override require explicit governance.
32. Pilot automation should favor AI-assisted or supervised operation for consequential decisions.
33. CPS execution should remain auditable and reproducible.
34. Validated CPS cases should become regression tests.
35. Changes to CPS-related artifacts should trigger appropriate integration regression.

The governing principle is:

> **A CPS is proven not by showing that one control decision works, but by demonstrating that state, condition, decision, command, actuation and feedback remain coherent across repeated cycles, failures, timing variations and computational alternatives.**

**PART 3 STATUS: COMPLETE — CPS STATE TRANSITIONS, DESIRED STATE, COMMAND AND FEEDBACK LIFECYCLE, FAULT HANDLING, QAI INTEGRATION AND CLOSED-LOOP EXECUTION BASELINE**
---
### 462. Purpose of Part 4

Part 4 defines CPS integration semantics across Emulator, Simulator, QAI, Conditions and the three architectural paths, with emphasis on controlled interaction and independent verification.

---

### 463. CPS Integration Principle

CPS integration should connect independently defined subsystems without absorbing their responsibilities.

---

### 464. CPS Integration Boundary

~~~text
+-------------+     +-------------+
|   Emulator  |     |  Simulator  |
+------+------+     +------+------+
       |                   |
       +---------+---------+
                 |
                 v
             CPS Layer
                 |
        +--------+--------+
        |                 |
        v                 v
      QAI              Conditions
        |
        v
   Decision / Policy
~~~

---

### 465. Integration Does Not Mean Consolidation

Integrating subsystems does not mean merging their implementations.

---

### 466. Controlled Integration

Each integration relationship should have:

- defined inputs;
- defined outputs;
- defined timing;
- defined ownership;
- defined failure behavior.

---

### 467. Emulator Integration

The Emulator provides a faithful executable representation of target behavior.

---

### 468. Simulator Integration

The Simulator provides controlled exploration of alternative system trajectories.

---

### 469. CPS Integration with Emulator

CPS may send commands to the Emulator and receive emulated responses.

---

### 470. CPS Integration with Simulator

CPS may submit policies, states or scenarios to the Simulator for controlled evaluation.

---

### 471. CPS Integration with QAI

CPS may invoke QAI for:

- optimization;
- prediction;
- classification;
- anomaly detection;
- decision support;
- policy evaluation.

---

### 472. CPS Integration with Conditions

CPS consumes condition context when determining permissible or appropriate behavior.

---

### 473. CPS Integration with Calibration

CPS may consume calibrated models but does not perform calibration itself.

---

### 474. CPS Integration with Fidelity

CPS may consume fidelity results to determine whether an Emulator or model is sufficiently trustworthy for a declared use.

---

### 475. CPS Integration with Structural Integrity

CPS execution should rely on components that have passed applicable Structural Integrity checks.

---

### 476. Integration Contract

Every CPS integration should expose a logical contract.

---

### 477. Contract Components

A CPS integration contract may define:

- identity;
- interface;
- data;
- timing;
- state;
- condition;
- errors;
- ownership.

---

### 478. Interface Compatibility

Integration should verify that participating interfaces are compatible.

---

### 479. State Compatibility

Integration should verify that state semantics are compatible.

---

### 480. Condition Compatibility

Integration should verify that condition context is applicable to the participating subsystem.

---

### 481. Timing Compatibility

Integration should verify that timing assumptions are compatible.

---

### 482. Error Compatibility

Integration should define how errors propagate between subsystems.

---

### 483. Integration Error Boundary

An error in one subsystem should not automatically be interpreted as an error in every connected subsystem.

---

### 484. Integration Correlation

Integrated execution should preserve a common correlation identity.

---

### 485. Correlation Scope

Correlation may cover:

- experiment;
- scenario;
- workflow;
- control cycle;
- decision;
- command.

---

### 486. CPS and Workflow

CPS execution may be orchestrated through Phase 2 workflows.

---

### 487. Workflow Boundary

The Workflow subsystem defines execution sequencing.

CPS defines cyber-physical control semantics.

---

### 488. CPS and Scenario

Scenarios define the circumstances or experimental setup in which CPS behavior is evaluated.

---

### 489. Scenario Boundary

The Scenario subsystem defines scenario semantics.

CPS consumes scenario inputs during execution.

---

### 490. CPS and Execution Mode

CPS may operate through:

- virtualization;
- emulation;
- simulation;
- physical execution.

---

### 491. Execution-Mode Independence

CPS logic should remain logically independent of the execution mode.

---

### 492. Virtual CPS

A fully virtual CPS may use virtual state and virtual interfaces.

---

### 493. Emulated CPS

An emulated CPS uses an Emulator to reproduce target behavior.

---

### 494. Simulated CPS

A simulated CPS uses a Simulator to explore behavior under controlled scenarios.

---

### 495. Physical CPS

A physical CPS connects to actual sensors, controllers and actuators.

---

### 496. Hybrid CPS

A hybrid CPS may combine:

- physical components;
- emulated components;
- simulated components.

---

### 497. Hybrid Boundary

Hybrid execution should identify which elements are physical, emulated or simulated.

---

### 498. Hardware-in-the-Loop

Hardware-in-the-loop may connect selected physical components to an emulated or simulated environment.

---

### 499. HIL Purpose

HIL supports progressive validation before full physical deployment.

---

### 500. Part 4 Closure

Part 4 establishes the CPS integration boundary.

The principal conclusions are:

1. CPS integrates independent subsystems without absorbing their responsibilities.
2. Emulator and Simulator remain separate.
3. QAI remains a computational capability.
4. Conditions remain the operating-context authority.
5. Calibration remains responsible for parameter tuning.
6. Fidelity remains responsible for representation accuracy.
7. Structural Integrity remains responsible for construction correctness.
8. CPS integration requires explicit contracts.
9. State, condition, timing and error compatibility must be checked.
10. Integration errors must remain attributable to their originating subsystem.
11. Workflow and Scenario remain separate orchestration/context capabilities.
12. CPS can operate across virtualization, emulation, simulation and physical execution modes.
13. Hybrid CPS configurations are supported.
14. Hardware-in-the-loop provides a future bridge toward physical validation.
15. The logical CPS architecture should remain stable as implementation moves from laptop to edge, cloud and physical environments.

The governing principle is:

> **Integrate through contracts, not by merging responsibilities. Preserve subsystem independence so that every CPS interaction can be tested, diagnosed, replaced and progressively extended from virtual execution to physical validation.**

**PART 4 STATUS: COMPLETE — CPS INTEGRATION CONTRACTS, EXECUTION-MODE INDEPENDENCE, HYBRID CPS AND HIL EXTENSION BASELINE**
---
### 501. Purpose of Part 5

Part 5 defines CPS execution integrity, runtime behavior, resilience, observability, safety and validation across normal, degraded and exceptional operating conditions.

---

### 502. CPS Execution Integrity

CPS execution integrity means that the control loop remains logically coherent while executing.

---

### 503. Execution Integrity Dimensions

Execution integrity includes:

- state consistency;
- condition consistency;
- command consistency;
- timing consistency;
- feedback consistency;
- dependency consistency.

---

### 504. State Consistency During Execution

The CPS should ensure that decisions are based on a state representation valid for the execution point.

---

### 505. Condition Consistency During Execution

The CPS should ensure that control actions remain compatible with the active operating condition.

---

### 506. Command Consistency During Execution

Commands should remain consistent with:

- current state;
- selected policy;
- condition;
- constraints;
- authorization.

---

### 507. Feedback Consistency During Execution

Feedback should be associated with the correct:

- target;
- command;
- control cycle;
- execution context.

---

### 508. Execution Context

A CPS execution context may contain:

- asset scope;
- state;
- condition;
- policy;
- model;
- QAI method;
- resource state;
- timing context.

---

### 509. Context Identity

The execution context should have an identifiable correlation identity where traceability is required.

---

### 510. Context Immutability

Historical execution context should remain immutable after completion except through controlled correction mechanisms.

---

### 511. Runtime State

Runtime state describes what the CPS is currently doing.

---

### 512. Runtime Status

Runtime status may include:

- initialized;
- ready;
- executing;
- waiting;
- degraded;
- fallback;
- paused;
- failed;
- recovering;
- stopped.

---

### 513. Ready State

The CPS is ready when required dependencies and preconditions are satisfied.

---

### 514. Executing State

The CPS is executing when one or more active control cycles are underway.

---

### 515. Waiting State

The CPS may wait for:

- observation;
- response;
- resource;
- authorization;
- external event.

---

### 516. Degraded Runtime

The CPS may continue operating with reduced capability when a non-critical dependency is degraded.

---

### 517. Fallback Runtime

Fallback runtime indicates that an alternative approved computational or control path is active.

---

### 518. Paused Runtime

Paused execution temporarily stops control-cycle progression while preserving the required context.

---

### 519. Failed Runtime

Failed runtime indicates that the CPS cannot continue the intended execution path.

---

### 520. Recovery Runtime

Recovery represents controlled restoration toward an operational state.

---

### 521. Runtime Sanity Boundary

Runtime Sanity determines whether the executing environment is healthy enough to trust execution results.

---

### 522. Runtime Sanity Checks

Checks may include:

- process health;
- dependency health;
- heartbeat;
- state validity;
- timing;
- telemetry;
- communication;
- resource availability.

---

### 523. CPS Versus Runtime Sanity

A CPS operating condition and runtime health are distinct.

---

### 524. Example

~~~text
Target Condition = E0
Runtime Sanity = FAILED

Result:
CPS execution cannot be trusted
~~~

---

### 525. Runtime Monitoring

Runtime monitoring should identify abnormal execution behavior.

---

### 526. Heartbeat

A heartbeat may indicate that a component remains responsive.

---

### 527. Missing Heartbeat

A missing heartbeat should trigger the applicable health or recovery policy.

---

### 528. Runtime Dependency

A runtime dependency is a component or service required for execution.

---

### 529. Dependency Health

Dependency health should be monitored where it materially affects CPS operation.

---

### 530. Dependency Failure

Dependency failure should be distinguished from target-system failure.

---

### 531. Runtime Contradiction

Contradictory runtime observations should be detected.

---

### 532. Runtime Example

~~~text
Controller Status = RUNNING
BUT
Required State Stream = UNAVAILABLE
~~~

This should be treated as a runtime integrity issue.

---

### 533. Runtime Timing

Runtime timing should be monitored against the declared control-cycle budget.

---

### 534. Runtime Overrun

A control-cycle overrun should be visible and handled according to policy.

---

### 535. Runtime Resource Pressure

Resource pressure may affect:

- computation;
- storage;
- communication;
- QAI execution;
- control frequency.

---

### 536. Resource Exhaustion

Resource exhaustion should trigger an appropriate degradation or fallback response.

---

### 537. Runtime Recovery

Recovery should restore the minimum capabilities required for safe continuation.

---

### 538. Recovery Order

Recovery may need to follow dependency order.

~~~text
Communication
      |
      v
State
      |
      v
Control
      |
      v
Actuation
~~~

---

### 539. Recovery Validation

Recovery should be validated before returning to normal operation.

---

### 540. CPS Resilience

CPS resilience is the ability to maintain acceptable operation or recover after disturbance or failure.

---

### 541. Resilience Dimensions

Resilience may include:

- resistance;
- degradation;
- adaptation;
- recovery;
- continuity.

---

### 542. Resistance

Resistance limits the effect of a disturbance.

---

### 543. Degradation

Degradation reduces capability while maintaining acceptable operation.

---

### 544. Adaptation

Adaptation changes behavior to maintain the objective under changed circumstances.

---

### 545. Recovery

Recovery restores an acceptable operating state.

---

### 546. Continuity

Continuity maintains essential operation during temporary disruption.

---

### 547. Resilience Test

Resilience tests may intentionally introduce:

- sensor loss;
- communication degradation;
- compute limitation;
- actuator degradation;
- environmental disturbance.

---

### 548. Resilience Measurement

Possible measures include:

- service continuity;
- recovery time;
- degraded performance;
- unmet objective;
- resource consumption.

---

### 549. Recovery Time

Recovery time measures the interval between recognized disruption and restored acceptable operation.

---

### 550. Recovery Quality

Recovery should be evaluated for both speed and correctness.

---

### 551. Graceful Degradation

The CPS should define which capabilities may be reduced while maintaining safe operation.

---

### 552. Graceful Degradation Example

~~~text
Full QAI
   |
   v
Reduced QAI
   |
   v
Classical Optimization
   |
   v
Deterministic Rule
   |
   v
Manual / Safe Control
~~~

---

### 553. Degradation Policy

The degradation sequence should be explicitly defined.

---

### 554. No Silent Degradation

The system should record when it moves from the preferred execution path to a degraded path.

---

### 555. Fallback Transparency

Fallback should be visible in execution results.

---

### 556. Safe Continuation

The CPS should continue only when the fallback remains within validated operating boundaries.

---

### 557. Safe Stop

Where continuation is unsafe, the CPS should transition to a defined safe state.

---

### 558. Safe-State Definition

A safe state should define:

- relevant asset state;
- control action;
- actuator state;
- human notification;
- recovery requirements.

---

### 559. Emergency Handling

Emergency handling should use predetermined and validated behavior where practical.

---

### 560. Emergency Isolation

Emergency behavior should prevent normal optimization from overriding emergency constraints.

---

### 561. Human Escalation

Critical or emergency conditions may require human escalation.

---

### 562. Escalation Criteria

Criteria may include:

- safety threshold;
- repeated failure;
- insufficient confidence;
- unavailable fallback;
- uncontrolled state deviation.

---

### 563. Human Decision

A human decision should be recorded as part of the CPS execution trace.

---

### 564. Human Intervention Timing

The architecture should measure the time between escalation and human response where relevant.

---

### 565. CPS Observability

CPS observability provides sufficient information to understand execution behavior.

---

### 566. Observability Dimensions

Observability may include:

- state;
- condition;
- events;
- commands;
- responses;
- timing;
- resources;
- decisions.

---

### 567. Decision Trace

The CPS should preserve the information necessary to understand how a consequential decision was produced.

---

### 568. Decision Trace Example

~~~text
State
  |
Condition
  |
Constraints
  |
Policy
  |
Computational Method
  |
Decision
  |
Command
  |
Response
~~~

---

### 569. Command Trace

Command history should preserve:

- issuer;
- target;
- parameters;
- timestamp;
- status;
- outcome.

---

### 570. Response Trace

Response history should preserve:

- observed response;
- expected response;
- deviation;
- timing;
- quality.

---

### 571. Control Cycle Trace

A closed-loop cycle should have an end-to-end trace.

---

### 572. Trace Correlation

All cycle elements should be correlated where required.

---

### 573. Event Logging

Significant CPS events should be recorded.

---

### 574. Event Categories

Examples include:

- state transition;
- condition transition;
- decision;
- command;
- acknowledgement;
- fault;
- fallback;
- recovery;
- human intervention.

---

### 575. Telemetry

Telemetry provides runtime measurements about CPS execution.

---

### 576. Telemetry Versus State

Telemetry describes observed runtime behavior.

State represents the system state model.

---

### 577. Telemetry Quality

Telemetry should include quality indicators where required.

---

### 578. Metrics

CPS metrics may include:

- control latency;
- state error;
- action success;
- resource use;
- recovery time;
- constraint violations.

---

### 579. Control Quality

Control quality measures how well the CPS achieves its declared objective.

---

### 580. Control Error

Control error measures deviation from the desired state.

---

### 581. Cumulative Control Error

Repeated control cycles may accumulate error and should therefore be evaluated over time.

---

### 582. Control Effort

Control effort measures the amount or frequency of corrective action.

---

### 583. Resource Efficiency

Control performance should consider resource consumption where relevant.

---

### 584. Water Efficiency

For irrigation, water consumption may be a primary CPS metric.

---

### 585. Energy Efficiency

Pump or equipment energy consumption may be measured.

---

### 586. Crop Outcome

Where modeled, crop-related outcomes may be used as higher-level performance indicators.

---

### 587. Economic Outcome

Economic impact may be evaluated through the Value Management architecture.

---

### 588. CPS Value Link

~~~text
CPS Action
   |
   v
Physical / Emulated Outcome
   |
   v
Operational Metric
   |
   v
Value Metric
~~~

---

### 589. Safety Metrics

Safety-related metrics may include:

- unsafe transitions;
- constraint violations;
- emergency activations;
- time to safe state.

---

### 590. Reliability

Reliability measures the ability of the CPS to perform required operation without failure over a defined interval.

---

### 591. Availability

Availability measures whether the CPS is operationally available when required.

---

### 592. Resilience

Resilience measures the ability to withstand and recover from disruption.

---

### 593. Reliability, Availability and Resilience

These should remain distinct measurements.

---

### 594. CPS Assurance

CPS assurance combines relevant evidence from:

- Structural Integrity;
- Runtime Sanity;
- Fidelity;
- Simulation validity;
- control correctness;
- safety.

---

### 595. Assurance Boundary

CPS assurance does not replace the specialized assurance functions of those subsystems.

---

### 596. CPS Validation

CPS validation determines whether the CPS behaves as intended within its declared scope.

---

### 597. Validation Levels

Validation may progress through:

- component;
- subsystem;
- interface;
- integration;
- closed-loop;
- scenario;
- system.

---

### 598. Component Validation

Individual CPS components should be validated against their contracts.

---

### 599. Interface Validation

Interactions between CPS components should be validated independently.

---

### 600. Integration Validation

Integrated CPS behavior should be validated after component and interface validation.

---

### 601. Closed-Loop Validation

Closed-loop validation evaluates repeated feedback-driven operation.

---

### 602. Scenario Validation

CPS behavior should be validated under representative scenarios and conditions.

---

### 603. Condition Coverage

Validation should identify the operating conditions covered by evidence.

---

### 604. E0 Validation

Nominal operation establishes the baseline CPS behavior.

---

### 605. E1 Validation

Perturbed operation evaluates response to controlled variation.

---

### 606. E2 Validation

Degraded operation evaluates resilience and constrained control.

---

### 607. E3 Validation

Critical operation evaluates critical-response behavior where required.

---

### 608. E4 Validation

Extreme operation evaluates exceptional behavior where justified and safely controlled.

---

### 609. CPS Validation Matrix

~~~text
                 E0   E1   E2   E3   E4
Component         X    X
Interface         X    X    X
Integration       X    X    X
Closed Loop       X    X    X    X
Resilience        X    X    X    X    X
~~~

Actual coverage should be defined by the Pilot and target system.

---

### 610. Emulator Validation

When the CPS uses an Emulator, CPS validation should distinguish control correctness from Emulator fidelity.

---

### 611. Simulator Validation

When the CPS uses a Simulator, CPS validation should distinguish control behavior from simulation validity.

---

### 612. QAI Validation

QAI validation should determine whether the computational result is suitable for the CPS decision.

---

### 613. QAI Validation Dimensions

Possible dimensions include:

- correctness;
- objective quality;
- constraint satisfaction;
- latency;
- resource use;
- robustness.

---

### 614. Classical Baseline Validation

The classical baseline should be validated sufficiently to provide a meaningful comparison.

---

### 615. Comparative CPS Validation

Computational alternatives should be evaluated under equivalent CPS contexts.

---

### 616. Advantage Gate Validation

Advantage Gate decisions should be based on measured CPS-relevant evidence.

---

### 617. CPS Regression

Validated CPS behavior should become regression coverage.

---

### 618. Regression Triggers

Regression may be required after changes to:

- state;
- conditions;
- policy;
- QAI pipeline;
- Emulator;
- Simulator;
- interfaces;
- timing;
- resource configuration.

---

### 619. Regression Priority

Safety-critical and closed-loop behavior should receive high regression priority.

---

### 620. Regression Evidence

Regression results should preserve:

- version;
- condition;
- scenario;
- execution context;
- measured outcome.

---

### 621. CPS Baseline

A validated CPS baseline should be frozen before major architectural change.

---

### 622. Baseline Contents

The baseline should identify:

- state model;
- conditions;
- policies;
- interfaces;
- Emulator;
- Simulator;
- QAI pipeline;
- metrics;
- validation evidence.

---

### 623. CPS Change Management

CPS changes should be assessed for impact before deployment.

---

### 624. Change Categories

Changes may affect:

- behavior;
- state;
- timing;
- interface;
- computation;
- condition;
- physical mapping.

---

### 625. Change Impact Analysis

Change impact should identify affected integration paths.

---

### 626. CPS Versioning

CPS configurations should be versioned sufficiently for reproducibility.

---

### 627. CPS Configuration

Configuration may include:

- control frequency;
- policy;
- thresholds;
- resource limits;
- fallback;
- safety settings.

---

### 628. Configuration Validation

Configuration changes should be validated before consequential use.

---

### 629. Configuration Drift

Configuration drift occurs when runtime configuration differs from the approved baseline.

---

### 630. Configuration Drift Detection

Material configuration drift should be detected and recorded.

---

### 631. CPS Deployment

CPS deployment should preserve logical interfaces across supported environments.

---

### 632. Deployment Continuum

~~~text
Laptop
   |
   v
Edge
   |
   v
Private Cloud
   |
   v
Public Cloud
   |
   v
QAI Data Center
   |
   v
Physical / Hybrid CPS
~~~

---

### 633. Deployment Independence

The CPS logical architecture should remain independent of deployment location.

---

### 634. Local-First CPS

The CPS should support local execution where the use case requires continuity during external connectivity loss.

---

### 635. Cloud-Enhanced CPS

Cloud resources may provide enhanced computation without becoming a mandatory CPS dependency where local operation is required.

---

### 636. QAI Data Center Integration

A QAI Data Center may provide specialized computational capacity to CPS workloads.

---

### 637. QAI Data Center Boundary

The QAI Data Center is a computational infrastructure resource, not the CPS itself.

---

### 638. Multi-Cloud CPS

The CPS may use multiple cloud environments while preserving a single logical control architecture.

---

### 639. Federation

Federated CPS environments may exchange authorized state, conditions and decisions.

---

### 640. Federation Boundary

Federation must preserve:

- identity;
- authority;
- sovereignty;
- security;
- provenance.

---

### 641. Data Sovereignty

CPS data movement should respect applicable data-sovereignty constraints.

---

### 642. Security

CPS security should protect:

- state;
- commands;
- policies;
- interfaces;
- credentials;
- operational data.

---

### 643. Command Security

Commands require stronger protection than passive observations because they may cause consequential action.

---

### 644. Command Integrity

The CPS should detect unauthorized or altered commands where security controls require it.

---

### 645. Command Authenticity

Command origin should be verifiable where required.

---

### 646. Policy Security

Operational policies should be protected against unauthorized modification.

---

### 647. Model Security

Models and QAI pipelines should be protected against unauthorized replacement or tampering.

---

### 648. CPS Supply Chain

Dependencies should be traceable where supply-chain assurance is required.

---

### 649. Auditability

Security and operational events should remain auditable.

---

### 650. Safety Case

For consequential CPS operation, the architecture may require a structured safety case.

---

### 651. Safety Evidence

Safety evidence may include:

- hazard analysis;
- constraints;
- test results;
- failure handling;
- human controls.

---

### 652. Hazard

A hazard is a condition or event capable of causing unacceptable harm.

---

### 653. Hazard-to-Control Relationship

~~~text
Hazard
   |
   v
Detection
   |
   v
Risk Classification
   |
   v
Control / Mitigation
   |
   v
Verification
~~~

---

### 654. Safety Monitoring

Safety-relevant conditions should be continuously or periodically evaluated according to risk.

---

### 655. Safety Override

Safety logic may override normal optimization.

---

### 656. Safety and QAI

QAI optimization should remain subordinate to declared safety constraints.

---

### 657. Safety and Learning

Learning mechanisms should not bypass approved safety boundaries.

---

### 658. Safety and Adaptation

Adaptive control must remain within validated safety envelopes.

---

### 659. Human Safety Role

Humans may retain final authority for high-consequence actions.

---

### 660. CPS Ethics

Where CPS decisions affect people, ethical considerations should be addressed through the applicable Governance architecture.

---

### 661. Workforce Interaction

CPS may provide:

- recommendations;
- alerts;
- task prioritization;
- assisted control.

---

### 662. Human Trust

Human operators should be able to understand the operational significance of consequential CPS recommendations.

---

### 663. Explainability

Explainability requirements should be proportional to:

- consequence;
- uncertainty;
- automation level.

---

### 664. Operator Feedback

Human feedback may become an input to CPS learning or future policy evaluation where governed.

---

### 665. Human Override Audit

Overrides should be preserved as part of the execution history.

---

### 666. CPS Productization

A validated CPS capability may later become part of a reusable Digital Farm service or QAI product.

---

### 667. Product Boundary

Productization should package proven capabilities rather than bypass validation.

---

### 668. Reusable CPS Function

Reusable functions may include:

- irrigation control;
- resource optimization;
- anomaly response;
- predictive maintenance;
- environmental control.

---

### 669. Reusable CPS Model

Reusable CPS models should preserve their applicability envelope.

---

### 670. Domain Adaptation

A reusable CPS capability may require adaptation to a different farm, crop, asset or operating environment.

---

### 671. Adaptation Validation

Adaptation should trigger appropriate recalibration and validation.

---

### 672. Client Complexity Reduction

The productized CPS should hide unnecessary infrastructure complexity from the client.

---

### 673. Client Responsibility

The client should primarily provide:

- problem;
- data;
- configuration;
- constraints;
- desired outcome.

---

### 674. Platform Responsibility

The platform may absorb:

- orchestration;
- QAI selection;
- cloud execution;
- benchmarking;
- resource management;
- model packaging.

---

### 675. QAI Lab Relationship

The QAI Lab supports continued CPS improvement through controlled experimentation.

---

### 676. QAI Lab Feedback

~~~text
CPS Operation
      |
      v
Evidence
      |
      v
QAI Lab
      |
      v
Experiment
      |
      v
Benchmark
      |
      v
Validate
      |
      v
Package
      |
      v
Release
      |
      v
CPS Improvement
~~~

---

### 677. Research Isolation

Experimental CPS policies should remain isolated from operational control until validated.

---

### 678. Experimental Promotion

Promotion requires evidence that the candidate capability satisfies applicable:

- functional;
- safety;
- performance;
- fidelity;
- resource;
- value

criteria.

---

### 679. Rollback

The previous validated CPS configuration should remain available for rollback where practical.

---

### 680. Rollback Trigger

Rollback may be triggered by:

- unacceptable performance;
- safety issue;
- regression;
- resource failure;
- unexpected behavior.

---

### 681. CPS Continuity

Long-running CPS operation should preserve continuity across approved maintenance and deployment changes.

---

### 682. Checkpoint Continuity

Checkpoints should preserve sufficient state and context for safe continuation.

---

### 683. Migration

CPS execution may migrate between supported environments.

---

### 684. Migration Validation

Migration should verify:

- state;
- condition;
- policy;
- resources;
- timing;
- dependencies.

---

### 685. Migration Failure

If migration validation fails, the CPS should remain in the last known safe execution context or use an approved fallback.

---

### 686. CPS Portability

The logical CPS model should remain portable across supported environments.

---

### 687. Vendor Neutrality

No CPS contract should require a specific vendor unless explicitly justified by a validated requirement.

---

### 688. Technology Neutrality

Implementation technologies may evolve without changing CPS semantics.

---

### 689. Architecture Stability

The logical CPS architecture should remain stable while implementations evolve.

---

### 690. Phase 2 Pilot Boundary

The Pilot should demonstrate the minimum CPS capability necessary to prove the architecture.

---

### 691. Minimum Pilot CPS

The minimum Pilot should include:

- virtual farm state;
- emulated sensing;
- computational decision;
- control policy;
- emulated actuation;
- feedback;
- condition evaluation.

---

### 692. Minimum Pilot Loop

~~~text
Virtual Farm
     |
     v
Emulated Sensors
     |
     v
CPS State
     |
     v
Condition
     |
     v
Classical / QAI Decision
     |
     v
Control Policy
     |
     v
Emulated Actuator
     |
     v
Changed Farm State
     |
     v
Feedback
     |
     +------> CPS
~~~

---

### 693. Pilot Computational Comparison

The Pilot should support comparison of applicable:

- classical;
- quantum-inspired;
- hybrid QAI;
- quantum

approaches.

---

### 694. Pilot Open-Loop CPS

At least one open-loop CPS test should establish decision behavior independently of feedback-driven state evolution.

---

### 695. Pilot Closed-Loop CPS

At least one closed-loop test should demonstrate state-feedback interaction.

---

### 696. Pilot Emulator Integration

At least one CPS test should use the Emulator as the target-system response mechanism.

---

### 697. Pilot Simulator Integration

Where included in the Phase 2 experiment scope, a separate CPS-Simulator test should evaluate alternative trajectories.

---

### 698. Pilot Three-Path Testing

The Pilot should demonstrate independent or controlled tests across:

- Computational Path;
- Sensing Path;
- Communication Path.

---

### 699. Pilot Failure Handling

At least representative degraded or failure cases should demonstrate:

- detection;
- fallback;
- recovery;
- safe handling.

---

### 700. Pilot Evidence

Pilot CPS evidence should preserve:

- initial state;
- condition;
- decision;
- command;
- response;
- final state;
- metrics.

---

### 701. Pilot Acceptance

Pilot acceptance should be based on measured behavior rather than architectural intent alone.

---

### 702. CPS Readiness Gate

A CPS implementation may be classified:

- READY;
- REVISE;
- DEFER.

---

### 703. READY

The CPS demonstrates sufficient evidence for the declared Pilot scope.

---

### 704. REVISE

The CPS has identifiable deficiencies that must be corrected before acceptance.

---

### 705. DEFER

The capability is architecturally valid but outside the current Pilot scope.

---

### 706. CPS Review

Formal review should verify:

- architectural separation;
- state consistency;
- control correctness;
- interface integrity;
- condition integration;
- QAI integration;
- fallback;
- safety;
- evidence.

---

### 707. Phase 2 Handover

The CPS baseline should be handed forward to subsequent Phase 2 validation and promotion activities.

---

### 708. Digital Twin Readiness

A validated CPS architecture provides a foundation for later Digital Twin integration.

---

### 709. Digital Twin Boundary

Digital Twin introduces live or operational synchronization with real assets.

CPS provides the control relationship.

---

### 710. Production CPS Readiness

Production CPS requires additional evidence beyond the laptop Pilot.

---

### 711. Physical Validation

Physical validation may include:

- HIL;
- bench testing;
- field testing;
- controlled deployment.

---

### 712. Physical Extension

Physical assets should connect through the established CPS interfaces.

---

### 713. No Architectural Redesign

Moving from emulated to physical execution should not require redesign of the CPS logical model.

---

### 714. CPS-to-Digital-Twin Relationship

~~~text
Virtualization
     |
     v
Emulation
     |
     v
CPS
     |
     v
Physical Validation
     |
     v
Digital Twin
     |
     v
Production CPS
~~~

This progression is architectural rather than a mandatory deployment sequence for every use case.

---

### 715. CPS Product Continuum

The CPS capability may progress through:

- research;
- experiment;
- validated Pilot;
- reusable model;
- service;
- production CPS.

---

### 716. Productization Principle

Only validated capabilities should be packaged as production-facing CPS services.

---

### 717. Service Model

The CPS capability may later be delivered through:

- SaaS;
- PaaS;
- infrastructure-supported service.

---

### 718. CPS SaaS Boundary

A SaaS offering should expose problem and outcome-oriented interfaces rather than requiring clients to manage the internal CPS infrastructure.

---

### 719. CPS PaaS Boundary

A PaaS offering may expose reusable:

- models;
- workflows;
- control functions;
- QAI pipelines.

---

### 720. CPS Infrastructure Boundary

Infrastructure services may provide:

- compute;
- storage;
- network;
- accelerators;
- QPU access.

---

### 721. Product Modularity

CPS capabilities should be modular so that new:

- sensors;
- actuators;
- models;
- policies;
- QAI methods;
- domains

can be integrated without restructuring the complete architecture.

---

### 722. Modular QAI Integration

QAI implementations should be replaceable through the computational interface.

---

### 723. Modular Emulator Integration

Emulators should be replaceable through the CPS target-system interface.

---

### 724. Modular Simulator Integration

Simulators should be replaceable through the simulation interface.

---

### 725. Modular Condition Integration

Condition definitions should evolve independently from CPS implementation.

---

### 726. Modular Policy Integration

Policies should be replaceable without changing the CPS state architecture.

---

### 727. Configuration-Driven CPS

Where practical, deployment differences should be expressed through configuration rather than structural redesign.

---

### 728. CPS Scaling

The CPS architecture should support scaling from:

- one asset;
- one field;
- one farm;
- multiple farms;
- federated environments.

---

### 729. Asset Scaling

Additional assets should be represented through the existing asset and relationship architecture.

---

### 730. Farm Scaling

Multiple farms should preserve independent scope and condition contexts.

---

### 731. Multi-Farm Control

Cross-farm optimization should remain distinct from local control where required.

---

### 732. Federated Control

Federated CPS environments may coordinate without requiring centralized physical control.

---

### 733. Sovereign CPS

Logical and operational sovereignty may be preserved over shared physical infrastructure.

---

### 734. CPS Governance

Governance should determine:

- authority;
- approval;
- safety;
- security;
- data handling;
- operational responsibility.

---

### 735. CPS Ownership

Ownership of CPS execution should be explicit.

---

### 736. Responsibility Separation

Responsibilities may be distributed among:

- client;
- Digital Farm;
- QAI platform;
- QAI Lab;
- infrastructure provider.

---

### 737. Client Boundary

The client should not need to manage internal computational complexity merely to consume a validated CPS capability.

---

### 738. Platform Boundary

The platform absorbs orchestration complexity while preserving client control over declared objectives and constraints.

---

### 739. CPS Economic Value

CPS value should be measured through operational outcomes rather than infrastructure utilization alone.

---

### 740. Value Dimensions

Possible value dimensions include:

- water savings;
- energy savings;
- crop outcome;
- labor reduction;
- response improvement;
- resilience;
- economic return.

---

### 741. Tolerance-Based Value

Value should be evaluated within the declared acceptable tolerance band.

---

### 742. Deterioration Detection

The CPS should support detection of deteriorating performance before value falls outside acceptable tolerance where practical.

---

### 743. Corrective Action

Corrective actions should be proportionate to the observed deterioration and risk.

---

### 744. CPS Value Loop

~~~text
Operate
   |
   v
Measure
   |
   v
Evaluate Value
   |
   v
Detect Deterioration
   |
   v
Correct
   |
   v
Measure Again
~~~

---

### 745. Continuous Improvement

CPS improvement should be evidence-driven.

---

### 746. Improvement Sources

Improvement may originate from:

- operational data;
- simulation;
- emulation;
- QAI experiments;
- user feedback;
- failure analysis.

---

### 747. Improvement Isolation

Candidate improvements should be evaluated before operational adoption.

---

### 748. Improvement Promotion

Promotion should follow the established validation and governance process.

---

### 749. Architecture Preservation

Improvement should preserve the separation between:

- CPS;
- Emulator;
- Simulator;
- QAI;
- Conditions;
- Fidelity;
- Structural Integrity.

---

### 750. Final CPS Architectural Principle

~~~text
                    CPS
                     |
       +-------------+-------------+
       |             |             |
    Sensing      Computation   Communication
       |             |             |
       +-------------+-------------+
                     |
                  Decision
                     |
                  Control
                     |
                  Actuation
                     |
                 Environment
                     |
                  Feedback
                     |
                     +------> CPS

     Emulator = faithful target reproduction
     Simulator = controlled exploration
     Conditions = operating context
     Fidelity = reproduction quality
     QAI = computational alternative
     Structural Integrity = construction assurance
     Runtime Sanity = execution health
~~~

---

### 751. Part 5 Closure

Part 5 establishes the CPS execution, resilience, observability, safety, validation and productization baseline.

The principal conclusions are:

1. CPS execution integrity requires state, condition, command, timing and feedback consistency.
2. Runtime state must remain distinguishable from target operating condition.
3. Runtime Sanity is separate from Conditions.
4. Runtime dependencies require explicit health monitoring.
5. Timing overruns and resource pressure must be observable.
6. Recovery should follow appropriate dependency order.
7. Resilience includes resistance, degradation, adaptation, recovery and continuity.
8. Graceful degradation should be explicitly designed.
9. Fallback should be visible and auditable.
10. Safe continuation must remain within validated boundaries.
11. Safe-stop and emergency behavior should be defined where relevant.
12. Human escalation should be explicit for consequential conditions.
13. CPS observability must preserve state, conditions, decisions, commands, responses and timing.
14. Closed-loop control cycles should be traceable end to end.
15. CPS metrics should cover control quality, latency, resources and recovery.
16. Reliability, availability and resilience remain distinct.
17. CPS assurance combines evidence from specialized assurance subsystems without replacing them.
18. Validation should progress from components and interfaces to integration and closed-loop execution.
19. Condition coverage must accompany CPS validation claims.
20. E0 establishes baseline behavior.
21. E1 establishes perturbation response.
22. E2 establishes degraded behavior.
23. E3 and E4 support critical and extreme testing where required.
24. Emulator fidelity and CPS control correctness must remain separate validation questions.
25. Simulation validity and CPS behavior must remain separately assessed.
26. QAI validation must establish computational suitability for CPS decisions.
27. Classical baselines remain important for comparison and fallback.
28. Advantage Gate decisions must use CPS-relevant measured evidence.
29. Validated CPS behavior should become regression coverage.
30. Changes to state, conditions, policy, QAI, Emulator, Simulator, interfaces, timing or resources may require regression.
31. CPS configurations require versioning and drift detection.
32. The logical CPS architecture remains independent of deployment location.
33. Laptop, edge, private cloud, public cloud and QAI Data Center are deployment options.
34. Local-first operation can preserve continuity during external connectivity loss.
35. QAI Data Center infrastructure is not the CPS itself.
36. Federated CPS operation must preserve identity, authority, sovereignty, security and provenance.
37. Command security requires special protection because commands can cause consequential actions.
38. Safety constraints remain superior to optimization objectives.
39. QAI and adaptive learning cannot bypass approved safety boundaries.
40. Human oversight remains important for high-consequence operation.
41. Productization should package proven CPS capabilities rather than bypass validation.
42. Reusable CPS capabilities must preserve their applicability envelope.
43. Adaptation to new farms or domains requires appropriate validation.
44. Client complexity should be reduced by absorbing infrastructure and computational complexity into the platform.
45. QAI Lab provides a controlled research-to-product feedback loop.
46. Experimental capabilities remain isolated until validated.
47. Rollback capability should be preserved for promoted operational changes.
48. Physical execution should extend the established logical CPS architecture rather than require redesign.
49. Digital Twin integration represents a later synchronization and production extension.
50. CPS productization can progress from research through validated service and production CPS.
51. Modular interfaces permit replacement of sensors, actuators, models, policies, QAI methods and execution infrastructure.
52. CPS scaling should preserve asset, farm and federation boundaries.
53. Governance must establish authority and responsibility.
54. CPS value must be measured through operational outcomes.
55. Value assessment should remain tolerance-based and evidence-driven.
56. Continuous improvement must preserve architectural separation.

The governing principle is:

> **A CPS becomes trustworthy when its state, conditions, decisions, actions and feedback remain coherent under normal operation, perturbation, degradation and failure; when its computational alternatives are measured rather than assumed; and when its validated architecture can progress from laptop emulation to physical production without losing separation of concerns.**

**PART 5 STATUS: COMPLETE — CPS EXECUTION INTEGRITY, RUNTIME SANITY, RESILIENCE, OBSERVABILITY, SAFETY, VALIDATION, PRODUCTIZATION AND PHYSICAL EXTENSION BASELINE**
---
### 752. Purpose of Part 6

Part 6 establishes the final CPS integration, validation, three-path testing, evidence, formal review and Phase 2 handover baseline.

---

### 753. Final CPS Integration Model

The final CPS architecture preserves independent subsystem boundaries while enabling end-to-end execution.

~~~text
                         +----------------+
                         |   Conditions   |
                         +-------+--------+
                                 |
                                 v
+-------------+          +-------+-------+          +-------------+
|   Emulator  +--------->|      CPS      |<---------+  Simulator  |
+-------------+          +-------+-------+          +-------------+
                                 |
                                 v
                         +-------+-------+
                         | QAI / Classical|
                         |   Computing    |
                         +-------+-------+
                                 |
                                 v
                         +-------+-------+
                         | Control Policy |
                         +-------+-------+
                                 |
                                 v
                         +-------+-------+
                         |   Actuation   |
                         +-------+-------+
                                 |
                                 v
                         +-------+-------+
                         | Farm / Target |
                         +-------+-------+
                                 |
                                 v
                              Feedback
                                 |
                                 +-------> CPS
~~~

---

### 754. Independent Subsystem Principle

The following remain independently testable:

- Emulator;
- Simulator;
- CPS;
- QAI pipeline;
- Conditions;
- Structural Integrity;
- Calibration;
- Fidelity.

---

### 755. Integration Does Not Remove Independent Testing

An integrated CPS test must not replace independent subsystem tests.

---

### 756. CPS Integration Test Families

The minimum integration families are:

1. Emulator + QAI;
2. Simulator + QAI;
3. Emulator + CPS;
4. Simulator + CPS;
5. CPS + QAI;
6. full end-to-end CPS.

---

### 757. Emulator + QAI Test

The Emulator supplies target-system behavior to a QAI pipeline.

The objective is to evaluate computational performance against a faithfully reproduced target.

---

### 758. Emulator + QAI Flow

~~~text
Emulated State
      |
      v
Observation
      |
      v
QAI Pipeline
      |
      v
Decision / Prediction
      |
      v
Result
~~~

---

### 759. Simulator + QAI Test

The Simulator supplies controlled experimental conditions to a QAI pipeline.

The objective is to evaluate computational behavior under changed conditions.

---

### 760. Simulator + QAI Flow

~~~text
Scenario
   |
   v
Simulation
   |
   v
State / Data
   |
   v
QAI Pipeline
   |
   v
Result
~~~

---

### 761. Emulator + CPS Test

The CPS controls an emulated target.

This evaluates the control relationship without requiring physical hardware.

---

### 762. Emulator + CPS Flow

~~~text
Emulator
   |
   v
Observation
   |
   v
CPS
   |
   v
Command
   |
   v
Emulator
   |
   v
Changed State
~~~

---

### 763. Simulator + CPS Test

The CPS interacts with a Simulator to evaluate control behavior under controlled experimental conditions.

---

### 764. Simulator + CPS Flow

~~~text
Scenario
   |
   v
Simulator
   |
   v
CPS Observation
   |
   v
Decision
   |
   v
Control Action
   |
   v
Simulator
~~~

---

### 765. CPS + QAI Test

The CPS invokes competing computational methods through the defined computational interface.

---

### 766. CPS Computational Classes

The comparison may include:

- Classical;
- Quantum-Inspired;
- Hybrid QAI;
- Quantum.

---

### 767. Equivalent Comparison Context

Computational alternatives should be evaluated under equivalent:

- state;
- scenario;
- condition;
- objective;
- constraints;
- measurement criteria.

---

### 768. Comparative Result

A comparison should preserve results for each computational class rather than declaring QAI superior by assumption.

---

### 769. Advantage Gate

The Advantage Gate evaluates whether a non-classical approach provides sufficient measured benefit for the declared problem.

---

### 770. Advantage Dimensions

Possible dimensions include:

- solution quality;
- runtime;
- resource use;
- scalability;
- robustness;
- economic value.

---

### 771. Classical Baseline

The classical baseline remains the reference for comparative evaluation.

---

### 772. Fallback Relationship

Where the preferred computational path cannot execute acceptably, the approved classical or alternative fallback may be used.

---

### 773. Full End-to-End Test

The full test connects:

~~~text
Virtual Farm
    |
    v
Emulated Sensing
    |
    v
CPS State
    |
    v
Condition
    |
    v
QAI / Classical Decision
    |
    v
Control Policy
    |
    v
Emulated Actuation
    |
    v
Changed State
    |
    v
Feedback
    |
    +----------> CPS
~~~

---

### 774. End-to-End Test Objective

The objective is to determine whether the complete architecture produces coherent behavior and measurable outcomes.

---

### 775. Closed-Loop Integration

Closed-loop execution should preserve the complete feedback cycle.

---

### 776. Open-Loop Integration

Open-loop execution should allow decision behavior to be evaluated without feedback-driven state evolution.

---

### 777. Open-Loop Purpose

Open-loop tests are useful for isolating:

- decision quality;
- computational performance;
- policy behavior;
- model response.

---

### 778. Closed-Loop Purpose

Closed-loop tests evaluate:

- feedback;
- control stability;
- cumulative effects;
- repeated decisions;
- state evolution.

---

### 779. Three-Path Architecture

CPS integration should independently consider:

- Computational Path;
- Sensing Path;
- Communication Path.

---

### 780. Computational Path

The Computational Path carries:

- state processing;
- QAI computation;
- classical computation;
- decision generation;
- optimization.

---

### 781. Sensing Path

The Sensing Path carries:

- observations;
- telemetry;
- sensor state;
- environmental information;
- target-system feedback.

---

### 782. Communication Path

The Communication Path carries:

- observations;
- commands;
- events;
- synchronization;
- service interactions.

---

### 783. Path Independence

Failure or degradation of one path should remain distinguishable from failures in the other paths.

---

### 784. Path Test Matrix

~~~text
Test                    Computational   Sensing   Communication
---------------------------------------------------------------
Emulator + QAI               X
Simulator + QAI              X
Emulator + CPS               X          X
Simulator + CPS              X          X
Full Open Loop               X          X          X
Full Closed Loop             X          X          X
~~~

---

### 785. Path Failure Testing

Representative failures should be introduced independently where practical.

---

### 786. Computational Path Failure

Examples include:

- QAI unavailable;
- compute overload;
- excessive latency;
- resource exhaustion.

---

### 787. Sensing Path Failure

Examples include:

- missing observation;
- stale observation;
- contradictory observation;
- sensor degradation.

---

### 788. Communication Path Failure

Examples include:

- packet loss;
- delayed message;
- unavailable endpoint;
- synchronization failure.

---

### 789. Failure Attribution

The test framework should identify the affected path rather than reporting only a generic CPS failure.

---

### 790. Cross-Path Failure

Some failures may propagate across paths.

Such propagation should be recorded explicitly.

---

### 791. Timing Interaction

Three-path tests should consider timing dependencies between sensing, computation and communication.

---

### 792. Timing Budget

The control cycle may be represented as:

~~~text
Sense
  +
Communication
  +
Process
  +
QAI / Classical Compute
  +
Decision
  +
Command
  +
Actuation
  =
Control-Cycle Latency
~~~

---

### 793. Timing Constraint

The measured control-cycle latency should remain within the applicable operational boundary.

---

### 794. Stale Observation

A stale observation should not automatically be treated as current state.

---

### 795. Observation Freshness

Freshness should be evaluated according to the CPS use case and timing requirements.

---

### 796. Missing Observation

The CPS should apply the defined behavior for missing observations.

---

### 797. Contradictory Observation

Contradictory observations should trigger the applicable validation, fusion or escalation behavior.

---

### 798. Sensor Confidence

Observation confidence may influence decision eligibility where defined.

---

### 799. Communication Confidence

Communication status may influence whether a command is safe to issue.

---

### 800. Computational Confidence

Computational confidence may influence whether a QAI result is acceptable for control.

---

### 801. Decision Eligibility

A decision should be considered executable only when required preconditions are satisfied.

---

### 802. Decision Precondition Example

~~~text
State Valid
   AND
Condition Known
   AND
Observation Fresh
   AND
Policy Valid
   AND
Resources Available
   AND
Safety Constraints Satisfied
        |
        v
Decision Eligible
~~~

---

### 803. Decision Rejection

If a required precondition fails, the CPS should reject, defer or reroute the decision according to policy.

---

### 804. Decision Deferral

A decision may be deferred when waiting for a valid observation or dependency is safer than acting on uncertain information.

---

### 805. Decision Rerouting

A decision may be rerouted to an approved fallback computational method.

---

### 806. Decision Escalation

A decision may require human review when confidence, safety or consequence thresholds demand it.

---

### 807. Control Action Validation

Before issuing a command, the CPS should validate:

- target;
- action;
- parameters;
- constraints;
- authority;
- current state.

---

### 808. Actuation Verification

After command execution, the CPS should verify whether the target responded as expected.

---

### 809. Command Outcome

Command outcomes may include:

- accepted;
- executed;
- partially executed;
- rejected;
- timed out;
- failed.

---

### 810. Closed-Loop Verification

The CPS should verify the resulting state rather than assuming that a successful command acknowledgement means the desired state was achieved.

---

### 811. Desired-State Verification

~~~text
Desired State
     |
     v
Command
     |
     v
Target Response
     |
     v
Observed State
     |
     v
Deviation
     |
     +----> Next Decision
~~~

---

### 812. Control Stability

Repeated closed-loop actions should be evaluated for undesirable oscillation, instability or excessive corrective action.

---

### 813. Control Oscillation

Repeated alternating actions may indicate inappropriate thresholds, delays, policy behavior or model assumptions.

---

### 814. Deadband

A deadband may prevent unnecessary action for small deviations.

---

### 815. Persistence

A deviation may require persistence before triggering a control response.

---

### 816. Hysteresis

Hysteresis may prevent repeated transitions caused by measurements fluctuating around a threshold.

---

### 817. Control Horizon

CPS may evaluate one or more future control steps depending on the selected policy.

---

### 818. Receding-Horizon Control

Where used, the CPS may repeatedly recompute decisions as new observations become available.

---

### 819. QAI in Receding-Horizon Control

QAI may evaluate candidate actions or trajectories within each control cycle.

---

### 820. Resource-Aware Control

The CPS should consider available computational and communication resources when selecting execution paths.

---

### 821. Resource Constraints

Relevant resources may include:

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
- budget;
- queue capacity.

---

### 822. QPU Availability

QPU access may be intermittent, remote or resource constrained.

---

### 823. Remote QAI

Remote QAI execution should account for communication and queue latency.

---

### 824. Local QAI

Local QAI may provide lower communication dependency where suitable resources are available.

---

### 825. Hybrid Execution

The CPS may combine local and remote computational resources.

---

### 826. Execution Selection

The execution layer may select an available computational method based on:

- objective;
- constraints;
- resource state;
- timing;
- confidence;
- Advantage Gate.

---

### 827. Execution Selection Boundary

Execution selection should not silently modify the declared CPS objective.

---

### 828. Adaptive QAI

Adaptive QAI may change computational behavior according to:

- problem characteristics;
- resource availability;
- observed performance;
- operating condition.

---

### 829. Adaptive Boundary

Adaptive behavior should remain within approved policy and safety boundaries.

---

### 830. Virtual Qubit Fabric

Where applicable, Virtual Qubit Fabric capabilities may provide an abstraction for allocating quantum computational resources.

---

### 831. Real-Time QAI

Real-Time QAI may support time-sensitive CPS decisions subject to measured resource and latency constraints.

---

### 832. QAI Failure

QAI failure should be distinguishable from:

- CPS failure;
- Emulator failure;
- Simulator failure;
- communication failure;
- sensing failure.

---

### 833. QAI Fallback

Fallback should use a validated alternative.

---

### 834. Fallback Validation

The fallback itself should be tested under the conditions where it is expected to operate.

---

### 835. Fallback Closed Loop

Fallback should be evaluated in closed loop where it will control a dynamic target.

---

### 836. Fault Injection

Fault injection provides controlled testing of CPS resilience.

---

### 837. Fault Injection Boundary

Fault injection should remain controlled and isolated from uncontrolled production operation.

---

### 838. Fault Injection Classes

Representative classes include:

- sensing;
- communication;
- computation;
- control;
- actuation;
- environment;
- resource.

---

### 839. Fault Propagation

The architecture should record how faults propagate between subsystems.

---

### 840. Fault Containment

Where possible, failures should be contained within their originating subsystem or controlled propagation boundary.

---

### 841. Fault Recovery

Recovery should restore only capabilities that have passed applicable checks.

---

### 842. Recovery State

A CPS may use explicit recovery states rather than immediately returning to normal operation.

---

### 843. Maintenance State

Maintenance may temporarily disable normal control while preserving safety.

---

### 844. Manual Control State

Manual control may provide a human-controlled fallback where appropriate.

---

### 845. Emergency State

Emergency state should prioritize safety and containment over optimization.

---

### 846. CPS State Hierarchy

~~~text
NORMAL
  |
  +--> DEGRADED
  |
  +--> CRITICAL
  |
  +--> EMERGENCY
  |
  +--> RECOVERY
  |
  +--> MAINTENANCE
  |
  +--> MANUAL
~~~

The exact state machine remains domain-specific.

---

### 847. State Transition Authority

State transitions should be governed by defined conditions and policies.

---

### 848. Unexpected Transition

An unexpected state transition should be detected and recorded.

---

### 849. Transition Evidence

Evidence should identify:

- previous state;
- triggering event;
- condition;
- new state;
- decision;
- timestamp.

---

### 850. CPS Event Ordering

Events should preserve sufficient ordering information to reconstruct execution.

---

### 851. Distributed Event Ordering

Distributed execution may require logical or synchronized clocks to establish event relationships.

---

### 852. Clock Synchronization

Clock synchronization requirements should reflect the timing sensitivity of the CPS.

---

### 853. Event Causality

Where exact physical time is unavailable, causal ordering should still be preserved where required.

---

### 854. Evidence Lineage

Every consequential CPS result should be traceable to its originating inputs and computational context.

---

### 855. Evidence Components

Evidence may include:

- input state;
- observation;
- condition;
- model version;
- policy version;
- QAI method;
- resource context;
- output;
- command;
- response.

---

### 856. Reproducibility

A CPS result should be reproducible to the extent required by its purpose and stochastic characteristics.

---

### 857. Stochastic Reproducibility

Where stochastic methods are used, reproducibility may require controlled random seeds or equivalent experiment metadata.

---

### 858. Experiment Identity

Each comparative CPS experiment should have a unique experiment identity.

---

### 859. Scenario Identity

Each execution should identify the scenario under which it was performed.

---

### 860. Condition Identity

The active condition should be associated with the execution where applicable.

---

### 861. Model Identity

The Emulator, Simulator, behavior model and other models used should be identifiable.

---

### 862. QAI Identity

The computational method and QAI pipeline version should be identifiable.

---

### 863. Resource Identity

Relevant execution resources should be identifiable.

---

### 864. Configuration Identity

Relevant CPS configuration should be identifiable.

---

### 865. Evidence Package

~~~text
Experiment
   |
   +-- Scenario
   +-- Condition
   +-- State
   +-- Models
   +-- Policies
   +-- QAI Method
   +-- Resources
   +-- Execution Trace
   +-- Results
   +-- Validation
   +-- Value
~~~

---

### 866. Evidence Completeness

Evidence should be sufficient to support the claim being made.

---

### 867. Evidence Sufficiency

Not every internal execution detail must be retained for every use case.

Evidence requirements should remain proportional to consequence and purpose.

---

### 868. Pilot Evidence Boundary

The Pilot should retain sufficient evidence to compare computational alternatives and demonstrate CPS behavior.

---

### 869. Regression Evidence

Regression tests should retain enough information to identify behavioral changes.

---

### 870. Structural Integrity Gate

Before a consequential CPS execution, applicable structural checks should pass.

---

### 871. Runtime Sanity Gate

During execution, applicable runtime health checks should pass.

---

### 872. Fidelity Gate

When Emulator fidelity is material to the conclusion, applicable fidelity criteria should pass.

---

### 873. Simulation Validity Gate

When simulation results are used, applicable simulation validity criteria should pass.

---

### 874. CPS Control Gate

The control logic should satisfy its declared functional and safety requirements.

---

### 875. QAI Validity Gate

The selected computational method should satisfy applicable computational validity criteria.

---

### 876. Value Gate

The resulting capability should satisfy the declared value criteria where value assessment is in scope.

---

### 877. Integrated Assurance Sequence

~~~text
Structural Integrity
        |
        v
Runtime Sanity
        |
        v
Fidelity / Simulation Validity
        |
        v
CPS Control Validation
        |
        v
QAI Validation
        |
        v
Value Assessment
        |
        v
Pilot Decision
~~~

These gates are complementary and should not be collapsed into one undifferentiated score.

---

### 878. Gate Failure

A failed gate should identify the failed assurance dimension.

---

### 879. Gate Outcome

The outcome may be:

- READY;
- REVISE;
- DEFER.

---

### 880. READY for Integration

The CPS may proceed when applicable integration and assurance criteria are satisfied.

---

### 881. REVISE for Integration

The CPS requires correction before the affected integration can be accepted.

---

### 882. DEFER for Integration

The capability remains architecturally valid but is outside the current implementation boundary.

---

### 883. Formal Review Inputs

Formal review should consider:

- architecture;
- implementation;
- tests;
- evidence;
- failures;
- limitations;
- value;
- future extension.

---

### 884. Formal Review Questions

The review should ask:

1. Are CPS responsibilities clearly separated?
2. Are Emulator and Simulator independent?
3. Are QAI and classical alternatives comparable?
4. Are all three paths represented?
5. Are open and closed loops tested?
6. Are failures attributable?
7. Are safety boundaries explicit?
8. Is evidence sufficient?
9. Is the Pilot scope respected?

---

### 885. Architecture Integrity

The review should verify that new implementation details have not introduced architectural duplication.

---

### 886. No Duplicate Registry

CPS should continue using the authoritative Phase 1 asset and relationship registries.

---

### 887. No Duplicate State Authority

CPS should use the defined state architecture rather than silently creating an incompatible state model.

---

### 888. No Duplicate Condition Authority

CPS should consume the Conditions architecture rather than redefining operating-condition semantics.

---

### 889. No Embedded Simulator

The CPS should not absorb Simulator implementation.

---

### 890. No Embedded Emulator

The CPS should not absorb Emulator implementation.

---

### 891. No Embedded QAI Infrastructure

The CPS should invoke computational capabilities through defined interfaces rather than embedding infrastructure-management responsibilities.

---

### 892. Separation Preservation

The final CPS architecture therefore preserves:

~~~text
Asset / Relationship
        |
        v
Condition
        |
        +------------------+
        |                  |
        v                  v
    Emulator           Simulator
        |                  |
        +--------+---------+
                 |
                 v
                CPS
                 |
                 v
             QAI / Classical
                 |
                 v
              Control
                 |
                 v
              Outcome
~~~

---

### 893. Pilot Implementation Readiness

The architecture is ready for implementation when the defined minimum CPS loop can be instantiated within the laptop/simulation/emulation boundary.

---

### 894. Minimum Callable CPS

The minimum callable capability should:

1. initialize a virtual farm state;
2. produce observations;
3. evaluate conditions;
4. execute a computational method;
5. produce a decision;
6. apply a control policy;
7. actuate an emulated target;
8. observe the resulting state;
9. repeat the control loop.

---

### 895. Minimum Agriculture Example

For intelligent irrigation:

~~~text
Soil / Crop / Weather State
          |
          v
     Soil Moisture
       Observation
          |
          v
      Condition
          |
          v
 Water Demand Decision
          |
          v
   Irrigation Policy
          |
          v
     Pump / Valve
       Emulator
          |
          v
 Updated Soil State
          |
          +--------> Feedback
~~~

---

### 896. Minimum Comparative Test

The Pilot should compare the selected classical baseline against applicable QAI computational alternatives under equivalent inputs and constraints.

---

### 897. Minimum Closed-Loop Test

The Pilot should demonstrate that a decision changes the emulated state and that the changed state influences a subsequent decision.

---

### 898. Minimum Failure Test

The Pilot should demonstrate at least one controlled degradation or failure and the corresponding recovery or fallback behavior.

---

### 899. Minimum Evidence Test

The Pilot should demonstrate that the complete control cycle can be reconstructed from recorded evidence.

---

### 900. Part 6 Closure

Part 6 establishes the final integrated CPS baseline.

The principal conclusions are:

1. Emulator, Simulator and CPS remain independent subsystems.
2. QAI remains an interchangeable computational capability.
3. Independent integration tests are mandatory architectural evidence.
4. Emulator + QAI and Simulator + QAI are distinct test families.
5. Emulator + CPS and Simulator + CPS are distinct test families.
6. Full end-to-end testing validates the complete architecture.
7. Open-loop and closed-loop tests answer different engineering questions.
8. Computational, Sensing and Communication Paths require independent consideration.
9. Path failures must remain attributable.
10. Timing is a cross-path CPS concern.
11. Observation freshness affects decision validity.
12. Decision eligibility should be explicitly evaluated.
13. Commands require pre-action validation.
14. Actuation requires response verification.
15. Desired-state achievement must be verified through observed state.
16. Closed-loop stability should be measured.
17. Deadband, persistence and hysteresis may be required for stable control.
18. Resource availability may influence computational-path selection.
19. Remote QAI introduces communication and queue considerations.
20. Adaptive QAI remains bounded by approved policy and safety constraints.
21. QAI failure must remain distinguishable from CPS and infrastructure failure.
22. Fallback must be validated.
23. Fault injection provides controlled resilience evidence.
24. Recovery should use explicit state semantics where required.
25. Emergency behavior prioritizes safety over optimization.
26. Distributed execution requires appropriate event and clock semantics.
27. Consequential CPS results require evidence lineage.
28. Experiment, scenario, condition, model, QAI and configuration identities should be preserved.
29. Reproducibility requirements should be proportional to purpose.
30. Structural Integrity, Runtime Sanity, Fidelity, Simulation Validity, CPS Control, QAI Validity and Value are distinct assurance dimensions.
31. Gate failures should identify their actual assurance dimension.
32. READY, REVISE and DEFER provide the primary implementation decision outcomes.
33. Formal review must verify architectural separation as well as functional behavior.
34. CPS must not duplicate Phase 1 registries or authoritative state and condition semantics.
35. CPS must not absorb Emulator, Simulator or QAI infrastructure responsibilities.
36. The minimum callable CPS can run entirely within the laptop/simulation/emulation boundary.
37. Intelligent irrigation provides a suitable minimum agriculture control-loop demonstration.
38. The Pilot should compare classical and applicable QAI approaches.
39. The Pilot should demonstrate both open-loop and closed-loop behavior.
40. The Pilot should demonstrate controlled failure handling.
41. The Pilot should preserve reconstructable evidence.
42. Physical assets remain a future validation extension.
43. HIL provides a controlled bridge toward physical execution.
44. Digital Twin and production CPS remain later architectural extensions.
45. The CPS architecture is therefore sufficiently defined for implementation and subsequent Phase 2 validation.

The governing principle is:

> **Test every subsystem independently, then test the interfaces, then test the integrated closed loop. Preserve the distinction between faithful reproduction, experimental simulation, control behavior, computational performance and assurance so that integration testing reveals real architectural limitations rather than hiding them inside a monolithic test.**

**PART 6 STATUS: COMPLETE — CPS INTEGRATION TESTING, THREE-PATH VALIDATION, ASSURANCE GATES, EVIDENCE, PILOT CALLABLE CPS AND PHYSICAL-EXTENSION BASELINE**

**CPS README STATUS: COMPLETE — PHASE 2 CPS ARCHITECTURE AND REQUIREMENTS BASELINE FROZEN**

---
