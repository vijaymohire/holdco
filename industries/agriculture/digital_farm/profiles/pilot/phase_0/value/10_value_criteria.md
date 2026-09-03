# Phase 0 — Value Criteria

## 1. Purpose

This document defines the Phase 0 Value Criteria baseline for the Intelligent Irrigation Decision and Control pilot.

The purpose is to establish how the pilot determines whether its technical behavior creates meaningful operational, economic, resource, sustainability, and strategic value.

The value framework connects measurable pilot outcomes to Minimum Viable Value (MVV), tolerance, return on investment (ROI), liquidity, and future Digital Farm value-management capabilities without prematurely introducing full production economics or enterprise financial management.

---

## 2. Architectural Position

Value Criteria belongs to the Digital Farm managerial and value-management layer.

It does not implement irrigation control, sensing, simulation, QAI execution, resource allocation, financial accounting, or enterprise management.

Its responsibility is to define how measurable outcomes are interpreted as value.

~~~text
+--------------------------------------------------------------+
| HoldCo Factory / Shared Governance                           |
+--------------------------------------------------------------+
                         |
                         v
+--------------------------------------------------------------+
| Agriculture                                                 |
+--------------------------------------------------------------+
                         |
                         v
+--------------------------------------------------------------+
| Digital Farm                                                |
|                                                              |
|  +--------------------------------------------------------+  |
|  | Phase 0 Value Criteria                                 |  |
|  |                                                        |  |
|  |  Define Value                                          |  |
|  |  Define MVV                                            |  |
|  |  Define Tolerance                                      |  |
|  |  Define Value Evidence                                 |  |
|  |  Define Economic Interpretation                        |  |
|  +--------------------------------------------------------+  |
|                         |                                    |
|                         v                                    |
|                  KPI Measurements                            |
|                         |                                    |
|                         v                                    |
|                 Operational Outcomes                         |
|                         |                                    |
|                         v                                    |
|                  Value Assessment                            |
+--------------------------------------------------------------+
~~~

---

## 3. Value Principle

Technical success and business value are related but are not identical.

A pilot may:

- execute correctly without creating sufficient value;
- demonstrate QAI execution without demonstrating QAI advantage;
- reduce compute cost without improving farm outcomes;
- improve decision quality without producing measurable economic benefit;
- show potential value that requires physical validation.

Therefore:

~~~text
Technical Capability
        !=
Operational Outcome
        !=
Economic Value
        !=
Strategic Value
~~~

---

## 4. Phase 0 Value Objective

The value objective is to determine whether the minimum callable pilot provides sufficient evidence of useful value to justify continued development.

The assessment should answer:

1. Does the pilot improve the irrigation decision process?
2. Does it reduce unnecessary resource use?
3. Does it improve water-use behavior?
4. Does it maintain acceptable crop/farm outcomes?
5. Does it reduce operational effort?
6. Does QAI contribute measurable additional value?
7. Does the value exceed defined tolerance?
8. Is the evidence sufficient to justify progression?

---

## 5. Value Scope

Phase 0 value evaluation covers:

- operational value;
- decision value;
- water value;
- resource value;
- economic value;
- sustainability value;
- human value;
- QAI-specific value;
- fallback value;
- evidence value;
- future scalability value.

---

## 6. Value Boundary

The Phase 0 value assessment remains inside the approved pilot boundary.

~~~text
IN SCOPE
---------------------------------------------------------------
Virtual farm
Simulation
Emulation
Classical baseline
QAI evaluation
Irrigation decisions
Water-use behavior
Resource measurements
Operational measurements
Modeled value
Estimated value
Pilot economics
MVV
Tolerance
Evidence
---------------------------------------------------------------

OPTIONAL LATER
---------------------------------------------------------------
Physical water measurement
Physical sensors
Physical actuators
Field trials
Commercial farm data
Production economics
---------------------------------------------------------------

OUT OF PILOT SCOPE
---------------------------------------------------------------
Full enterprise financial accounting
Production-scale commercial ROI
Corporate financial planning
Large-scale commercial deployment
Full SaaS economics
Full multi-subsidiary financial federation
---------------------------------------------------------------
~~~

---

## 7. Value Categories

The Phase 0 value framework uses the following categories:

| Category | Meaning |
|---|---|
| Decision Value | Improvement in decision quality or usefulness |
| Operational Value | Improvement in operating efficiency |
| Water Value | Better use or avoidance of unnecessary water |
| Resource Value | Better use of computational and infrastructure resources |
| Economic Value | Financial benefit or cost reduction |
| Sustainability Value | Resource/environmental improvement |
| Human Value | Reduced burden or improved human effectiveness |
| QAI Value | Additional value attributable to QAI |
| Fallback Value | Value preserved through classical continuity |
| Evidence Value | Value of reliable, reproducible evidence |
| Strategic Value | Potential to support future capabilities |

---

## 8. Value Hierarchy

Value should be evaluated progressively.

~~~text
Capability
   |
   v
Technical Result
   |
   v
Operational Outcome
   |
   v
Resource Outcome
   |
   v
Economic / Sustainability Outcome
   |
   v
Strategic Value
~~~

A higher-level claim must be supported by evidence at the lower levels.

---

## 9. Value Evidence Principle

Value claims must originate from measured or explicitly modeled outcomes.

The pilot must distinguish:

~~~text
Measured
Calculated
Modeled
Estimated
Projected
Hypothesized
~~~

These categories must not be silently mixed.

---

## 10. Value Criteria Record

Each value criterion should have a stable logical definition containing:

~~~text
Value Criterion ID
Value Criterion Name
Category
Purpose
Measured / Derived Quantity
Value Mechanism
Evidence Source
Calculation Rule
Measurement Boundary
Target / Threshold
Tolerance
Confidence
Assumptions
Applicability
Evidence Status
Version
~~~

---

## 11. Value Criterion Naming

Recommended convention:

~~~text
VAL-[CATEGORY]-[NUMBER]
~~~

Examples:

~~~text
VAL-DEC-001
VAL-WAT-001
VAL-OPS-001
VAL-RES-001
VAL-ECO-001
VAL-SUS-001
VAL-HUM-001
VAL-QAI-001
VAL-MVV-001
VAL-ROI-001
~~~

---

## 12. Value Relationship to KPIs

KPIs provide measurement.

Value criteria interpret the measurements in terms of usefulness.

~~~text
Raw Measurement
      |
      v
KPI
      |
      v
Operational Outcome
      |
      v
Value Criterion
      |
      v
Value Assessment
~~~

---

## 13. Value Relationship to Advantage Gate

The QAI Advantage Gate determines whether QAI provides measurable advantage.

Value Criteria determine whether that advantage is meaningful in the context of pilot value.

~~~text
QAI Result
   |
   v
KPI Comparison
   |
   v
QAI Advantage
   |
   v
Value Relevance
   |
   v
QAI Value Assessment
~~~

---

## 14. Value Does Not Automatically Follow QAI Advantage

Even when QAI demonstrates technical advantage, it may not provide sufficient practical value.

For example:

~~~text
QAI Faster
      +
QAI More Resource Efficient
      +
No Meaningful Farm Outcome Improvement
      =
Potentially Insufficient Value
~~~

---

## 15. Value Does Not Require QAI

The pilot may demonstrate useful value through the overall Digital Farm architecture even when classical computation remains preferable.

This is an important architectural principle.

QAI is selected because it provides value where justified, not because every workload must use QAI.

---

## 16. Decision Value

Decision value represents improvement in the quality, timeliness, consistency, or usefulness of irrigation decisions.

Potential indicators include:

- decision validity;
- decision quality;
- constraint compliance;
- policy compliance;
- reduced unnecessary irrigation;
- improved state alignment.

---

## 17. VAL-DEC-001 — Decision Quality Value

Measures the value associated with improved irrigation decision quality.

The exact formula depends on the decision-quality model.

Possible conceptual relationship:

~~~text
Decision Quality Value
=
Improved Outcome
-
Reference Outcome
~~~

The outcome definition must be explicit.

---

## 18. Operational Value

Operational value represents improvement in the execution of irrigation management.

Potential sources include:

- faster decisions;
- fewer manual interventions;
- fewer failures;
- improved workflow continuity;
- better use of available resources;
- reduced unnecessary actions.

---

## 19. VAL-OPS-001 — Operational Efficiency Value

Measures improvement in operational effort relative to the defined baseline.

Potential inputs include:

- decision-cycle time;
- human review time;
- number of interventions;
- number of failures;
- recovery effort.

---

## 20. Water Value

Water is a central value dimension for the irrigation pilot.

Water-related value must be evaluated together with acceptable crop/farm outcomes.

---

## 21. VAL-WAT-001 — Water Use Efficiency

Measures useful farm-state outcome relative to water consumed.

The exact formula is scenario-specific.

Conceptually:

~~~text
Water Use Efficiency
=
Useful Outcome
/
Water Consumed
~~~

---

## 22. VAL-WAT-002 — Avoided Water Use

Measures water use avoided relative to the defined reference while maintaining acceptable operating conditions.

~~~text
Avoided Water Use
=
Reference Water Use
-
Pilot Water Use
~~~

This measure is valid only when the reference and pilot outcomes are comparable.

---

## 23. Water Savings Principle

Water reduction is not automatically value.

For example:

~~~text
Less Water
   +
Poor Crop Outcome
   =
Not Successful
~~~

Therefore water value must be evaluated jointly with outcome quality and safety constraints.

---

## 24. VAL-WAT-003 — Water Outcome Preservation

Measures whether the pilot maintains acceptable crop/farm state while reducing unnecessary irrigation.

This criterion prevents optimization from rewarding under-irrigation that damages the intended outcome.

---

## 25. Resource Value

Resource value measures whether the system achieves equivalent or better outcomes with fewer resources.

Resources may include:

- compute;
- memory;
- network;
- energy;
- quantum resources;
- execution time;
- human effort.

---

## 26. VAL-RES-001 — Resource Efficiency

Conceptually:

~~~text
Resource Efficiency
=
Useful Outcome
/
Resource Consumption
~~~

The specific resource and outcome must be identified.

---

## 27. Economic Value

Economic value represents financial consequences associated with measurable pilot outcomes.

Potential sources include:

- water cost reduction;
- energy reduction;
- operational cost reduction;
- avoided crop loss;
- reduced human effort;
- computational cost reduction.

---

## 28. Economic Boundary

Economic calculations must explicitly state which costs and benefits are included.

For example:

~~~text
Economic Value Boundary
=
Water
+
Energy
+
Compute
+
Operations
+
Human Effort
+
Outcome Impact
~~~

Only applicable terms should be included.

---

## 29. VAL-ECO-001 — Estimated Economic Benefit

Measures estimated financial benefit relative to the selected baseline.

~~~text
Estimated Benefit
=
Reference Cost / Outcome Value
-
Pilot Cost / Outcome Value
~~~

The exact formula depends on the economic model.

---

## 30. Observed vs Estimated Economics

Phase 0 may not have physical financial measurements.

Therefore economic results may initially be:

- modeled;
- estimated;
- scenario-based.

They must be clearly labeled.

---

## 31. Economic Value Confidence

Economic value must carry assumptions such as:

- water price;
- energy price;
- compute cost;
- labor cost;
- crop-value assumptions;
- time horizon.

These assumptions must be versioned.

---

## 32. Projected Economic Value

Projected economic value may be used to justify future investigation.

It must not be presented as demonstrated economic value.

~~~text
Projected Value
      !=
Demonstrated Value
~~~

---

## 33. Sustainability Value

Sustainability value may arise from:

- reduced water consumption;
- improved water-use efficiency;
- reduced energy consumption;
- reduced unnecessary computation;
- improved resource efficiency.

---

## 34. VAL-SUS-001 — Water Sustainability Outcome

Measures improvement in water-use behavior while maintaining acceptable farm-state outcomes.

---

## 35. VAL-SUS-002 — Energy Efficiency Outcome

Measures energy consumption relative to the useful pilot outcome where energy can be measured or reasonably estimated.

---

## 36. Human Value

Human value represents improvements in the interaction between people and the Digital Farm.

Potential outcomes include:

- reduced repetitive work;
- faster review;
- better decision support;
- improved visibility;
- safer operation;
- reduced cognitive burden.

---

## 37. VAL-HUM-001 — Human Effort Reduction

Measures reduction in human effort relative to the selected operating baseline.

The pilot should distinguish:

- automated execution;
- human-assisted execution;
- human-overridden execution.

---

## 38. Human Value Principle

Automation is valuable only when it preserves or improves:

- safety;
- decision quality;
- operational continuity;
- human control where required.

---

## 39. Fallback Value

Classical fallback has value even when it does not improve technical performance.

Its primary value is continuity.

~~~text
QAI Unavailable
      |
      v
Classical Fallback
      |
      v
Decision Continues
      |
      v
Operational Continuity
~~~

---

## 40. VAL-FBK-001 — Continuity Value

Measures the operational value preserved when QAI is rejected, unavailable, resource-constrained, or fails.

---

## 41. QAI Value

QAI value is attributable only to benefits that arise from using QAI relative to the appropriate classical reference.

Possible dimensions include:

- improved decision quality;
- improved performance;
- reduced resource use;
- improved robustness;
- reduced cost;
- improved operational capability.

---

## 42. VAL-QAI-001 — QAI Incremental Value

Conceptually:

~~~text
QAI Incremental Value
=
QAI Outcome
-
Best Applicable Classical Outcome
~~~

The comparison must use equivalent problem, scenario, objective, and constraints.

---

## 43. QAI Attribution Principle

A benefit must not be attributed to QAI merely because QAI was present.

Attribution requires evidence that the QAI path materially contributed to the observed improvement.

---

## 44. QAI Value Threshold

QAI should be considered valuable only when the observed improvement exceeds the defined practical tolerance.

A tiny numerical improvement may not justify additional complexity or cost.

---

## 45. Minimum Viable Value

Minimum Viable Value (MVV) defines the smallest meaningful value outcome that justifies continuing the pilot.

MVV is intentionally less demanding than full commercial ROI.

---

## 46. MVV Principle

MVV answers:

> Is there enough credible value evidence to justify the next development step?

It does not answer:

> Is this ready for commercial production?

---

## 47. VAL-MVV-001 — Minimum Viable Value

The MVV criterion should require evidence of at least one meaningful outcome while maintaining required correctness and safety.

Potential MVV dimensions include:

- meaningful water-use improvement;
- meaningful decision improvement;
- meaningful operational efficiency;
- meaningful resource efficiency;
- meaningful QAI advantage;
- meaningful learning value.

---

## 48. MVV Must Preserve Correctness

MVV cannot be achieved by trading away essential correctness or safety.

~~~text
Value Improvement
       |
       v
Correctness Gate
       |
       v
Safety Gate
       |
       v
MVV Assessment
~~~

---

## 49. MVV Multi-Dimensional Model

MVV may be defined as:

~~~text
MVV =
Technical Acceptability
+
Operational Usefulness
+
Evidence Sufficiency
+
At Least One Meaningful Value Outcome
~~~

All required mandatory conditions must be satisfied.

---

## 50. MVV Example Structure

A Phase 0 MVV condition may conceptually require:

~~~text
Decision Correctness
        +
Safety Compliance
        +
Operational Continuity
        +
Measurable Resource / Water / Decision Improvement
        +
Evidence Completeness
        =
MVV Candidate
~~~

The actual numeric thresholds should be configured and approved separately.

---

## 51. Value Tolerance

Tolerance defines how much variation is acceptable before a value claim becomes materially different.

Tolerance may apply to:

- decision quality;
- water use;
- latency;
- resource use;
- cost;
- economic benefit.

---

## 52. VAL-TOL-001 — Value Tolerance

Each applicable value criterion should define:

- expected value;
- acceptable deviation;
- unacceptable deviation;
- confidence requirement.

---

## 53. Tolerance Principle

Tolerance must be defined before evaluating the result.

It must not be changed after observing results simply to produce a desired conclusion.

---

## 54. Value Threshold vs Tolerance

These are distinct:

~~~text
Threshold
=
Minimum acceptable level

Tolerance
=
Acceptable variation around a reference / target
~~~

Both may be required.

---

## 55. Value Baseline

The primary value reference should normally be the classical baseline and/or agreed no-action/reference scenario.

Possible references include:

- classical decision;
- no-irrigation scenario;
- existing/manual process;
- nominal operating scenario.

---

## 56. Reference Scenario

The reference scenario must be explicitly identified for every value comparison.

---

## 57. No-Irrigation Reference

The no-irrigation scenario can provide useful context for understanding:

- water consumption;
- crop-state impact;
- avoided irrigation;
- under-irrigation risk.

It must not be treated as a universally desirable operating strategy.

---

## 58. Classical Reference

The classical baseline is the primary technical comparison for QAI value.

~~~text
Same Problem
Same Inputs
Same Constraints
Same Objective
Same Scenario
        |
        +--> Classical
        |
        +--> QAI
        |
        v
Comparable Value Outcome
~~~

---

## 59. Value Scenario Dependence

Value may vary substantially by scenario.

For example:

- QAI may provide little value under simple nominal conditions;
- value may increase for more complex decision conditions;
- limited resources may change the preferred execution path;
- sensing degradation may reduce value.

Therefore value must be evaluated across relevant scenarios.

---

## 60. Value Scenario Matrix

~~~text
                    Nominal   Stress   Limited Water   QAI Suitable
Classical             X         X            X                X
QAI                   X         X            X                X
Fallback              X         X            X                X
Human Review          X         X            X                X
~~~

Only applicable combinations need to be executed.

---

## 61. Value Under Resource Constraints

A technically superior method may have insufficient value if its resource requirements exceed practical limits.

Value assessment should therefore consider:

- compute;
- energy;
- network;
- quantum access;
- queue time;
- budget;
- operational availability.

---

## 62. Value Under QAI Unavailability

The value framework must account for the ability to continue operations through classical fallback.

---

## 63. Value Under Human Oversight

Human review may reduce automation efficiency while increasing safety or trust.

Value assessment should consider the total operating mode rather than treating human intervention as automatically negative.

---

## 64. Value and Safety

Safety is a prerequisite.

~~~text
Unsafe
  |
  v
Value Rejected
~~~

No economic or performance improvement should compensate for violation of mandatory safety requirements.

---

## 65. Value and Compliance

Compliance requirements are mandatory constraints.

Value calculations must not reward behavior that violates applicable governance requirements.

---

## 66. Value and Data Quality

Poor data quality can invalidate value conclusions.

Value evidence should therefore reference:

- sensing validity;
- context completeness;
- data integrity;
- evidence quality.

---

## 67. Value and Decision Quality

Resource or economic value must always be interpreted together with decision quality.

For example:

~~~text
Lower Water Cost
     +
Lower Crop Outcome
     =
Potential Negative Value
~~~

---

## 68. Value and Latency

Lower latency is valuable only when it contributes to a meaningful operational outcome.

---

## 69. Value and Resource Efficiency

Lower compute consumption is valuable only if:

- decision quality remains acceptable;
- required reliability is maintained;
- operational objectives remain satisfied.

---

## 70. Value and Reliability

A high-value result that occurs rarely may not be operationally useful.

Value assessment should therefore consider reliability and repeatability.

---

## 71. Value and Robustness

Value should remain meaningful across relevant scenario variations.

A value claim based on a single favorable scenario is insufficient for broad operational conclusions.

---

## 72. Value and Reproducibility

A value claim should be reproducible from retained evidence whenever practical.

---

## 73. Evidence Strength

Value evidence can be classified as:

~~~text
E0 — Hypothesis
E1 — Modeled
E2 — Simulated
E3 — Repeated Demonstration
E4 — Physical Validation
E5 — Operational Validation
~~~

Phase 0 primarily operates in the E1–E3 range.

---

## 74. Evidence Strength Principle

Evidence strength must be stated with the value claim.

For example:

> Estimated water savings in simulation

is materially different from:

> Measured water savings in field operation.

---

## 75. Value Confidence

Each value assessment should consider:

- measurement confidence;
- model confidence;
- scenario coverage;
- sample size;
- uncertainty;
- assumption quality.

---

## 76. Value Claim Classification

Every value result should be classified as:

~~~text
DEMONSTRATED
SUPPORTED
ESTIMATED
PROJECTED
INCONCLUSIVE
NOT DEMONSTRATED
NOT APPLICABLE
~~~

---

## 77. Value Decision Classes

The overall Phase 0 value outcome may be:

~~~text
VALUE DEMONSTRATED
MVV DEMONSTRATED
VALUE PROMISING
VALUE INCONCLUSIVE
VALUE NOT DEMONSTRATED
VALUE REJECTED
~~~

---

## 78. Value Promising

"Value Promising" means the evidence indicates meaningful potential but is insufficient for a stronger demonstrated-value claim.

---

## 79. Value Inconclusive

An inconclusive result means additional evidence is needed.

Possible causes include:

- insufficient scenarios;
- insufficient repetitions;
- inadequate physical evidence;
- uncertain economic assumptions;
- insufficient QAI comparison;
- measurement limitations.

---

## 80. Value Not Demonstrated

This means the defined value criteria were evaluated but the required improvement was not observed.

This is a valid pilot outcome.

---

## 81. Value Rejected

Value may be rejected when the proposed value proposition conflicts with:

- safety;
- governance;
- compliance;
- unacceptable operational risk;
- insufficient correctness.

---

## 82. Value Trade-Offs

Value may involve trade-offs.

For example:

~~~text
Higher Decision Quality
       +
Higher Compute Cost
       +
Lower Water Use
       =
Net Value Assessment
~~~

No single dimension should automatically dominate without an explicit decision rule.

---

## 83. Composite Value

A composite value assessment may combine:

- decision;
- water;
- operational;
- resource;
- economic;
- sustainability;
- human value.

The component evidence must remain available.

---

## 84. VAL-CMP-001 — Composite Pilot Value

Conceptually:

~~~text
Composite Pilot Value
=
f(
  Decision Outcome,
  Water Outcome,
  Operational Outcome,
  Resource Outcome,
  Economic Outcome,
  Sustainability Outcome,
  Human Outcome
)
~~~

The weighting and aggregation method must be explicitly defined if used.

---

## 85. Avoiding Double Counting

Related value dimensions must not be counted multiple times.

For example:

- water savings;
- water cost savings;
- economic benefit from water savings

may represent the same underlying benefit.

---

## 86. Value Normalization

Value may be normalized by:

- decision cycle;
- field;
- irrigation zone;
- unit water;
- unit energy;
- unit compute;
- time period;
- experiment.

Normalization must preserve the original measurements.

---

## 87. Value Time Horizon

Value must specify its time horizon.

Possible horizons include:

- single decision;
- single cycle;
- experiment;
- day;
- season;
- projected annual operation.

Phase 0 should favor short, defensible horizons.

---

## 88. Cumulative Value

Repeated closed-loop operation may create cumulative value.

Examples include:

- cumulative water avoided;
- cumulative energy;
- cumulative resource consumption;
- cumulative operational effort.

---

## 89. Value Per Decision

Per-decision value can be useful for normalizing experiments.

~~~text
Value per Decision
=
Total Applicable Value
/
Valid Decision Cycles
~~~

---

## 90. Value Per Unit Water

Where appropriate:

~~~text
Value per Unit Water
=
Useful Outcome
/
Water Used
~~~

The outcome definition must remain explicit.

---

## 91. Value Per Unit Resource

The same principle can apply to compute, energy, or other resources.

---

## 92. Economic Cost Boundary

Costs should be classified as:

- direct;
- indirect;
- modeled;
- estimated;
- excluded.

Excluded costs must be documented.

---

## 93. Benefit Boundary

Benefits should be classified as:

- directly measured;
- calculated;
- modeled;
- estimated;
- projected.

---

## 94. ROI Principle

ROI is a later-stage economic measure and should not be forced into Phase 0 when the evidence boundary does not support it.

---

## 95. Phase 0 ROI

Where an ROI estimate is useful, it should be explicitly labeled as estimated or projected.

~~~text
Estimated ROI
=
Estimated Net Benefit
/
Estimated Investment
~~~

The assumptions must be retained.

---

## 96. VAL-ROI-001 — ROI Readiness

Rather than requiring commercial ROI, Phase 0 should determine whether sufficient evidence exists to support a future ROI calculation.

---

## 97. ROI Readiness Criteria

ROI readiness requires:

- defined cost boundary;
- defined benefit boundary;
- defined time horizon;
- sufficiently credible measurements;
- documented assumptions.

---

## 98. Liquidity Consideration

Liquidity represents the timing and usability of economic benefit and cost.

Phase 0 need not implement full financial liquidity management.

It should preserve the conceptual distinction between:

- immediate;
- delayed;
- recurring;
- one-time;
- uncertain benefits.

---

## 99. VAL-LIQ-001 — Value Timing

Where relevant, classify value according to when it can be realized.

~~~text
Immediate
Short-Term
Recurring
Delayed
Projected
~~~

---

## 100. Sustainability Value Boundary

Sustainability claims must remain proportional to available evidence.

A simulated reduction in water use may demonstrate a potential sustainability outcome but does not establish real-world environmental impact without physical validation.

---

## 101. Strategic Value

Strategic value may arise from:

- establishing reusable architecture;
- enabling future Digital Twin development;
- enabling QAI experimentation;
- creating reusable measurement infrastructure;
- creating validated interfaces and workflows.

Strategic value should be clearly distinguished from immediate financial value.

---

## 102. VAL-STR-001 — Reusability Value

Measures the potential reuse of the pilot architecture, workflows, interfaces, KPI definitions, and evaluation methods in future agricultural use cases.

---

## 103. VAL-STR-002 — QAI Learning Value

Measures the value of learning whether and where QAI is useful for the agricultural workload.

This value exists even when QAI advantage is not demonstrated.

---

## 104. Learning Value Principle

A negative QAI result may still have strategic value if it:

- prevents inappropriate deployment;
- identifies unsuitable workloads;
- improves representation;
- establishes a credible baseline;
- identifies required future resources.

---

## 105. Architecture Value

The pilot may create value by validating the architecture itself.

Examples include:

- reusable logical assets;
- reusable functions;
- reusable interfaces;
- reusable workflows;
- reusable scenarios;
- reusable KPIs;
- reusable value criteria.

---

## 106. Value From Reuse

Reuse should be treated as potential future value unless demonstrated through actual subsequent use.

---

## 107. Value and Phase Progression

Value evidence supports progression:

~~~text
Pilot
  |
  v
Validated Value Hypothesis
  |
  v
Minimum Viable Value
  |
  v
Expanded Validation
  |
  v
Digital Twin / CPS Candidate
  |
  v
Operational / Commercial Evaluation
~~~

---

## 108. Value and Digital Twin

The Digital Twin may improve the fidelity of value measurement by incorporating richer:

- farm state;
- sensing;
- environmental;
- crop;
- soil;
- operational data.

The value criteria should remain logically reusable.

---

## 109. Value and CPS

Physical CPS realization may convert:

- simulated water consumption;
- modeled crop outcomes;
- estimated energy;

into measured physical outcomes.

The value framework should preserve the distinction.

---

## 110. Value and QAI Lab

QAI Lab experimentation can investigate whether additional QAI value emerges as:

- problem size increases;
- representations improve;
- resources change;
- execution backends improve;
- scenarios become more complex.

---

## 111. Value Experiment Design

Value experiments should compare:

- baseline;
- pilot;
- relevant alternative;
- scenarios;
- resource conditions.

---

## 112. Matched Value Experiment

The preferred QAI value comparison is:

~~~text
Same Scenario
Same Inputs
Same Objective
Same Constraints
Same Value Model
       |
       +--> Classical
       |
       +--> QAI
       |
       v
Value Comparison
~~~

---

## 113. Value Counterfactuals

Where appropriate, value analysis may compare:

- irrigation;
- no irrigation;
- classical decision;
- QAI decision;
- fallback decision.

The purpose is to understand outcome differences rather than assume that one path is universally optimal.

---

## 114. Value Sensitivity

Economic and operational value should be tested against important assumptions.

Examples:

- water price;
- energy price;
- resource cost;
- crop value;
- operational cost;
- QAI execution cost.

---

## 115. Sensitivity Analysis

A value sensitivity experiment may use:

~~~text
Parameter
   |
   +--> Low
   +--> Nominal
   +--> High
   |
   v
Value Outcome Range
~~~

---

## 116. Value Uncertainty

Where uncertainty is significant, report a range rather than a single misleading point estimate.

---

## 117. Value Distribution

Repeated scenarios should support distributional value analysis where applicable.

---

## 118. Value Stability

A value claim should be considered more credible when it remains positive or acceptable across relevant scenario variations.

---

## 119. Value Robustness

Robust value means the value proposition survives reasonable variation in:

- sensing;
- environment;
- resource availability;
- QAI execution;
- crop state;
- water availability.

---

## 120. Value Under Degraded Sensing

The value framework should determine whether value remains acceptable when observations are:

- stale;
- incomplete;
- noisy;
- conflicting;
- unavailable.

---

## 121. Value Under Failure

The pilot should measure whether failures materially reduce value or whether fallback preserves acceptable outcomes.

---

## 122. Value Continuity

Operational continuity itself can be a value criterion.

~~~text
Failure
  |
  v
Recovery / Fallback
  |
  v
Continued Operation
  |
  v
Value Preserved
~~~

---

## 123. Human-Assisted Value

Human review may be justified when it materially improves:

- safety;
- trust;
- correctness;
- decision quality.

The additional human effort must be included when evaluating net operational value.

---

## 124. Human Override Value

An override may represent:

- system error;
- appropriate human judgment;
- safety intervention;
- policy exception.

Therefore override frequency must be interpreted rather than automatically treated as negative.

---

## 125. Value Net of Human Effort

Where human involvement is material:

~~~text
Net Operational Value
=
Operational Benefit
-
Human Effort Cost
~~~

---

## 126. Value and Automation

Automation should be evaluated on the complete outcome, not merely the percentage of automated decisions.

---

## 127. Value and Explainability

Where explainability is necessary for human adoption or governance, explainability may contribute to operational value.

---

## 128. Value and Trust

Trust-related value may be assessed qualitatively in Phase 0 and quantitatively later if suitable measures are established.

---

## 129. Value and Safety Margin

A value-producing configuration should maintain the required safety margin.

---

## 130. Value and Governance

Value optimization cannot override governance constraints.

---

## 131. Value Evidence Chain

~~~text
Use Case
   |
Scenario
   |
Execution
   |
KPI
   |
Operational Outcome
   |
Value Criterion
   |
Value Evidence
   |
Value Claim
   |
Decision
~~~

---

## 132. Value Traceability

Every important value claim should trace back to:

- scenario;
- baseline;
- execution;
- KPI;
- evidence;
- assumptions.

---

## 133. Value Provenance

Value records should preserve:

- source data;
- calculation;
- model version;
- KPI version;
- value-criteria version;
- scenario;
- execution;
- assumptions.

---

## 134. Value Versioning

Value criteria must be versioned.

Changes to:

- formulas;
- assumptions;
- thresholds;
- tolerance;
- economic parameters;
- value boundaries

must create a new version.

---

## 135. Historical Value Immutability

Accepted historical value assessments must remain associated with the criteria and assumptions under which they were produced.

---

## 136. Value Calculation Reproducibility

A reviewer should be able to reconstruct an important value result from retained evidence and assumptions.

---

## 137. Value Claim Discipline

The pilot should never claim:

> Water savings demonstrated

when the underlying evidence is only a simulation.

A more accurate claim would be:

> Water savings modeled under the defined simulation scenario.

---

## 138. Value Evidence Strength and Language

Recommended terminology:

| Evidence | Appropriate Language |
|---|---|
| Hypothesis | May provide value |
| Model | Value modeled |
| Simulation | Value demonstrated in simulation |
| Repeated simulation | Value consistently observed in simulation |
| Physical validation | Value physically validated |
| Production | Operational value demonstrated |

---

## 139. Value Dashboard

A Phase 0 value dashboard should answer:

1. What value was observed?
2. What value was modeled?
3. What value was estimated?
4. What assumptions were used?
5. How did QAI compare with classical?
6. What value survives fallback?
7. Is MVV achieved?
8. What evidence remains missing?

---

## 140. Value Summary Matrix

| Value Dimension | Reference | Pilot Measurement | Evidence | Phase 0 Interpretation |
|---|---|---|---|---|
| Decision | Classical | Decision KPI | Simulation | Required |
| Water | Reference scenario | Water KPI | Simulation | Required |
| Operations | Existing/reference workflow | Operational KPI | Emulation/simulation | Required |
| Resources | Classical | Resource KPI | Runtime | Required |
| QAI | Classical | QAI Advantage | Experiment | Required |
| Economic | Defined cost model | Estimated value | Model | Conditional |
| Sustainability | Reference | Resource/water KPI | Simulation | Conditional |
| Human | Baseline operating mode | Human KPI | Pilot | Conditional |
| Strategic | Current architecture | Reuse evidence | Pilot artifacts | Conditional |

---

## 141. Minimum Value Set

The minimum Phase 0 value set should include:

~~~text
Decision Value
Water Value
Operational Value
Resource Value
QAI Incremental Value
Fallback / Continuity Value
Safety-Constrained Value
Evidence Confidence
Minimum Viable Value
~~~

Economic and sustainability measures should be included where the available evidence supports them.

---

## 142. Minimum Value Criteria IDs

Recommended minimum identifiers:

~~~text
VAL-DEC-001
VAL-WAT-001
VAL-WAT-002
VAL-OPS-001
VAL-RES-001
VAL-QAI-001
VAL-FBK-001
VAL-MVV-001
VAL-TOL-001
VAL-ECO-001
~~~

---

## 143. Value Criteria Matrix

~~~text
Measurement Area       Measurement       Value Interpretation
Decision               KPI-DEC          VAL-DEC
Water                  KPI-VAL          VAL-WAT
Operations             KPI-PER          VAL-OPS
Resources              KPI-RES          VAL-RES
QAI                    KPI-ADV          VAL-QAI
Fallback               KPI-FBK          VAL-FBK
Economics              KPI-VAL          VAL-ECO
MVV                    KPI Set          VAL-MVV
Tolerance              KPI Set          VAL-TOL
~~~

---

## 144. Value Gate

The Phase 0 value gate should evaluate:

~~~text
Correctness
    +
Safety
    +
Operational Acceptability
    +
Evidence Quality
    +
Meaningful Value
    =
VALUE READINESS
~~~

---

## 145. Value Readiness Outcomes

The value workstream may conclude:

~~~text
READY
REVISE
DEFER
~~~

---

## 146. READY

READY means sufficient value criteria and evidence definitions exist to conduct the intended pilot evaluation.

It does not mean commercial value has already been demonstrated.

---

## 147. REVISE

REVISE means value assessment requires refinement before progression.

Possible causes:

- ambiguous value definition;
- incomplete evidence;
- unclear baseline;
- missing tolerance;
- unsupported economic assumption.

---

## 148. DEFER

DEFER means the value question requires evidence unavailable within the Phase 0 boundary.

For example:

- physical water measurement;
- field productivity;
- long-term crop outcome;
- production operating cost.

---

## 149. Value and G0

G0 should confirm that:

- value criteria are defined;
- MVV is defined;
- relevant KPIs exist;
- value boundaries are explicit;
- assumptions are documented;
- unsupported claims are excluded.

---

## 150. Value G0 Evidence

G0 evidence should include:

- value criteria registry;
- minimum value set;
- KPI-to-value mapping;
- MVV definition;
- tolerance definition;
- value assumptions;
- evidence classification.

---

## 151. Value Phase 1 Handoff

Phase 0 hands forward:

~~~text
Value Criteria
      |
      v
MVV Definition
      |
      v
Tolerance
      |
      v
KPI Mapping
      |
      v
Measurement Instrumentation
      |
      v
Simulation / Emulation
      |
      v
Validated Value Evidence
~~~

---

## 152. Value and Phase 1 Virtualization

Phase 1 must preserve the logical value criteria while implementing the technical measurements required to calculate them.

---

## 153. Value and Emulation

Emulation provides more realistic operational evidence while retaining the same value semantics.

---

## 154. Value and Simulation

Simulation enables controlled testing of value under many scenarios.

---

## 155. Value and Closed-Loop CPS

Closed-loop operation enables cumulative value analysis over repeated decision cycles.

---

## 156. Value and Physical Realization

Physical realization provides evidence for real-world:

- water consumption;
- crop outcome;
- energy use;
- sensor behavior;
- actuator behavior.

---

## 157. Value and QAI Lab

QAI Lab experimentation can investigate whether QAI value changes with:

- problem size;
- representation;
- resources;
- execution backend;
- scenario complexity.

---

## 158. Value and Future Commercialization

Commercialization requires additional evidence beyond Phase 0.

Future evaluation may include:

- capital expenditure;
- operating expenditure;
- maintenance;
- deployment cost;
- customer value;
- pricing;
- revenue;
- payback period;
- production risk.

These are future extensions.

---

## 159. Value and SaaS

SaaS economics are outside the Phase 0 value boundary.

The pilot only establishes whether the underlying capability demonstrates sufficient value to justify further development.

---

## 160. Value and Multi-Farm Scale

Future scaling may evaluate value across:

- fields;
- farms;
- regions;
- agricultural operating models.

Phase 0 only validates the minimum callable use case.

---

## 161. Value Reuse

Value criteria should be reusable across related agricultural use cases.

The underlying principles remain stable while domain-specific value measures are added.

---

## 162. Value Cross-Industry Reuse

The value architecture may later be reused across HoldCo industries.

Domain-specific outcomes should remain separate from common value-management principles.

---

## 163. Value Non-Duplication

Value Criteria must not duplicate:

- KPI calculation;
- financial accounting;
- resource management;
- governance enforcement;
- QAI Advantage Gate implementation.

It interprets validated measurements within a value framework.

---

## 164. Value Relationship to KPI Definition

`kpis/09_kpi_definition.md` defines measurement.

This document defines how those measurements are interpreted as value.

---

## 165. Value Relationship to QAI Evaluation

`qai_evaluation/08_qai_evaluation.md` defines QAI evaluation.

This document determines whether relevant QAI outcomes translate into meaningful pilot value.

---

## 166. Value Relationship to Advantage Gate

The Advantage Gate establishes whether QAI demonstrates sufficient technical advantage.

Value Criteria establish whether that advantage is practically meaningful.

---

## 167. Value Relationship to Resource Management

Resource measurements originate from the resource-management boundary.

Value Criteria determine the value of those resource outcomes.

---

## 168. Value Relationship to Governance

Governance establishes mandatory constraints.

Value Criteria operate within those constraints.

---

## 169. Value Relationship to Human-AI

Human-AI measurements provide evidence of review, intervention, and automation behavior.

Value Criteria determine whether the resulting human-system interaction is beneficial.

---

## 170. Value Relationship to Digital Farm Service

The Digital Farm service layer coordinates value evaluation but does not replace domain-specific value logic.

---

## 171. Value Relationship to Domain Services

Domain services provide contextual information such as:

- crop;
- water;
- inventory;
- economy;
- workforce.

Value Criteria consume applicable outcomes from these domains without duplicating their management logic.

---

## 172. Value Architecture

~~~text
                 PHASE 0 VALUE ARCHITECTURE

                     Pilot Use Case
                           |
                           v
                    Scenario Execution
                           |
                           v
                    KPI Measurements
                           |
             +-------------+-------------+
             |             |             |
             v             v             v
          Decision       Water        Resource
           Outcome       Outcome       Outcome
             |             |             |
             +-------------+-------------+
                           |
                           v
                    Operational Outcome
                           |
                           v
                    Economic / Sustainability
                           |
                           v
                       Value Model
                           |
             +-------------+-------------+
             |                           |
             v                           v
          MVV Check                QAI Value Check
             |                           |
             +-------------+-------------+
                           |
                           v
                    Value Assessment
                           |
                           v
                       G0 Decision
                           |
                           v
                    Phase 1 Handoff
~~~

---

## 173. Value Decision Logic

The overall value decision should conceptually follow:

~~~text
Are mandatory safety and correctness conditions satisfied?
             |
       +-----+-----+
       |           |
      NO          YES
       |           |
       v           v
   REJECT       Is evidence sufficient?
                    |
              +-----+-----+
              |           |
             NO          YES
              |           |
              v           v
           DEFER      Is meaningful value shown?
                          |
                    +-----+-----+
                    |           |
                   NO          YES
                    |           |
                    v           v
             NOT DEMONSTRATED  MVV / VALUE
~~~

---

## 174. Value Trade-Off Decision

When multiple value dimensions conflict, use an explicit decision hierarchy.

Recommended order:

~~~text
Safety / Compliance
        |
        v
Correctness
        |
        v
Operational Acceptability
        |
        v
Decision / Outcome Quality
        |
        v
Resource Efficiency
        |
        v
Economic / Sustainability Value
~~~

This hierarchy prevents financial optimization from overriding mandatory requirements.

---

## 175. Value Claim Review

Before accepting a value claim, verify:

1. baseline identified;
2. scenario identified;
3. KPI identified;
4. measurement valid;
5. assumptions documented;
6. tolerance defined;
7. evidence strength stated;
8. claim language matches evidence strength.

---

## 176. Value Review Checklist

~~~text
[ ] Value criterion defined
[ ] Baseline defined
[ ] KPI mapped
[ ] Scenario defined
[ ] Measurement boundary defined
[ ] Formula defined
[ ] Tolerance defined
[ ] Assumptions recorded
[ ] Evidence retained
[ ] Confidence stated
[ ] Claim classified
[ ] G0 status assigned
~~~

---

## 177. Value Completeness Test

The value framework is complete when every important Phase 0 value claim can be traced to measurable evidence.

---

## 178. Value Evidence Completeness

The minimum traceability chain is:

~~~text
Value Claim
   |
   v
Value Criterion
   |
   v
KPI
   |
   v
Measurement
   |
   v
Execution
   |
   v
Scenario
   |
   v
Baseline
~~~

---

## 179. Value Assumption Registry

The pilot should maintain an assumption registry for:

- water value;
- energy value;
- compute cost;
- human effort;
- crop outcome;
- economic conversion;
- sustainability interpretation.

---

## 180. Assumption Versioning

Any assumption capable of changing a value result must be versioned.

---

## 181. Value Sensitivity Registry

Important assumptions should be identified for sensitivity analysis.

---

## 182. Value Uncertainty Registry

Important uncertainties should be identified and linked to:

- evidence;
- measurement;
- model;
- assumption.

---

## 183. Value Evidence Maturity

Value maturity may progress as:

~~~text
Value Hypothesis
      ->
Modeled Value
      ->
Simulated Value
      ->
Repeated Demonstrated Value
      ->
Physical Value Validation
      ->
Operational Value
      ->
Commercial Value
~~~

---

## 184. Phase 0 Evidence Position

The pilot is primarily expected to establish:

- modeled value;
- simulated value;
- repeated experimental value;
- credible value hypotheses for physical validation.

It should not overstate physical or commercial conclusions.

---

## 185. Value Learning

Value analysis should identify:

- which outcomes matter most;
- which assumptions dominate value;
- which scenarios create value;
- where QAI adds value;
- where classical execution is preferable;
- what physical evidence is required next.

---

## 186. Value Learning Loop

~~~text
Measure
   |
   v
Evaluate
   |
   v
Identify Value Drivers
   |
   v
Improve
   |
   v
Re-run
   |
   v
Validate
~~~

---

## 187. Value Driver Identification

Potential value drivers include:

- soil moisture condition;
- crop state;
- water availability;
- environmental conditions;
- problem complexity;
- decision frequency;
- resource availability;
- QAI suitability.

---

## 188. Value Driver Sensitivity

The pilot should identify which drivers materially affect the value conclusion.

---

## 189. Value Optimization Boundary

Optimization should occur only within:

- safety;
- correctness;
- governance;
- policy;
- resource;
- operational constraints.

---

## 190. Value and Advantage Gate Feedback

Value results may feed back into the Advantage Gate by identifying which forms of QAI advantage are practically relevant.

---

## 191. Value and Classical Optimization

The classical baseline may itself be improved during future iterations.

The QAI comparison must always use the best applicable approved reference for that experiment.

---

## 192. Value and QAI Scaling

Future QAI experiments may investigate whether value increases with problem complexity.

This is especially relevant when QAI does not demonstrate meaningful value for the minimum pilot problem.

---

## 193. Value and Problem Size

Value must be evaluated relative to problem size.

A result on a tiny problem should not automatically support a claim about large-scale agricultural optimization.

---

## 194. Value and Generalization

A value result for one irrigation zone does not automatically generalize to all farms or agricultural environments.

---

## 195. Value and Model Fidelity

Value conclusions from simulation depend partly on model fidelity.

Higher-fidelity models may strengthen evidence but do not automatically guarantee physical validity.

---

## 196. Value and Physical Validation

Physical validation is the next major evidence step when the value hypothesis depends on quantities that cannot be credibly established in simulation.

---

## 197. Value and Sensor Accuracy

Future physical value evaluation may depend on actual sensor accuracy, calibration, latency, and reliability.

---

## 198. Value and Actuator Accuracy

Future physical value evaluation may depend on actuator response and actual delivered irrigation.

---

## 199. Value and Environmental Variability

Real-world value may depend on environmental variability not represented in the initial pilot.

---

## 200. Value and Seasonal Effects

Agricultural value may vary by:

- crop stage;
- season;
- weather;
- soil;
- water availability.

Phase 0 may model these factors but should not claim long-term seasonal value without evidence.

---

## 201. Value and Long-Term Effects

Long-term crop and soil outcomes are future validation areas.

---

## 202. Value and External Market Factors

Market prices may affect economic value.

If market assumptions are used, they must be explicitly recorded.

---

## 203. Value and Economic Uncertainty

Economic value should be reported with uncertainty when assumptions are uncertain.

---

## 204. Value and Scenario Coverage

A strong value claim requires sufficient scenario coverage for the intended conclusion.

---

## 205. Value and Repetition

Repeated experiments increase confidence in value conclusions.

---

## 206. Value and Statistical Evidence

Where appropriate, statistical methods may be used to establish whether observed value differences are meaningful.

The method should be proportionate to the experiment.

---

## 207. Value and Effect Size

A statistically detectable difference may still be practically insignificant.

Therefore value assessment should consider practical effect size.

---

## 208. Practical Value Threshold

The practical value threshold should represent an improvement meaningful enough to justify continued development or additional validation.

---

## 209. Value and Complexity

Additional system complexity has a cost.

A value assessment should consider whether the benefit justifies:

- additional architecture;
- additional resources;
- QAI access;
- operational complexity;
- maintenance;
- human oversight.

---

## 210. Complexity Penalty

Where appropriate, future value models may include a complexity or adoption cost.

This should not be introduced without an explicit definition.

---

## 211. Value and Reliability Penalty

An unreliable value-producing path may have lower practical value than a slightly less efficient but highly reliable path.

---

## 212. Value and Availability

Resource availability may determine whether a technically advantageous QAI path can provide operational value.

---

## 213. Value and Queue Time

QAI queue time may materially affect end-to-end operational value.

It should therefore be included where relevant.

---

## 214. Value and Energy

Energy-efficient execution may contribute to value where energy cost or sustainability is material.

---

## 215. Value and Network

Communication overhead may reduce the practical value of distributed or remote execution.

---

## 216. Value and Edge

Edge execution may provide value through:

- reduced latency;
- reduced communication;
- improved autonomy;
- improved continuity.

These are future value dimensions unless measured in Phase 0.

---

## 217. Value and Cloud

Cloud execution may provide value through:

- resource elasticity;
- access to specialized computation;
- centralized operation.

The pilot should remain provider-neutral.

---

## 218. Value and Hybrid Execution

Hybrid classical-QAI execution should be evaluated end-to-end.

~~~text
Classical
   +
QAI
   +
Communication
   +
Postprocessing
   =
Hybrid Value
~~~

---

## 219. Value and Virtual Qubit Fabric

If future QAI execution uses the Virtual Qubit Fabric, value should be assessed at the logical service level rather than tied to a specific physical QPU.

---

## 220. Value and Adaptive QAI

Adaptive QAI may change execution paths according to problem or resource conditions.

Value evaluation should measure the complete adaptive behavior.

---

## 221. Value and Real-Time QAI

For real-time scenarios, value depends on meeting timing requirements as well as decision quality.

---

## 222. Value and QAI Resource Advantage

QAI resource advantage is useful only when it contributes to practical value.

---

## 223. Value and Classical Fallback

The architecture should prefer:

~~~text
QAI When Valuable
Classical When Better
Fallback When Necessary
Human When Required
~~~

---

## 224. Value Selection Principle

The preferred execution path is the one that provides the best acceptable value under the defined conditions, not necessarily the path using the most advanced technology.

---

## 225. Value Architecture Principle

The Digital Farm value layer coordinates value interpretation across:

~~~text
Sensing
   +
Communication
   +
Computation
   +
Intelligence
   +
Execution
   +
Resources
   +
Human-AI
   =
Operational Value
~~~

---

## 226. Value Governance

Value criteria are governed through:

- versioning;
- evidence;
- assumptions;
- approval;
- traceability;
- change control.

---

## 227. Value Change Control

A value-criteria change must identify:

- previous version;
- new version;
- reason;
- affected KPIs;
- affected experiments;
- affected conclusions.

---

## 228. Value Historical Integrity

Previously accepted value conclusions must remain linked to the criteria and assumptions under which they were produced.

---

## 229. Value Auditability

An auditor should be able to determine:

1. what value was claimed;
2. what evidence supported it;
3. what baseline was used;
4. what assumptions were used;
5. what uncertainty existed;
6. whether the claim was measured, modeled, estimated, or projected.

---

## 230. Value Reporting

Phase 0 value reporting should separate:

~~~text
Observed Outcomes
      |
      v
Measured / Calculated Value
      |
      v
Modeled / Estimated Value
      |
      v
Projected Value
      |
      v
Future Validation Requirement
~~~

---

## 231. Value Summary

The final Phase 0 value summary should include:

- technical outcome;
- operational outcome;
- resource outcome;
- water outcome;
- QAI outcome;
- fallback outcome;
- value evidence;
- MVV status;
- unresolved uncertainties;
- next-step recommendation.

---

## 232. Value Completion Criteria

The value workstream is complete when:

1. value categories are defined;
2. minimum value criteria are defined;
3. MVV is defined;
4. tolerance is defined;
5. baseline references are defined;
6. KPI mappings are defined;
7. evidence strength is defined;
8. assumptions are identified;
9. value claim classifications are defined;
10. G0 readiness is established.

---

## 233. Value G0 Completion Test

~~~text
[ ] Technical value measurable
[ ] Operational value measurable
[ ] Water value measurable / modeled
[ ] Resource value measurable
[ ] QAI incremental value measurable
[ ] Fallback value measurable
[ ] Safety constraints preserved
[ ] MVV defined
[ ] Tolerance defined
[ ] Evidence strength defined
[ ] Economic assumptions documented
[ ] Unsupported claims excluded
~~~

---

## 234. Value Completion Package

The Phase 0 value completion package consists of:

~~~text
Value Criteria
+
Value Registry
+
MVV Definition
+
Tolerance Definition
+
KPI-to-Value Mapping
+
Value Assumption Registry
+
Evidence Classification
+
Value Assessment Rules
~~~

---

## 235. Value Registry

The minimum registry should include:

| ID | Value Criterion | Category | Evidence Type | Status |
|---|---|---|---|---|
| VAL-DEC-001 | Decision Quality Value | Decision | KPI/Simulation | Defined |
| VAL-WAT-001 | Water Use Efficiency | Water | KPI/Simulation | Defined |
| VAL-WAT-002 | Avoided Water Use | Water | KPI/Simulation | Defined |
| VAL-OPS-001 | Operational Efficiency Value | Operations | KPI | Defined |
| VAL-RES-001 | Resource Efficiency | Resource | KPI | Defined |
| VAL-QAI-001 | QAI Incremental Value | QAI | Advantage/KPI | Defined |
| VAL-FBK-001 | Continuity Value | Fallback | KPI | Defined |
| VAL-MVV-001 | Minimum Viable Value | MVV | Composite | Defined |
| VAL-TOL-001 | Value Tolerance | Tolerance | Configuration | Defined |
| VAL-ECO-001 | Estimated Economic Benefit | Economic | Model | Defined |

---

## 236. Value Status

The value criteria artifact is:

~~~text
STATUS: DEFINED — PHASE 0 BASELINE
~~~

Actual value measurements will be populated through subsequent implementation and experimentation.

---

## 237. Final Value Principle

The Phase 0 Value Criteria establish a disciplined bridge between technical capability and meaningful outcome.

The pilot should not ask only:

> **Can we build it?**

It should also ask:

> **Does it improve the decision?**

> **Does it improve resource use?**

> **Does it improve water-use behavior?**

> **Does it preserve safety and correctness?**

> **Does QAI add meaningful value?**

> **Does classical fallback preserve continuity?**

> **Can the value claim be supported by evidence?**

> **Is the value sufficient to justify the next stage?**

The value framework therefore ensures that the Digital Farm pilot remains outcome-driven while preserving architectural neutrality and scientific discipline.

---

## 238. Phase 0 Value Status

**Status: COMPLETE — PHASE 0 VALUE CRITERIA BASELINE**
---

