# Phase 2 — Conditions

## README

### Part 1 — Purpose, Architectural Position and Operating Condition Model

### 1. Purpose

This document defines the architectural role, scope, principles and lifecycle of **Operating Conditions** within Phase 2 of the Digital Farm Pilot.

The Conditions subsystem defines the conditions under which:

- an Emulator operates;
- a Simulator executes;
- a CPS transitions;
- a QAI pipeline evaluates;
- a fidelity assessment is performed.

---

### 2. Core Question

The Conditions subsystem answers:

> **Under what operating state, environmental context and system circumstances is the target or representation being evaluated?**

---

### 3. Architectural Position

Conditions provide contextual information to the other Phase 2 subsystems.

~~~text
                 CONDITIONS
                      |
        +-------------+-------------+
        |             |             |
        v             v             v
    Emulator      Simulator        CPS
        |             |             |
        +-------------+-------------+
                      |
                      v
                  Fidelity
                      |
                      v
                 QAI Pipeline
~~~

---

### 4. Conditions as a First-Class Concept

An operating condition is a first-class architectural concept.

It should not exist only as an informal description attached to a test case.

---

### 5. Condition Identity

Every defined condition should have a unique logical identity.

This allows it to be referenced by:

- scenarios;
- workflows;
- models;
- emulators;
- simulations;
- fidelity assessments;
- QAI experiments.

---

### 6. Condition Definition

A condition defines the relevant circumstances under which a system or representation operates.

It may include:

- system state;
- environmental state;
- resource state;
- operational mode;
- fault state;
- external conditions.

---

### 7. Condition Context

A condition should identify the context in which it applies.

The context may include:

- farm;
- field;
- zone;
- asset;
- process;
- experiment;
- execution environment.

---

### 8. Condition Is Not a Scenario

A condition describes the state or circumstances.

A scenario describes what is being explored under those circumstances.

---

### 9. Condition Versus Scenario

~~~text
Condition
   |
   +--> What is the current operating state?
   |
   v
Scenario
   |
   +--> What are we going to explore?
~~~

---

### 10. Condition Versus Configuration

Configuration defines how a system or model is configured.

Condition defines the operating circumstances resulting from or surrounding that configuration.

---

### 11. Condition Versus State

State describes the state of an identified entity.

Condition may aggregate multiple states and environmental circumstances into an operational classification.

---

### 12. Condition Versus Fidelity

Fidelity asks whether the representation reproduces the target.

Condition asks under which circumstances that fidelity is being assessed.

---

### 13. Condition Versus Structural Integrity

Structural Integrity asks whether the environment is correctly constructed.

Conditions describe the operating circumstances within that correctly constructed environment.

---

### 14. Condition Versus Calibration

Calibration tunes model parameters.

Conditions define the circumstances under which those parameters and resulting behavior are evaluated.

---

### 15. Condition Versus Simulation

Simulation explores what happens under defined conditions and scenarios.

The Conditions subsystem does not own simulation execution.

---

### 16. Condition Versus QAI

QAI evaluates computational methods against a problem represented under defined conditions.

Conditions do not determine whether QAI provides computational advantage.

---

### 17. Purpose-Specific Conditions

Different uses may require different condition definitions.

Examples include:

- monitoring;
- planning;
- optimization;
- control;
- fault analysis;
- resilience;
- safety;
- research.

---

### 18. Minimum Condition Model

The minimum logical condition model should identify:

- condition identity;
- condition class;
- relevant state;
- relevant environment;
- applicable scope;
- validity.

---

### 19. Condition Classification

Phase 2 establishes five primary operating condition classes:

- **E0 — Nominal**
- **E1 — Perturbed**
- **E2 — Degraded**
- **E3 — Critical**
- **E4 — Catastrophic / Extreme**

---

### 20. Condition Classes Are Contextual

Condition classes describe the operating state of the target or system.

They do **not** describe:

- emulator quality;
- model quality;
- fidelity level;
- software quality.

---

### 21. Condition Class Is Not Fidelity Level

A representation operating under E3 is not automatically a low-fidelity representation.

E3 describes the target condition, not the quality of reproduction.

---

### 22. Condition Class Is Not Severity of Software Defect

A critical condition may be a valid operating state rather than a system implementation failure.

---

### 23. E0 — Nominal

E0 represents normal expected operating conditions.

Examples may include:

- expected environmental range;
- normal resource availability;
- normal equipment operation;
- normal communication;
- normal control behavior.

---

### 24. E0 Purpose

E0 establishes the primary baseline for:

- emulation;
- simulation;
- CPS;
- fidelity;
- QAI evaluation.

---

### 25. E0 Baseline

E0 should normally be established before introducing perturbations or faults.

---

### 26. E0 Is Not "Perfect"

Nominal operation may still contain:

- noise;
- variability;
- uncertainty;
- normal disturbances.

---

### 27. E1 — Perturbed

E1 represents controlled deviation from nominal operation.

Examples include:

- changed weather;
- altered demand;
- parameter variation;
- increased latency;
- reduced resource availability.

---

### 28. E1 Purpose

E1 supports evaluation of sensitivity and response to controlled variation.

---

### 29. E1 Perturbation

Perturbations should be explicitly defined.

They may affect:

- inputs;
- environment;
- parameters;
- timing;
- resources.

---

### 30. E1 Does Not Imply Failure

A perturbed condition may remain fully operational.

---

### 31. E2 — Degraded

E2 represents operation in which one or more capabilities have degraded.

Examples may include:

- reduced sensor quality;
- partial communication loss;
- reduced water availability;
- equipment degradation;
- computational resource reduction.

---

### 32. E2 Purpose

E2 supports analysis of:

- graceful degradation;
- resilience;
- fallback;
- degraded CPS behavior.

---

### 33. E2 Degradation

Degradation should identify what capability has changed and by how much where measurable.

---

### 34. E2 Is Not Necessarily Failure

A degraded condition may continue to provide useful operation.

---

### 35. E3 — Critical

E3 represents a condition in which normal operation is materially threatened or a critical operating boundary is approached or crossed.

---

### 36. E3 Purpose

E3 supports evaluation of:

- critical response;
- control behavior;
- fault handling;
- human intervention;
- safety boundaries.

---

### 37. E3 Criticality

Criticality should be defined relative to the target and intended use.

---

### 38. E3 Is Contextual

A condition classified as critical for one subsystem may not be critical for another.

---

### 39. E4 — Catastrophic / Extreme

E4 represents an extreme or catastrophic operating condition within the declared scope of the system model.

---

### 40. E4 Purpose

E4 may support:

- extreme-event analysis;
- catastrophic fault analysis;
- resilience research;
- controlled failure testing.

---

### 41. E4 Evidence Requirement

E4 should only be treated as validated target behavior where sufficient evidence exists.

---

### 42. E4 Experimental Use

E4 may be used experimentally even when real-world evidence is limited, provided it is explicitly identified as experimental.

---

### 43. Not Every System Requires E0–E4

The complete condition ladder is not mandatory for every Emulator, Simulator or use case.

---

### 44. Applicable Condition Classes

Each subsystem should declare which condition classes it supports.

---

### 45. Condition Applicability Matrix

~~~text
Asset / Process
      |
      +--> E0 Applicable?
      +--> E1 Applicable?
      +--> E2 Applicable?
      +--> E3 Applicable?
      +--> E4 Applicable?
~~~

---

### 46. Condition Scope

Conditions should be scoped to the behavior they describe.

---

### 47. Condition Granularity

Conditions may be defined at:

- component;
- asset;
- subsystem;
- field;
- farm;
- system

level.

---

### 48. Component Condition

A component may have an individual operating condition.

Example:

> Pump operating normally.

---

### 49. Asset Condition

An asset condition may aggregate multiple component conditions.

Example:

> Irrigation station operating normally.

---

### 50. System Condition

A system condition may aggregate the state of multiple assets and environmental variables.

Example:

> Farm irrigation system operating under nominal conditions.

---

### 51. Hierarchical Conditions

Conditions may be composed hierarchically.

~~~text
Farm Condition
   |
   +--> Field Condition
   |      |
   |      +--> Irrigation Zone
   |
   +--> Water System Condition
   |
   +--> Machinery Condition
   |
   +--> Environmental Condition
~~~

---

### 52. Condition Composition

A higher-level condition should retain references to the lower-level conditions that establish it.

---

### 53. Condition Consistency

Higher-level condition classifications should remain consistent with relevant lower-level states.

---

### 54. Condition Conflict

If component conditions imply conflicting system-level classifications, the conflict should be explicitly represented.

---

### 55. Condition Authority

Where multiple sources classify the same condition differently, an authority rule should determine which classification is operationally applicable.

---

### 56. Condition Evidence

Condition classification should be supported by:

- state;
- observations;
- measurements;
- events;
- rules;
- models;
- controlled assumptions.

---

### 57. Observed Condition

An observed condition is supported by actual observations.

---

### 58. Inferred Condition

An inferred condition is derived from observations, rules or models.

---

### 59. Simulated Condition

A simulated condition is intentionally created for experimentation.

---

### 60. Emulated Condition

An emulated condition represents a condition of the target within the Emulator.

---

### 61. Planned Condition

A planned condition represents an expected future operating state.

---

### 62. Condition Provenance

Every condition classification should identify whether it is:

- observed;
- inferred;
- simulated;
- emulated;
- planned;
- assumed.

---

### 63. Condition Confidence

Where classification is inferred, confidence may be recorded.

---

### 64. Condition Uncertainty

Uncertainty should remain visible where condition classification depends on uncertain measurements or models.

---

### 65. Condition Freshness

Conditions derived from time-sensitive information should carry freshness information.

---

### 66. Stale Condition

A condition may become stale when its underlying evidence is no longer representative of the current operating state.

---

### 67. Condition Validity

Validity determines whether the condition definition remains applicable to its declared context.

---

### 68. Freshness Versus Validity

Freshness and validity remain distinct.

A condition can be recent but invalid for the target context.

---

### 69. Condition Timestamp

Relevant conditions should carry timestamps or equivalent temporal references.

---

### 70. Condition Interval

Some conditions apply over an interval rather than a single instant.

---

### 71. Condition Start

An interval condition should identify when it became applicable where known.

---

### 72. Condition End

An interval condition should identify when it ceased to apply where known.

---

### 73. Open-Ended Condition

A condition may remain active until explicitly replaced or invalidated.

---

### 74. Condition Transition

Conditions may transition as the target system changes.

---

### 75. Condition Transition Example

~~~text
E0 Nominal
    |
    v
E1 Perturbed
    |
    v
E2 Degraded
    |
    v
E3 Critical
    |
    v
E4 Extreme
~~~

This is a possible progression, not a mandatory state machine.

---

### 76. Reverse Transition

A system may also recover:

~~~text
E3 Critical
    |
    v
E2 Degraded
    |
    v
E1 Perturbed
    |
    v
E0 Nominal
~~~

---

### 77. Condition Transition Rules

Transitions should be based on explicit:

- thresholds;
- events;
- state changes;
- rules;
- model outputs.

---

### 78. Condition Hysteresis

Where threshold oscillation is possible, hysteresis may prevent unstable condition switching.

---

### 79. Condition Stability

A condition should not oscillate rapidly merely because measurements fluctuate around a boundary unless such behavior is genuinely representative.

---

### 80. Condition Boundary

Condition boundaries should be defined where classification changes have operational significance.

---

### 81. Threshold-Based Condition

A condition may be determined from one or more threshold values.

---

### 82. Multi-Variable Condition

A condition may depend on multiple variables.

Example:

~~~text
Condition =
    Low Water
    AND
    High Demand
    AND
    Reduced Pump Capacity
~~~

---

### 83. Rule-Based Condition

Rules may classify conditions using logical relationships among observations and states.

---

### 84. Model-Based Condition

A model may infer an operating condition from observed behavior.

---

### 85. AI-Assisted Condition Classification

AI may assist in identifying or classifying conditions.

---

### 86. AI Classification Boundary

AI-generated classifications should preserve:

- evidence;
- confidence;
- model identity;
- decision rule.

---

### 87. AI Does Not Redefine Condition Semantics

AI may assist classification but must not silently redefine E0–E4 or other approved condition classes.

---

### 88. QAI-Assisted Condition Classification

QAI may be experimentally evaluated for:

- anomaly classification;
- state classification;
- condition prediction;
- condition transition detection.

---

### 89. QAI Condition Boundary

QAI condition classification remains a computational capability.

The authoritative condition semantics remain defined by the Conditions architecture.

---

### 90. Condition Prediction

A future condition may be predicted before it occurs.

Predicted conditions should be distinguished from observed conditions.

---

### 91. Predicted Condition

A predicted condition should identify:

- prediction time;
- expected condition;
- confidence;
- prediction horizon.

---

### 92. Forecast Condition

Environmental forecasts may contribute to future condition definitions.

---

### 93. Forecast Uncertainty

Forecast uncertainty should remain visible when it affects condition classification.

---

### 94. Condition Scenario

A scenario may deliberately specify a condition.

Example:

> Evaluate irrigation control under E2 reduced-water availability.

---

### 95. Scenario-Condition Relationship

A scenario should reference the condition under which it is intended to execute.

---

### 96. Multiple Conditions

A scenario may combine multiple condition dimensions.

Example:

- E1 weather perturbation;
- E2 water degradation;
- normal computational resources.

---

### 97. Condition Vector

A multidimensional condition vector may be useful.

~~~text
Operating Condition
       |
       +--> System State
       +--> Environment
       +--> Resource State
       +--> Communication State
       +--> Sensor State
       +--> Actuator State
       +--> Control Mode
       +--> Fault State
~~~

---

### 98. Condition Dimension

Each dimension may have its own state while contributing to an overall operating condition.

---

### 99. Environment Condition

Environmental condition may include:

- weather;
- temperature;
- humidity;
- rainfall;
- soil;
- water availability.

---

### 100. Resource Condition

Resource condition may include:

- compute;
- energy;
- network;
- storage;
- water;
- budget;
- time.

---

### 101. Communication Condition

Communication condition may include:

- available;
- delayed;
- degraded;
- interrupted;
- restored.

---

### 102. Sensor Condition

Sensor condition may include:

- nominal;
- noisy;
- biased;
- intermittent;
- unavailable.

---

### 103. Actuator Condition

Actuator condition may include:

- nominal;
- constrained;
- degraded;
- failed;
- recovering.

---

### 104. Controller Condition

Controller condition may include:

- normal;
- constrained;
- fallback;
- unavailable;
- recovering.

---

### 105. Fault Condition

Fault condition identifies relevant fault circumstances.

It should remain distinguishable from general operating condition.

---

### 106. Condition and Fault

A fault may cause a condition transition, but a condition does not necessarily imply a fault.

---

### 107. Condition and Degradation

Degradation is one possible condition class.

It should not automatically be interpreted as a component fault.

---

### 108. Condition and Resource Stress

Resource stress may create a degraded or critical operating condition without a physical asset failure.

---

### 109. Condition and Human Intervention

Human intervention may change the operating condition.

---

### 110. Human-Driven Condition Transition

Examples include:

- manual override;
- emergency shutdown;
- maintenance mode;
- supervised recovery.

---

### 111. Condition and Operating Mode

Operating mode may contribute to condition classification.

Examples include:

- automatic;
- supervised;
- manual;
- maintenance;
- emergency;
- fallback.

---

### 112. Condition and Desired State

Desired state identifies what the system should achieve.

Condition describes the circumstances under which it is operating.

---

### 113. Condition and Deviation

Deviation between current and desired state may contribute to condition classification.

---

### 114. Condition-Control Relationship

~~~text
Condition
    |
    v
Current State
    |
    v
Deviation from Desired State
    |
    v
Control Decision
    |
    v
Action
    |
    v
New Condition / State
~~~

---

### 115. Condition Feedback

Closed-loop systems may continuously update their condition classification from feedback.

---

### 116. Condition in Open Loop

Open-loop experiments may hold conditions fixed while evaluating system response.

---

### 117. Condition in Closed Loop

Closed-loop experiments may allow conditions to evolve in response to system behavior.

---

### 118. Condition Transition in Closed Loop

Condition transitions should remain observable and traceable during closed-loop execution.

---

### 119. Condition Reproducibility

Controlled conditions should be reproducible where the experiment requires repeatability.

---

### 120. Part 1 Closure

Part 1 establishes the foundational Conditions architecture.

The principal conclusions are:

1. Conditions define the circumstances under which Phase 2 systems operate or are evaluated.
2. Conditions are a first-class architectural concept.
3. Every condition should have a logical identity.
4. Conditions are distinct from scenarios.
5. Conditions are distinct from configuration.
6. Conditions are distinct from entity state.
7. Conditions are distinct from fidelity.
8. Conditions are distinct from Structural Integrity.
9. Conditions are distinct from Calibration.
10. Conditions do not own simulation execution.
11. Conditions do not determine QAI advantage.
12. Conditions are purpose-specific.
13. Phase 2 establishes E0 through E4 as primary operating condition classes.
14. E0 represents nominal operation.
15. E1 represents controlled perturbation.
16. E2 represents degraded operation.
17. E3 represents critical operation.
18. E4 represents catastrophic or extreme operation.
19. Condition class describes the target operating state, not emulator or model quality.
20. Not every system requires every condition class.
21. Condition applicability must remain explicit.
22. Conditions may be defined hierarchically from component to farm or system level.
23. Higher-level conditions should preserve their lower-level evidence.
24. Condition conflicts require explicit resolution.
25. Observed, inferred, simulated, emulated and planned conditions must remain distinguishable.
26. Condition provenance is essential.
27. Inferred conditions may require confidence and uncertainty.
28. Time-sensitive conditions require freshness information.
29. Freshness and validity are distinct.
30. Conditions may transition as system circumstances change.
31. Condition transitions should be based on explicit rules, thresholds, events or model outputs.
32. Hysteresis may be used where threshold oscillation would create unstable classification.
33. Conditions may depend on multiple variables.
34. Condition vectors can represent multiple simultaneous operating dimensions.
35. Environmental, resource, communication, sensing, actuator and controller states may contribute to conditions.
36. A fault may cause a condition transition but does not define all conditions.
37. Degraded operation does not necessarily imply physical failure.
38. Resource stress can create meaningful operating conditions.
39. Human intervention can change operating conditions.
40. Desired state and operating condition remain separate concepts.
41. Conditions can participate in both open-loop and closed-loop experiments.
42. Closed-loop condition transitions must remain observable and traceable.
43. Controlled conditions should be reproducible where required.
44. AI and QAI may assist condition classification without redefining condition semantics.

The governing principle is:

> **Define the operating circumstances explicitly, classify them consistently, preserve their evidence and uncertainty, and make every downstream experiment or decision aware of the conditions under which it operates.**

**PART 1 STATUS: COMPLETE — CONDITIONS PURPOSE, ARCHITECTURAL POSITION, E0–E4 OPERATING CONDITION MODEL, CONDITION DIMENSIONS AND CPS RELATIONSHIP BASELINE**
---

# Phase 2 — Conditions

## README

### Part 2 — Condition Structure, Dimensions and Classification Semantics

### 121. Purpose of Part 2

Part 2 defines the internal structure of an Operating Condition and establishes how condition dimensions are represented consistently across the Phase 2 architecture.

---

### 122. Condition Structure

A logical condition should contain, at minimum:

- identity;
- classification;
- scope;
- dimensions;
- evidence;
- validity;
- provenance.

---

### 123. Condition Identity

The condition identity uniquely identifies the condition definition or condition instance.

---

### 124. Condition Definition Identity

A condition definition identifies the reusable semantic definition.

Example:

> E2 — Reduced Water Availability.

---

### 125. Condition Instance Identity

A condition instance identifies a particular occurrence of that condition.

Example:

> Field A — reduced water availability — 14:00–16:00.

---

### 126. Definition and Instance Separation

~~~text
Condition Definition
        |
        +--> reusable semantic meaning
        |
        v
Condition Instance
        |
        +--> occurrence in a specific context and time
~~~

---

### 127. Condition Type

A condition type defines the semantic category of a condition.

Examples:

- operating;
- environmental;
- resource;
- communication;
- sensor;
- actuator;
- controller;
- fault;
- safety.

---

### 128. Condition Class

Condition class provides the normalized operational classification:

- E0;
- E1;
- E2;
- E3;
- E4.

---

### 129. Condition Type and Class

Type and class should not be conflated.

For example:

> Communication condition = degraded
> Overall operating condition = E2.

---

### 130. Condition Scope

The condition scope identifies the entities to which the condition applies.

---

### 131. Scope Examples

Scope may refer to:

- one sensor;
- one pump;
- one irrigation zone;
- one field;
- one farm;
- the complete Digital Farm environment.

---

### 132. Scope Reference

The condition should reference authoritative asset or system identities rather than duplicating asset definitions.

---

### 133. Spatial Scope

Where relevant, the condition should identify spatial extent.

Examples:

- field;
- zone;
- greenhouse;
- irrigation segment;
- farm region.

---

### 134. Temporal Scope

A condition may be associated with:

- an instant;
- an interval;
- a recurring period;
- an execution window.

---

### 135. Environmental Dimension

Environmental conditions represent external circumstances affecting the target.

---

### 136. Environmental Variables

Examples include:

- temperature;
- rainfall;
- humidity;
- wind;
- solar exposure;
- soil moisture;
- water availability.

---

### 137. Environmental Aggregation

Multiple environmental variables may jointly determine a condition.

---

### 138. Operational Dimension

The operational dimension describes how the target is currently operating.

Examples:

- normal;
- reduced capacity;
- maintenance;
- emergency;
- fallback.

---

### 139. Resource Dimension

The resource dimension describes relevant resource availability.

---

### 140. Resource Examples

Resources may include:

- compute;
- storage;
- network;
- energy;
- water;
- time;
- budget;
- quantum capacity.

---

### 141. Computational Resource Condition

Computational conditions may identify:

- available compute;
- queue state;
- execution capacity;
- latency;
- accelerator availability.

---

### 142. Quantum Resource Condition

Where applicable, quantum conditions may identify:

- QPU availability;
- queue delay;
- shot capacity;
- fidelity constraints;
- execution budget.

---

### 143. Network Dimension

Network condition describes communication availability and quality.

---

### 144. Network Variables

Examples include:

- connectivity;
- latency;
- throughput;
- packet loss;
- jitter;
- availability.

---

### 145. Sensing Dimension

Sensing condition describes the quality and availability of observations.

---

### 146. Sensor Variables

Examples include:

- availability;
- accuracy;
- noise;
- bias;
- sampling rate;
- freshness.

---

### 147. Actuation Dimension

Actuation condition describes the ability of actuators to execute commanded actions.

---

### 148. Actuator Variables

Examples include:

- availability;
- capacity;
- response time;
- operating limits;
- degradation.

---

### 149. Control Dimension

Control condition describes the current control capability.

Examples include:

- automatic;
- supervised;
- manual;
- fallback;
- emergency.

---

### 150. Data Condition

Data condition describes whether required data is suitable for execution.

---

### 151. Data Variables

Examples include:

- availability;
- completeness;
- freshness;
- validity;
- provenance;
- confidence.

---

### 152. Model Condition

A model may itself have relevant applicability conditions.

Examples:

- valid parameter range;
- supported operating envelope;
- calibration version;
- model maturity.

---

### 153. Model Applicability

A condition should not be used to imply model validity automatically.

Model applicability must be separately established.

---

### 154. Safety Dimension

Safety conditions identify circumstances requiring special operating constraints or intervention.

---

### 155. Safety Boundary

Safety-related condition thresholds should be explicitly represented and governed.

---

### 156. Human Oversight Dimension

A condition may specify whether human intervention is:

- unnecessary;
- recommended;
- required;
- mandatory before action.

---

### 157. Governance Dimension

Governance conditions may include:

- policy restrictions;
- approval requirements;
- compliance constraints;
- data sovereignty limitations.

---

### 158. Security Dimension

Security conditions may include:

- normal;
- elevated risk;
- restricted operation;
- isolated operation;
- recovery.

---

### 159. Condition Dimension Independence

Each dimension should retain its own semantics even when contributing to an overall classification.

---

### 160. Condition Vector

A condition can therefore be represented conceptually as:

~~~text
C =
{
  operational,
  environmental,
  resource,
  communication,
  sensing,
  actuation,
  control,
  data,
  safety,
  governance,
  security
}
~~~

---

### 161. Overall Classification

An overall E0–E4 classification may be derived from the condition vector.

---

### 162. Classification Rule

The classification rule should be explicit.

It may use:

- deterministic rules;
- thresholds;
- state transitions;
- expert rules;
- validated models.

---

### 163. Conservative Classification

Where multiple dimensions indicate different severities, the classification policy may conservatively select the more restrictive condition where safety or operational continuity requires it.

---

### 164. No Hidden Aggregation

The system should not silently aggregate dimensions into E0–E4 without an identifiable rule.

---

### 165. Classification Evidence

Each derived classification should preserve the evidence supporting it.

---

### 166. Classification Explanation

Where practical, the system should be able to explain why a condition was classified as E0–E4.

---

### 167. Condition Threshold

A threshold defines a boundary between condition states.

---

### 168. Single Threshold

A simple condition may use one threshold.

Example:

> Soil moisture below threshold → E1.

---

### 169. Multiple Thresholds

More complex conditions may use multiple thresholds.

Example:

~~~text
Normal       >= A
Perturbed    A > x >= B
Degraded     B > x >= C
Critical     C > x >= D
Extreme      x < D
~~~

---

### 170. Threshold Units

Thresholds should include explicit units where applicable.

---

### 171. Threshold Context

Thresholds should identify the context in which they are valid.

---

### 172. Threshold Provenance

Thresholds should have a source or justification.

Possible sources include:

- measured evidence;
- domain knowledge;
- validated model;
- engineering specification;
- experiment.

---

### 173. Threshold Versioning

Threshold changes should be versioned.

---

### 174. Threshold Change Impact

Changing a condition threshold may affect:

- historical classification;
- scenario results;
- workflow behavior;
- QAI comparison;
- acceptance criteria.

---

### 175. Rule-Based Classification

Rules may combine multiple observations.

---

### 176. Logical Operators

Rules may use:

- AND;
- OR;
- NOT;
- weighted conditions;
- precedence.

---

### 177. Rule Example

~~~text
IF
    water_availability < threshold
AND
    irrigation_demand > threshold
THEN
    operating_condition = E2
~~~

---

### 178. Rule Version

Classification rules should be versioned independently from condition instances.

---

### 179. Model-Based Classification

A validated model may classify a condition from multiple variables.

---

### 180. Model Classification Evidence

Model-based classification should retain:

- model identity;
- model version;
- inputs;
- output;
- confidence;
- execution context.

---

### 181. AI-Based Classification

AI may identify patterns that indicate emerging operating conditions.

---

### 182. AI Classification Status

AI classifications should be marked according to their operational status.

For example:

- advisory;
- candidate;
- validated;
- operational.

---

### 183. AI Human Review

Where required by safety or governance, AI-generated critical classifications should require human review before consequential action.

---

### 184. QAI Classification Experiment

QAI condition classification may be evaluated as an experiment.

---

### 185. Comparative Classification

Condition classification approaches may be compared across:

- classical;
- quantum-inspired;
- hybrid QAI;
- quantum.

---

### 186. Classification Benchmark

The benchmark should evaluate:

- accuracy;
- latency;
- robustness;
- resource use;
- explainability where required.

---

### 187. Condition Detection

Condition detection identifies when a condition becomes applicable.

---

### 188. Condition Recognition

Recognition identifies the current condition from available evidence.

---

### 189. Condition Prediction

Prediction estimates a future condition.

---

### 190. Detection, Recognition and Prediction

These should remain distinct operations.

~~~text
Evidence
   |
   +--> Detection     = has it occurred?
   |
   +--> Recognition   = what is it?
   |
   +--> Prediction    = what may occur?
~~~

---

### 191. Condition Entry

A condition entry event marks transition into a condition.

---

### 192. Condition Exit

A condition exit event marks transition out of a condition.

---

### 193. Condition Persistence

Some conditions require persistence before classification changes.

---

### 194. Persistence Rule

A threshold crossing may need to remain present for a defined duration before triggering a transition.

---

### 195. Debounce

Debounce logic may be used for noisy discrete condition signals.

---

### 196. Hysteresis

Hysteresis may use different entry and exit thresholds.

---

### 197. Hysteresis Example

~~~text
Enter E2 when x < A
Exit E2 when x > B

where B > A
~~~

---

### 198. Condition Transition Event

A transition event should record:

- previous condition;
- new condition;
- trigger;
- timestamp;
- evidence.

---

### 199. Transition Provenance

Condition transitions should remain traceable to their originating observations, rules or model outputs.

---

### 200. Condition History

Condition history should preserve relevant transitions.

---

### 201. Historical Reconstruction

Historical condition states should be reconstructable when required for:

- debugging;
- validation;
- audit;
- experiment analysis.

---

### 202. Condition Snapshot

A snapshot captures the condition vector at a particular time.

---

### 203. Condition Branch

Simulation may create a condition branch representing an alternative future.

---

### 204. Branch Independence

A simulated condition branch should not silently modify the authoritative baseline condition.

---

### 205. Experimental Condition

Experimental conditions should be explicitly marked as such.

---

### 206. Synthetic Condition

A synthetic condition is intentionally generated rather than directly observed.

---

### 207. Synthetic Condition Use

Synthetic conditions may support:

- stress testing;
- edge cases;
- rare-event studies;
- resilience experiments.

---

### 208. Synthetic Condition Limitation

Synthetic conditions should not automatically be treated as evidence of real-world frequency or behavior.

---

### 209. Condition Envelope

A condition envelope defines the supported range of operating conditions.

---

### 210. Valid Condition Envelope

A model or Emulator should declare the condition envelope within which its behavior is considered valid.

---

### 211. Outside-Envelope Condition

A condition outside the declared validity envelope should be explicitly identified.

---

### 212. Extrapolation

Execution outside a validated envelope may constitute extrapolation.

---

### 213. Extrapolation Status

Extrapolated results should not be represented as equivalent to validated in-envelope results.

---

### 214. Condition Coverage

Testing should measure which condition classes and dimensions have been exercised.

---

### 215. Condition Coverage Matrix

~~~text
                 E0   E1   E2   E3   E4
Emulator         X    X    X
Simulator        X    X    X    X
CPS              X    X    X
QAI              X    X    X    X
Fidelity         X    X    X
~~~

The actual supported coverage should be defined per subsystem.

---

### 216. Minimum Pilot Coverage

The Pilot should prioritize:

- E0 nominal;
- E1 controlled perturbation;
- at least one meaningful E2 degraded condition.

---

### 217. Critical and Extreme Pilot Use

E3 and E4 may initially remain controlled experimental extensions unless the Pilot use case requires them.

---

### 218. Condition Coverage and Value

Condition coverage should prioritize conditions that materially affect the business or engineering decision being evaluated.

---

### 219. Agriculture Condition Example

For intelligent irrigation:

~~~text
E0
Normal soil moisture
+ normal water availability
+ normal pump operation

E1
Changed weather or irrigation demand

E2
Reduced water availability
or reduced pump capacity

E3
Critical water shortage
or critical irrigation failure

E4
Extreme system/environmental event
~~~

---

### 220. Condition and Irrigation Demand

Irrigation demand may be influenced by:

- crop state;
- soil moisture;
- weather;
- evapotranspiration;
- water availability.

---

### 221. Condition and Pump State

Pump state may contribute:

- capacity;
- pressure;
- availability;
- fault state.

---

### 222. Condition and Sensor State

Sensor condition may influence confidence in the inferred operating condition.

---

### 223. Condition and Actuator State

Actuator condition may constrain the feasible control response.

---

### 224. Condition and Communication

Communication degradation may affect the timeliness of:

- observations;
- decisions;
- commands;
- feedback.

---

### 225. Condition and QAI Resource State

QAI execution resources may themselves form part of the computational operating context.

---

### 226. Condition and Advantage Gate

The Advantage Gate may evaluate QAI under the actual declared condition.

---

### 227. Condition-Specific QAI Evaluation

A QAI method may perform well under E0 but poorly under E2.

Therefore, QAI evaluation should preserve condition context.

---

### 228. Comparative Results

Comparative results should identify the condition under which each method was evaluated.

---

### 229. Condition-Stratified Results

Results may be grouped by:

- condition class;
- condition dimension;
- scenario;
- execution mode.

---

### 230. Condition and Classical Baseline

The classical baseline must be evaluated under comparable conditions where meaningful comparison is intended.

---

### 231. Condition-Controlled Comparison

~~~text
Same Problem
     |
     +--> Same Condition
     |
     +--> Classical
     +--> Quantum-Inspired
     +--> Hybrid QAI
     +--> Quantum
     |
     v
Comparable Results
~~~

---

### 232. Condition and Fair Benchmarking

Condition differences should not be allowed to create misleading computational comparisons.

---

### 233. Condition and Simulation

Simulation may deliberately vary conditions to evaluate sensitivity and robustness.

---

### 234. Condition and Emulation

Emulation should reproduce the target behavior under the declared condition.

---

### 235. Condition and Fidelity

Fidelity assessment should report the conditions under which fidelity was established.

---

### 236. Condition-Specific Fidelity

A representation may be faithful under E0 but insufficiently faithful under E3.

---

### 237. Condition Envelope and Fidelity

The declared fidelity envelope should therefore include relevant operating conditions.

---

### 238. Condition and Calibration

Calibration parameters should be evaluated for the conditions in which they are intended to apply.

---

### 239. Condition-Dependent Parameters

Some parameters may legitimately vary by condition.

---

### 240. Condition-Dependent Model

A model may use different parameter sets or behavior branches for different operating conditions.

---

### 241. Condition and Model Selection

Condition classification may determine which validated model representation is applicable.

---

### 242. Model Selection Boundary

Condition-based model selection should remain explicit and traceable.

---

### 243. Condition and Workflow

Workflows may branch according to operating condition.

---

### 244. Conditional Workflow

~~~text
Observe Condition
       |
       +--> E0 --> Normal Workflow
       |
       +--> E1 --> Perturbation Workflow
       |
       +--> E2 --> Degradation Workflow
       |
       +--> E3 --> Critical Response
       |
       +--> E4 --> Emergency / Extreme Response
~~~

---

### 245. Condition and CPS Automata

CPS automata may use condition classifications as transition guards.

---

### 246. Condition Guard

A condition guard determines whether a state transition is permitted.

---

### 247. Guard Example

~~~text
IF condition = E2
THEN
    restrict irrigation policy
    AND
    evaluate fallback
~~~

---

### 248. Condition and Control Policy

Control policies may differ according to operating condition.

---

### 249. Condition-Aware Control

A condition-aware controller should explicitly identify which conditions influence its decision.

---

### 250. Condition and Desired State

The same desired state may require different control actions under different conditions.

---

### 251. Example

~~~text
Desired soil moisture = target

E0 --> normal irrigation
E1 --> adjusted irrigation
E2 --> water-constrained policy
E3 --> critical conservation policy
E4 --> emergency response
~~~

---

### 252. Condition and Feedback

Feedback may cause a condition to change after a control action.

---

### 253. Closed-Loop Condition Cycle

~~~text
Condition
   |
   v
Observation
   |
   v
QAI / Classical Decision
   |
   v
Control Action
   |
   v
Emulator / CPS
   |
   v
New State
   |
   v
New Condition
~~~

---

### 254. Condition Trace

A closed-loop experiment should preserve the sequence of condition transitions.

---

### 255. Condition Transition Integrity

Condition transitions should be checked for:

- valid predecessor;
- valid successor;
- valid trigger;
- valid timestamp;
- valid evidence.

---

### 256. Impossible Transition

An impossible transition should be detected rather than silently accepted.

---

### 257. Condition Transition Policy

Allowed transitions should be defined where operational correctness requires them.

---

### 258. Transition Matrix

A condition transition matrix may specify:

~~~text
        E0 E1 E2 E3 E4
E0      Y  Y  Y  N  N
E1      Y  Y  Y  Y  N
E2      Y  Y  Y  Y  Y
E3      Y  Y  Y  Y  Y
E4      Y  Y  Y  Y  Y
~~~

This is illustrative only; actual permitted transitions depend on the target system.

---

### 259. No Universal Transition Matrix

The architecture does not impose one universal transition matrix on all agricultural systems.

---

### 260. Condition Recovery

Recovery should be represented as a transition rather than assumed.

---

### 261. Recovery Evidence

Recovery classification should be supported by evidence that the relevant condition has actually improved.

---

### 262. Condition Escalation

Escalation occurs when operating circumstances move toward a more severe class.

---

### 263. Condition De-Escalation

De-escalation occurs when operating circumstances return toward less severe classes.

---

### 264. Condition Escalation Trace

Escalation should preserve:

- trigger;
- evidence;
- previous class;
- new class;
- action taken.

---

### 265. Condition De-Escalation Trace

Recovery should preserve equivalent traceability.

---

### 266. Condition Ownership

The Conditions subsystem owns condition semantics and classification contracts.

---

### 267. Condition Ownership Boundary

It does not own:

- asset definitions;
- emulator implementation;
- simulator implementation;
- CPS implementation;
- QAI algorithm implementation.

---

### 268. Reuse of Phase 1 Assets

Conditions should reference Phase 1 asset, relationship, mapping and state artifacts rather than recreate them.

---

### 269. Reuse of Phase 1 State

Current state should be obtained through the authoritative state model.

---

### 270. Reuse of Phase 1 Relationships

Condition scope should use authoritative relationships where relationships affect condition interpretation.

---

### 271. Part 2 Closure

Part 2 establishes the internal condition structure and dimensional classification model.

The principal conclusions are:

1. Condition definitions and condition instances are distinct.
2. Condition identity must remain explicit.
3. Condition type and condition class are distinct.
4. Conditions may operate at multiple scopes and granularities.
5. Environmental, operational, resource, communication, sensing, actuation, control and data dimensions may contribute to classification.
6. Safety, governance and security may also contribute where relevant.
7. Dimension semantics must remain independently visible.
8. Overall E0–E4 classification must have an explicit derivation rule.
9. Thresholds require units, context, provenance and versioning.
10. Rule-based and model-based classification must remain traceable.
11. AI and QAI may assist classification without redefining condition semantics.
12. Detection, recognition and prediction are different operations.
13. Entry and exit events should be traceable.
14. Persistence, debounce and hysteresis may stabilize classification.
15. Condition history should preserve important transitions.
16. Simulation branches must not silently modify authoritative baseline conditions.
17. Synthetic and experimental conditions must remain explicitly identified.
18. Supported condition envelopes must be declared.
19. Out-of-envelope execution must be visible as extrapolation where applicable.
20. Condition coverage should be measured across relevant Phase 2 subsystems.
21. Pilot coverage should prioritize E0, E1 and meaningful E2 cases.
22. E3 and E4 can remain controlled extensions where not required by the Pilot.
23. QAI and classical comparisons must preserve condition context.
24. Emulator fidelity must be evaluated against declared conditions.
25. Simulation may intentionally vary conditions.
26. Calibration may be condition-dependent.
27. Workflows and CPS automata may use conditions as explicit guards.
28. Desired state remains distinct from operating condition.
29. Closed-loop execution must preserve condition transitions.
30. Impossible or invalid transitions should be detected.
31. Recovery must be evidenced rather than assumed.
32. Conditions own classification semantics, not implementation of the systems they contextualize.
33. Phase 1 authoritative artifacts must be reused rather than duplicated.

The governing principle is:

> **Represent operating conditions as explicit, multidimensional and traceable context so that Emulation, Simulation, CPS, Fidelity and QAI evaluation can be performed under clearly defined and comparable circumstances.**

**PART 2 STATUS: COMPLETE — CONDITION STRUCTURE, DIMENSION MODEL, CLASSIFICATION, THRESHOLDS, TRANSITIONS AND PHASE 1 INTEGRATION BASELINE**
---
### 272. Purpose of Part 3

Part 3 defines the lifecycle and execution semantics of operating conditions from creation through activation, transition, recovery, archival and retirement.

---

### 273. Condition Lifecycle

A condition instance should have an explicit lifecycle.

~~~text
Defined
   |
   v
Detected / Created
   |
   v
Classified
   |
   v
Validated
   |
   v
Active
   |
   +--> Updated / Transitioned
   |
   v
Recovered / Resolved
   |
   v
Archived
~~~

---

### 274. Condition Definition Lifecycle

A reusable condition definition has a separate lifecycle from its runtime instances.

---

### 275. Definition States

A condition definition may progress through:

- draft;
- reviewed;
- approved;
- active;
- deprecated;
- retired.

---

### 276. Runtime Condition States

A condition instance may use states such as:

- detected;
- candidate;
- confirmed;
- active;
- transitioning;
- resolved;
- expired;
- invalidated.

---

### 277. Draft Condition

A draft condition is being defined and should not automatically influence operational execution.

---

### 278. Candidate Condition

A candidate condition has been detected or inferred but has not yet satisfied the required confirmation criteria.

---

### 279. Confirmed Condition

A confirmed condition has sufficient evidence to be accepted under the applicable classification policy.

---

### 280. Active Condition

An active condition currently applies to its declared scope.

---

### 281. Transitioning Condition

A transitioning condition represents a condition whose classification is changing or whose supporting evidence is currently being evaluated.

---

### 282. Resolved Condition

A resolved condition is no longer active because the relevant circumstances have returned to an acceptable state or the condition has otherwise ended.

---

### 283. Expired Condition

A condition may expire when its declared temporal validity ends.

---

### 284. Invalidated Condition

A condition may be invalidated when its evidence, scope, model or classification is found to be unreliable.

---

### 285. Condition Creation

A condition instance may be created from:

- observation;
- event;
- rule;
- model;
- scenario;
- experiment;
- operator action.

---

### 286. Condition Detection

Detection identifies evidence that may indicate a new condition.

---

### 287. Condition Classification

Classification determines the applicable condition type and class.

---

### 288. Condition Validation

Validation checks whether the classification satisfies the applicable rules and evidence requirements.

---

### 289. Condition Activation

Activation makes the condition operationally applicable to its declared scope.

---

### 290. Condition Update

An active condition may be updated when new evidence changes its dimensions without necessarily changing its class.

---

### 291. Condition Transition

A condition transition occurs when its classification or operational meaning changes.

---

### 292. Condition Resolution

Resolution ends the active applicability of a condition.

---

### 293. Condition Archival

Historical condition instances may be archived while preserving their evidence and lineage.

---

### 294. Condition Retirement

A condition definition may be retired when it is no longer supported or required.

---

### 295. Lifecycle Authority

The Conditions subsystem owns the lifecycle semantics.

Execution subsystems consume those semantics.

---

### 296. Lifecycle Separation

~~~text
Condition Lifecycle
        |
        +--> defines applicability
        |
        v
Emulator / Simulator / CPS
        |
        +--> execute according to applicable condition
~~~

---

### 297. Condition Event

Condition lifecycle changes should produce identifiable events.

---

### 298. Condition Event Types

Examples include:

- condition_detected;
- condition_classified;
- condition_confirmed;
- condition_activated;
- condition_updated;
- condition_escalated;
- condition_deescalated;
- condition_resolved;
- condition_invalidated.

---

### 299. Condition Event Identity

Each significant event should be uniquely identifiable.

---

### 300. Condition Event Provenance

The event should preserve the source that caused the lifecycle transition.

---

### 301. Condition Event Ordering

Where execution depends on ordering, condition events should have an unambiguous temporal or logical ordering.

---

### 302. Event Time

Event time represents when the underlying event occurred.

---

### 303. Processing Time

Processing time represents when the system processed the event.

---

### 304. Event Time Versus Processing Time

These timestamps should remain distinct where latency matters.

---

### 305. Condition Latency

Condition detection latency may affect control decisions.

---

### 306. Detection Latency Measurement

The architecture should support measurement of:

~~~text
Event Occurrence
      |
      v
Observation
      |
      v
Detection
      |
      v
Classification
      |
      v
Decision
~~~

---

### 307. Condition Freshness

Freshness should be evaluated relative to the decision being made.

---

### 308. Freshness Threshold

Different condition dimensions may require different freshness thresholds.

---

### 309. Stale Evidence

Stale evidence should not automatically trigger a new condition classification without an applicable policy.

---

### 310. Missing Evidence

Missing evidence should be represented explicitly rather than interpreted as nominal operation.

---

### 311. Unknown Condition

Where evidence is insufficient for reliable classification, the system may represent an unknown or indeterminate condition.

---

### 312. Unknown Is Not Nominal

Unknown should never silently become E0.

---

### 313. Unknown Condition Handling

The handling policy may include:

- request additional data;
- use a fallback model;
- hold previous validated condition;
- require human review;
- suspend automated action.

---

### 314. Confidence

Condition confidence may accompany inferred classifications.

---

### 315. Confidence Threshold

A minimum confidence threshold may be required before an inferred condition becomes operational.

---

### 316. Confidence Is Not Validity

High confidence does not by itself establish physical validity.

---

### 317. Evidence Quality

Condition classification should account for evidence quality where material.

---

### 318. Evidence Sources

Possible sources include:

- sensors;
- emulators;
- simulations;
- external data;
- human observations;
- validated models.

---

### 319. Evidence Fusion

Multiple evidence sources may be combined.

---

### 320. Evidence Conflict

Conflicting evidence should be represented and resolved according to explicit policy.

---

### 321. Evidence Authority

Where sources have different authority, the authority hierarchy should be explicit.

---

### 322. Physical Evidence

Physical observations may provide authoritative evidence for real-world condition assessment.

---

### 323. Emulated Evidence

Emulated observations represent expected target behavior rather than direct physical observation.

---

### 324. Simulated Evidence

Simulated evidence represents experimental outcomes under intentionally defined assumptions.

---

### 325. Evidence Type Preservation

Physical, emulated and simulated evidence should not be silently treated as interchangeable.

---

### 326. Condition Provenance Chain

~~~text
Source Evidence
      |
      v
Observation / Input
      |
      v
Classification Method
      |
      v
Condition Instance
      |
      v
Decision / Experiment
~~~

---

### 327. Provenance Completeness

The provenance chain should be sufficiently complete to reconstruct why the condition was established.

---

### 328. Condition Snapshot

A condition snapshot represents the complete relevant condition vector at a defined point in time.

---

### 329. Snapshot Purpose

Snapshots support:

- reproducibility;
- debugging;
- replay;
- comparison;
- regression testing.

---

### 330. Snapshot Identity

Snapshots should have unique identities and timestamps.

---

### 331. Condition Replay

A historical condition sequence may be replayed in an Emulator or Simulator where the required evidence and models are available.

---

### 332. Replay Boundary

Replay reproduces the declared condition sequence; it does not guarantee identical downstream execution unless the complete execution context is also reproduced.

---

### 333. Condition Branching

Simulation may branch from a baseline condition.

---

### 334. Baseline Condition

The baseline condition represents the authoritative starting condition for an experiment.

---

### 335. Experimental Branch

An experimental branch represents an alternative condition trajectory.

---

### 336. Branch Isolation

Experimental branches should remain isolated from the authoritative baseline.

---

### 337. Branch Identity

Each branch should have a unique identity and parent reference.

---

### 338. Branch Comparison

Branches may be compared for:

- performance;
- stability;
- resource use;
- resilience;
- value;
- QAI advantage.

---

### 339. Condition Transition Graph

Condition history may be represented as a graph.

~~~text
             E0
            /  \
           v    v
          E1    E2
           |     |
           v     v
          E2    E3
             \ /
              v
              E4
~~~

The actual graph depends on the target system.

---

### 340. Transition Graph Validity

The graph should reflect only transitions permitted by the applicable condition model.

---

### 341. Condition State Machine

Where condition transitions are operationally significant, a state-machine representation may be used.

---

### 342. Guard Conditions

Transitions may require explicit guards.

---

### 343. Guard Evidence

A transition guard should identify the evidence or state required for transition.

---

### 344. Guard Failure

If a transition guard is not satisfied, the transition should not silently occur.

---

### 345. Transition Priority

If multiple transitions become possible simultaneously, a priority or arbitration rule may be required.

---

### 346. Transition Conflict

Conflicting transition requests should be detected and resolved explicitly.

---

### 347. Transition Atomicity

Where required, a condition transition should be treated as an atomic logical operation.

---

### 348. Condition Consistency

At every execution boundary, the active condition should be internally consistent with its declared dimensions.

---

### 349. Cross-Dimension Consistency

For example:

~~~text
Overall = E0
BUT
Water Availability = E3
~~~

may be valid only if the classification policy explicitly permits that combination.

---

### 350. Classification Reconciliation

If dimensions disagree with the recorded overall class, reconciliation should be triggered.

---

### 351. Condition Reconciliation

Reconciliation may:

- recalculate classification;
- request additional evidence;
- flag inconsistency;
- require human review.

---

### 352. Condition Override

An authorized operator may override an inferred classification where governance permits.

---

### 353. Override Provenance

Overrides should record:

- authority;
- reason;
- time;
- previous classification;
- replacement classification.

---

### 354. Override Expiry

Temporary overrides should have explicit expiry conditions where appropriate.

---

### 355. Override Safety

Safety-critical overrides should follow applicable governance and approval rules.

---

### 356. Condition Lock

A condition may be intentionally held fixed during a controlled experiment.

---

### 357. Locked Condition

A locked condition should not change automatically during the experiment unless the experiment explicitly permits transitions.

---

### 358. Dynamic Condition

A dynamic condition is allowed to evolve during execution.

---

### 359. Static Condition

A static condition remains fixed for the declared execution interval.

---

### 360. Static Versus Dynamic

~~~text
Static Condition
    |
    +--> fixed experimental context

Dynamic Condition
    |
    +--> evolves with execution feedback
~~~

---

### 361. Condition Execution Mode

The condition model should identify whether conditions are:

- fixed;
- dynamically evaluated;
- externally driven;
- replayed;
- generated by simulation.

---

### 362. Emulator Condition Execution

An Emulator should reproduce the target behavior under the applicable condition.

---

### 363. Emulator Condition Boundary

The Emulator should not alter the semantic definition of the condition merely to obtain a preferred output.

---

### 364. Simulator Condition Execution

A Simulator may intentionally modify conditions to explore alternative outcomes.

---

### 365. Simulator Condition Boundary

Simulation changes should be explicit experimental inputs.

---

### 366. Emulator-Simulator Condition Relationship

~~~text
                Condition Definition
                        |
             +----------+----------+
             |                     |
             v                     v
          Emulator             Simulator
             |                     |
      reproduce target       explore variation
             |                     |
             +----------+----------+
                        |
                        v
                    QAI / CPS
~~~

---

### 367. Condition and Emulation Fidelity

Fidelity results should identify the condition under which the Emulator was assessed.

---

### 368. Condition and Simulation Validity

Simulation validity should identify the condition assumptions under which the simulation was performed.

---

### 369. Condition and Calibration

Calibration should identify the condition range over which calibrated parameters are applicable.

---

### 370. Condition and Model Validity

A model may be valid only for a subset of the condition space.

---

### 371. Condition-Model Compatibility

The execution environment should verify that the selected model supports the declared condition.

---

### 372. Unsupported Condition

An unsupported condition should prevent or appropriately constrain execution rather than silently extrapolate.

---

### 373. Controlled Extrapolation

Extrapolation may be permitted for research when explicitly declared.

---

### 374. Extrapolation Evidence

Extrapolated results should clearly identify their status.

---

### 375. Condition and QAI Pipeline

The QAI pipeline should receive the applicable condition context where it affects the computational problem.

---

### 376. Condition-Aware QAI Input

Condition context may influence:

- feature selection;
- constraints;
- objective functions;
- optimization bounds;
- algorithm selection.

---

### 377. Condition-Aware Algorithm Selection

The Advantage Gate may use condition information when selecting or comparing computational approaches.

---

### 378. Condition-Specific Resource Estimation

Resource requirements may change under different conditions.

---

### 379. Condition-Specific Complexity

A degraded or extreme condition may produce a more complex computational problem.

---

### 380. Condition and Classical Fallback

Fallback behavior may depend on condition severity.

---

### 381. Condition-Aware Fallback

~~~text
QAI Execution
     |
     +--> Available and Valid --> Continue
     |
     +--> Unavailable / Invalid
                  |
                  v
            Classical / HPC
                  |
                  v
             Safe Outcome
~~~

---

### 382. Condition and Three Paths

Conditions may independently affect:

- Computational Path;
- Sensing Path;
- Communication Path.

---

### 383. Computational Condition

Examples:

- compute constrained;
- accelerator unavailable;
- QPU unavailable;
- queue delay elevated.

---

### 384. Sensing Condition

Examples:

- sensor unavailable;
- increased noise;
- stale observation;
- reduced coverage.

---

### 385. Communication Condition

Examples:

- increased latency;
- reduced throughput;
- intermittent connectivity;
- complete interruption.

---

### 386. Path-Specific Condition

A path may be degraded while the other paths remain nominal.

---

### 387. Path Independence

Path-specific conditions should not automatically force the entire system into the same condition class unless the classification policy requires it.

---

### 388. Three-Path Condition Example

~~~text
Computational: E0
Sensing:       E2
Communication: E1

Overall condition:
derived by explicit classification policy
~~~

---

### 389. Condition and Open Loop

Open-loop testing may isolate one condition dimension while holding others constant.

---

### 390. Condition and Closed Loop

Closed-loop testing may allow condition dimensions to interact dynamically.

---

### 391. Controlled Isolation

Controlled isolation is useful for determining causality.

---

### 392. Combined Conditions

Combined conditions are useful for testing realistic system interactions.

---

### 393. Condition Interaction Matrix

~~~text
                    Environmental  Resource  Sensing  Network
Environmental            --           X         X         X
Resource                 X            --        X         X
Sensing                  X            X         --        X
Network                  X            X         X         --
~~~

---

### 394. Interaction Analysis

Condition interactions should be evaluated where combined effects materially change system behavior.

---

### 395. Condition Combinatorial Growth

The number of possible condition combinations may grow rapidly.

---

### 396. Condition Prioritization

Pilot testing should prioritize combinations with the highest:

- operational relevance;
- engineering risk;
- expected value;
- uncertainty.

---

### 397. Condition Test Matrix

The test matrix should identify:

- condition;
- scenario;
- subsystem;
- expected behavior;
- measured result.

---

### 398. Condition Coverage Goal

The goal is not to enumerate every theoretically possible condition.

The goal is to cover the conditions necessary to establish the intended decision.

---

### 399. Condition Risk

Condition risk should consider:

- likelihood;
- impact;
- uncertainty;
- detectability;
- recoverability.

---

### 400. Condition-Based Testing

Testing should intentionally exercise representative operating conditions.

---

### 401. Nominal Test

At least one E0 baseline should establish expected normal behavior.

---

### 402. Perturbation Test

At least one E1 case should establish response to controlled variation.

---

### 403. Degradation Test

At least one E2 case should establish behavior under meaningful degradation.

---

### 404. Critical Test

Where required, an E3 test should evaluate critical response.

---

### 405. Extreme Test

Where justified, an E4 test should evaluate extreme behavior under controlled conditions.

---

### 406. Condition Regression

Previously validated condition cases should be retained as regression cases.

---

### 407. Regression Condition Identity

Regression cases should preserve the original condition definition and relevant versions.

---

### 408. Condition Drift

The real-world meaning of a condition may change over time.

---

### 409. Condition Semantic Drift

Semantic drift occurs when the interpretation of a condition changes.

---

### 410. Condition Threshold Drift

Threshold drift occurs when validated boundaries become inappropriate.

---

### 411. Condition Distribution Drift

Distribution drift occurs when the frequency or distribution of conditions changes.

---

### 412. Condition Drift Monitoring

Where operationally required, condition distributions should be monitored.

---

### 413. Condition Revalidation

Material condition-definition changes should trigger revalidation.

---

### 414. Condition Versioning

Condition definitions, thresholds, rules and classification policies should be versioned.

---

### 415. Condition Instance Immutability

Historical condition instances should generally remain immutable after closure, except through explicit correction mechanisms.

---

### 416. Condition Correction

Corrections should preserve the original record and record the corrected interpretation.

---

### 417. Condition Audit Trail

Condition lifecycle changes should be auditable.

---

### 418. Condition Security

Condition data may reveal operational information and should therefore be protected according to applicable security requirements.

---

### 419. Condition Data Sovereignty

Where condition data contains sensitive operational or geographic information, applicable sovereignty constraints should be preserved.

---

### 420. Condition Access Control

Access may depend on:

- role;
- scope;
- tenant;
- farm;
- experiment;
- operational authority.

---

### 421. Condition Federation

Conditions may be exchanged across federated environments when authorized.

---

### 422. Federation Identity

Federated condition records should preserve source identity and authority.

---

### 423. Condition Translation

Different domains may use different condition vocabularies.

---

### 424. Condition Mapping

A mapping may translate local condition semantics into the common E0–E4 framework where appropriate.

---

### 425. Mapping Loss

A translation should not hide semantic information that cannot be represented in the target classification.

---

### 426. Condition Interoperability

Condition contracts should be technology-neutral and portable.

---

### 427. Condition Interface

The condition interface should support at least:

- query;
- evaluate;
- classify;
- subscribe;
- retrieve history.

---

### 428. Condition Query

Consumers should be able to query the current condition for an authorized scope.

---

### 429. Condition Evaluation

Consumers may request evaluation of supplied evidence against a condition definition.

---

### 430. Condition Subscription

Consumers may subscribe to condition transitions where supported.

---

### 431. Condition History Query

Authorized consumers should be able to retrieve condition history.

---

### 432. Condition Event Subscription

Event consumers may subscribe to:

- escalation;
- de-escalation;
- entry;
- exit;
- invalidation.

---

### 433. Condition Interface Independence

The logical contract should remain independent of the underlying transport or software technology.

---

### 434. Condition and Resource Management

Resource conditions may be supplied by the Resource Management subsystem.

---

### 435. Condition and Governance

Governance determines which condition transitions or actions require authorization.

---

### 436. Condition and Human-AI

Human-AI operating mode may change according to condition severity.

---

### 437. Human-AI Example

~~~text
E0 --> AI Assisted
E1 --> AI Assisted
E2 --> Supervised Automation
E3 --> Human Review
E4 --> Emergency Human-Controlled Response
~~~

This is an example policy, not a universal requirement.

---

### 438. Condition and Safety

Safety-critical conditions should have explicit response policies.

---

### 439. Condition Safety Escalation

A safety condition may require immediate escalation even when the overall operating condition has not yet reached E3.

---

### 440. Safety Override

Safety constraints take precedence over optimization objectives where applicable.

---

### 441. Condition and Value

Condition-specific outcomes may affect value measurements.

---

### 442. Condition and MVV

MVV evaluation should identify whether value was demonstrated under nominal or stressed conditions.

---

### 443. Condition and ROI

ROI estimates may differ materially across operating conditions.

---

### 444. Condition and Sustainability

Sustainability measures may need to include water, energy and resource conditions.

---

### 445. Condition and Tolerance

Condition-specific tolerances may be required where operational boundaries change with severity.

---

### 446. Condition and Acceptance

Acceptance criteria should identify which conditions must be demonstrated.

---

### 447. Pilot Acceptance

The Pilot should not claim broad operating-condition coverage if only nominal conditions have been demonstrated.

---

### 448. Evidence-Based Condition Claims

Every condition coverage claim should be supported by recorded evidence.

---

### 449. Condition Evidence Package

A condition evidence package may contain:

- condition definition;
- condition instance;
- source data;
- classification;
- execution;
- result;
- interpretation.

---

### 450. Condition Reproducibility Package

A reproducibility package should preserve sufficient information to recreate the declared condition.

---

### 451. Condition Execution Record

Execution records should reference:

- condition identity;
- condition version;
- scenario;
- model versions;
- emulator/simulator version;
- QAI pipeline;
- resource context.

---

### 452. Condition Correlation

All related events and results should use a common experiment or execution correlation identity where required.

---

### 453. Condition Traceability

~~~text
Condition
   |
   +--> Scenario
   |
   +--> Workflow
   |
   +--> Emulator / Simulator
   |
   +--> CPS
   |
   +--> QAI Pipeline
   |
   +--> Result
   |
   +--> Value Assessment
~~~

---

### 454. Condition Result Attribution

Results should remain attributable to the conditions under which they were produced.

---

### 455. Condition Comparison

Results from different conditions should not be compared as equivalent without accounting for the condition difference.

---

### 456. Condition Normalization

Where comparison requires it, results may be normalized for condition differences.

---

### 457. Normalization Transparency

Normalization methods must be explicit.

---

### 458. Condition-Aware Benchmarking

Benchmark reports should identify the operating condition alongside computational results.

---

### 459. Condition-Aware QAI Advantage

A demonstrated QAI advantage should be qualified by the conditions under which it was observed.

---

### 460. Condition-Aware Promotion

A model or pipeline should not automatically be promoted for all conditions merely because it succeeded under one condition.

---

### 461. Condition Promotion Envelope

Promotion should specify the condition envelope for which the result is considered valid.

---

### 462. Condition Rollback

If a condition-aware model or policy causes unacceptable behavior, the applicable previous validated version should remain available for rollback.

---

### 463. Condition Recovery Path

Recovery should define:

- trigger;
- safe state;
- fallback;
- human involvement;
- validation.

---

### 464. Condition Continuity

Long-running executions should preserve condition continuity across:

- restart;
- migration;
- checkpoint;
- recovery.

---

### 465. Condition Checkpoint

A checkpoint should preserve the active condition context needed for valid restart.

---

### 466. Condition Resume

Resume should verify that the stored condition remains valid before continuing.

---

### 467. Condition Change During Pause

If the external environment can change while execution is paused, the condition should be re-evaluated before resumption where relevant.

---

### 468. Condition and Distributed Execution

Distributed components may observe different local conditions.

---

### 469. Local Condition

A local condition applies to one execution domain or asset.

---

### 470. Global Condition

A global condition represents an aggregated system-level interpretation.

---

### 471. Local-Global Consistency

Local conditions should be preserved even when a global condition is derived.

---

### 472. Distributed Condition Conflict

Conflicting local observations should be reconciled according to explicit authority and timing rules.

---

### 473. Condition Clock Synchronization

Distributed condition transitions may require synchronized or logically ordered clocks.

---

### 474. Condition Ordering

Where exact time cannot be guaranteed, causal ordering may be used.

---

### 475. Condition and Edge Execution

Edge execution may evaluate conditions close to the source of observation.

---

### 476. Condition and Cloud Execution

Cloud execution may consume aggregated or federated condition information.

---

### 477. Condition and QAI Data Center

A QAI Data Center may evaluate condition-aware workloads while preserving the declared condition context.

---

### 478. Condition and Air-Gapped Execution

Air-gapped environments may use locally available evidence and condition definitions.

---

### 479. Condition Portability

Condition definitions should remain portable across laptop, edge, cloud and QAI Data Center environments.

---

### 480. Condition Reproducibility Across Environments

Equivalent condition definitions should produce comparable classifications when supplied equivalent evidence and classification policies.

---

### 481. Condition Runtime Boundary

The Conditions subsystem defines and evaluates condition context; Runtime Sanity determines whether the executing environment is currently healthy enough to trust that context.

---

### 482. Runtime Sanity Versus Condition

~~~text
Condition
   |
   +--> What state is the target in?

Runtime Sanity
   |
   +--> Is the execution environment functioning correctly?
~~~

---

### 483. Condition Does Not Replace Runtime Monitoring

A nominal target condition does not imply that the Emulator, Simulator, QAI pipeline or communication environment is healthy.

---

### 484. Runtime Failure Example

A farm may remain E0 while the simulation runtime experiences a software failure.

The target condition and runtime health are separate dimensions.

---

### 485. Condition and Structural Integrity

Structural Integrity must be established before relying on condition-driven execution.

---

### 486. Condition Execution Preconditions

At minimum, execution should verify:

- condition definition exists;
- condition version is valid;
- scope is valid;
- required evidence is available;
- applicable model supports the condition.

---

### 487. Condition Execution Gate

~~~text
Condition
   |
   v
Structural Integrity
   |
   v
Condition Applicability
   |
   v
Runtime Sanity
   |
   v
Execution
~~~

---

### 488. Condition Gate Decision

A condition gate may return:

- READY;
- REVISE;
- DEFER.

---

### 489. READY Condition

The condition is sufficiently defined and supported for the intended execution.

---

### 490. REVISE Condition

The condition requires correction or clarification before execution.

---

### 491. DEFER Condition

The condition is valid as a future capability but is outside the current execution boundary.

---

### 492. Pilot Condition Gate

The Pilot should use the gate to prevent unsupported condition claims.

---

### 493. Minimum Pilot Condition Set

The minimum callable irrigation Pilot should establish:

- E0 baseline;
- E1 controlled perturbation;
- E2 meaningful degradation.

---

### 494. Pilot E0 Example

~~~text
Normal soil moisture
+
Normal water availability
+
Normal pump operation
+
Available sensor data
+
Normal communication
~~~

---

### 495. Pilot E1 Example

~~~text
E0 baseline
      |
      +--> change weather
      OR
      +--> change irrigation demand
      OR
      +--> controlled parameter perturbation
~~~

---

### 496. Pilot E2 Example

~~~text
E0 baseline
      |
      +--> reduced water availability
      OR
      +--> reduced pump capacity
      OR
      +--> degraded sensing
~~~

---

### 497. Pilot Condition-to-QAI Flow

~~~text
Condition
    |
    v
Farm State / Context
    |
    v
QAI Pipeline
    |
    v
Decision
    |
    v
Emulated Actuation
    |
    v
New State
    |
    v
Condition Re-evaluation
~~~

---

### 498. Pilot Condition-to-Simulation Flow

~~~text
Condition
    |
    v
Simulation Scenario
    |
    v
Perturbation
    |
    v
Simulation
    |
    v
Result
    |
    v
Condition Assessment
~~~

---

### 499. Pilot Condition Comparison

The same declared condition should be reusable for comparable:

- classical;
- quantum-inspired;
- hybrid QAI;
- quantum

tests where technically applicable.

---

### 500. Part 3 Closure

Part 3 establishes the operating-condition lifecycle and execution semantics.

The principal conclusions are:

1. Condition definitions and runtime condition instances have separate lifecycles.
2. Conditions may progress from detection through classification, validation and activation to resolution or archival.
3. Lifecycle transitions should be explicit and traceable.
4. Event time and processing time should remain distinct where latency matters.
5. Freshness is decision-context dependent.
6. Missing evidence must not silently become nominal.
7. Unknown condition is distinct from E0.
8. Confidence does not establish physical validity.
9. Physical, emulated and simulated evidence must remain distinguishable.
10. Condition provenance should support reconstruction.
11. Snapshots support reproducibility and replay.
12. Simulation branches must remain isolated from authoritative baselines.
13. Condition transitions may be represented as graphs or state machines.
14. Transition guards and conflicts should be explicit.
15. Overrides require authority and provenance.
16. Conditions may be static or dynamic.
17. Emulator conditions support faithful target reproduction.
18. Simulator conditions support controlled exploration.
19. Fidelity and simulation validity must be reported against declared conditions.
20. Models may be valid only for subsets of the condition space.
21. Unsupported conditions must not silently become accepted extrapolation.
22. QAI evaluation must preserve condition context.
23. Classical and QAI methods should be compared under comparable conditions.
24. Computational, sensing and communication conditions should remain independently observable.
25. Open-loop tests may isolate condition dimensions.
26. Closed-loop tests may expose condition interactions.
27. Condition combinations should be prioritized by relevance and risk.
28. Condition coverage should support the intended engineering decision rather than attempt exhaustive enumeration.
29. Condition definitions and classification policies require versioning.
30. Condition drift may require revalidation.
31. Condition-aware results are necessary for meaningful QAI comparison.
32. Promotion should remain bounded by the validated condition envelope.
33. Long-running execution must preserve condition context through checkpoints and recovery.
34. Distributed execution must distinguish local and global conditions.
35. Condition portability must remain technology-neutral.
36. Conditions and Runtime Sanity are separate concerns.
37. Structural Integrity precedes condition-driven execution.
38. The Pilot should establish E0, E1 and meaningful E2 coverage.
39. E3 and E4 remain controlled extensions unless required by the use case.
40. The same declared condition should be reusable across comparable computational tests.
41. Condition context must remain traceable from scenario through execution and result.

The governing principle is:

> **A condition is an explicit execution context with a controlled lifecycle. Detect it, classify it, preserve its evidence, apply it consistently, trace its transitions, and never confuse the target's operating condition with the health or quality of the representation executing it.**

**PART 3 STATUS: COMPLETE — CONDITION LIFECYCLE, TRANSITIONS, EVIDENCE, EXECUTION SEMANTICS, THREE-PATH CONTEXT AND PILOT CONDITION GATE BASELINE**
---

