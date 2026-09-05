# Phase 2 — Calibration

## README

### Part 1 — Purpose, Architectural Position and Calibration Principles

### 1. Purpose

This document defines the architectural role, scope, principles and lifecycle of **Calibration** within Phase 2 of the Digital Farm Pilot.

Calibration exists to establish a controlled relationship between:

- reference behavior;
- emulator behavior;
- model parameters;
- observed or expected outputs;
- uncertainty;
- fidelity requirements.

Calibration answers:

> **What parameter configuration allows the model or emulator to reproduce the reference behavior within an explicitly defined tolerance?**

Calibration does **not** determine whether the resulting model is valid by itself. Validation remains a separate activity.

---

### 2. Architectural Position

Calibration is a Phase 2 assurance capability positioned between model construction and fidelity validation.

~~~text
Reference System / Reference Data
             |
             v
       Reference Model
             |
             v
         Calibration
             |
             v
    Calibrated Model / Emulator
             |
             v
      Fidelity Validation
             |
             v
       Simulation / CPS
~~~

---

### 3. Calibration Is Not Emulation

Emulation reproduces the behavior of a target system.

Calibration determines suitable parameter values or model configurations that allow the emulator to reproduce that behavior.

Therefore:

> **Emulation is the executable capability. Calibration is the parameter-identification and tuning capability supporting that executable model.**

---

### 4. Calibration Is Not Simulation

Simulation explores what happens under defined conditions.

Calibration prepares or improves the model used by the simulation.

~~~text
Calibration
    |
    v
Model Parameters
    |
    v
Simulation
    |
    v
Scenario Results
~~~

---

### 5. Calibration Is Not Validation

Calibration attempts to fit a model to reference evidence.

Validation evaluates whether the resulting model is sufficiently faithful for its intended use.

A calibrated model may still fail validation.

---

### 6. Calibration Is Not Optimization

Calibration and optimization may use similar mathematical techniques, but their objectives differ.

Calibration seeks parameter values consistent with reference behavior.

Optimization seeks the best decision or outcome according to an objective.

---

### 7. Calibration and QAI

QAI may assist calibration through:

- parameter search;
- optimization;
- surrogate modeling;
- uncertainty exploration;
- sensitivity analysis;
- model selection.

QAI is not mandatory for calibration.

Classical methods remain the baseline.

---

### 8. Calibration and the Advantage Gate

Where QAI is considered for calibration, the computational method should pass through the established comparative evaluation and Advantage Gate.

The architecture should compare:

- Classical;
- Quantum-Inspired;
- Hybrid QAI;
- Quantum;
- AI/ML;
- HPC or other suitable alternatives.

The best method is selected according to measured evidence rather than technology preference.

---

### 9. Calibration Objective

The calibration objective should be explicitly defined before execution.

It may seek to reduce:

- state error;
- behavioral error;
- temporal error;
- sensor-model error;
- actuator-response error;
- process-output error.

---

### 10. Calibration Scope

Calibration may apply to:

- asset models;
- component models;
- process models;
- sensor models;
- actuator models;
- controller models;
- environmental models;
- timing parameters;
- stochastic parameters;
- domain-model parameters.

---

### 11. Calibration Boundary

Calibration should modify only explicitly permitted parameters or model structures.

It must not silently change:

- asset identity;
- physical meaning;
- interface contracts;
- structural relationships;
- safety constraints;
- declared system boundaries.

---

### 12. Calibration and Structural Integrity

Structural Integrity establishes that the calibration environment is correctly constructed.

~~~text
Structural Integrity
        |
        v
Calibration Environment
        |
        v
Calibration
        |
        v
Fidelity Validation
~~~

Calibration should not be used to compensate for structural defects.

---

### 13. No Patch-Over Principle

A calibration process must not be used to hide:

- incorrect asset mappings;
- incorrect relationships;
- missing interfaces;
- wrong units;
- incorrect topology;
- invalid assumptions.

Such problems must be corrected at their authoritative source.

---

### 14. Calibration Reference

Every calibration activity requires a defined reference.

The reference may originate from:

- physical measurements;
- trusted historical data;
- laboratory measurements;
- validated models;
- authoritative specifications;
- controlled synthetic reference data.

The reference source must be identifiable.

---

### 15. Reference Authority

Reference data should have an identified authority and provenance.

Where multiple reference sources exist, their relative authority should be explicit.

---

### 16. Reference Quality

Calibration quality depends on reference quality.

Reference data should therefore be evaluated for:

- completeness;
- accuracy;
- consistency;
- freshness;
- uncertainty;
- provenance;
- representativeness.

---

### 17. Reference Data Is Not Automatically Truth

Observed data may contain:

- sensor noise;
- measurement error;
- missing values;
- bias;
- drift;
- outliers.

Calibration should therefore distinguish observed evidence from assumed physical truth.

---

### 18. Reference Model

The reference model provides the conceptual or executable representation against which calibration may be performed.

It should identify:

- model identity;
- version;
- parameter set;
- state representation;
- inputs;
- outputs;
- assumptions.

---

### 19. Calibration Target

The calibration target defines what behavior is being matched.

Examples include:

- soil moisture response;
- irrigation flow;
- pump response;
- crop water demand;
- temperature response;
- energy consumption;
- sensor behavior.

---

### 20. Calibration Dataset

A calibration dataset should identify:

- dataset identity;
- source;
- time period;
- spatial scope;
- variables;
- units;
- sampling characteristics;
- quality indicators.

---

### 21. Calibration and Agriculture

The initial Digital Farm calibration capability should support agricultural models such as:

- soil;
- crop;
- irrigation;
- water;
- weather;
- machinery;
- energy;
- sensor;
- actuator.

---

### 22. Agriculture Calibration Example

For an irrigation emulator:

~~~text
Reference
  |
  +--> Soil Moisture
  +--> Flow
  +--> Pump State
  +--> Weather
  |
  v
Calibration
  |
  +--> Soil Parameters
  +--> Flow Parameters
  +--> Pump Parameters
  |
  v
Calibrated Irrigation Emulator
~~~

---

### 23. Calibration Parameter

A calibration parameter is an explicitly identified model quantity that may be adjusted.

Each parameter should have:

- identity;
- meaning;
- unit;
- allowed range;
- initial value;
- calibration status.

---

### 24. Parameter Bounds

Every adjustable parameter should have defined bounds where physically or operationally meaningful.

Bounds prevent calibration from producing implausible configurations.

---

### 25. Parameter Type

Parameters may include:

- continuous;
- discrete;
- categorical;
- Boolean;
- time-dependent;
- state-dependent.

The calibration method should support the applicable parameter type.

---

### 26. Parameter Source

A parameter may originate from:

- specification;
- measurement;
- domain knowledge;
- previous calibration;
- derived calculation;
- optimization.

Its source should remain traceable.

---

### 27. Fixed Parameters

Some parameters should remain fixed during calibration.

Examples include parameters that represent:

- physical identity;
- regulatory constraints;
- safety limits;
- immutable geometry;
- fixed interface definitions.

---

### 28. Adjustable Parameters

Adjustable parameters are explicitly authorized for calibration.

The adjustable set should be defined before execution.

---

### 29. Derived Parameters

Derived parameters should not normally be independently calibrated when they can be deterministically calculated from authoritative values.

---

### 30. Parameter Dependencies

Parameter dependencies should be represented.

Changing one parameter may affect:

- another parameter;
- state;
- behavior;
- output;
- constraint.

---

### 31. Parameter Coupling

Strongly coupled parameters may require joint calibration.

Independent tuning should not be assumed to be valid.

---

### 32. Parameter Identifiability

A parameter should be considered identifiable only when the available reference evidence can meaningfully distinguish its effect.

---

### 33. Non-Identifiable Parameters

If multiple parameter combinations produce materially equivalent outputs, the parameters may not be uniquely identifiable.

The calibration result should record this condition.

---

### 34. Calibration Ambiguity

Calibration ambiguity may arise when:

- data is insufficient;
- parameters are correlated;
- measurements are noisy;
- multiple models explain the observations.

Ambiguity should be preserved rather than hidden.

---

### 35. Calibration Confidence

Calibration results should carry an appropriate confidence representation.

Confidence should reflect evidence quality and parameter identifiability rather than merely optimization convergence.

---

### 36. Calibration Uncertainty

Calibration should distinguish:

- parameter uncertainty;
- measurement uncertainty;
- model uncertainty;
- environmental uncertainty;
- structural uncertainty.

---

### 37. Measurement Uncertainty

Measurement uncertainty originates from the reference observation process.

It should not automatically be attributed to the model.

---

### 38. Parameter Uncertainty

Parameter uncertainty reflects incomplete knowledge of suitable parameter values.

Calibration may reduce this uncertainty but may not eliminate it.

---

### 39. Model Uncertainty

Model uncertainty reflects limitations in the model structure itself.

Parameter tuning cannot necessarily remove model-form error.

---

### 40. Calibration Error

Calibration error represents the difference between the model output and selected reference evidence according to the defined metric.

---

### 41. Error Metric

The calibration process should explicitly define its error metric.

Possible metrics include:

- absolute error;
- relative error;
- mean error;
- root mean square error;
- maximum error;
- temporal alignment error;
- domain-specific error.

The selected metric should match the intended use.

---

### 42. Multi-Objective Calibration

Calibration may require multiple objectives.

For example:

~~~text
Calibration
   |
   +--> State Accuracy
   +--> Temporal Accuracy
   +--> Energy Accuracy
   +--> Control Response
   |
   v
Multi-Objective Result
~~~

---

### 43. Weighted Objectives

Where multiple objectives are combined into a single score, weighting should be explicitly defined.

---

### 44. Pareto Calibration

Where objectives conflict, calibration may produce a set of non-dominated solutions rather than one universal optimum.

---

### 45. Calibration Tolerance

The calibration target should define an acceptable tolerance band where appropriate.

Tolerance should be tied to intended use.

---

### 46. Tolerance Is Not Accuracy

A tolerance defines acceptable deviation for a particular purpose.

It does not establish absolute physical accuracy.

---

### 47. Calibration Resolution

Calibration resolution defines the level at which parameter changes are meaningfully distinguished.

Excessively fine parameter resolution may create false precision.

---

### 48. Calibration Precision

Reported parameter precision should not exceed the information supported by the reference data.

---

### 49. Calibration Overfitting

Calibration may overfit the reference dataset.

A low calibration error alone is therefore insufficient.

---

### 50. Calibration and Validation Split

Where sufficient data exists, calibration and validation datasets should be separated.

~~~text
Reference Data
      |
      +----> Calibration Set
      |
      +----> Validation Set
                 |
                 v
          Independent Check
~~~

---

### 51. Calibration and Test Data

Where practical, an additional test dataset may be retained for later evaluation.

This supports stronger evidence of generalization.

---

### 52. Temporal Separation

For dynamic agricultural systems, temporal separation may be preferable to random data splitting.

This helps expose temporal generalization limitations.

---

### 53. Spatial Separation

Where appropriate, calibration and validation may also be separated spatially.

This is useful when soil, climate or farm characteristics vary across locations.

---

### 54. Scenario Separation

Calibration should not use every scenario that the model is expected to evaluate.

Some scenarios should remain independent for validation.

---

### 55. Calibration Coverage

The calibration dataset should cover the operating conditions relevant to the intended model use.

---

### 56. Coverage Gap

A coverage gap exists when calibration evidence does not adequately represent an intended operating condition.

---

### 57. Extrapolation Risk

Using a calibrated model outside the evidence-supported region introduces extrapolation risk.

The model should expose that limitation.

---

### 58. Calibration Validity Region

The calibration process should identify the region within which its parameters are considered supported.

---

### 59. Calibration Envelope

The calibration envelope may include:

- state range;
- environmental range;
- parameter range;
- temporal range;
- operating condition;
- scenario class.

---

### 60. Operating Conditions

Calibration should account for the Phase 2 operating condition classes where applicable:

- E0 — Nominal;
- E1 — Perturbed;
- E2 — Degraded;
- E3 — Critical;
- E4 — Catastrophic / Extreme.

Not every calibration requires all classes.

---

### 61. Nominal Calibration

Nominal calibration establishes baseline parameter behavior under normal operating conditions.

---

### 62. Perturbed Calibration

Perturbed conditions may reveal parameter sensitivity.

They should not automatically trigger recalibration.

---

### 63. Degraded Conditions

Degraded conditions may require separate parameter sets or explicit fault behavior rather than modification of the nominal model.

---

### 64. Critical Conditions

Critical conditions should preserve safety and validity boundaries.

Calibration must not tune a model into an unsafe or physically meaningless region merely to reduce error.

---

### 65. Extreme Conditions

Extreme conditions should be handled only when the model and reference evidence support them.

Unsupported extremes should be marked as outside the calibration envelope.

---

### 66. Calibration and Fault Models

Fault parameters may be calibrated separately from nominal operating parameters.

This prevents fault behavior from contaminating the nominal model.

---

### 67. Sensor Calibration

Sensor calibration may estimate:

- offset;
- gain;
- noise;
- response delay;
- nonlinear behavior;
- drift characteristics.

---

### 68. Actuator Calibration

Actuator calibration may estimate:

- response;
- delay;
- capacity;
- efficiency;
- control limits;
- hysteresis.

---

### 69. Controller Calibration

Controller calibration may involve:

- control parameters;
- timing;
- thresholds;
- response characteristics.

Controller calibration must remain distinct from changing the declared control policy.

---

### 70. Communication Calibration

Communication behavior may include:

- latency;
- jitter;
- packet-loss characteristics;
- throughput;
- timing behavior.

---

### 71. Environmental Calibration

Environmental models may require calibration of:

- weather effects;
- soil response;
- temperature response;
- evaporation;
- rainfall;
- water movement.

---

### 72. Timing Calibration

Dynamic models may require timing calibration.

Relevant parameters include:

- delay;
- response time;
- sampling interval;
- transition duration.

---

### 73. Stochastic Calibration

Stochastic models may require calibration of:

- distributions;
- variance;
- correlation;
- event frequency;
- noise characteristics.

---

### 74. Deterministic Calibration

Deterministic models may be calibrated using direct parameter fitting or equivalent deterministic methods.

---

### 75. Hybrid Calibration

Hybrid models may combine:

- physical equations;
- empirical relationships;
- data-driven components;
- learned parameters.

Each component should retain identifiable boundaries.

---

### 76. AI-Assisted Calibration

AI may assist by:

- estimating candidate parameters;
- detecting influential variables;
- identifying patterns;
- proposing parameter ranges;
- identifying anomalous reference data.

AI recommendations should remain traceable.

---

### 77. AI Does Not Redefine Physical Truth

AI-assisted calibration must not silently redefine the meaning of physical parameters.

Any structural or semantic change requires controlled model revision.

---

### 78. QAI-Assisted Calibration

QAI may be used when the calibration problem provides a meaningful computational opportunity.

Potential uses include:

- combinatorial parameter selection;
- constrained optimization;
- search;
- sampling;
- multi-objective optimization.

---

### 79. Classical Baseline

A classical calibration method should normally provide the baseline for comparison.

This establishes:

- computational cost;
- calibration quality;
- convergence behavior;
- reproducibility.

---

### 80. Quantum-Inspired Calibration

Quantum-inspired methods may be evaluated where they provide a meaningful alternative to classical methods.

They should be measured using the same problem definition and evaluation criteria.

---

### 81. Hybrid QAI Calibration

Hybrid QAI may divide the calibration process between classical and quantum/QAI components.

The division of responsibility should be explicit.

---

### 82. Quantum Calibration

Quantum methods may be evaluated where appropriate.

Their inclusion should depend on problem suitability and evidence rather than architectural preference.

---

### 83. Comparative Calibration

The calibration framework should support controlled comparison:

~~~text
Same Problem
     |
     +--> Classical
     +--> Quantum-Inspired
     +--> Hybrid QAI
     +--> Quantum
     +--> AI / ML
     +--> HPC / Alternative
     |
     v
Comparable Evidence
~~~

---

### 84. Computational Fairness

Comparative calibration should use equivalent:

- problem definition;
- constraints;
- reference data;
- success criteria;
- measurement definitions.

---

### 85. Resource Awareness

Calibration should record relevant resource consumption:

- compute;
- memory;
- storage;
- network;
- energy;
- execution time;
- queue time;
- quantum shots where applicable.

---

### 86. Calibration Cost

A calibration result should not be evaluated only by model error.

Calibration cost may materially affect practical value.

---

### 87. Calibration Efficiency

Efficiency may consider:

- time to acceptable fit;
- resource consumption;
- number of evaluations;
- number of iterations;
- convergence behavior.

---

### 88. Calibration Convergence

A calibration process should define its convergence criteria.

Convergence should not be confused with physical validity.

---

### 89. Failed Convergence

Failure to converge should be recorded as an experimental result.

It should not be hidden by arbitrary termination.

---

### 90. Early Termination

Calibration may terminate early when:

- sufficient tolerance is reached;
- improvement becomes negligible;
- resources are exhausted;
- constraints are violated;
- the calibration becomes invalid.

---

### 91. Calibration Checkpoint

Long-running calibration should support checkpoints where practical.

A checkpoint may contain:

- parameter state;
- iteration;
- objective value;
- random state;
- model version;
- configuration.

---

### 92. Calibration Resume

A resumed calibration must preserve or explicitly reconstruct the original calibration context.

---

### 93. Calibration Reproducibility

Calibration should be reproducible where deterministic execution is possible.

For stochastic methods, the relevant randomization context should be preserved.

---

### 94. Random Seed

Where randomness affects the calibration result, the seed or equivalent reproducibility mechanism should be recorded where practical.

---

### 95. Calibration Experiment Identity

Every calibration execution should have a unique experiment identity.

---

### 96. Calibration Run Identity

Each execution instance should also have a unique run identity.

---

### 97. Parameter Set Identity

The calibrated parameter set should have its own identity and version.

---

### 98. Calibration Result Identity

The resulting calibrated artifact should remain distinguishable from:

- reference model;
- source parameters;
- calibration run;
- validation result.

---

### 99. Calibration Provenance

The provenance chain should be reconstructable:

~~~text
Reference Data
      |
      v
Reference Model
      |
      v
Calibration Configuration
      |
      v
Calibration Run
      |
      v
Calibrated Parameter Set
      |
      v
Calibrated Model
      |
      v
Validation
~~~

---

### 100. Calibration Artifact

The calibrated artifact should contain or reference:

- model identity;
- parameter set;
- calibration method;
- reference dataset;
- objective;
- tolerance;
- execution configuration;
- result metrics;
- provenance.

---

### 101. Calibration Versioning

Calibration artifacts must be versioned independently where necessary.

Changing the parameter set should not silently overwrite the previous baseline.

---

### 102. Calibration Baseline

A validated calibration result may become a baseline for subsequent simulation or emulation.

The baseline should remain immutable once approved.

---

### 103. Baseline Promotion

Promotion should follow:

~~~text
Candidate Calibration
        |
        v
Calibration Review
        |
        v
Fidelity Validation
        |
        v
Approved Baseline
~~~

---

### 104. Calibration Rollback

If a promoted calibration later proves unsuitable, the system should be able to return to a previously approved calibration baseline.

---

### 105. Calibration Comparison

Two calibration versions should be comparable by:

- parameter differences;
- error differences;
- validity region;
- resource cost;
- scenario performance.

---

### 106. Calibration Change Impact

A parameter change may affect:

- behavior;
- state;
- interfaces;
- workflows;
- scenarios;
- QAI results.

Affected artifacts should be identified.

---

### 107. Calibration and Model Lifecycle

Calibration participates in the broader model lifecycle:

~~~text
Model
  |
  v
Calibrate
  |
  v
Validate
  |
  v
Promote
  |
  v
Use
  |
  v
Monitor
  |
  v
Recalibrate / Revise
~~~

---

### 108. Recalibration Trigger

Recalibration may be considered when evidence indicates:

- persistent error;
- model drift;
- parameter drift;
- changed operating conditions;
- new reference data;
- changed target system behavior.

---

### 109. Recalibration Is Not Automatic

Recalibration should not automatically modify an approved baseline.

A controlled process should determine whether recalibration is justified.

---

### 110. Calibration Drift

Calibration drift occurs when previously suitable parameters no longer adequately represent the reference system.

---

### 111. Model Drift

Model drift may indicate that the underlying model structure is becoming less representative.

Calibration may not be sufficient to correct model drift.

---

### 112. Parameter Drift

Parameter drift may indicate that parameter values have changed while the underlying model structure remains appropriate.

---

### 113. Drift Diagnosis

The system should distinguish:

- parameter drift;
- model drift;
- reference-data drift;
- sensor drift;
- environmental change.

---

### 114. Drift Response

Possible responses include:

- continue monitoring;
- recalibrate;
- validate;
- revise model;
- replace model;
- retire model.

---

### 115. Calibration Monitoring

Where calibration is operationally important, monitoring may track:

- error;
- parameter movement;
- confidence;
- data coverage;
- drift indicators.

---

### 116. Calibration and Fidelity

Calibration contributes to fidelity but does not establish fidelity alone.

The relationship is:

~~~text
Calibration
    |
    v
Candidate Fidelity
    |
    v
Fidelity Validation
    |
    v
Validated Fidelity
~~~

---

### 117. Calibration and Error Tolerance

Calibration may reduce error toward a defined tolerance.

The tolerance must remain tied to the intended application.

---

### 118. Calibration and Fidelity Dimensions

Calibration may affect:

- functional fidelity;
- state fidelity;
- behavioral fidelity;
- temporal fidelity;
- environmental fidelity;
- stochastic fidelity.

---

### 119. Interface Fidelity

Calibration may also affect interface timing or response characteristics.

However, interface contract changes remain outside ordinary parameter calibration.

---

### 120. Calibration and Structural Fidelity

Structural correctness must be established separately.

A highly calibrated but structurally incorrect model remains invalid.

---

### 121. Part 1 Closure

Part 1 establishes Calibration as a controlled model-assurance capability.

The principal conclusions are:

1. Calibration tunes explicitly authorized model parameters or configurations.
2. Calibration is distinct from Emulation.
3. Calibration is distinct from Simulation.
4. Calibration is distinct from Validation.
5. Calibration is distinct from Optimization.
6. Structural Integrity precedes Calibration.
7. Reference evidence must be identifiable and traceable.
8. Parameter meaning, units, bounds and provenance must be explicit.
9. Identifiability and uncertainty must be preserved.
10. Calibration must not hide structural or semantic defects.
11. Calibration may support deterministic, stochastic, hybrid and data-assisted models.
12. AI and QAI may assist calibration but are not mandatory.
13. Classical calibration provides the baseline for comparative evaluation.
14. QAI methods should be selected through evidence and the Advantage Gate.
15. Calibration must preserve reproducibility, provenance and versioning.
16. Calibration and validation datasets should be separated where practical.
17. Calibration results may become approved model baselines only after validation.
18. Recalibration must be controlled rather than silently modifying approved models.
19. Drift must be distinguished from model-form failure.
20. Calibration ultimately supports trustworthy emulation and simulation.

The governing principle is:

> **Tune what can legitimately be tuned, preserve what must remain fixed, validate independently, and never use calibration to hide a structural or model-form defect.**

**PART 1 STATUS: COMPLETE — CALIBRATION PURPOSE, ARCHITECTURAL POSITION, PARAMETER, REFERENCE, QAI AND FIDELITY BASELINE**
---
# Phase 2 — Calibration

## Part 2 — Calibration Model, Parameter Space, Reference Alignment and Execution Architecture

### 122. Purpose of Part 2

Part 2 defines the internal calibration model and the controlled process by which reference evidence is converted into a calibrated model or parameter set.

---

### 123. Calibration Model

The Calibration Model represents the relationship between:

- model parameters;
- reference inputs;
- model outputs;
- measured outputs;
- calibration objectives;
- constraints;
- uncertainty.

~~~text
Reference Inputs
      |
      v
Model + Parameters
      |
      v
Predicted Outputs
      |
      +<---- Error / Objective <---- Reference Outputs
      |
      v
Parameter Update
~~~

---

### 124. Calibration Configuration

Every calibration execution should use an explicit configuration.

The configuration should identify:

- model;
- parameter set;
- reference data;
- adjustable parameters;
- fixed parameters;
- objectives;
- constraints;
- tolerance;
- execution method.

---

### 125. Configuration Identity

A calibration configuration should have a unique identity and version.

Changing a material calibration setting should produce a new configuration version.

---

### 126. Configuration Immutability

Once a calibration run begins, its effective configuration should be preserved.

Runtime changes should not silently alter the original calibration definition.

---

### 127. Calibration Input Classes

Calibration inputs may include:

- reference observations;
- environmental inputs;
- control inputs;
- initial state;
- boundary conditions;
- model parameters;
- constraints.

---

### 128. Calibration Output Classes

Calibration outputs may include:

- calibrated parameters;
- objective value;
- error metrics;
- uncertainty estimates;
- convergence information;
- confidence;
- execution evidence.

---

### 129. Parameter Space

The parameter space defines the set of parameter combinations considered during calibration.

It should identify:

- dimensions;
- ranges;
- types;
- dependencies;
- constraints.

---

### 130. Parameter Bounds Model

A parameter bounds model should distinguish:

- physically impossible values;
- physically possible values;
- operationally acceptable values;
- evidence-supported values.

---

### 131. Hard Constraints

Hard constraints must not be violated by a calibration candidate.

Examples include:

- physical conservation;
- safety limits;
- equipment capacity;
- legal constraints;
- declared operating limits.

---

### 132. Soft Constraints

Soft constraints may be incorporated into the objective or penalty function when appropriate.

Their treatment should be explicit.

---

### 133. Constraint Priority

When multiple constraints exist, their relative priority should be defined.

Safety and physical feasibility should normally remain authoritative over optimization convenience.

---

### 134. Feasible Parameter Region

The feasible parameter region is the subset of parameter space satisfying all mandatory constraints.

~~~text
Parameter Space
      |
      v
Constraint Filtering
      |
      v
Feasible Region
      |
      v
Calibration Search
~~~

---

### 135. Infeasible Candidate

An infeasible candidate should be rejected, penalized or otherwise handled according to the defined calibration method.

It should not be silently accepted.

---

### 136. Parameter Initialization

Calibration may begin from:

- known reference values;
- engineering estimates;
- nominal model values;
- previous approved calibration;
- multiple initial candidates.

---

### 137. Initial Parameter Evidence

The source of initial values should remain traceable.

---

### 138. Warm-Start Calibration

A previous validated calibration may provide a warm-start configuration.

The previous baseline must remain unchanged.

---

### 139. Multi-Start Calibration

Multiple initial parameter configurations may be used where local minima or nonlinear behavior are expected.

---

### 140. Initialization Bias

Calibration evidence should recognize when results depend strongly on initialization.

---

### 141. Parameter Search

The calibration engine may use:

- direct search;
- gradient-based search;
- derivative-free optimization;
- Bayesian methods;
- evolutionary methods;
- stochastic search;
- quantum-inspired search;
- hybrid approaches.

The selected method must remain traceable.

---

### 142. Method Selection

Method selection should consider:

- parameter type;
- dimensionality;
- objective structure;
- constraints;
- computational cost;
- available resources;
- required confidence.

---

### 143. Classical Method Baseline

A classical method should provide a reference point for assessing alternative calibration methods where comparison is relevant.

---

### 144. Quantum-Inspired Method Selection

Quantum-inspired methods may be evaluated when their computational characteristics match the calibration problem.

---

### 145. Hybrid Method Selection

Hybrid calibration may use different computational methods for different stages.

For example:

~~~text
Classical Preprocessing
        |
        v
QAI Search
        |
        v
Classical Refinement
        |
        v
Validation
~~~

---

### 146. Quantum Method Selection

Quantum methods should be considered only where the problem representation, available resources and evidence justify their use.

---

### 147. AI-Assisted Method Selection

AI may recommend calibration strategies based on historical experiments or problem characteristics.

The recommendation remains subject to controlled evaluation.

---

### 148. Calibration Search Space

The search space should be no larger than necessary to address the calibration objective.

Unnecessary dimensions increase:

- computational cost;
- ambiguity;
- overfitting risk;
- experiment complexity.

---

### 149. Dimensionality Reduction

Where justified, irrelevant or weakly influential parameters may be excluded from the active calibration space.

The exclusion decision should be recorded.

---

### 150. Sensitivity Pre-Analysis

Sensitivity analysis may be performed before calibration to identify influential parameters.

---

### 151. Parameter Screening

Parameter screening may classify parameters as:

- highly influential;
- moderately influential;
- weakly influential;
- currently unidentifiable.

---

### 152. Screening Does Not Redefine the Model

Screening may reduce calibration effort but should not silently remove parameters from the underlying model.

---

### 153. Parameter Grouping

Related parameters may be grouped when they have:

- common physical meaning;
- shared dependencies;
- coupled effects.

---

### 154. Parameter Coupling Matrix

A coupling matrix may represent relationships between adjustable parameters.

~~~text
          P1   P2   P3   P4
P1        -    X
P2        X    -         X
P3                  -
P4             X         -
~~~

Such coupling information can guide calibration strategy.

---

### 155. Identifiability Analysis

Identifiability analysis should determine whether the reference evidence can distinguish candidate parameter values.

---

### 156. Structural Identifiability

Structural identifiability concerns whether the model formulation permits unique parameter determination under ideal conditions.

---

### 157. Practical Identifiability

Practical identifiability considers whether available data is sufficient to estimate the parameter reliably.

---

### 158. Identifiability Result

Each important parameter may be classified as:

- identifiable;
- weakly identifiable;
- non-identifiable;
- not evaluated.

---

### 159. Non-Identifiability Handling

Non-identifiable parameters should not be presented as precisely estimated values.

Possible responses include:

- fixing the parameter;
- constraining it;
- grouping it;
- collecting more data;
- revising the model.

---

### 160. Parameter Correlation

Strong parameter correlation may cause multiple combinations to produce similar model outputs.

This should be captured in calibration evidence.

---

### 161. Calibration Data Preparation

Reference data may require controlled preparation before calibration.

Possible operations include:

- unit normalization;
- timestamp alignment;
- missing-data handling;
- quality filtering;
- outlier treatment;
- spatial alignment.

---

### 162. Data Preparation Provenance

Every transformation applied to calibration data should remain traceable.

---

### 163. Unit Consistency

All calibration inputs and outputs must use explicit units.

Unit mismatch is a calibration integrity defect, not an optimization problem.

---

### 164. Temporal Alignment

Reference observations and model outputs must be aligned in time according to the defined temporal resolution.

---

### 165. Clock Alignment

Where multiple clocks exist, the calibration environment should establish a common temporal interpretation.

---

### 166. Sampling Alignment

Differences in sampling frequency should be explicitly handled.

The transformation should not introduce undocumented information.

---

### 167. Missing Data

Missing reference data should be identified rather than silently treated as valid observations.

---

### 168. Missing-Data Policy

The calibration configuration should define whether missing observations are:

- excluded;
- interpolated;
- estimated;
- retained as uncertainty;
- treated as a calibration failure.

---

### 169. Outlier Handling

Outlier treatment should be explicitly defined.

Outliers should not be removed merely because they increase calibration error.

---

### 170. Reference Data Quality Classes

Reference observations may be classified according to:

- trusted;
- usable;
- uncertain;
- questionable;
- invalid.

---

### 171. Data Weighting

Different reference observations may receive different weights when justified.

The weighting policy should remain explicit.

---

### 172. Weighting Bias

Weighting should not be used to conceal systematic model failure in important operating regions.

---

### 173. Calibration Windows

Calibration may operate over:

- fixed time windows;
- rolling windows;
- event windows;
- seasonal windows;
- scenario-specific windows.

---

### 174. Seasonal Calibration

Agricultural models may require season-specific calibration when system behavior changes materially across seasons.

---

### 175. Crop-Specific Calibration

Where model parameters depend on crop characteristics, crop-specific calibration may be appropriate.

---

### 176. Soil-Specific Calibration

Soil-related parameters may vary spatially.

The calibration architecture should support spatially scoped parameter sets.

---

### 177. Farm-Specific Calibration

A generic agriculture model may be calibrated for a particular farm without changing the underlying generic model definition.

---

### 178. Domain Parameter Package

A calibrated domain package may contain:

- model reference;
- parameter set;
- applicability region;
- validation evidence;
- limitations.

---

### 179. Parameter Hierarchy

Parameters may exist at different levels:

~~~text
Domain
  |
  +--> Farm
        |
        +--> Field
              |
              +--> Asset
                    |
                    +--> Component
~~~

The applicable hierarchy should be explicit.

---

### 180. Parameter Override

A lower-level parameter may override a higher-level default only when the inheritance rule permits it.

---

### 181. Override Provenance

Every override should identify:

- source;
- authority;
- scope;
- effective period;
- reason.

---

### 182. Parameter Inheritance

Inherited values should remain distinguishable from locally defined values.

---

### 183. Effective Parameter Set

The effective parameter set is the resolved combination of:

- defaults;
- inherited values;
- calibrated values;
- approved overrides.

---

### 184. Effective Configuration Resolution

Before calibration execution, the effective parameter configuration should be resolved and frozen.

---

### 185. Calibration State

A calibration run may move through:

~~~text
DEFINED
   |
   v
INITIALIZED
   |
   v
RUNNING
   |
   +--> CONVERGED
   |
   +--> FAILED
   |
   +--> TERMINATED
   |
   v
EVALUATED
   |
   v
CANDIDATE
~~~

---

### 186. Calibration Status

Recommended statuses include:

- Draft;
- Defined;
- Ready;
- Running;
- Converged;
- Failed;
- Terminated;
- Evaluated;
- Candidate;
- Approved;
- Rejected;
- Archived.

---

### 187. Status Authority

Calibration status should be controlled by the calibration lifecycle rather than inferred from incomplete output files.

---

### 188. Calibration Run Isolation

Independent calibration runs should not modify each other's state.

---

### 189. Parallel Calibration

Multiple candidate runs may execute in parallel when resources permit.

Each run must retain independent identity and evidence.

---

### 190. Distributed Calibration

Calibration may later be distributed across:

- edge;
- cloud;
- HPC;
- QAI Data Center;
- quantum resources.

The logical calibration model remains independent of deployment location.

---

### 191. Local Pilot Calibration

The Pilot should support local calibration within the laptop/simulation/emulation boundary.

---

### 192. Cloud Extension

Cloud resources may be introduced later without changing the logical calibration contract.

---

### 193. QAI Data Center Extension

The QAI Data Center may provide scalable computational resources for larger calibration experiments.

The calibration architecture should consume those resources through defined interfaces.

---

### 194. Air-Gapped Calibration

Calibration should be capable of operating without external connectivity when the required data and computational resources are locally available.

---

### 195. Connected Calibration

Connected deployments may use external resources, provided dependencies are explicitly declared.

---

### 196. Federated Calibration

Federated calibration may later operate across multiple data or execution domains subject to sovereignty and governance rules.

---

### 197. Calibration Resource Model

Calibration resource requirements should be explicit.

They may include:

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
- execution time.

---

### 198. Resource Estimation

Resource estimation should occur before expensive calibration runs where practical.

---

### 199. Resource Feasibility

If required resources are unavailable, the run should be:

- deferred;
- rescheduled;
- resized;
- executed using an approved alternative method;
- or terminated transparently.

---

### 200. Resource Fallback

Fallback should preserve the calibration problem definition.

Only the computational realization changes.

---

### 201. Calibration and Advantage Gate

Where an alternative computational method is evaluated, the Advantage Gate should assess whether the method provides sufficient practical benefit.

---

### 202. Calibration Advantage Dimensions

Relevant dimensions may include:

- calibration quality;
- runtime;
- resource consumption;
- convergence;
- scalability;
- robustness;
- reproducibility.

---

### 203. No Forced Quantum Calibration

The calibration architecture must not force quantum or QAI methods into problems where classical methods provide the better solution.

---

### 204. Calibration Failure

Calibration failure may result from:

- infeasible parameters;
- insufficient data;
- numerical instability;
- non-identifiability;
- resource exhaustion;
- method failure;
- model inadequacy.

---

### 205. Failure Classification

Calibration failures should identify the dominant failure category.

---

### 206. Numerical Failure

Numerical failure may include:

- overflow;
- underflow;
- divergence;
- unstable iteration;
- invalid numerical state.

---

### 207. Model Failure

Model failure occurs when the model cannot represent the observed behavior adequately within the intended scope.

---

### 208. Data Failure

Data failure occurs when the reference evidence is insufficient, inconsistent or invalid for calibration.

---

### 209. Constraint Failure

Constraint failure occurs when no acceptable parameter solution satisfies mandatory constraints.

---

### 210. Resource Failure

Resource failure occurs when the calibration cannot complete because required resources are unavailable or exhausted.

---

### 211. Graceful Failure

Calibration should fail transparently rather than returning a misleading calibrated artifact.

---

### 212. Partial Calibration

A partial calibration may be retained as an experimental artifact but should not be presented as an approved calibration baseline.

---

### 213. Failed Candidate Preservation

Failed runs may be retained for learning and engineering analysis.

They should remain clearly marked as failed.

---

### 214. Calibration Checkpoints

Long-running calibration should support checkpoints where practical.

A checkpoint may capture:

- current parameters;
- objective;
- iteration;
- state;
- random context;
- resource context.

---

### 215. Resume Validation

Before resuming, the calibration environment should verify that:

- model version is compatible;
- reference data is unchanged;
- configuration remains valid;
- checkpoint is complete.

---

### 216. Calibration Branches

Calibration may branch from an approved baseline.

~~~text
Approved Baseline
       |
       +--> Calibration A
       |
       +--> Calibration B
       |
       +--> Calibration C
~~~

Each branch remains independently identifiable.

---

### 217. Branch Purpose

Branches may explore:

- alternative parameter ranges;
- alternative methods;
- alternative reference datasets;
- alternative objectives;
- alternative model structures.

---

### 218. Branch Merge

Calibration branches should not be merged automatically.

Any merged configuration requires explicit interpretation and validation.

---

### 219. Snapshot

A calibration snapshot captures a defined state of the calibration process.

Snapshots support:

- reproducibility;
- comparison;
- recovery;
- experimentation.

---

### 220. Calibration Experiment Matrix

A calibration experiment matrix may combine:

- model;
- parameter set;
- dataset;
- method;
- scenario;
- resource;
- objective.

---

### 221. Experiment Matrix Example

~~~text
                 Method
              C    QI    H    Q
Dataset A     X     X    X    -
Dataset B     X     X    -    -
Dataset C     X     -    X    X
~~~

This permits controlled comparison.

---

### 222. Experiment Matrix Integrity

Every matrix cell should have a defined meaning.

An unavailable or intentionally omitted method should be distinguishable from a failed execution.

---

### 223. Calibration Scenario

Calibration may be performed against a defined operating scenario.

The scenario should identify:

- initial state;
- inputs;
- environment;
- controls;
- expected outputs.

---

### 224. Multi-Scenario Calibration

A model may be calibrated against multiple scenarios.

This can improve generality but increases calibration complexity.

---

### 225. Scenario Weighting

Where scenarios receive different importance, weighting should be explicit.

---

### 226. Scenario Coverage

Calibration should record which operating regions are represented by the calibration evidence.

---

### 227. Coverage Matrix

A coverage matrix may relate calibration evidence to:

- operating condition;
- asset type;
- environmental condition;
- state;
- scenario.

---

### 228. Coverage Gap Reporting

Coverage gaps should be visible in the calibration result.

---

### 229. Calibration and Simulation

Once a calibrated model is produced, it may be consumed by Simulation.

Simulation remains responsible for scenario exploration.

---

### 230. Calibration and Emulator

A calibrated model may be used by the Emulator.

The Emulator remains responsible for executable target reproduction.

---

### 231. Calibration and CPS

A calibrated behavior model may support CPS execution.

CPS state-transition and control correctness remain separate.

---

### 232. Calibration and Three Paths

Calibration may involve all three architectural paths:

- computational;
- sensing;
- communication.

---

### 233. Computational Calibration Path

The computational path executes calibration algorithms and evaluates candidate parameters.

---

### 234. Sensing Calibration Path

The sensing path provides or represents reference observations and sensor behavior.

---

### 235. Communication Calibration Path

The communication path may provide timing and transport characteristics relevant to the model.

---

### 236. Three-Path Independence

Each path should remain independently testable.

Calibration must not hide a path defect by absorbing it into parameter values.

---

### 237. Path Coupling

Where calibration intentionally depends on multiple paths, the dependency should be explicit.

---

### 238. Path Failure

A path failure should be distinguishable from a model-calibration failure.

---

### 239. Calibration Interface

The calibration capability should expose controlled interfaces for:

- configuration;
- reference data;
- parameter definitions;
- execution;
- results;
- evidence.

---

### 240. Configuration Interface

The configuration interface defines the calibration problem.

It should not permit unauthorized structural modification.

---

### 241. Reference Data Interface

The reference data interface provides controlled access to calibration evidence.

---

### 242. Parameter Interface

The parameter interface exposes:

- candidate values;
- bounds;
- types;
- constraints;
- effective configuration.

---

### 243. Execution Interface

The execution interface starts, pauses, resumes or terminates calibration according to supported lifecycle rules.

---

### 244. Result Interface

The result interface exposes:

- calibrated values;
- objective;
- error;
- confidence;
- status;
- limitations.

---

### 245. Evidence Interface

The evidence interface exposes the provenance required to reconstruct the calibration.

---

### 246. Calibration API Neutrality

The logical interfaces should remain technology-neutral.

Implementation may later use different APIs, messaging systems or orchestration mechanisms.

---

### 247. Calibration Data Contract

Calibration data exchanged between components should have explicit contracts for:

- identity;
- units;
- timestamps;
- types;
- quality;
- provenance.

---

### 248. Schema Compatibility

Changes to calibration data schemas should be versioned and compatibility-checked.

---

### 249. Parameter Schema

The parameter schema should define:

- identifier;
- type;
- unit;
- range;
- default;
- authority;
- calibration status.

---

### 250. Model-Parameter Compatibility

The parameter schema must be compatible with the model version for which it is intended.

---

### 251. Incompatible Parameter Set

An incompatible parameter set must not be applied silently.

---

### 252. Calibration Model Compatibility

The calibration engine should verify compatibility between:

- model;
- parameter set;
- reference data;
- calibration method.

---

### 253. Compatibility Result

Compatibility should produce an explicit result such as:

- Compatible;
- Compatible with warning;
- Incompatible.

---

### 254. Calibration Dependency Closure

All mandatory calibration dependencies should be resolvable before execution.

---

### 255. Dependency Types

Calibration dependencies may include:

- model;
- data;
- parameter schema;
- numerical library;
- computational resource;
- execution environment;
- external service.

---

### 256. External Dependency

External dependencies should be explicitly declared.

---

### 257. Dependency Failure

An unavailable dependency should produce a transparent readiness or execution failure.

---

### 258. Calibration Security

Calibration should protect:

- reference data;
- parameter sets;
- model artifacts;
- experiment configuration;
- results.

---

### 259. Calibration Data Sovereignty

Reference data may remain within its permitted data boundary while calibration executes against it.

---

### 260. Calibration Audit

Material calibration actions should remain auditable.

---

### 261. Human Review

Human review may be required for:

- reference selection;
- parameter bounds;
- model choice;
- exceptional calibration;
- baseline promotion.

---

### 262. Human-AI Calibration

Human and AI responsibilities should remain explicit.

~~~text
Reference Evidence
       |
       v
AI / Algorithm
       |
       v
Candidate Calibration
       |
       v
Human / Validation
       |
       v
Approved Baseline
~~~

---

### 263. Automated Calibration

Automated calibration may proceed without continuous human intervention when the scope, constraints and approval policy permit it.

---

### 264. Supervised Calibration

For early Pilot work, supervised calibration may be preferable for important models.

---

### 265. Calibration Approval

Approval should confirm that the calibrated artifact is suitable for its intended downstream use.

Approval is not equivalent to universal validity.

---

### 266. Calibration Rejection

A calibration candidate may be rejected because of:

- poor validation;
- excessive uncertainty;
- unacceptable resource cost;
- poor generalization;
- constraint violations;
- insufficient evidence.

---

### 267. Calibration Promotion Gate

Promotion should follow:

~~~text
Calibration Candidate
        |
        v
Evidence Review
        |
        v
Fidelity Validation
        |
        v
Use-Case Approval
        |
        v
Promoted Calibration
~~~

---

### 268. Calibration Rollback

Previously approved calibration artifacts should remain available for rollback where operational continuity requires it.

---

### 269. Calibration Retirement

A calibration artifact may be retired when:

- superseded;
- invalidated;
- obsolete;
- no longer supported;
- outside its validity envelope.

---

### 270. Calibration Lifecycle

The complete lifecycle is:

~~~text
Define
  |
  v
Prepare
  |
  v
Calibrate
  |
  v
Evaluate
  |
  v
Validate
  |
  v
Approve
  |
  v
Promote
  |
  v
Monitor
  |
  v
Recalibrate / Retire
~~~

---

### 271. Part 2 Closure

Part 2 establishes the internal architecture of Calibration.

The principal conclusions are:

1. Calibration requires an explicit configuration.
2. The parameter space must be controlled.
3. Physical, operational and evidence-supported bounds must be distinguished.
4. Hard constraints must remain authoritative.
5. Parameter identifiability must be evaluated.
6. Reference data preparation must remain traceable.
7. Units and temporal alignment are calibration integrity requirements.
8. Agriculture-specific calibration may be scoped by farm, field, crop, soil or asset.
9. Effective parameter inheritance must be resolved before execution.
10. Calibration runs require explicit lifecycle states.
11. Parallel and distributed calibration must preserve run isolation.
12. Classical methods provide a baseline for comparative evaluation.
13. QAI methods may be evaluated through controlled experiments.
14. Resource availability must be considered before execution.
15. Calibration failure must remain transparent.
16. Checkpoints and branches support long-running experimentation.
17. Calibration evidence must remain connected to model, data and parameter identities.
18. Emulator, Simulator and CPS consume calibrated artifacts for their own purposes.
19. Computational, sensing and communication paths remain independently testable.
20. Calibration results become reusable baselines only after appropriate validation and approval.

The governing principle is:

> **Define the calibration problem explicitly, constrain the search to meaningful parameter space, preserve every transformation and decision, and promote only evidence-supported calibrated artifacts.**

**PART 2 STATUS: COMPLETE — CALIBRATION MODEL, PARAMETER SPACE, REFERENCE ALIGNMENT, EXECUTION AND PROMOTION ARCHITECTURE BASELINE**
---
# Phase 2 — Calibration

## Part 3 — Calibration Execution, Objective Functions, Sensitivity, Uncertainty and Comparative Evaluation

### 272. Purpose of Part 3

Part 3 defines how a calibration experiment is executed, measured, compared and interpreted.

The objective is to ensure that calibration produces an evidence-supported parameter configuration rather than merely a numerically optimized result.

---

### 273. Calibration Execution Principle

Calibration execution follows:

~~~text
Defined Problem
      |
      v
Reference Evidence
      |
      v
Candidate Parameters
      |
      v
Model Execution
      |
      v
Error Measurement
      |
      v
Parameter Update
      |
      v
Convergence / Termination
      |
      v
Candidate Calibration
~~~

---

### 274. Execution Preconditions

Before execution, the calibration environment should confirm:

- model availability;
- reference data availability;
- parameter schema;
- parameter bounds;
- objective definition;
- constraints;
- execution resources;
- reproducibility configuration.

---

### 275. Calibration Readiness

A calibration run should not begin unless all mandatory prerequisites are resolved.

Readiness should distinguish:

- ready;
- ready with warning;
- blocked.

---

### 276. Pre-Execution Validation

Pre-execution checks should verify:

- model compatibility;
- data compatibility;
- parameter compatibility;
- units;
- timestamps;
- configuration;
- resource availability.

---

### 277. Calibration Baseline

Each calibration run should begin from a known baseline.

The baseline may be:

- nominal parameters;
- previously validated parameters;
- engineering estimate;
- experiment-specific initialization.

---

### 278. Baseline Preservation

The original baseline must remain unchanged throughout the calibration run.

---

### 279. Candidate Generation

The calibration engine generates candidate parameter configurations within the defined feasible region.

---

### 280. Candidate Validation

Each candidate should be checked against applicable constraints before or during model execution.

---

### 281. Candidate Evaluation

A candidate is evaluated by executing the model against the defined reference conditions.

---

### 282. Model Execution

Model execution produces predicted outputs corresponding to the reference inputs.

---

### 283. Output Alignment

Predicted outputs should be aligned with reference outputs before calculating calibration error.

---

### 284. Error Calculation

The calibration engine computes the defined objective or error metric.

---

### 285. Error Decomposition

Where useful, total error may be decomposed into:

- state error;
- temporal error;
- amplitude error;
- response error;
- steady-state error;
- transient error.

---

### 286. Error Attribution

Error attribution should identify whether observed deviation is more likely associated with:

- parameters;
- data;
- model structure;
- timing;
- environment;
- measurement uncertainty.

---

### 287. Objective Function

The objective function defines what the calibration process attempts to improve.

It should be explicitly identified and versioned.

---

### 288. Single-Objective Calibration

A single-objective calibration may minimize one defined measure such as:

- RMSE;
- absolute error;
- maximum error;
- response-time error.

---

### 289. Multi-Objective Calibration

A multi-objective calibration evaluates several objectives simultaneously.

---

### 290. Objective Hierarchy

Objectives may have priority levels.

For example:

~~~text
Safety / Feasibility
        |
        v
Physical Consistency
        |
        v
Behavioral Accuracy
        |
        v
Computational Efficiency
~~~

Lower-priority objectives must not override higher-priority constraints.

---

### 291. Penalty Functions

Penalty functions may represent soft constraints or undesirable behavior.

Their definition should remain explicit.

---

### 292. Objective Weighting

Weighted objectives should identify:

- objective;
- weight;
- scale;
- normalization;
- rationale.

---

### 293. Objective Normalization

Objectives with different numerical scales should be normalized appropriately before combination.

---

### 294. Objective Conflict

When objectives conflict, the calibration result should preserve the trade-off rather than hiding it.

---

### 295. Pareto Frontier

A multi-objective calibration may produce a Pareto frontier.

This allows engineering selection rather than forcing an arbitrary single optimum.

---

### 296. Engineering Selection

A final parameter set may be selected from candidate solutions based on:

- validation;
- applicability;
- robustness;
- resource cost;
- operational requirements.

---

### 297. Calibration Stopping Criteria

Stopping criteria may include:

- target tolerance reached;
- objective improvement below threshold;
- maximum iterations;
- maximum runtime;
- resource limit;
- convergence condition.

---

### 298. Target Tolerance

A target tolerance should be defined before execution where practical.

---

### 299. Improvement Threshold

A minimum meaningful improvement may be defined to prevent unnecessary iterations.

---

### 300. Maximum Iterations

Maximum iteration limits prevent uncontrolled calibration execution.

---

### 301. Maximum Runtime

A calibration may have a defined execution-time limit.

---

### 302. Resource Limit

Resource limits may include:

- compute budget;
- memory;
- energy;
- network;
- quantum shots;
- monetary budget.

---

### 303. Early Success

If an acceptable calibrated result is obtained early, the experiment may terminate successfully according to the defined stopping rule.

---

### 304. Early Failure

If the remaining search space cannot produce an acceptable result, the run may terminate as failed.

---

### 305. Convergence

Convergence indicates that the selected calibration method has reached its defined numerical stopping condition.

It does not prove model validity.

---

### 306. False Convergence

A calibration may converge to an unsuitable solution.

Therefore convergence must always be followed by independent validation.

---

### 307. Local Optimum

A calibration method may converge to a local optimum.

Multiple initialization or alternative methods may be used where this risk is material.

---

### 308. Global Search

Global search methods may be useful for nonlinear or highly multimodal calibration problems.

---

### 309. Search Strategy

The selected search strategy should be matched to:

- parameter dimensionality;
- objective smoothness;
- constraints;
- computational cost;
- required confidence.

---

### 310. Parameter Sweep

A parameter sweep may evaluate a defined set of parameter values.

It is useful for:

- sensitivity;
- visualization;
- coarse calibration;
- sanity checking.

---

### 311. Grid Search

Grid search may be used for low-dimensional parameter spaces.

It becomes expensive as dimensionality increases.

---

### 312. Random Search

Randomized search may provide broader coverage of high-dimensional spaces.

The randomization context should be reproducible where practical.

---

### 313. Bayesian Search

Bayesian approaches may use previous observations to guide subsequent parameter evaluations.

---

### 314. Gradient-Based Calibration

Gradient-based methods may be used where the model and objective support reliable derivatives.

---

### 315. Derivative-Free Calibration

Derivative-free methods may be used where gradients are unavailable, unstable or impractical.

---

### 316. Evolutionary Calibration

Evolutionary methods may explore complex parameter spaces using populations of candidates.

---

### 317. Quantum-Inspired Search

Quantum-inspired methods may be used as alternative search strategies where the problem structure supports them.

---

### 318. Hybrid Search

Hybrid calibration may combine multiple methods.

For example:

~~~text
Coarse Classical Search
          |
          v
Candidate Reduction
          |
          v
QAI / Quantum-Inspired Search
          |
          v
Classical Refinement
          |
          v
Validation
~~~

---

### 319. Quantum Search

Quantum methods may be evaluated where an appropriate representation and execution environment exist.

Their performance must be measured rather than assumed.

---

### 320. Method Selection Evidence

The chosen calibration method should record:

- reason for selection;
- alternatives considered;
- resource requirements;
- expected benefits;
- limitations.

---

### 321. Calibration Benchmark

Alternative calibration methods should use a common benchmark definition when they are being compared.

---

### 322. Benchmark Dataset

A benchmark dataset should remain stable across comparative runs unless the experiment explicitly tests data sensitivity.

---

### 323. Benchmark Configuration

The benchmark should identify:

- model version;
- dataset version;
- parameter space;
- constraints;
- objectives;
- stopping rules.

---

### 324. Benchmark Fairness

Comparison should avoid giving one method materially different problem conditions unless that difference is itself being studied.

---

### 325. Computational Cost

Calibration cost should include, where relevant:

- model evaluations;
- preprocessing;
- optimization;
- postprocessing;
- queue time;
- communication;
- resource utilization.

---

### 326. Calibration Runtime

Runtime should be recorded separately from model evaluation count where useful.

---

### 327. Model Evaluation Count

The number of model evaluations can be an important measure of calibration efficiency.

---

### 328. Resource Utilization

Actual resource consumption should be recorded where available.

---

### 329. Calibration Energy

Energy consumption may become a relevant metric for:

- edge;
- field;
- portable;
- large-scale QAI;
- sustainability-sensitive deployments.

---

### 330. Calibration Cost-Quality Trade-Off

A lower error result may not be preferable if it requires disproportionate resources.

---

### 331. Practical Calibration Value

A practical calibration result balances:

- fidelity;
- robustness;
- cost;
- runtime;
- resource use;
- reproducibility.

---

### 332. Sensitivity Analysis

Sensitivity analysis evaluates how changes in parameters affect outputs.

---

### 333. Local Sensitivity

Local sensitivity examines behavior near a selected parameter configuration.

---

### 334. Global Sensitivity

Global sensitivity examines parameter influence across a broader parameter region.

---

### 335. Sensitivity Metric

A sensitivity metric should identify the relationship between parameter variation and output variation.

---

### 336. Sensitivity Ranking

Parameters may be ranked by influence.

---

### 337. High-Sensitivity Parameter

A high-sensitivity parameter can materially affect model outputs.

Such parameters require particular calibration attention.

---

### 338. Low-Sensitivity Parameter

A low-sensitivity parameter may have limited influence within the tested region.

It may not justify expensive calibration effort.

---

### 339. Sensitivity and Identifiability

High sensitivity does not automatically mean high identifiability.

A parameter can strongly influence outputs while remaining difficult to estimate uniquely.

---

### 340. Sensitivity and Parameter Correlation

Correlated parameters may produce misleading individual sensitivity interpretations.

Joint analysis may be required.

---

### 341. Sensitivity Screening

Sensitivity analysis may be used to reduce the active calibration parameter set.

The decision should remain documented.

---

### 342. Sensitivity Scenario

Sensitivity may be evaluated across:

- E0 nominal;
- E1 perturbed;
- E2 degraded;
- E3 critical;
- E4 extreme,

where applicable.

---

### 343. Sensitivity Across Assets

The same parameter may have different sensitivity across:

- farms;
- fields;
- crops;
- assets;
- environmental conditions.

---

### 344. Sensitivity Across Time

Dynamic systems may exhibit time-varying parameter sensitivity.

---

### 345. Sensitivity Across Operating Regions

Sensitivity should be interpreted within the operating region represented by the evidence.

---

### 346. Robustness

A calibrated model should ideally remain acceptable under reasonable variation around the calibrated parameters.

---

### 347. Parameter Perturbation

Robustness testing may perturb calibrated parameters within defined bounds.

---

### 348. Robustness Result

A robustness result should identify whether model performance:

- remains acceptable;
- degrades gradually;
- degrades sharply;
- becomes invalid.

---

### 349. Fragile Calibration

A calibration that performs well only at a narrowly tuned point may be considered fragile.

---

### 350. Robust Calibration

A robust calibration maintains acceptable behavior across a meaningful neighborhood of parameter and operating conditions.

---

### 351. Uncertainty Propagation

Parameter uncertainty may propagate into model outputs.

The calibration framework should preserve this relationship where practical.

---

### 352. Uncertainty Sources

Relevant uncertainty sources may include:

- measurement;
- parameter;
- model;
- environmental;
- stochastic;
- numerical.

---

### 353. Parameter Distribution

Where uncertainty is material, parameters may be represented as distributions rather than single values.

---

### 354. Confidence Interval

Where statistically appropriate, calibration results may include confidence intervals or equivalent uncertainty bounds.

---

### 355. Prediction Interval

Prediction uncertainty should be distinguished from uncertainty in the parameter estimate itself.

---

### 356. Uncertainty Bounds

Reported uncertainty bounds should be consistent with the evidence supporting them.

---

### 357. Uncertainty Under Extrapolation

Uncertainty generally increases when operating outside the evidence-supported calibration region.

The system should make this limitation visible.

---

### 358. Monte Carlo Calibration Evaluation

Monte Carlo evaluation may be used to examine uncertainty propagation after calibration.

---

### 359. Stochastic Calibration Evaluation

For stochastic models, multiple runs may be required to characterize expected behavior and variance.

---

### 360. Replicate Runs

Replicate calibration executions can help distinguish method variability from model behavior.

---

### 361. Randomness Control

Randomized calibration should preserve sufficient randomization information to support reproducibility.

---

### 362. Statistical Significance

Where comparative claims depend on statistical analysis, the evaluation should use appropriate statistical methods.

---

### 363. Practical Significance

Statistical significance alone does not establish practical value.

The difference should also matter to the intended use case.

---

### 364. Calibration Confidence

Confidence should combine relevant evidence rather than being inferred solely from a low objective value.

---

### 365. Confidence Factors

Possible factors include:

- data quality;
- coverage;
- identifiability;
- validation error;
- robustness;
- uncertainty;
- reproducibility.

---

### 366. Calibration Quality Score

A composite calibration quality score may be used where its construction is explicitly defined.

---

### 367. No Opaque Score

A single score should not hide critical weaknesses in individual dimensions.

---

### 368. Quality Vector

A multi-dimensional quality representation may be preferable:

~~~text
Calibration Quality
   |
   +--> Accuracy
   +--> Robustness
   +--> Coverage
   +--> Confidence
   +--> Cost
   +--> Reproducibility
~~~

---

### 369. Calibration Acceptance

Acceptance criteria should be defined before final promotion.

---

### 370. Acceptance Dimensions

Acceptance may consider:

- maximum error;
- average error;
- operating-condition coverage;
- robustness;
- resource cost;
- uncertainty;
- reproducibility.

---

### 371. Acceptance Is Use-Case Specific

A calibration acceptable for irrigation planning may not be acceptable for real-time safety control.

---

### 372. Control-Critical Calibration

Where calibration supports control, tighter requirements may be required for:

- timing;
- response;
- stability;
- constraint adherence.

---

### 373. Planning Calibration

Planning applications may emphasize:

- aggregate accuracy;
- scenario coverage;
- long-term behavior;
- resource efficiency.

---

### 374. Monitoring Calibration

Monitoring applications may emphasize:

- anomaly sensitivity;
- state accuracy;
- temporal alignment;
- freshness.

---

### 375. Real-Time Calibration

Real-time calibration may require strict computational and latency constraints.

This remains a specialized extension beyond the minimum Pilot.

---

### 376. Calibration and Emulator Fidelity

A calibration candidate should be tested against the relevant fidelity dimensions after calibration.

---

### 377. Functional Fidelity

The calibrated model should reproduce required functions.

---

### 378. State Fidelity

The calibrated model should reproduce relevant state behavior.

---

### 379. Behavioral Fidelity

The calibrated model should reproduce relevant dynamic behavior.

---

### 380. Temporal Fidelity

The calibrated model should reproduce relevant timing behavior.

---

### 381. Environmental Fidelity

Where applicable, environmental response should remain within acceptable tolerance.

---

### 382. Stochastic Fidelity

Where stochastic behavior matters, statistical characteristics should be evaluated.

---

### 383. Calibration and Fault Fidelity

Fault parameters should be evaluated separately when fault behavior is within scope.

---

### 384. Calibration and Simulation Validity

A calibrated model does not automatically make every simulation scenario valid.

Scenario validity remains a separate responsibility.

---

### 385. Calibration and CPS Validity

A calibrated model does not automatically prove CPS control correctness.

---

### 386. Calibration and QAI Validity

A QAI-generated calibration result must still satisfy the same model and validation requirements as a classical result.

---

### 387. Comparative Calibration Result

The comparative result should identify:

- method;
- quality;
- cost;
- runtime;
- resource use;
- robustness;
- limitations.

---

### 388. Classical Versus QAI

The comparison should answer:

> **Does the alternative computational method produce a meaningful practical improvement over the classical baseline?**

---

### 389. No Technology Bias

The evaluation must remain method-neutral.

---

### 390. Advantage Gate Decision

A calibration method may be classified as:

- advantageous;
- potentially advantageous;
- equivalent;
- disadvantageous;
- inconclusive.

---

### 391. Inconclusive Result

An inconclusive result should remain inconclusive.

The architecture should not manufacture an advantage claim from insufficient evidence.

---

### 392. Fallback

If a selected calibration method fails or becomes impractical, an approved fallback may be used.

---

### 393. Fallback Transparency

The evidence must identify when fallback occurred.

---

### 394. Fallback Comparability

Fallback results should remain distinguishable from primary-method results.

---

### 395. Graceful Degradation

If calibration cannot reach the preferred computational method, the system may continue using a validated alternative where permitted.

---

### 396. Controlled Termination

If no valid method remains available, calibration should terminate transparently.

---

### 397. Invalid Calibration Result

A result should be marked invalid when:

- constraints are violated;
- reference data is invalid;
- execution is incomplete;
- provenance is missing;
- model compatibility fails.

---

### 398. No False Success

A numerical result should never be represented as a successful calibration when required validity conditions are not satisfied.

---

### 399. Calibration Evidence

The evidence package should preserve:

- configuration;
- input data;
- parameter bounds;
- method;
- iterations;
- objective history;
- final parameters;
- error metrics;
- resource metrics;
- termination reason.

---

### 400. Objective History

Where practical, objective progression should be retained.

This helps distinguish:

- convergence;
- stagnation;
- instability;
- premature termination.

---

### 401. Parameter History

Material parameter updates should be retained where practical.

---

### 402. Execution Trace

The execution trace should support reconstruction of the calibration process.

---

### 403. Calibration Reproducibility

The experiment should be reproducible from the preserved:

- model;
- data;
- configuration;
- method;
- environment;
- random context.

---

### 404. Environment Identity

The execution environment should be identifiable when environment differences can affect results.

---

### 405. Software Dependency Identity

Relevant computational dependencies should be versioned or otherwise identifiable.

---

### 406. Hardware Context

Where hardware affects performance or numerical behavior, the hardware context should be recorded.

---

### 407. Quantum Execution Context

For quantum calibration experiments, the evidence may additionally identify:

- backend;
- circuit or representation;
- shots;
- relevant execution configuration.

---

### 408. Hybrid Execution Context

Hybrid methods should record the division between:

- classical computation;
- QAI computation;
- quantum execution.

---

### 409. Calibration Result Package

A reusable calibration result may be packaged as:

- parameter set;
- calibrated model;
- evidence;
- validity envelope;
- limitations;
- compatibility metadata.

---

### 410. Reuse Eligibility

A calibration artifact is reusable only within its declared compatibility and validity boundaries.

---

### 411. Reuse Without Revalidation

A calibrated artifact should not be assumed valid for a materially different:

- farm;
- crop;
- soil;
- asset;
- environment;
- operating condition.

---

### 412. Reuse Validation

Reuse may require targeted revalidation.

---

### 413. Transfer Calibration

A calibration may be transferred across similar assets or sites where the model explicitly supports transfer.

---

### 414. Transferability Evidence

Transferability should be demonstrated rather than assumed.

---

### 415. Domain Generalization

A generic agriculture calibration should identify the conditions under which it may be generalized.

---

### 416. Local Adaptation

Local adaptation may refine a reusable calibration without destroying the generic baseline.

---

### 417. Calibration Inheritance

Derived calibrations should retain lineage to their parent calibration.

---

### 418. Calibration Lineage

~~~text
Generic Model
     |
     v
Generic Calibration
     |
     +--> Farm A Calibration
     |
     +--> Farm B Calibration
     |
     +--> Farm C Calibration
~~~

---

### 419. Parent Baseline Preservation

Parent calibrations remain immutable when child calibrations are created.

---

### 420. Calibration Family

Related calibrations may be organized into a calibration family.

A family may share:

- model;
- domain;
- parameter schema;
- validation methodology.

---

### 421. Calibration Registry

A future registry may index:

- calibration identity;
- model;
- scope;
- applicability;
- status;
- validity envelope;
- provenance.

---

### 422. Registry Discovery

Users or services should be able to identify suitable calibration artifacts without manually inspecting implementation details.

---

### 423. Calibration Selection

Selection should consider:

- applicability;
- validation status;
- freshness;
- confidence;
- resource requirements.

---

### 424. Freshness

Calibration freshness indicates how current the calibration remains relative to its reference conditions.

---

### 425. Stale Calibration

A calibration may become stale when the underlying target system or operating environment changes materially.

---

### 426. Staleness Does Not Mean Invalidity

A stale calibration may remain historically valid while no longer being appropriate for current use.

---

### 427. Calibration Monitoring

Post-Pilot monitoring may evaluate whether a calibration remains within its validated envelope.

---

### 428. Recalibration Trigger

Persistent deviation beyond the accepted tolerance may trigger reassessment.

---

### 429. Calibration Governance

Material calibration changes should follow applicable governance controls.

---

### 430. Calibration Safety

Calibration must not modify safety constraints merely to improve numerical fit.

---

### 431. Human Oversight

Human review should be available for consequential calibration decisions.

---

### 432. Calibration Auditability

Calibration decisions should be explainable from the preserved evidence.

---

### 433. Calibration Change Control

Changes to:

- model;
- parameter bounds;
- objectives;
- reference data;
- calibration method

should be controlled.

---

### 434. Change Classification

Changes may be classified as:

- minor;
- material;
- structural;
- invalidating.

---

### 435. Material Change

A material change may require full recalibration and validation.

---

### 436. Structural Change

A structural model change should trigger the applicable Structural Integrity process before calibration continues.

---

### 437. Calibration Regression

Previously approved calibration cases should be rerun when material changes may affect them.

---

### 438. Regression Baseline

Regression should compare against the approved calibration baseline.

---

### 439. Regression Result

Regression should identify whether:

- performance improved;
- performance degraded;
- behavior remained equivalent;
- validity changed.

---

### 440. Calibration Release

A validated calibration artifact may be released for downstream use.

---

### 441. Release Metadata

Release metadata should include:

- version;
- scope;
- validity;
- model compatibility;
- approval;
- limitations.

---

### 442. Calibration Rollback

A released calibration should support rollback to a previous approved version where operational continuity requires it.

---

### 443. Calibration Retirement

Retired calibration artifacts should remain identifiable for historical evidence where appropriate.

---

### 444. Part 3 Closure

Part 3 establishes the execution and evaluation architecture for Calibration.

The principal conclusions are:

1. Calibration execution must begin from a known baseline.
2. Candidate parameters must remain inside the defined feasible region.
3. Objective functions must be explicit and versioned.
4. Constraints must remain authoritative.
5. Convergence does not establish validity.
6. Sensitivity analysis can guide parameter selection.
7. Identifiability and sensitivity must not be confused.
8. Robustness testing should evaluate behavior around the calibrated point.
9. Uncertainty must remain visible.
10. Comparative computational methods should use equivalent problem definitions.
11. Classical methods provide the reference baseline.
12. Quantum-Inspired, Hybrid QAI and Quantum methods may be evaluated where appropriate.
13. AI may assist calibration without becoming the authority over physical meaning.
14. Resource cost is part of practical calibration quality.
15. Calibration results must preserve execution and objective history.
16. Failed and inconclusive experiments must remain transparent.
17. Fallback must be explicit and traceable.
18. Calibrated artifacts require independent fidelity validation.
19. Reuse requires compatibility and, where necessary, revalidation.
20. Calibration lineage enables controlled domain and farm-specific adaptation.
21. Regression protects approved calibration baselines.
22. Material model changes require appropriate structural and calibration reassessment.
23. Calibration ultimately produces evidence-supported candidate models, not automatic claims of truth.

The governing principle is:

> **Optimize the parameters only within a meaningful physical and evidential boundary, measure the trade-offs, preserve uncertainty, compare methods fairly, and validate independently before promoting the result.**

**PART 3 STATUS: COMPLETE — CALIBRATION EXECUTION, OBJECTIVES, SENSITIVITY, UNCERTAINTY, COMPARATIVE EVALUATION AND EVIDENCE BASELINE**
---
# Phase 2 — Calibration

## Part 4 — Calibration Validation, Fidelity Assessment, Drift, Recalibration and Model Promotion

### 445. Purpose of Part 4

Part 4 defines how a calibrated model is independently assessed before it can become an approved reusable baseline.

The central principle is:

> **Calibration produces a candidate; validation determines whether the candidate is fit for its intended use.**

---

### 446. Calibration Validation Boundary

Calibration validation evaluates the calibrated artifact against evidence that was not used to produce the calibration where practical.

---

### 447. Independent Validation

The preferred validation arrangement is:

~~~text
Reference Evidence
      |
      +----> Calibration Data
      |
      +----> Independent Validation Data
                    |
                    v
             Validation Process
                    |
                    v
             Calibration Result
~~~

---

### 448. Validation Objective

Validation should determine whether the calibrated model:

- reproduces relevant behavior;
- remains within defined tolerance;
- behaves consistently across intended conditions;
- respects constraints;
- provides sufficient evidence for its intended use.

---

### 449. Validation Is Use-Case Specific

A calibrated model is not universally valid.

Validity depends on:

- intended use;
- operating region;
- reference evidence;
- fidelity requirements;
- tolerance;
- model scope.

---

### 450. Validation Scope

The validation scope should identify:

- model;
- calibration version;
- validation dataset;
- scenarios;
- operating conditions;
- metrics;
- acceptance criteria.

---

### 451. Validation Dataset Identity

The validation dataset should have an independent identity and provenance.

---

### 452. Validation Dataset Independence

Where practical, validation data should not have influenced:

- parameter selection;
- objective tuning;
- model selection;
- calibration stopping criteria.

---

### 453. Validation Leakage

Using validation evidence during calibration can produce optimistic validation results.

Potential leakage should therefore be identified and controlled.

---

### 454. Temporal Leakage

For dynamic agricultural systems, future observations should not inadvertently influence calibration of earlier periods when temporal prediction or reconstruction is being assessed.

---

### 455. Spatial Leakage

Where spatial generalization matters, data from the validation location should not inadvertently determine the calibrated parameters.

---

### 456. Scenario Leakage

A scenario used to tune parameters should not automatically be treated as independent validation evidence.

---

### 457. Validation Reference Alignment

Validation observations and model outputs must be aligned using the same controlled interpretation of:

- units;
- timestamps;
- variables;
- states;
- boundaries.

---

### 458. Validation Metrics

Validation metrics should be defined before evaluation where practical.

They may include:

- absolute error;
- relative error;
- RMSE;
- maximum deviation;
- temporal error;
- correlation;
- response error.

---

### 459. Metric Applicability

Each metric should have a documented reason for being used.

---

### 460. Metric Limitations

No single metric should be assumed to capture all relevant model behavior.

---

### 461. Multi-Dimensional Validation

Validation may evaluate:

~~~text
              Validation
                  |
       +----------+----------+
       |          |          |
    State      Behavior    Timing
       |          |          |
       +----------+----------+
                  |
             Constraints
                  |
               Robustness
~~~

---

### 462. Functional Validation

Functional validation verifies that required model functions behave as intended.

---

### 463. State Validation

State validation compares relevant model states with reference states.

---

### 464. Behavioral Validation

Behavioral validation evaluates dynamic response under representative conditions.

---

### 465. Temporal Validation

Temporal validation evaluates:

- delays;
- response times;
- event timing;
- state-transition timing.

---

### 466. Environmental Validation

Environmental response should be evaluated where environmental interaction is part of the model scope.

---

### 467. Stochastic Validation

For stochastic models, validation should evaluate statistical behavior rather than requiring identical individual trajectories.

---

### 468. Fault Validation

Where fault behavior is calibrated, fault responses should be validated against suitable evidence.

---

### 469. Constraint Validation

The calibrated model must continue to respect mandatory constraints during validation.

---

### 470. Conservation Validation

Where applicable, physical conservation relationships should be checked independently of the calibration objective.

Examples may include:

- mass;
- water;
- energy;
- flow.

---

### 471. Physical Plausibility

A numerically accurate result may still be physically implausible.

Physical plausibility therefore remains an independent validation dimension.

---

### 472. Domain Validation

Agriculture-specific validation may evaluate:

- crop response;
- soil behavior;
- irrigation response;
- water demand;
- machinery behavior;
- environmental interaction.

---

### 473. Reference Hierarchy

When multiple validation references exist, their relative authority should be established.

---

### 474. Conflicting References

Conflicting reference sources should not be silently averaged.

The conflict should be identified and investigated.

---

### 475. Validation Uncertainty

Validation results should account for relevant uncertainty in the reference evidence.

---

### 476. Error Bars

Where statistically meaningful, validation results may include uncertainty bounds.

---

### 477. Confidence Assessment

Validation confidence should consider:

- reference quality;
- coverage;
- independence;
- uncertainty;
- consistency;
- repeatability.

---

### 478. Validation Coverage

Validation should cover the operating region relevant to the intended use.

---

### 479. Coverage Dimensions

Coverage may include:

- state;
- environment;
- season;
- crop;
- soil;
- asset;
- control mode;
- operating condition.

---

### 480. Coverage Matrix

A validation coverage matrix may identify:

| Dimension | Covered | Gap |
|---|---|---|
| Nominal | Yes/No | Identified |
| Perturbed | Yes/No | Identified |
| Degraded | Yes/No | Identified |
| Critical | Yes/No | Identified |
| Extreme | Yes/No | Identified |

---

### 481. Coverage Gap

A coverage gap should be explicitly reported.

A gap does not necessarily invalidate the model if the affected region is outside the intended use.

---

### 482. Validity Envelope

The validation process should define the supported validity envelope.

---

### 483. Validity Envelope Dimensions

The envelope may contain:

- parameter range;
- input range;
- environmental range;
- temporal range;
- spatial range;
- scenario range;
- operating condition.

---

### 484. Validity Outside Envelope

Use outside the validated envelope should be identified as:

- unsupported;
- experimental;
- requiring additional validation.

---

### 485. Extrapolation Warning

A calibrated model used beyond its evidence-supported region should produce an explicit limitation or warning.

---

### 486. Tolerance Assessment

Validation determines whether observed deviations remain within the defined tolerance.

---

### 487. Tolerance Classification

Validation may classify results as:

- within tolerance;
- marginal;
- outside tolerance;
- indeterminate.

---

### 488. Tolerance Is Contextual

The same numerical deviation may be acceptable for one use case and unacceptable for another.

---

### 489. Error Distribution

Validation should examine the distribution of errors where useful rather than only the average.

---

### 490. Maximum Error

Maximum deviation may be important where extreme error can cause operational consequences.

---

### 491. Systematic Error

Persistent directional error may indicate:

- biased data;
- parameter bias;
- model-form error;
- missing variables.

---

### 492. Random Error

Random error may reflect:

- measurement noise;
- stochastic behavior;
- unresolved environmental variation.

---

### 493. Bias Analysis

Validation should distinguish systematic bias from random variation.

---

### 494. Residual Analysis

Residuals may be analyzed against:

- time;
- state;
- parameter;
- environment;
- operating condition.

---

### 495. Residual Pattern

A structured residual pattern may indicate that the model is missing relevant behavior.

---

### 496. Residual Independence

Where applicable, residual independence should be assessed.

---

### 497. Temporal Residuals

Temporal residual patterns may reveal:

- delay;
- drift;
- seasonality;
- unmodeled dynamics.

---

### 498. Spatial Residuals

Spatial patterns may reveal location-specific model limitations.

---

### 499. Conditional Residuals

Residuals may vary by:

- crop;
- soil;
- weather;
- asset;
- operating condition.

These differences should remain visible.

---

### 500. Validation Failure Diagnosis

A validation failure should be classified before corrective action is selected.

---

### 501. Validation Failure Classes

Possible classes include:

- parameter inadequacy;
- data inadequacy;
- model-form inadequacy;
- structural mismatch;
- timing mismatch;
- environmental mismatch;
- stochastic mismatch;
- implementation error.

---

### 502. Parameter Correction

If evidence indicates parameter inadequacy, controlled recalibration may be considered.

---

### 503. Model Correction

If evidence indicates model-form inadequacy, changing parameters alone may not be sufficient.

---

### 504. Structural Correction

If validation reveals a structural mismatch, the authoritative structural artifact must be corrected.

---

### 505. Timing Correction

Timing mismatch may require correction of:

- delays;
- sampling;
- clocks;
- event ordering;
- execution configuration.

---

### 506. Data Correction

Data problems should be corrected at the data preparation or reference source boundary.

---

### 507. No Hidden Correction

Validation must not silently modify the calibrated artifact to make the validation result pass.

---

### 508. Recalibration Decision

Recalibration should be initiated only when evidence indicates that parameter adjustment is an appropriate response.

---

### 509. Recalibration Scope

Recalibration should identify:

- affected parameters;
- affected scenarios;
- affected validity region;
- expected impact.

---

### 510. Local Recalibration

A local recalibration may be used when only a defined operating region is affected.

---

### 511. Global Recalibration

A global recalibration may be required when the existing parameter set is broadly inadequate.

---

### 512. Recalibration Lineage

Every recalibration should retain lineage to the previous calibration baseline.

---

### 513. Recalibration Comparison

The new calibration should be compared against the previous approved baseline.

---

### 514. Improvement Requirement

A recalibration should demonstrate meaningful improvement or address a documented limitation.

---

### 515. Regression Risk

Improving one scenario may degrade another.

Recalibration should therefore include regression assessment.

---

### 516. Cross-Scenario Regression

Previously validated scenarios should be rerun where material parameter changes may affect them.

---

### 517. Cross-Domain Regression

Where a calibration is shared across multiple farms, crops or domains, affected uses should be assessed.

---

### 518. Calibration Robustness Reassessment

A materially changed calibration should be reassessed for robustness.

---

### 519. Sensitivity Reassessment

Material parameter changes may require renewed sensitivity analysis.

---

### 520. Uncertainty Reassessment

Changes to parameters or data may alter uncertainty estimates.

---

### 521. Drift Detection

Operational evidence may reveal drift after a calibration has been promoted.

---

### 522. Drift Types

Calibration-related drift may include:

- parameter drift;
- sensor drift;
- environmental drift;
- process drift;
- model drift.

---

### 523. Parameter Drift

Parameter drift occurs when the effective parameter values required to represent the target change over time.

---

### 524. Sensor Drift

Sensor drift changes the reference measurement behavior.

It should not automatically be interpreted as model drift.

---

### 525. Environmental Drift

Environmental changes may alter system behavior without indicating a model defect.

---

### 526. Process Drift

Operational practices may change the behavior represented by the model.

---

### 527. Model Drift

Model drift indicates that the model structure itself may no longer represent the target adequately.

---

### 528. Drift Detection Metrics

Drift detection may use:

- residual trends;
- parameter movement;
- distribution changes;
- state deviations;
- performance degradation.

---

### 529. Drift Threshold

A drift threshold should be defined according to intended use.

---

### 530. Drift Confirmation

A drift alert should not automatically trigger recalibration.

Evidence should first determine whether the change is:

- measurement;
- environment;
- process;
- parameter;
- model.

---

### 531. Drift Response

Possible responses include:

~~~text
Drift Detected
      |
      v
Classify Drift
      |
      +--> Measurement Issue
      |
      +--> Environmental Change
      |
      +--> Parameter Drift
      |
      +--> Model Drift
      |
      v
Controlled Response
~~~

---

### 532. Monitoring Before Recalibration

Where practical, monitoring should establish whether observed deviation is persistent.

---

### 533. Recalibration Trigger

A recalibration trigger may combine:

- error threshold;
- persistence;
- operating-condition change;
- reference-data availability.

---

### 534. Automatic Recalibration

Automatic recalibration may be supported in mature deployments but should remain subject to governance and validation policies.

---

### 535. Pilot Recalibration

During the Pilot, recalibration should preferably remain controlled and observable.

---

### 536. Post-Pilot Recalibration

Post-Pilot operation may support more automated recalibration workflows.

---

### 537. Calibration Version Promotion

A recalibrated model should not replace the approved baseline until validation succeeds.

---

### 538. Promotion States

A practical lifecycle is:

~~~text
Candidate
   |
   v
Validated
   |
   v
Approved
   |
   v
Promoted
   |
   v
Active
   |
   v
Superseded / Retired
~~~

---

### 539. Approval Boundary

Approval confirms fitness for the declared use case and validity envelope.

---

### 540. Promotion Boundary

Promotion makes the validated calibration available to downstream execution.

---

### 541. Active Calibration

An active calibration is the currently selected approved configuration for a defined scope.

---

### 542. Multiple Active Calibrations

Multiple calibrations may legitimately be active when they apply to different:

- farms;
- crops;
- assets;
- environments;
- scenarios.

---

### 543. Selection Rule

The applicable calibration should be selected using explicit compatibility and scope rules.

---

### 544. Calibration Priority

If multiple candidates match, the selection priority should be deterministic and explainable.

---

### 545. Calibration Conflict

Conflicting applicable calibrations should not be silently resolved.

---

### 546. Conflict Resolution

Conflict resolution should consider:

- authority;
- scope;
- validity;
- freshness;
- approval;
- specificity.

---

### 547. Specificity Rule

A more specific calibration may override a generic calibration when the model explicitly supports such inheritance.

---

### 548. Farm-Specific Calibration

A farm-specific calibration may take precedence over a generic agriculture baseline for that farm.

---

### 549. Field-Specific Calibration

A field-specific calibration may be used where the underlying model supports field-level variation.

---

### 550. Asset-Specific Calibration

Equipment or sensor calibration may be scoped to a specific asset identity.

---

### 551. Calibration Applicability

Every promoted calibration should identify where it applies.

---

### 552. Calibration Expiration

Some calibration artifacts may have review or expiration conditions.

---

### 553. Expired Calibration

An expired calibration should not silently remain the active choice.

---

### 554. Historical Calibration

Historical calibration artifacts may remain available for reproducibility and audit.

---

### 555. Calibration Rollback Test

Rollback should be tested where operational continuity depends on it.

---

### 556. Calibration Recovery

A recovery process should identify the last known approved calibration.

---

### 557. Calibration Checkpoint Recovery

Long-running calibration may resume from a checkpoint without losing provenance.

---

### 558. Validation After Recovery

A recovered process should verify that its model and data context remain compatible.

---

### 559. Calibration Reproducibility Test

A selected calibration should be reproducible under the defined environment and configuration.

---

### 560. Numerical Reproducibility

Numerical differences caused by execution environments should be distinguished from meaningful model differences.

---

### 561. Stochastic Reproducibility

Stochastic methods should preserve enough context to reproduce or statistically reproduce the experiment.

---

### 562. Reproducibility Limits

Exact bit-level reproduction may not always be possible.

The architecture should record known reproducibility limitations.

---

### 563. Validation Evidence Package

The validation package should contain:

- calibration identity;
- model identity;
- validation data;
- metrics;
- tolerance;
- coverage;
- uncertainty;
- limitations;
- decision.

---

### 564. Validation Decision

The validation decision may be:

- pass;
- pass with limitations;
- conditional;
- fail;
- inconclusive.

---

### 565. Pass

`PASS` means the calibrated artifact satisfies the defined validation requirements for the declared scope.

---

### 566. Pass With Limitations

The model passes for its declared use but has known limitations that must remain visible.

---

### 567. Conditional Pass

A conditional pass requires defined restrictions or additional controls.

---

### 568. Fail

`FAIL` means required validation conditions are not satisfied.

---

### 569. Inconclusive

`INCONCLUSIVE` means available evidence is insufficient to establish validity.

---

### 570. No False Confidence

An inconclusive validation result must not be represented as a successful validation.

---

### 571. Validation Evidence Lineage

Validation evidence should remain connected to:

~~~text
Reference
   |
   v
Calibration
   |
   v
Validation
   |
   v
Decision
   |
   v
Promotion
~~~

---

### 572. Calibration and Structural Integrity

If validation reveals structural inconsistency, the model should return to the Structural Integrity boundary.

---

### 573. Calibration and Emulator Fidelity

If validation reveals insufficient behavioral reproduction, the calibrated model may require additional calibration or model revision.

---

### 574. Calibration and Simulation Validity

If validation reveals scenario-specific limitations, Simulation should restrict use to supported scenarios.

---

### 575. Calibration and CPS

If calibrated behavior affects control stability or timing, CPS validation should be performed separately.

---

### 576. Calibration and QAI

A QAI-generated calibration remains subject to the same validation requirements as a classical calibration.

---

### 577. Calibration Method Comparison

The validation stage may compare calibrated outputs generated by different computational methods.

---

### 578. Comparative Quality

Comparison should consider:

- validation quality;
- robustness;
- uncertainty;
- computational cost;
- resource use.

---

### 579. Advantage Gate Reassessment

If QAI calibration provides no meaningful improvement after validation, the classical baseline may remain preferred.

---

### 580. Advantage Gate Evidence

Any claimed QAI advantage should be supported by validated evidence.

---

### 581. Calibration Resource Efficiency

A calibration method should be considered efficient only relative to its achieved validation quality.

---

### 582. Calibration Value

Practical calibration value may combine:

- fidelity;
- robustness;
- computational efficiency;
- deployment feasibility;
- operational benefit.

---

### 583. Calibration and MVV

Where calibration supports a Minimal Viable Value assessment, the result should contribute measurable evidence toward the defined value criteria.

---

### 584. Calibration and ROI

Calibration may influence ROI through:

- reduced modeling effort;
- improved decision quality;
- reduced operational uncertainty;
- reduced computational cost.

Business value remains separately assessed.

---

### 585. Calibration and Sustainability

Where relevant, calibration may improve sustainability analysis by producing more credible:

- water;
- energy;
- resource;
- environmental models.

---

### 586. Calibration and Tolerance

The acceptable calibration tolerance should align with the value and operational tolerance of the intended use.

---

### 587. Calibration for Irrigation

For the Pilot irrigation use case, calibration may evaluate:

- soil moisture response;
- irrigation flow;
- water application;
- pump response;
- weather effects.

---

### 588. Irrigation Calibration Boundary

The irrigation calibration should remain limited to the parameters required to support the Pilot demonstration.

---

### 589. Irrigation Validation

The calibrated irrigation model should be validated against the available reference evidence before being used for comparative QAI evaluation.

---

### 590. Pilot Calibration Minimum

The Pilot should implement only the minimum calibration capability required to demonstrate meaningful model fidelity.

---

### 591. Pilot Calibration Exclusions

The Pilot does not require:

- full automated recalibration;
- large-scale distributed calibration;
- multi-tenant calibration;
- full federation;
- production-grade continuous calibration.

---

### 592. Post-Pilot Calibration Expansion

Post-Pilot may add:

- automated recalibration;
- continuous monitoring;
- large-scale parameter search;
- federated calibration;
- domain-wide calibration libraries.

---

### 593. Calibration Productization

Validated calibration capabilities may later become reusable platform services.

---

### 594. Calibration Service

A future calibration service may provide:

- model selection;
- data preparation;
- parameter estimation;
- validation;
- evidence packaging.

---

### 595. Calibration as QAI Lab Capability

The QAI Lab may use Calibration for:

- experiment preparation;
- model improvement;
- benchmark creation;
- domain adaptation.

---

### 596. Calibration Repository

Reusable calibration artifacts may be maintained in a controlled repository.

---

### 597. Repository Separation

Calibration artifact storage should remain logically separate from the infrastructure architecture of the QAI Data Center.

---

### 598. Calibration and Domain Fabric

Domain Fabric packages may reference validated calibration artifacts appropriate to their domain.

---

### 599. Agriculture Domain Package

An agriculture package may eventually include:

- generic models;
- calibrated parameter sets;
- validity envelopes;
- validation evidence;
- reusable workflows.

---

### 600. Cross-Domain Reuse

Calibration mechanisms should remain reusable even when parameter values and domain models differ.

---

### 601. Technology Neutrality

Calibration architecture must remain independent of a specific optimization library, AI framework, quantum platform or hardware vendor.

---

### 602. Vendor Neutrality

A validated calibration should remain portable where model and parameter semantics are preserved.

---

### 603. Calibration Portability

Portability requires preservation of:

- model semantics;
- parameter definitions;
- units;
- configuration;
- evidence.

---

### 604. Environment Portability

A calibration may execute on different environments if numerical and dependency compatibility are established.

---

### 605. Cloud Portability

A calibration workload may move between compatible cloud environments without changing its logical definition.

---

### 606. Edge Portability

A smaller calibration may execute at edge resources where required capabilities are available.

---

### 607. Local Portability

The Pilot should retain a local execution path for reproducible development and testing.

---

### 608. Air-Gapped Portability

Where required, calibration artifacts should be portable into an air-gapped environment.

---

### 609. Security of Calibration Artifacts

Calibration artifacts should be protected against unauthorized modification.

---

### 610. Integrity Verification

Where appropriate, artifact integrity should be verified before use.

---

### 611. Calibration Governance

Governance should define who may:

- create;
- modify;
- approve;
- promote;
- retire

calibration artifacts.

---

### 612. Separation of Duties

For consequential deployments, calibration creation and approval may be separated.

---

### 613. Human Review Boundary

Human review should focus on consequential decisions rather than requiring manual inspection of every routine numerical iteration.

---

### 614. AI-Assisted Review

AI may assist review by identifying:

- anomalies;
- coverage gaps;
- parameter changes;
- validation degradation.

The final authority remains defined by governance.

---

### 615. Explainability

A calibration decision should be explainable through:

- reference evidence;
- parameter changes;
- objective behavior;
- validation results;
- limitations.

---

### 616. Calibration Audit Trail

The audit trail should preserve material:

- configuration changes;
- method changes;
- parameter changes;
- validation decisions;
- approvals.

---

### 617. Calibration Security Boundary

Security controls should not alter model semantics or calibration results without explicit authorization.

---

### 618. Calibration Data Sovereignty

Reference data should remain within its permitted sovereignty boundary.

---

### 619. Federated Evidence

Federated calibration may require evidence aggregation without requiring raw data to leave its originating domain.

---

### 620. Calibration Privacy

Where calibration uses sensitive operational data, privacy-preserving handling should follow the applicable governance requirements.

---

### 621. Part 4 Closure

Part 4 establishes the independent validation, drift, recalibration and promotion architecture for Calibration.

The principal conclusions are:

1. Calibration produces a candidate; validation determines fitness for use.
2. Independent validation data should be used where practical.
3. Validation must remain use-case specific.
4. Data leakage must be controlled.
5. Functional, state, behavioral and temporal fidelity may all require assessment.
6. Physical plausibility remains independent of numerical fit.
7. Validation coverage defines the supported validity envelope.
8. Extrapolation beyond the envelope must remain visible.
9. Error distribution and residual behavior provide information beyond aggregate metrics.
10. Validation failures must be diagnosed before correction.
11. Parameter defects, model-form defects and structural defects require different responses.
12. Calibration must never be silently modified to force validation success.
13. Recalibration must retain lineage to the previous baseline.
14. Recalibration should include regression assessment.
15. Drift must be classified before triggering recalibration.
16. Automatic recalibration is a mature capability rather than a Pilot requirement.
17. Promotion occurs only after appropriate validation and approval.
18. Multiple calibrations may legitimately coexist for different scopes.
19. Selection among calibrations must remain deterministic and traceable.
20. Validation decisions must distinguish pass, limited, conditional, failed and inconclusive outcomes.
21. QAI-generated calibration results remain subject to the same validation standards.
22. QAI advantage claims require validated comparative evidence.
23. Calibration quality includes fidelity, robustness, uncertainty and resource efficiency.
24. The Pilot should implement only the minimum calibration capability required.
25. Post-Pilot can extend Calibration toward continuous, automated and federated operation.
26. Calibration artifacts can become reusable QAI Lab and Domain Fabric assets.
27. Technology and vendor neutrality must be preserved.
28. Governance, security, provenance and auditability remain part of the calibration lifecycle.

The governing principle is:

> **Calibrate deliberately, validate independently, expose uncertainty and drift, correct at the proper architectural boundary, and promote only what the evidence supports.**

**PART 4 STATUS: COMPLETE — CALIBRATION VALIDATION, FIDELITY ASSESSMENT, DRIFT, RECALIBRATION, GOVERNANCE AND MODEL PROMOTION BASELINE**
---
# Phase 2 — Calibration

## Part 5 — Calibration Operations, Monitoring, Reproducibility, Reuse and Productization

### 622. Purpose of Part 5

Part 5 defines how validated calibration capabilities are operated, monitored, reused, maintained and prepared for Post-Pilot productization.

The focus shifts from:

> **Can we calibrate the model?**

to:

> **Can we operate, reuse and evolve calibration reliably without losing provenance, validity or architectural control?**

---

### 623. Calibration Operational Lifecycle

The operational lifecycle is:

~~~text
Validated Calibration
        |
        v
Registration
        |
        v
Selection
        |
        v
Execution
        |
        v
Monitoring
        |
        v
Review
        |
        +--> Continue
        |
        +--> Recalibrate
        |
        +--> Replace
        |
        +--> Retire
~~~

---

### 624. Calibration Registration

A validated calibration should be registered before becoming a reusable operational artifact.

Registration should identify:

- calibration identity;
- model identity;
- parameter-set identity;
- scope;
- validity;
- approval;
- version.

---

### 625. Calibration Registry Entry

A registry entry may reference:

- model;
- calibration configuration;
- parameter set;
- reference evidence;
- validation evidence;
- validity envelope;
- limitations;
- applicable execution modes.

---

### 626. Registration Status

Recommended statuses include:

- Candidate;
- Validated;
- Approved;
- Active;
- Suspended;
- Superseded;
- Retired.

---

### 627. Active Calibration Selection

The active calibration should be selected using explicit applicability rules.

Selection should consider:

- model compatibility;
- asset scope;
- domain;
- validity envelope;
- freshness;
- approval status.

---

### 628. Deterministic Selection

Given the same conditions and registry state, calibration selection should produce the same result.

---

### 629. Calibration Priority

When multiple valid calibrations apply, priority should be based on explicit rules rather than implementation order.

---

### 630. Specificity

A more specific approved calibration may take precedence over a generic calibration where inheritance is supported.

---

### 631. Generic Baseline

A generic calibration may provide a default for an agriculture domain model.

---

### 632. Local Calibration

A farm- or field-specific calibration may refine the generic baseline.

---

### 633. Asset Calibration

Individual equipment or sensor calibration may override generic behavior only within its declared scope.

---

### 634. Calibration Scope Resolution

The effective calibration should be resolved before model execution.

~~~text
Generic Calibration
        |
        v
Farm Calibration
        |
        v
Field Calibration
        |
        v
Asset Calibration
        |
        v
Effective Calibration
~~~

---

### 635. Scope Conflict

If two calibrations have overlapping authority without a deterministic resolution rule, execution should be blocked or explicitly resolved.

---

### 636. Calibration Freshness

Freshness indicates how closely a calibration reflects current reference conditions.

---

### 637. Freshness Factors

Freshness may depend on:

- reference-data age;
- parameter drift;
- environmental change;
- process change;
- model revision.

---

### 638. Freshness Is Not Validity

An older calibration may remain valid for historical analysis even if it is not appropriate for current operational use.

---

### 639. Calibration Suspension

An active calibration may be suspended when:

- evidence indicates degradation;
- validity becomes uncertain;
- a material issue is detected;
- governance requires review.

---

### 640. Suspension Boundary

Suspension should prevent new use where required while preserving historical execution evidence.

---

### 641. Calibration Reinstatement

A suspended calibration may be reinstated after appropriate review and validation.

---

### 642. Calibration Supersession

A new approved calibration may supersede an earlier version without deleting the historical artifact.

---

### 643. Historical Preservation

Historical calibration versions should remain available for reproducibility, audit and result interpretation.

---

### 644. Calibration Monitoring

Operational monitoring may track:

- prediction error;
- residuals;
- parameter stability;
- coverage;
- drift;
- confidence;
- resource cost.

---

### 645. Monitoring Frequency

Monitoring frequency should match the rate at which the underlying system may change.

---

### 646. Event-Driven Monitoring

Monitoring may be triggered by:

- major environmental change;
- equipment replacement;
- sensor recalibration;
- process change;
- persistent model error.

---

### 647. Continuous Monitoring

Post-Pilot deployments may support continuous monitoring where operational value justifies it.

---

### 648. Pilot Monitoring

The Pilot should use simple, observable monitoring sufficient to identify meaningful degradation.

---

### 649. Error Monitoring

Monitoring should compare observed or trusted reference behavior against calibrated-model behavior where reference evidence is available.

---

### 650. Residual Monitoring

Residual trends can reveal emerging mismatch.

---

### 651. Residual Threshold

A threshold may identify when further investigation is required.

---

### 652. Persistent Deviation

Persistent deviation is more significant than isolated deviation.

---

### 653. Transient Deviation

Short-lived deviations may be explained by:

- measurement noise;
- transient environmental effects;
- temporary operating conditions.

---

### 654. Drift Monitoring

Drift monitoring should distinguish:

- parameter drift;
- data drift;
- sensor drift;
- environmental drift;
- process drift;
- model drift.

---

### 655. Data Drift

Data drift occurs when the distribution of incoming reference or operating data changes materially.

---

### 656. Concept Drift

Concept drift occurs when the relationship between inputs and outputs changes.

This may indicate a deeper model limitation.

---

### 657. Drift Investigation

A drift event should trigger investigation before recalibration is automatically initiated.

---

### 658. Drift Evidence

The investigation should preserve:

- detected condition;
- evidence;
- affected scope;
- analysis;
- decision.

---

### 659. Recalibration Workflow

~~~text
Drift / Degradation
        |
        v
Investigation
        |
        v
Cause Classification
        |
        +--> Data Issue
        +--> Sensor Issue
        +--> Environment
        +--> Parameter Drift
        +--> Model Drift
        |
        v
Controlled Response
~~~

---

### 660. Recalibration Approval

Material recalibration should require the applicable approval before replacing an active baseline.

---

### 661. Automated Recalibration Guard

Automated recalibration should not bypass:

- safety constraints;
- model compatibility;
- validation;
- approval requirements.

---

### 662. Recalibration Rollback

If recalibration causes degradation, the previous approved calibration should remain recoverable.

---

### 663. Calibration Maintenance

Calibration maintenance may include:

- data refresh;
- parameter review;
- validation refresh;
- compatibility updates;
- drift assessment.

---

### 664. Maintenance Versus Recalibration

Routine maintenance should not be confused with a new calibration.

A material parameter change creates a new calibration artifact.

---

### 665. Calibration Review

Periodic review may evaluate:

- continued validity;
- applicability;
- freshness;
- performance;
- resource efficiency.

---

### 666. Review Outcome

Review may result in:

- continue;
- monitor;
- recalibrate;
- revalidate;
- suspend;
- retire.

---

### 667. Calibration Reuse

Reuse should preserve the original calibration identity and lineage.

---

### 668. Reuse Across Similar Assets

A calibration may be reused across similar assets when compatibility and transferability are established.

---

### 669. Transferability

Transferability requires evidence that the calibration remains sufficiently representative after transfer.

---

### 670. Transfer Validation

A transferred calibration may require targeted validation.

---

### 671. Calibration Adaptation

Adaptation may modify a calibration for a new scope while preserving lineage to its parent.

---

### 672. Adaptation Boundary

Adaptation must not silently alter the parent baseline.

---

### 673. Calibration Family

Related calibration artifacts may form a family.

~~~text
Generic Baseline
      |
      +--> Farm A
      |      |
      |      +--> Field A1
      |
      +--> Farm B
      |
      +--> Farm C
~~~

---

### 674. Calibration Lineage

Every derived calibration should identify:

- parent;
- changes;
- reason;
- scope;
- validation status.

---

### 675. Calibration Template

A reusable calibration template may define:

- parameter schema;
- objective;
- constraints;
- validation procedure;
- evidence structure.

---

### 676. Template Instantiation

A template becomes an executable calibration configuration only after domain-specific values are supplied.

---

### 677. Agriculture Calibration Template

An agriculture template may support:

- soil;
- crop;
- irrigation;
- weather;
- machinery;
- water;
- energy.

---

### 678. Domain Parameter Package

A domain package may combine:

- model;
- default parameters;
- calibration method;
- validity criteria.

---

### 679. Farm Parameter Package

A farm package may add:

- local soil properties;
- irrigation characteristics;
- crop configuration;
- local environmental information.

---

### 680. Calibration Package Compatibility

Packages should declare compatible model and schema versions.

---

### 681. Calibration Packaging

A reusable calibration package should contain or reference:

- model;
- parameters;
- configuration;
- validity;
- evidence;
- dependencies.

---

### 682. Dependency Packaging

Dependencies should be explicit enough to reconstruct the intended calibration environment.

---

### 683. Portable Calibration Package

A package should be portable where its dependencies permit.

---

### 684. Local-First Package

The Pilot should be able to use a local calibration package without requiring undeclared external services.

---

### 685. Air-Gapped Package

A calibration package may later be transferred into an air-gapped environment with its required dependencies.

---

### 686. Cloud Package

Cloud execution may reference shared calibration packages through controlled interfaces.

---

### 687. QAI Data Center Package

Large calibration experiments may execute using QAI Data Center resources while preserving the same logical package identity.

---

### 688. Package Integrity

Calibration packages should be protected against unauthorized modification.

---

### 689. Package Verification

Before execution, package integrity and compatibility should be verified.

---

### 690. Reproducible Package

A reproducible package should identify:

- model version;
- parameter version;
- configuration;
- reference data;
- execution method;
- environment.

---

### 691. Calibration Environment

A calibration environment contains the resources and dependencies required to execute the calibration.

---

### 692. Environment Snapshot

Where practical, the environment should be captured sufficiently to reproduce the experiment.

---

### 693. Environment Difference

Differences between execution environments should be recorded when they can affect results.

---

### 694. Numerical Environment

Numerical libraries, precision and relevant execution settings may affect calibration results.

---

### 695. Precision

The numerical precision used during calibration should be known where it materially affects the result.

---

### 696. Hardware Dependence

Hardware-specific behavior should be recorded when relevant.

---

### 697. Quantum Backend Dependence

Quantum calibration experiments should retain relevant backend information.

---

### 698. Calibration Portability Test

A calibration package may be tested across environments to establish portability.

---

### 699. Portability Result

Portability may be classified as:

- portable;
- portable with limitations;
- environment-specific;
- incompatible.

---

### 700. Calibration Security

Security should protect:

- model artifacts;
- parameter sets;
- reference data;
- calibration results;
- execution credentials.

---

### 701. Access Control

Access should distinguish permissions to:

- view;
- execute;
- modify;
- approve;
- promote;
- retire.

---

### 702. Calibration Audit

Material lifecycle actions should be auditable.

---

### 703. Calibration Data Sovereignty

Reference data should remain within its authorized data boundary.

---

### 704. Federated Calibration

Federated calibration may operate across distributed datasets without requiring unrestricted data movement.

---

### 705. Federated Parameter Exchange

Where appropriate, federated calibration may exchange:

- parameter updates;
- aggregated statistics;
- model information;
- evidence.

---

### 706. Federated Validation

Each participating domain should retain the ability to validate results against its own evidence and governance requirements.

---

### 707. Multi-Client Calibration

Post-Pilot calibration may support multiple clients with isolated:

- models;
- data;
- configurations;
- results;
- evidence.

---

### 708. Tenant Isolation

Multi-tenant operation should prevent cross-tenant calibration data or configuration leakage.

---

### 709. Multi-Objective Calibration Service

A future service may support different objectives for different clients or applications.

---

### 710. Calibration Service Boundary

The service should hide computational complexity while exposing the necessary:

- inputs;
- constraints;
- outputs;
- evidence;
- limitations.

---

### 711. Client Input Model

The client should primarily provide:

- problem;
- data;
- configuration;
- constraints;
- desired outcome.

The platform should absorb unnecessary implementation complexity.

---

### 712. Calibration Service Output

The service may return:

- calibrated model;
- parameter set;
- validation result;
- applicability;
- confidence;
- limitations;
- resource information.

---

### 713. Ready-to-Use Calibration

A validated calibration can become part of a ready-to-use model package.

---

### 714. Reusable QAI Function

Calibration may become a reusable QAI function where the computational method has demonstrated practical benefit.

---

### 715. QAI Lab Integration

The QAI Lab may use calibration packages for:

- experiments;
- benchmarking;
- model improvement;
- comparative evaluation;
- client demonstrations.

---

### 716. Experiment Reuse

A successful calibration experiment should be reusable without reconstructing its entire configuration manually.

---

### 717. Experiment Template

Reusable experiments may retain:

- model;
- data references;
- parameters;
- method;
- objectives;
- validation criteria.

---

### 718. Benchmark Library

Validated calibration benchmarks may become part of a reusable benchmark library.

---

### 719. Benchmark Versioning

Benchmark definitions should remain versioned so historical comparisons remain meaningful.

---

### 720. Calibration Knowledge Base

Calibration results may contribute to a knowledge base containing:

- successful parameter ranges;
- failure modes;
- method performance;
- resource requirements;
- applicability.

---

### 721. Knowledge Reuse

Historical calibration knowledge may inform future candidate generation without automatically replacing formal calibration.

---

### 722. AI-Assisted Reuse

AI may recommend:

- prior calibration candidates;
- parameter ranges;
- calibration methods;
- relevant reference datasets.

Recommendations must remain evidence-based.

---

### 723. Human Approval

Human approval may remain required for consequential reuse decisions.

---

### 724. Calibration Learning Loop

The long-term learning cycle is:

~~~text
Calibrate
   |
   v
Validate
   |
   v
Deploy / Reuse
   |
   v
Observe
   |
   v
Learn
   |
   v
Improve
   |
   v
Recalibrate
~~~

---

### 725. Learning Without Baseline Destruction

Learning should create new candidate artifacts rather than silently changing approved historical baselines.

---

### 726. Calibration Knowledge Provenance

Learned recommendations should retain links to the experiments and evidence from which they were derived.

---

### 727. Calibration and Productization

Calibration becomes product-ready when it can be:

- reliably executed;
- validated;
- packaged;
- reproduced;
- monitored;
- supported.

---

### 728. Productization Sequence

~~~text
Research
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
Client Use
   |
   v
Learn
   |
   v
Improve
~~~

---

### 729. Productization Gate

A calibration capability should pass a productization gate before being represented as a reusable commercial capability.

---

### 730. Productization Criteria

Criteria may include:

- repeatability;
- validation;
- portability;
- supportability;
- evidence;
- performance;
- cost;
- security.

---

### 731. Commercial Calibration Service

A future commercial service may provide calibration without requiring clients to understand the underlying optimization implementation.

---

### 732. Client Complexity Boundary

Clients should not need to manage:

- optimizer selection;
- QAI resource selection;
- checkpointing;
- comparative benchmarking;
- fallback orchestration.

These may remain platform responsibilities.

---

### 733. Engineering Transparency

Although hidden from routine client interaction, internal calibration decisions should remain transparent to authorized engineers.

---

### 734. Calibration Observability

Operational systems should expose sufficient observability to determine:

- what calibration was used;
- when it was selected;
- why it was selected;
- whether it remains valid.

---

### 735. Calibration Trace

A calibration trace may connect:

~~~text
Client Problem
      |
      v
Model
      |
      v
Calibration
      |
      v
Validation
      |
      v
Execution
      |
      v
Outcome
~~~

---

### 736. Outcome Attribution

Business or operational outcomes should remain traceable to the calibration version used where practical.

---

### 737. Calibration and Value Measurement

Calibration may affect value through:

- reduced model-development effort;
- improved prediction;
- improved control;
- reduced uncertainty;
- reduced computational cost.

---

### 738. No Automatic Value Claim

A better calibration metric does not automatically establish business value.

Value must be independently measured.

---

### 739. Calibration and MVV

The calibration capability may support Minimal Viable Value by improving the credibility of the underlying model used in the Pilot.

---

### 740. Calibration and ROI

Calibration-related ROI should consider both:

- improvement achieved;
- resources required to achieve it.

---

### 741. Calibration and Sustainability

Where water, energy or resource models are calibrated, improved fidelity may strengthen sustainability analysis.

---

### 742. Calibration and Tolerance

Calibration should support the broader Digital Farm principle of measurable value within an acceptable tolerance band.

---

### 743. Calibration Failure Learning

Failed calibration experiments should contribute engineering knowledge where appropriate.

---

### 744. Failure Taxonomy

Reusable failure categories may include:

- data;
- model;
- parameter;
- numerical;
- computational;
- resource;
- structural;
- validation.

---

### 745. Failure Knowledge

Failure knowledge may help future experiments avoid known unsuitable methods or parameter regions.

---

### 746. No Failure Suppression

Failure records should not be removed merely because they are inconvenient to product presentation.

---

### 747. Experimental Repository

Research calibration artifacts may remain separate from approved production artifacts.

---

### 748. Research Boundary

Experimental artifacts should not become operational merely because they achieved a promising numerical result.

---

### 749. Promotion Boundary

Promotion requires:

- validation;
- evidence;
- compatibility;
- approval.

---

### 750. Regression Before Release

Material changes should pass applicable regression tests before release.

---

### 751. Release Evidence

A release should include sufficient evidence to establish what changed and what was validated.

---

### 752. Release Rollback

Release processes should preserve rollback to a known approved version where required.

---

### 753. Calibration Operations Across Deployment Modes

The same calibration architecture should support:

- laptop;
- local workstation;
- portable QAI station;
- field station;
- edge server;
- cloud;
- QAI Data Center.

---

### 754. Deployment Independence

Deployment location should not redefine calibration semantics.

---

### 755. Modular Station Integration

A portable or field QAI station may provide local calibration capability when appropriate.

---

### 756. Local-First Calibration

Local calibration supports:

- low latency;
- disconnected operation;
- data sovereignty;
- field experimentation.

---

### 757. Cloud-Assisted Calibration

Cloud execution may provide:

- additional compute;
- larger search spaces;
- scalable parallel experiments.

---

### 758. QAI Data Center Scaling

Large calibration campaigns may use dedicated QAI Data Center resources.

---

### 759. Resource Escalation

A calibration workload may scale:

~~~text
Laptop
  |
  v
Edge
  |
  v
Cloud
  |
  v
QAI Data Center
~~~

The logical experiment remains the same.

---

### 760. Resource-Aware Method Selection

Resource escalation should not automatically imply a more complex algorithm.

The simplest method meeting the requirement remains preferred.

---

### 761. Calibration Resilience

Operational calibration should tolerate recoverable failures.

---

### 762. Checkpoint Recovery

Where supported, a failed long-running calibration may resume from the latest valid checkpoint.

---

### 763. Resource Failure Recovery

Resource failure may trigger:

- retry;
- migration;
- fallback;
- controlled termination.

---

### 764. Network Failure

Disconnected operation should remain possible where the calibration package and data are local.

---

### 765. Cloud Failure

A cloud-dependent calibration should identify whether local or alternate execution is available.

---

### 766. QAI Backend Failure

Quantum or QAI backend failure should trigger the defined fallback or controlled termination policy.

---

### 767. Evidence Preservation During Failure

Failure recovery must preserve evidence from the failed execution.

---

### 768. Long-Running Calibration Continuity

Long-running calibration should preserve:

- checkpoint;
- configuration;
- parameter state;
- objective history;
- resource context.

---

### 769. Pause and Resume

Pause/resume should preserve experiment identity and lineage.

---

### 770. Migration During Calibration

Migration between compatible resources should preserve the logical calibration state.

---

### 771. Migration Validation

A migrated calibration should verify environment compatibility before continuing.

---

### 772. Calibration Safety Boundary

Calibration should never override safety-critical operating limits.

---

### 773. Human Intervention

Human intervention may be required when:

- safety is uncertain;
- model behavior is anomalous;
- structural assumptions change;
- evidence becomes contradictory.

---

### 774. Controlled Automation

Automation may operate within approved bounds.

---

### 775. Human-AI-QAI Calibration Model

~~~text
Reference Evidence
        |
        v
AI / QAI / Classical Method
        |
        v
Candidate Calibration
        |
        v
Validation
        |
        v
Human / Governance
        |
        v
Approved Use
~~~

---

### 776. Calibration Explainability

The system should be able to explain the basis of a selected calibration through:

- applicability;
- evidence;
- validation;
- lineage;
- version.

---

### 777. Calibration Trust

Trust should be built from:

- structural integrity;
- calibration evidence;
- validation;
- reproducibility;
- monitoring.

---

### 778. Trust Is Layered

No single calibration metric should be treated as sufficient evidence of trustworthiness.

---

### 779. Calibration Assurance Chain

~~~text
Structural Integrity
        |
        v
Calibration
        |
        v
Fidelity Validation
        |
        v
Operational Monitoring
        |
        v
Continued Trust
~~~

---

### 780. Calibration Integrity Gate

Before an approved calibration becomes active, the following should be satisfied where applicable:

- structural compatibility;
- calibration completeness;
- validation;
- provenance;
- version;
- approval.

---

### 781. Calibration Readiness Result

The result may be:

- READY;
- READY WITH LIMITATIONS;
- REVISE;
- DEFER;
- REJECT.

---

### 782. Calibration Limitations

Known limitations must remain attached to the calibration artifact.

---

### 783. Limitation Visibility

Downstream services should be able to determine whether their intended use lies within the declared validity envelope.

---

### 784. Calibration Misuse Prevention

The architecture should prevent or clearly warn against using a calibration outside its approved scope.

---

### 785. Scope Enforcement

Where technically practical, scope restrictions should be enforced rather than relying solely on documentation.

---

### 786. Calibration Audit Review

Periodic audits may verify:

- active versions;
- approvals;
- evidence;
- scope;
- drift status.

---

### 787. Calibration Compliance

Applicable regulatory, quality and governance requirements should be reflected in the calibration lifecycle where relevant.

---

### 788. Metrology Boundary

Where calibration involves measurement systems, metrology requirements remain applicable.

Model calibration must not be confused with physical instrument calibration.

---

### 789. Model Calibration Versus Instrument Calibration

These are related but distinct:

- instrument calibration establishes measurement behavior;
- model calibration establishes model parameters.

---

### 790. Instrument-to-Model Chain

~~~text
Physical Instrument
       |
       v
Instrument Calibration
       |
       v
Reference Measurement
       |
       v
Model Calibration
       |
       v
Validated Model
~~~

---

### 791. Measurement Authority

Reference measurements should retain their metrological authority and provenance.

---

### 792. Sensor Replacement

Sensor replacement may invalidate model calibration if the measurement characteristics materially change.

---

### 793. Actuator Replacement

Actuator replacement may require recalibration of affected behavior.

---

### 794. Asset Replacement

Physical asset replacement should trigger an applicability assessment for related calibration artifacts.

---

### 795. Virtual Asset Replacement

A virtual asset replacement should preserve lineage while explicitly identifying the new representation.

---

### 796. Calibration and Physical Extension

Future physical validation may provide new reference evidence for recalibration.

---

### 797. Hardware-in-the-Loop

HIL experiments may provide stronger evidence for:

- timing;
- interfaces;
- controller behavior;
- actuator response.

---

### 798. Field Validation

Field trials may extend the evidence envelope beyond laboratory or simulated conditions.

---

### 799. Calibration Promotion to Digital Twin

A calibrated model may contribute to a Digital Twin after appropriate validation.

Calibration alone does not create a Digital Twin.

---

### 800. Calibration and Production CPS

A calibrated model may support production CPS when:

- fidelity is sufficient;
- control requirements are met;
- operational validation is complete;
- governance requirements are satisfied.

---

### 801. Production Calibration Boundary

Production calibration requires stronger operational controls than the Pilot.

---

### 802. Pilot-to-Post-Pilot Continuity

The Pilot calibration architecture should be designed so validated concepts can later scale without architectural replacement.

---

### 803. Pilot Implementation Boundary

The Pilot remains limited to the minimum calibration capability necessary for the selected Digital Farm use case.

---

### 804. Pilot Evidence

Pilot calibration should prioritize:

- transparency;
- reproducibility;
- measurable fidelity;
- controlled comparison.

---

### 805. Pilot Productization Readiness

The Pilot need not implement the full future calibration service.

It should preserve the interfaces and evidence needed for future expansion.

---

### 806. Post-Pilot Expansion

Post-Pilot may introduce:

- automated calibration;
- calibration libraries;
- distributed calibration;
- federated calibration;
- continuous monitoring;
- commercial calibration services.

---

### 807. Research Continuity

Research calibration methods can enter the platform through:

~~~text
Research
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
Promote
~~~

---

### 808. No Research Leakage

Unvalidated research calibration should remain isolated from approved operational artifacts.

---

### 809. QAI Lab Boundary

The QAI Lab is an experimentation and validation environment.

It may generate candidate calibration methods and parameter sets.

---

### 810. Production Boundary

Production systems consume approved calibration artifacts rather than arbitrary research outputs.

---

### 811. Calibration Architecture as Reusable Asset

The Calibration architecture can become a reusable capability across domains.

---

### 812. Domain Independence

The mechanism remains common while domain-specific:

- models;
- parameters;
- reference data;
- validity criteria

may differ.

---

### 813. Agriculture as Proving Ground

Agriculture provides the first concrete environment for proving the calibration architecture.

---

### 814. Cross-Domain Expansion

The same calibration principles may later support:

- manufacturing;
- energy;
- logistics;
- infrastructure;
- other CPS domains.

---

### 815. Domain-Specific Constraints

Each domain may introduce domain-specific calibration constraints.

The common calibration lifecycle remains intact.

---

### 816. Modular Architecture

Calibration should remain independently deployable and composable with:

- Emulator;
- Simulator;
- CPS;
- QAI;
- Digital Twin;
- QAI Lab.

---

### 817. Peer Subsystem Principle

Calibration is a supporting assurance subsystem, not a hidden component of Emulator or Simulator.

---

### 818. Emulator Boundary

Emulator consumes calibrated models where required but remains independently executable.

---

### 819. Simulator Boundary

Simulator consumes calibrated models where required but remains independently executable.

---

### 820. Independent Calibration Testing

Calibration itself should be testable independently before integration.

---

### 821. Calibration Unit Testing

Unit testing may cover:

- parameter handling;
- objective calculation;
- constraint evaluation;
- candidate generation;
- result calculation.

---

### 822. Calibration Subsystem Testing

Subsystem testing should verify the complete calibration engine independently.

---

### 823. Calibration Interface Testing

Interface testing should verify exchange with:

- model;
- reference data;
- resource manager;
- QAI pipeline;
- evidence system.

---

### 824. Calibration Integration Testing

Integration testing should verify:

~~~text
Model
  |
  v
Calibration
  |
  v
Emulator / Simulator
  |
  v
QAI / CPS
  |
  v
Results
~~~

---

### 825. Calibration Regression Testing

Changes to calibration logic should trigger regression testing against approved benchmarks.

---

### 826. Calibration Comparative Testing

Classical, Quantum-Inspired, Hybrid QAI and Quantum implementations should be tested independently before comparative integration.

---

### 827. Three-Path Calibration Testing

Where calibration uses the three architectural paths, tests should verify:

- computational path;
- sensing path;
- communication path.

---

### 828. Path Isolation

A failure in one path should be distinguishable from calibration algorithm failure.

---

### 829. Closed-Loop Calibration Testing

Where calibration supports closed-loop CPS, the loop should be tested independently from calibration optimization.

---

### 830. Open-Loop Calibration Testing

Open-loop calibration provides a simpler baseline for identifying parameter fit before control feedback is introduced.

---

### 831. Calibration Test Matrix

A future test matrix may combine:

| Dimension | Examples |
|---|---|
| Model | Soil / Crop / Irrigation |
| Method | Classical / QI / Hybrid / Quantum |
| Loop | Open / Closed |
| Condition | E0–E4 |
| Path | Computational / Sensing / Communication |
| Resource | Laptop / Edge / Cloud / QAI DC |

---

### 832. Test Coverage

The Pilot should implement only the matrix cells necessary to demonstrate the selected use case.

---

### 833. Integration Defect Discovery

Integration testing should be expected to reveal:

- data mismatch;
- timing mismatch;
- parameter incompatibility;
- interface defects;
- hidden dependencies;
- QAI integration issues.

---

### 834. Learning From Integration

Integration failures should feed back into architecture and implementation improvement.

---

### 835. Calibration Architecture Review

The Calibration architecture should be reviewed before implementation is considered complete.

---

### 836. Review Inputs

Review should consider:

- README baseline;
- model definitions;
- parameter definitions;
- calibration configuration;
- execution evidence;
- validation results.

---

### 837. Review Questions

The review should ask:

1. Is the calibration boundary clear?
2. Are reference sources authoritative?
3. Are adjustable parameters explicit?
4. Are constraints preserved?
5. Is validation independent?
6. Is provenance complete?
7. Is reuse controlled?
8. Are QAI comparisons fair?
9. Are failure and fallback behaviors explicit?
10. Is the Pilot boundary preserved?

---

### 838. Review Decision

The review may result in:

- READY;
- REVISE;
- DEFER.

---

### 839. READY for Implementation

`READY` means the Calibration architecture is sufficiently defined to proceed with implementation.

---

### 840. REVISE

`REVISE` means architectural or specification issues require correction before implementation.

---

### 841. DEFER

`DEFER` means a capability is intentionally postponed without invalidating the current architecture.

---

### 842. Calibration Formal Closure

Calibration is formally closed for the current Phase 2 architecture when:

- scope is defined;
- interfaces are defined;
- lifecycle is defined;
- evidence is defined;
- validation boundary is defined;
- Pilot boundary is preserved.

---

### 843. Final Calibration Architecture

~~~text
Reference Evidence
       |
       v
Reference Model
       |
       v
Structural Integrity
       |
       v
Calibration
       |
       v
Fidelity Validation
       |
       +----------------+
       |                |
       v                v
   Emulator         Simulator
       |                |
       +-------+--------+
               |
               v
             CPS
               |
               v
        QAI / Classical
               |
               v
        Comparative Value
~~~

---

### 844. Final Separation of Responsibilities

The architecture maintains:

- Structural Integrity → correctly constructed;
- Calibration → parameters appropriately fitted;
- Emulator → faithfully reproduced;
- Simulator → scenarios explored;
- CPS → state/control behavior executed;
- QAI → computational methods evaluated;
- Validation → fitness established;
- Value Management → practical value measured.

---

### 845. Final Calibration Principle

Calibration should remain a controlled bridge between reference evidence and executable models.

It should never become an uncontrolled mechanism for making models appear correct.

---

### 846. Part 5 Closure

Part 5 establishes the operational and productization lifecycle for Calibration.

The principal conclusions are:

1. Validated calibration artifacts must be explicitly registered.
2. Active calibration selection must be deterministic and scope-aware.
3. Generic, farm, field and asset calibrations may coexist.
4. Freshness must be distinguished from historical validity.
5. Monitoring should detect meaningful degradation.
6. Drift must be classified before recalibration.
7. Automated recalibration must remain governed.
8. Previous approved baselines must remain recoverable.
9. Calibration lineage must survive reuse and adaptation.
10. Reusable templates and domain packages can reduce future effort.
11. Calibration packages should remain portable where practical.
12. Local-first and air-gapped operation should remain possible where required.
13. Cloud and QAI Data Center execution are deployment extensions, not changes to calibration semantics.
14. Security, sovereignty and auditability remain part of the operational lifecycle.
15. Calibration can become a reusable QAI Lab and product capability.
16. Client-facing services can hide implementation complexity while preserving engineering transparency.
17. Calibration results may contribute to measurable value but do not automatically establish business value.
18. Failed experiments remain useful engineering evidence.
19. Research artifacts must remain separated from approved operational artifacts.
20. Physical, HIL and field validation may expand the calibration evidence envelope.
21. Calibration remains a peer capability that composes with Emulator, Simulator, CPS and QAI.
22. Independent, subsystem, interface, integration, closed-loop and regression testing should protect the calibration architecture.
23. Agriculture remains the first proving ground while the architecture remains domain-neutral.
24. Pilot implementation should remain minimum-sufficient while preserving Post-Pilot expansion paths.
25. Calibration architecture is ready for implementation when scope, lifecycle, interfaces, evidence and validation boundaries are formally established.

The final principle is:

> **Calibrate from evidence, preserve the baseline, monitor what changes, validate before promotion, reuse only within known boundaries, and productize only what has been proven.**

**PART 5 STATUS: COMPLETE — CALIBRATION OPERATIONS, MONITORING, REUSE, REPRODUCIBILITY, TESTING AND PRODUCTIZATION BASELINE**

**PHASE 2 CALIBRATION README STATUS: COMPLETE — PARTS 1–5 ARCHITECTURAL BASELINE ESTABLISHED**
---
