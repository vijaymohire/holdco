# Phase 1 — Asset Relationship Registry

## 1. Purpose

The Asset Relationship Registry provides the controlled registry of concrete relationship instances defined by the Phase 1 Asset Relationship Model.

It records which logical entities are related, how they are related, the applicable relationship context, lifecycle, validity, provenance, and other relationship metadata.

The registry manages relationship instances; it does not redefine relationship semantics.

---

## 2. Architectural Position

The registry belongs to:

`profiles/pilot/phase_1/relationships/`

It is part of the managerial Digital Farm Phase 1 virtualization definition and provides a controlled reference for the virtual-world relationship structure.

~~~text
Phase 0
  |
  v
Asset Inventory
  |
  v
Phase 1 Virtual Asset Model
  |
  v
Asset Relationship Model
  |
  v
Asset Relationship Registry
  |
  +--> Mapping
  +--> State
  +--> Workflow
  +--> Scenario
  +--> Execution
~~~

---

## 3. Registry Objective

The objective is to maintain a reliable, discoverable, traceable, and lifecycle-aware catalogue of relationship instances.

The registry shall support the minimum callable agriculture pilot while remaining extensible to Digital Twin, CPS, simulation, emulation, classical, QAI, and physical realization.

---

## 4. Registry Principle

The registry shall answer:

> Which entities are related, how are they related, in which context, and what is the current lifecycle and validity of that relationship?

It shall not answer questions that belong to other models unless it provides a controlled reference to them.

---

## 5. Registry Is Not the Relationship Model

The Asset Relationship Model defines relationship semantics.

The registry records instances of those semantics.

~~~text
Relationship Model
       |
       | defines
       v
Relationship Semantics
       |
       | instantiated as
       v
Relationship Registry
       |
       v
Relationship Instances
~~~

---

## 6. Registry Is Not the Asset Registry

The Asset Relationship Registry shall not become a duplicate Asset Registry.

The Asset Registry identifies assets.

The Relationship Registry identifies relationships between assets or other supported entities.

---

## 7. Registry Is Not the Mapping Registry

The Relationship Registry may reference physical-to-virtual mappings, but shall not duplicate the mapping registry.

Physical and virtual association semantics remain governed by the mapping artifacts.

---

## 8. Registry Identity

Every material relationship instance shall have a unique relationship identifier.

A conceptual identifier may follow:

`REL-<DOMAIN>-<SEQUENCE>`

Example:

`REL-AGR-001`

The exact implementation convention may evolve while preserving identity continuity.

---

## 9. Relationship Record

A registry record should conceptually contain:

~~~text
Relationship ID
Source Entity ID
Target Entity ID
Relationship Type
Direction
Cardinality
Context
Status
Validity
Provenance
Version
Created
Updated
~~~

Additional attributes may be introduced where justified.

---

## 10. Source Entity ID

The source entity identifies the originating endpoint of the relationship.

The identifier shall resolve to a registered logical entity where applicable.

---

## 11. Target Entity ID

The target entity identifies the receiving endpoint of the relationship.

The identifier shall resolve to a registered logical entity where applicable.

---

## 12. Endpoint Resolution

Before a relationship becomes active, its endpoints should be resolvable.

~~~text
Relationship
   |
   +--> Source ----> Resolvable
   |
   +--> Target ----> Resolvable
~~~

Unresolvable endpoints shall be treated as registry integrity conditions.

---

## 13. Relationship Type

Each relationship instance shall reference a defined semantic relationship type.

Examples include:

- contains
- monitors
- controls
- communicates-with
- depends-on
- operates
- maintains
- belongs-to
- member-of

The registry shall not create arbitrary semantic meanings through instance records.

---

## 14. Relationship Direction

The registry shall preserve relationship direction where direction has semantic significance.

For example:

`Field --monitored-by--> Sensor`

shall remain distinguishable from:

`Sensor --monitors--> Field`

even when the two expressions describe inverse views of the same relationship.

---

## 15. Cardinality

The registry shall preserve applicable relationship cardinality.

Supported logical forms include:

- one-to-one
- one-to-many
- many-to-one
- many-to-many
- zero-to-one
- zero-to-many

Cardinality is a property of the relationship semantics and applicable context.

---

## 16. Cardinality Validation

The registry shall support validation of relationship instances against applicable cardinality constraints.

For example:

~~~text
Field
 |
 +--> Sensor A
 +--> Sensor B
 +--> Sensor C

Field -> Sensor
Cardinality: One-to-Many
Status: Valid
~~~

---

## 17. Multiple Relationships

The registry shall permit multiple distinct relationships between the same endpoints.

Example:

~~~text
Farm ----owns----> Pump
Farm ---operates-> Pump
Farm ---monitors-> Pump
Farm ---maintains-> Pump
~~~

These are distinct relationships even though the endpoints are identical.

---

## 18. Relationship Uniqueness

Relationship uniqueness shall be based on relationship identity and semantic definition rather than only endpoint pairs.

A duplicate endpoint pair does not automatically represent a duplicate relationship.

---

## 19. Duplicate Relationship Detection

The registry should detect accidental duplication.

Duplicate detection should consider:

- source
- target
- relationship type
- context
- applicable qualification
- lifecycle state

The system shall distinguish intentional multiple relationships from accidental duplicates.

---

## 20. Relationship Context

Each relationship may be associated with a representation or execution context.

Examples include:

- operational
- simulation
- emulation
- physical
- experimental
- QAI
- training

Context prevents relationships from different realization environments from being incorrectly conflated.

---

## 21. Context Identity

A relationship context should be independently identifiable when necessary.

~~~text
REL-AGR-001
    |
    +--> Context: operational

REL-AGR-002
    |
    +--> Context: simulation
~~~

The same logical endpoints may therefore participate in context-specific relationship instances.

---

## 22. Representation Context

A virtual asset may have multiple representations.

The registry shall permit relationships to be associated with the appropriate representation context.

This supports operational, simulation, emulation, maintenance, experimental, and QAI representations without requiring duplicate physical assets.

---

## 23. Relationship Status

A relationship should have a lifecycle status.

Conceptual statuses include:

- draft
- registered
- validated
- active
- suspended
- inactive
- archived
- removed

The exact status vocabulary shall remain controlled.

---

## 24. Draft Relationship

A draft relationship is proposed but not yet accepted for active use.

Draft relationships may support:

- modelling
- design
- review
- scenario preparation
- future configuration

They shall not automatically participate in operational execution.

---

## 25. Registered Relationship

A registered relationship has been entered into the controlled registry.

Registration does not necessarily mean that the relationship is valid or active.

---

## 26. Validated Relationship

A validated relationship has passed applicable structural and semantic checks.

Validation may include:

- endpoint resolution
- relationship type
- cardinality
- direction
- context
- lifecycle constraints

---

## 27. Active Relationship

An active relationship is currently available for applicable virtual-world operations.

Its use remains subject to authorization, governance, safety, and context-specific constraints.

---

## 28. Suspended Relationship

A suspended relationship remains registered but is temporarily unavailable for normal use.

Suspension may result from:

- endpoint failure
- data-quality concerns
- synchronization problems
- maintenance
- governance action
- validation failure

---

## 29. Archived Relationship

An archived relationship is retained for history, evidence, or traceability but is no longer part of the active relationship set.

---

## 30. Removed Relationship

A removed relationship is no longer active or discoverable as a current relationship.

Where historical evidence is required, the registry should preserve an appropriate historical record rather than destroying the identity without traceability.
---
## 31. Relationship Reactivation

A previously suspended or inactive relationship may be reactivated when its validity and applicable conditions have been restored.

Reactivation shall preserve relationship identity and historical traceability.

---

## 32. Relationship Update

Relationship attributes may be updated during the lifecycle.

Updates may include:

- endpoint references
- relationship qualification
- context
- validity
- priority
- provenance
- operational metadata

Material changes shall be versioned where required.

---

## 33. Relationship Versioning

Each material relationship definition or instance change should be associated with a version.

~~~text
REL-AGR-001
    |
    +--> v1
    +--> v2
    +--> v3
~~~

Versioning supports reproducibility and historical reconstruction.

---

## 34. Relationship History

The registry should preserve relevant lifecycle and change history.

History may record:

- creation
- registration
- validation
- activation
- update
- suspension
- reactivation
- archival
- removal

---

## 35. Relationship Validity

Validity describes whether a relationship is applicable within a defined context or period.

Validity may be:

- current
- future
- expired
- conditional
- unknown

---

## 36. Temporal Validity

A relationship may have explicit temporal boundaries.

~~~text
Relationship
    |
    +--> Valid From
    +--> Valid Until
~~~

This is important when relationships change over time.

---

## 37. Relationship Qualification

Some relationships require additional qualification.

For example:

`Field --controlled-by--> Actuator`

may be qualified by:

- control mode
- operating condition
- authorization
- capacity
- scenario

---

## 38. Relationship Attributes

Additional attributes may describe a relationship without changing its fundamental type.

Examples include:

- priority
- capacity
- confidence
- quality
- role
- authority
- operational condition

---

## 39. Relationship Provenance

The registry should record how a relationship was established.

Possible sources include:

- manually defined
- system generated
- imported
- inferred
- synchronized
- discovered
- experimentally established

---

## 40. Relationship Authority

Where multiple sources define the same relationship, the registry should identify the applicable authority.

~~~text
Relationship
     |
     +--> Source A
     +--> Source B
     +--> Authority Resolution
~~~

Authority supports controlled reconciliation.

---

## 41. Relationship Confidence

Relationships established through inference or uncertain discovery may carry confidence information.

Confidence shall not override authoritative validation requirements.

---

## 42. Relationship Quality

Relationship quality may capture whether the registry record is:

- complete
- consistent
- current
- validated
- trustworthy

Quality status should be distinguishable from lifecycle status.

---

## 43. Relationship Freshness

The registry may record the freshness of relationship information.

This is particularly relevant to:

- communication
- monitoring
- synchronization
- operational control

---

## 44. Relationship Integrity

Registry integrity requires that relationship records remain internally coherent.

Integrity checks should include:

- valid relationship ID
- resolvable endpoints
- valid relationship type
- valid cardinality
- valid context
- valid lifecycle state

---

## 45. Orphan Relationship Detection

An orphan relationship exists when one or both endpoints can no longer be resolved.

~~~text
Relationship
   |
   +--> Source ----> Missing
   |
   +--> Target ----> Valid
~~~

An orphan condition shall be detectable and recorded.

---

## 46. Dangling Relationship Detection

A dangling relationship references an entity that is no longer valid within the applicable registry context.

The registry should distinguish dangling references from temporarily unavailable endpoints.

---

## 47. Stale Relationship Detection

A relationship may become stale when its information has not been refreshed within the applicable freshness requirement.

Staleness does not necessarily mean invalidity.

---

## 48. Relationship Reconciliation

Reconciliation resolves differences between the registry and authoritative sources.

Potential actions include:

- validate
- update
- suspend
- replace
- merge
- archive
- escalate

---

## 49. Relationship Conflict

Conflicting relationship records may occur when different sources report different semantics.

Examples:

~~~text
Source A: Field -> Sensor A
Source B: Field -> Sensor B

Conflict
   |
   v
Authority / Context / Temporal Resolution
~~~

---

## 50. Conflict Resolution

Conflict resolution shall consider:

- source authority
- relationship context
- temporal validity
- provenance
- confidence
- governance
- operational importance

---

## 51. Relationship Discovery

The registry should support discovery of relationships by:

- source entity
- target entity
- relationship type
- context
- lifecycle status
- aggregate
- physical association
- spatial context

---

## 52. Relationship Lookup

A relationship should be directly retrievable using its relationship identifier.

Lookup should provide the current authoritative registry record and, where supported, relevant history.

---

## 53. Relationship Filtering

The registry should support controlled filtering.

Examples:

~~~text
All Relationships
      |
      +--> Active
      +--> Simulation
      +--> Field-related
      +--> Sensor-related
      +--> Control-related
~~~

---

## 54. Relationship Traversal

The registry should support logical traversal from an entity to related entities.

Examples include:

- Field → Sensors
- Field → Actuators
- Farm → Fields
- Sensor → Observations
- Decision → Actuator

---

## 55. Relationship Inverse Lookup

The registry should support inverse lookup where semantically meaningful.

For example:

`Field --monitored-by--> Sensor`

may be queried as:

`Sensor --monitors--> Field`

without creating an unnecessary duplicate relationship.

---

## 56. Relationship Neighborhood

An entity's relationship neighborhood represents the directly connected entities.

~~~text
             Sensor
                |
                v
Field <------ Farm ------> Water
  |
  v
Actuator
~~~

Neighborhood queries support virtual-world understanding and validation.

---

## 57. Aggregate Relationships

Aggregates may have relationships to:

- member assets
- other aggregates
- external entities
- physical systems

Aggregate relationships shall not automatically replace member-level relationships.

---

## 58. Membership Registry Semantics

Membership relationships should identify:

- aggregate
- member
- membership type
- context
- lifecycle
- validity

Dynamic membership shall be supported.

---

## 59. Aggregate Membership Change

When membership changes, the registry shall preserve the relationship history.

~~~text
DTA: Irrigation System

Before:
  Pump A
  Pump B

After:
  Pump B
  Pump C
~~~

The change does not require destruction of the affected asset identities.

---

## 60. Relationship and Asset Replacement

When an asset is replaced, affected relationships shall be evaluated.

The registry may:

- terminate old relationships
- create new relationships
- transfer applicable relationships
- preserve historical relationships
- maintain logical continuity through mapping

The correct action depends on the semantic meaning of the relationship.

---
## 61. Relationship Transfer

When an asset changes operational context, applicable relationships may be transferred when their semantics remain valid.

Transfer shall preserve relationship identity where the relationship itself remains logically unchanged.

---

## 62. Relationship Recreation

A relationship shall be recreated when its semantic meaning changes or when identity continuity cannot legitimately be preserved.

Recreation shall retain historical traceability to the previous relationship where required.

---

## 63. Relationship Termination

A relationship may be terminated when:

- its purpose no longer exists
- an endpoint is retired
- an association is replaced
- a configuration changes
- a lifecycle condition expires

Termination shall not automatically imply deletion of historical evidence.

---

## 64. Relationship Restoration

A terminated or archived relationship may be restored only when its original semantic identity remains valid.

Otherwise, a new relationship instance shall be created.

---

## 65. Relationship Replacement

Relationship replacement shall distinguish between:

~~~text
Same Semantic Relationship
        |
        v
Relationship Update / Version

Changed Semantic Relationship
        |
        v
New Relationship
~~~

This prevents historical ambiguity.

---

## 66. Relationship Continuity

Relationship continuity means preserving the identity and history of a relationship when its representation or implementation changes without changing its logical meaning.

---

## 67. Relationship Identity Versus Endpoint Identity

Relationship identity shall remain independent from endpoint identity.

Changing an endpoint may therefore require:

- relationship termination
- relationship recreation
- relationship transfer
- relationship remapping

depending on semantics.

---

## 68. Relationship and Virtual Asset Identity

The registry shall reference the authoritative virtual asset identity rather than embedding a duplicate asset definition.

---

## 69. Relationship and Physical Asset Identity

Where a relationship directly involves a physical asset, the registry may reference the physical identity through the appropriate mapping or integration mechanism.

The relationship registry shall not become the physical asset master.

---

## 70. Relationship and Digital Twin Identity

Digital Twin representations may participate in relationships through their virtual asset identities.

The registry shall distinguish:

- physical identity
- virtual identity
- Digital Twin representation context

---

## 71. Relationship and DTP

A Digital Twin Prototype may define relationship patterns applicable to instances.

The registry records concrete relationships involving instantiated assets.

~~~text
DTP
 |
 +--> Defines Relationship Pattern
             |
             v
          DTI-001
             |
             +--> REL-AGR-001
~~~

---

## 72. Relationship and DTI

Digital Twin Instances may participate in concrete operational, simulation, emulation, experimental, or QAI relationships.

Each applicable relationship shall retain its context.

---

## 73. Relationship and DTA

Digital Twin Aggregates may participate in relationships at aggregate level.

Examples:

- Farm contains Field
- Irrigation System serves Field
- Water System supplies Farm

---

## 74. Aggregate-to-Member Relationship

Aggregate membership shall be represented explicitly.

For example:

~~~text
DTA: Farm
   |
   +--> member-of / contains
             |
             v
          Field-001
~~~

Membership shall not be inferred solely from naming or hierarchy.

---

## 75. Member-to-Aggregate Relationship

The registry should support inverse lookup from a member to its aggregates.

An asset may belong to multiple aggregates where the architecture permits it.

---

## 76. Multiple Aggregate Membership

An asset may participate in multiple aggregates simultaneously.

Example:

~~~text
Pump-001
   |
   +--> Irrigation System
   +--> Field Operations
   +--> Maintenance Group
~~~

Each membership relationship remains independently identifiable.

---

## 77. Relationship Context Separation

Relationships belonging to different contexts shall not be silently merged.

For example:

~~~text
Field --contains--> Sensor
       Context: Operational

Field --contains--> Sensor
       Context: Simulation
~~~

The registry shall preserve context distinction.

---

## 78. Operational Relationship Set

The operational relationship set represents relationships applicable to the current operational virtual-world context.

Only relationships meeting applicable lifecycle and validation conditions shall enter the operational set.

---

## 79. Simulation Relationship Set

The simulation relationship set represents relationships required by a simulation model or scenario.

Simulation-specific relationships may differ from operational relationships.

---

## 80. Emulation Relationship Set

The emulation relationship set represents relationships required to reproduce relevant behavior or interfaces of a target asset or system.

---

## 81. Physical Relationship Set

The physical relationship set represents relationships corresponding to actual physical associations where such information is available and authoritative.

A physical relationship shall not be assumed merely because a virtual relationship exists.

---

## 82. Experimental Relationship Set

Experimental relationships may be created for:

- what-if analysis
- prototype evaluation
- research
- QAI experiments
- alternative configurations

They shall remain distinguishable from operational relationships.

---

## 83. QAI Relationship Context

QAI-related relationships may identify:

- QAI problem participants
- resource dependencies
- representation dependencies
- execution dependencies
- result dependencies

These relationships provide context for QAI execution rather than replacing QAI problem definitions.

---

## 84. Classical Relationship Context

Classical execution may use the same logical asset relationships as QAI execution.

The registry should therefore support a shared relationship context for fair comparison.

---

## 85. Classical-QAI Relationship Equivalence

Where classical and QAI paths evaluate the same problem, their relevant relationship structures should remain equivalent unless a documented difference is part of the experiment.

~~~text
Same Virtual World
        |
   +----+----+
   |         |
Classical   QAI
   |         |
   +----+----+
        |
   Comparable Context
~~~

---

## 86. Advantage Gate Relationship Context

The QAI Advantage Gate may consider relationship context when determining whether a QAI execution is appropriate.

Relevant factors may include:

- dependency structure
- problem scale
- resource requirements
- execution path
- data availability

---

## 87. Fallback Relationship Context

When QAI execution is unavailable or unsuitable, the classical fallback shall use the applicable relationship context required by the baseline.

The registry therefore supports continuity between QAI and classical execution paths.

---

## 88. Relationship and Sensing

Sensing relationships connect assets to sensing capabilities.

Examples:

- Field monitored-by Sensor
- Sensor produces Observation
- Observation updates State

These relationships support the sensing path.

---

## 89. Relationship and Computational Path

Computational relationships may connect:

- input state
- decision function
- QAI representation
- execution capability
- result
- fallback

The registry shall preserve these relationships without implementing computation itself.

---

## 90. Relationship and Communication Path

Communication relationships may connect:

- sensor
- endpoint
- network context
- Digital Farm service
- actuator

Communication availability may change independently from asset identity.

---

## 91. Relationship and Three-Path Composition

The three architectural paths may intersect through shared assets and relationships.

~~~text
          Sensing
             |
             v
       Farm State
             |
             v
       Computational
             |
             v
          Decision
             |
             v
       Communication
             |
             v
          Actuator
~~~

The registry provides structural relationships across these paths.

---

## 92. Relationship and State

Relationships may influence state interpretation.

For example, a sensor-to-field relationship may determine which field state an observation can update.

State derivation remains the responsibility of the state model.

---

## 93. Relationship and Observation

An observation may reference the relationship context through which it became relevant to an asset.

This supports traceability from:

`Sensor → Observation → State`

---

## 94. Relationship and Decision

A decision may reference the assets and relationships that formed its decision context.

This supports decision traceability without embedding decision logic in the registry.

---

## 95. Relationship and Policy

Policies may constrain whether particular relationships may be exercised.

For example, a control relationship may be valid but unavailable under a particular operating policy.

---

## 96. Relationship and Command

A command may depend on a valid relationship between the decision target and the actuator.

The registry provides the relationship context; command validation remains elsewhere.

---

## 97. Relationship and Actuator

Actuator relationships may describe:

- controlled asset
- served area
- operational role
- communication endpoint
- maintenance dependency

---

## 98. Relationship and Sensor

Sensor relationships may describe:

- monitored asset
- observation scope
- measurement role
- communication dependency
- calibration dependency

---

## 99. Relationship and Environment

Environmental relationships may associate:

- field
- weather condition
- environmental model
- observation source
- scenario

These relationships support contextualized farm-state interpretation.

---

## 100. Relationship and Water System

Water-related relationships may connect:

- water source
- storage
- irrigation zone
- pump
- actuator
- field

The registry shall support these relationships without prescribing physical infrastructure.

---

## 101. Relationship and Crop System

Crop-related relationships may connect:

- crop state
- field
- irrigation zone
- environmental context
- decision context

---

## 102. Relationship and Soil System

Soil-related relationships may connect:

- soil state
- field
- sensor
- observation
- irrigation decision

---

## 103. Relationship and Farm Context

The farm context may be related to:

- fields
- crops
- soil
- water
- environmental state
- workforce
- equipment

These relationships form part of the virtual farm context.

---

## 104. Relationship and Workforce

Human and workforce entities may participate in relationships such as:

- operates
- reviews
- maintains
- authorizes
- overrides

Human relationships shall remain governed by applicable authorization and safety requirements.

---

## 105. Relationship and Human Review

A relationship may identify which human role is responsible for review or approval.

The registry records the relationship; human workflow remains outside the registry.

---

## 106. Relationship and Human Override

Where human override is permitted, the applicable relationship context should identify the relevant controlled asset or decision.

---

## 107. Relationship and Authorization

A relationship does not itself grant authorization.

Authorization shall be evaluated independently.

~~~text
Relationship Exists
       |
       v
Authorization Check
       |
   +---+---+
   |       |
 Allow   Deny
~~~

---

## 108. Relationship and Security

Relationship information may itself require controlled access.

Security controls may apply based on:

- entity sensitivity
- relationship sensitivity
- operational context
- administrative domain

---

## 109. Relationship and Governance

The registry shall operate within applicable governance controls.

Governance may define:

- who may create relationships
- who may approve them
- who may modify them
- who may deactivate them
- what evidence must be retained

---

## 110. Relationship and Data Sovereignty

Relationship records crossing administrative or geographic boundaries shall respect applicable data-sovereignty constraints.

---

## 111. Relationship and External Systems

External systems may provide or consume relationship information through defined interfaces.

Examples include:

- enterprise systems
- IoT systems
- market systems
- satellite systems
- external services

---

## 112. Relationship and Enterprise Systems

Enterprise relationships may connect Digital Farm assets with enterprise entities such as:

- organizational units
- business processes
- resource records
- operational systems

The registry shall reference such entities without becoming an enterprise master-data system.

---

## 113. Relationship and ERP

ERP-related relationships may identify associations between farm assets and business resources.

Examples include:

- equipment
- inventory
- workforce
- procurement
- maintenance

ERP semantics remain governed by the ERP integration boundary.

---

## 114. Relationship and IoT

IoT integration may provide relationships between:

- physical devices
- gateways
- sensors
- actuators
- virtual assets

The relationship registry shall preserve logical semantics while technical connectivity remains within the IoT boundary.

---

## 115. Relationship and Satellite

Satellite-derived information may establish contextual relationships involving:

- fields
- environmental conditions
- crop state
- observations

Satellite data does not automatically create an authoritative asset relationship.

---

## 116. Relationship and Market

Market context may be related to farm or crop entities where required for economic analysis.

Such relationships support value context rather than changing the physical asset model.

---

## 117. Relationship and External Services

External services may participate in relationships such as:

- provides-data
- provides-capability
- exchanges-data
- supports-operation

The registry should preserve the external authority of such relationships.

---

## 118. Relationship and HoldCo

HoldCo-level relationships may provide organizational or service context.

The Digital Farm relationship registry shall not duplicate HoldCo master structures.

---

## 119. Relationship and QAI Lab

QAI Lab experimentation may create additional relationships for:

- experimental assets
- alternate representations
- QAI resources
- experimental workflows
- benchmark contexts

These relationships should remain isolated from operational relationships unless explicitly promoted.

---

## 120. Relationship Promotion

An experimental relationship may be promoted when it satisfies applicable validation and governance requirements.

~~~text
Experimental
     |
     v
Validated
     |
     v
Reviewed
     |
     v
Approved
     |
     v
Operational
~~~

Promotion shall preserve provenance and history.
---
## 121. Relationship Demotion

An operational relationship may be demoted when its validity, quality, confidence, or governance status no longer satisfies the requirements for operational use.

Demotion may move a relationship from:

- operational to restricted
- active to suspended
- approved to under-review
- operational to experimental

Demotion shall preserve history and provenance.

---

## 122. Relationship Approval

Relationships requiring controlled approval shall have an identifiable approval state.

Approval may be required for:

- safety-critical relationships
- control relationships
- cross-domain relationships
- production relationships
- relationships involving sensitive data
- promoted experimental relationships

---

## 123. Relationship Revocation

An approved relationship may be revoked when:

- authorization changes
- validity expires
- safety conditions change
- governance requirements change
- the relationship is found to be incorrect

Revocation shall not erase historical evidence.

---

## 124. Relationship Review State

The registry may maintain a review state independently from lifecycle state.

Examples:

- not reviewed
- under review
- approved
- rejected
- conditionally approved
- review expired

---

## 125. Relationship Evidence

Material relationship changes should be supported by evidence where required.

Evidence may include:

- source records
- validation results
- synchronization observations
- human approval
- experiment results
- physical verification

---

## 126. Relationship Auditability

The registry should provide sufficient information to determine:

- who or what created a relationship
- when it was created
- why it was created
- what source supported it
- how it changed
- who approved or modified it where applicable

---

## 127. Relationship Reproducibility

A historical relationship configuration should be reconstructable when required for:

- experiments
- incident analysis
- validation
- audit
- Digital Twin analysis
- QAI evaluation

---

## 128. Relationship Snapshot

The registry may support snapshots of a relationship set at a defined point in time.

~~~text
Relationship Set
      |
      +--> Snapshot T1
      +--> Snapshot T2
      +--> Snapshot T3
~~~

Snapshots support repeatable simulation and experiment execution.

---

## 129. Relationship Configuration Baseline

A controlled relationship configuration baseline may be established for the Phase 1 pilot.

The baseline shall identify the relationship set required for the minimum callable virtual world.

---

## 130. Relationship Configuration Comparison

Two relationship configurations may be compared to identify:

- added relationships
- removed relationships
- changed relationship types
- changed endpoints
- changed cardinalities
- changed contexts
- changed lifecycle states

---

## 131. Relationship Change Impact

Material relationship changes shall be evaluated for downstream impact.

Potentially affected areas include:

- virtual state
- simulation
- emulation
- workflows
- scenarios
- Digital Twin synchronization
- CPS behavior
- classical execution
- QAI evaluation
- value measurement

---

## 132. Relationship Dependency Analysis

The registry should support identifying relationships that depend on a changed asset, aggregate, mapping, or other relationship.

---

## 133. Relationship Cascade

Some changes may require controlled cascade handling.

~~~text
Asset Change
     |
     v
Affected Relationships
     |
     +--> State
     +--> Workflow
     +--> Scenario
     +--> Execution
~~~

Cascade behavior shall be governed rather than assumed.

---

## 134. Relationship Change Propagation

Relationship changes shall propagate to dependent representations where required.

Propagation shall preserve context boundaries.

---

## 135. Relationship Change Isolation

A context-specific relationship change shall not automatically modify relationships in unrelated contexts.

For example, changing a simulation relationship shall not silently change the physical relationship.

---

## 136. Relationship Registry Reconciliation Cycle

A conceptual reconciliation cycle is:

~~~text
Discover
   |
Validate
   |
Compare
   |
Resolve
   |
Update
   |
Record Evidence
   |
Monitor
~~~

The exact implementation remains outside this document.

---

## 137. Relationship Registry Health

Registry health may be assessed through:

- unresolved endpoints
- invalid relationships
- duplicate candidates
- stale records
- conflicting records
- missing mandatory relationships
- failed validations

---

## 138. Relationship Registry Completeness

Completeness means that all relationships required for the applicable virtual-world scope have been represented.

Completeness shall be evaluated against a defined scope rather than assuming that every possible relationship must exist.

---

## 139. Relationship Registry Consistency

Consistency requires that relationship records do not contradict controlled asset, mapping, state, or lifecycle information.

---

## 140. Relationship Registry Freshness

Registry freshness shall be evaluated according to the requirements of each relationship class.

Static structural relationships may have different freshness requirements from dynamic operational relationships.

---

## 141. Relationship Registry Availability

The registry should be available to the Phase 1 functions that require relationship discovery and validation.

Availability requirements may vary by execution context.

---

## 142. Relationship Registry Performance

Registry performance should support the minimum callable pilot without prematurely imposing large-scale production requirements.

Performance requirements shall be defined according to actual use.

---

## 143. Relationship Registry Scalability

The registry shall allow growth from the minimum pilot virtual world to:

- multiple fields
- multiple irrigation zones
- multiple sensors
- multiple actuators
- multiple farms
- multiple aggregates
- larger Digital Twin environments

Scaling shall occur through additional instances and controlled relationships.

---

## 144. Relationship Registry Portability

Relationship records should remain portable across supported technical environments.

Portability should preserve:

- identity
- semantics
- endpoints
- context
- lifecycle
- provenance
- history

---

## 145. Relationship Registry Vendor Neutrality

The registry shall not require a particular:

- graph database
- relational database
- cloud provider
- Digital Twin platform
- simulation engine
- IoT platform

---

## 146. Relationship Registry Technology Neutrality

The logical registry may eventually be implemented using different technologies.

Possible realizations include:

- graph storage
- relational storage
- document storage
- distributed storage
- service-based registry

The architecture defines the information and semantics, not the storage mechanism.

---

## 147. Relationship Registry API Independence

The registry model shall not prescribe specific APIs.

Technical interfaces may later expose capabilities such as:

- create
- register
- lookup
- query
- validate
- update
- activate
- suspend
- archive

---

## 148. Relationship Registry Event Support

Registry changes may generate logical events.

Examples include:

- relationship-created
- relationship-validated
- relationship-activated
- relationship-updated
- relationship-suspended
- relationship-restored
- relationship-archived

Event implementation remains technology-neutral.

---

## 149. Relationship Registry Observability

The registry should provide sufficient observability to understand:

- current relationship status
- recent changes
- validation failures
- unresolved endpoints
- reconciliation issues
- relationship health

---

## 150. Relationship Registry Logging

Registry operations may produce execution or audit logs.

Logging should preserve relevant:

- relationship ID
- operation
- timestamp
- context
- actor or initiating component
- result
- error information

---

## 151. Relationship Registry Error Handling

Registry errors should be explicit and distinguishable.

Examples include:

- unknown relationship
- unknown endpoint
- duplicate relationship
- invalid type
- invalid cardinality
- invalid lifecycle transition
- authorization failure
- stale record
- conflicting source

---

## 152. Relationship Registry Recovery

Recovery may include:

- retry
- reconciliation
- restoration from snapshot
- re-registration
- relationship recreation
- human review

Recovery shall preserve evidence of the failure and corrective action where required.

---

## 153. Relationship Registry Backup

Where the registry is persisted, appropriate backup mechanisms should protect relationship identity and history.

Backup strategy shall be determined by the applicable execution environment.

---

## 154. Relationship Registry Restore

Restoration shall preserve logical consistency between:

- asset registry
- relationship registry
- mapping registry
- state
- applicable configuration

---

## 155. Relationship Registry Migration

Registry migration shall preserve semantic and identity continuity.

Migration may involve:

- storage technology change
- platform change
- schema evolution
- Digital Twin platform migration
- simulation environment migration

---

## 156. Relationship Registry Schema Evolution

The registry schema may evolve as new relationship metadata becomes necessary.

Schema evolution shall avoid unnecessary breaking changes to established relationship identities.

---

## 157. Relationship Registry Backward Compatibility

Existing relationship records should remain interpretable after controlled schema evolution.

Where compatibility cannot be preserved, migration and transformation rules shall be documented.

---

## 158. Relationship Registry Import

Relationships may be imported from authoritative external sources.

Imported relationships shall undergo applicable:

- validation
- identity resolution
- provenance capture
- authority determination
- conflict analysis

---

## 159. Relationship Registry Export

Relationships may be exported for:

- simulation
- emulation
- Digital Twin realization
- analysis
- experimentation
- backup
- migration

Export shall preserve enough semantics for the target purpose.

---

## 160. Relationship Registry Interchange

Interchange formats should remain technology-neutral at the architecture level.

The logical relationship record remains the canonical conceptual structure.

---

## 161. Relationship Registry and Virtualization

The registry provides the relationship structure required to construct the virtual world.

~~~text
Virtual Assets
      |
      v
Relationship Registry
      |
      v
Virtual World Structure
~~~

---

## 162. Relationship Registry and Simulation

Simulation may consume a selected relationship set to construct scenario-specific topology and dependencies.

The simulation environment remains responsible for simulation execution.

---

## 163. Relationship Registry and Emulation

Emulation may consume applicable relationships required to reproduce target connectivity and behavior.

The emulation environment remains responsible for emulation execution.

---

## 164. Relationship Registry and Digital Twin

Digital Twin realization may use registry relationships to maintain persistent virtual-world structure and applicable physical correspondence.

Synchronization remains a technical realization concern.

---

## 165. Relationship Registry and CPS

CPS realization may use relationships to maintain coherence across:

- virtual assets
- physical assets
- sensing
- computation
- communication
- actuation
- feedback

---

## 166. Relationship Registry and QAI

QAI execution may query relationship context when constructing a problem or evaluating dependencies.

The registry does not perform QAI computation.

---

## 167. Relationship Registry and Adaptive QAI

Adaptive QAI may use relationship context to select or modify computational paths.

The registry remains a source of structural context.

---

## 168. Relationship Registry and Virtual Qubit Fabric

Where a virtual qubit fabric is associated with a QAI execution context, relevant relationships may identify:

- logical QAI resources
- execution dependencies
- representation context
- resource availability

The registry does not implement the virtual qubit fabric.

---

## 169. Relationship Registry and Real-Time QAI

Real-time QAI workflows may require relationship information within timing constraints.

The registry shall support the logical dependency while real-time execution remains outside its responsibility.

---

## 170. Relationship Registry and Classical HPC

Classical HPC execution may consume the same virtual-world relationship structure used by QAI experimentation.

This supports consistent problem representation and comparison.

---

## 171. Relationship Registry and Hybrid Execution

Hybrid execution may combine classical and QAI paths while referencing a common relationship context.

---

## 172. Relationship Registry and Resource Management

Relationships may identify dependencies on:

- compute
- edge
- network
- energy
- quantum resources
- budget

Resource allocation remains under Resource Management.

---

## 173. Relationship Registry and Service Management

Service lifecycle changes may affect relationships.

For example, an upgraded service may change an interface dependency.

Service Management remains responsible for service lifecycle.

---

## 174. Relationship Registry and Governance

Governance may define rules for:

- relationship creation
- approval
- access
- retention
- evidence
- audit
- cross-domain sharing

---

## 175. Relationship Registry and Quality

Quality controls should monitor:

- completeness
- correctness
- consistency
- freshness
- provenance
- confidence

---

## 176. Relationship Registry and Metrology

Where relationships depend on measured observations or physical correspondence, metrology controls may influence relationship validation.

The registry records applicable metadata but does not replace metrology functions.

---

## 177. Relationship Registry and Data Sovereignty

The registry shall preserve applicable sovereignty boundaries when relationships or their metadata cross domains.

---

## 178. Relationship Registry and Security

Access to relationship information and lifecycle operations shall be controlled according to applicable security policies.

---

## 179. Relationship Registry and Safety

Safety-critical relationships shall receive appropriate validation and lifecycle controls.

The registry shall not permit registry convenience to override safety requirements.

---

## 180. Relationship Registry and Human Oversight

Human review may be required for:

- critical relationship changes
- ambiguous relationships
- safety-related relationships
- physical correspondence
- operational promotion

The registry should preserve the review outcome.
---
## 181. Relationship Registry and Phase 0 Asset Inventory

The relationship registry shall remain traceable to the logical assets established during Phase 0.

Relationships should reference the established asset identities rather than creating alternative asset identifiers.

---

## 182. Relationship Registry and Phase 0 Function Inventory

Functions defined in Phase 0 may depend on relationships between assets.

The registry provides those structural dependencies without redefining the functions.

---

## 183. Relationship Registry and Phase 0 Interface Inventory

Interfaces may depend on or expose relationships between logical entities.

The registry should allow interface-related relationship context to be resolved without duplicating interface definitions.

---

## 184. Relationship Registry and Phase 0 Workflow Catalogue

Workflows may traverse multiple relationships.

The registry should provide the relationship context required for workflow execution.

---

## 185. Relationship Registry and Phase 0 Scenario Catalogue

Scenarios may activate, deactivate, add, remove, or modify relationships.

Scenario-specific relationship configurations shall remain distinguishable from the baseline configuration.

---

## 186. Relationship Registry and Phase 0 Classical Baseline

The classical irrigation baseline shall reference the same applicable virtual-world relationships used by the QAI path.

This supports a fair comparison.

---

## 187. Relationship Registry and Phase 0 QAI Evaluation

QAI evaluation may record the relationship configuration used by each experiment.

This supports reproducibility and interpretation of results.

---

## 188. Relationship Registry and Advantage Gate

Advantage Gate evaluation may reference relationship complexity and dependency context where relevant.

The registry provides structural evidence but does not perform advantage assessment.

---

## 189. Relationship Registry and Phase 0 KPI

KPI measurement may use relationship context to identify which assets or workflows produced a measured result.

---

## 190. Relationship Registry and Phase 0 Value Criteria

Value analysis may reference relationships to determine affected assets, operational scope, and attribution of outcomes.

---

## 191. Relationship Registry and Acceptance Criteria

Registry acceptance shall be evaluated against the applicable Phase 0 acceptance criteria.

Mandatory relationships required by the pilot shall be explicitly identifiable.

---

## 192. Relationship Registry and Implementation Scope

The registry shall remain within the Phase 1 implementation boundary.

It shall not introduce:

- physical infrastructure management
- enterprise lifecycle management
- production service management
- complete IoT management
- full Digital Twin platform implementation

---

## 193. Relationship Registry and Minimum Callable Pilot

The registry shall support the minimum callable intelligent irrigation workflow.

~~~text
Virtual Farm
     |
     v
Field
 /   \
Sensor Actuator
  |      |
  v      v
Observation  Command
      \    /
       State
         |
      Decision
~~~

---

## 194. Minimum Pilot Relationship Records

The minimum pilot should contain relationships sufficient to represent:

- farm-to-field
- field-to-crop
- field-to-soil
- field-to-sensor
- field-to-actuator
- sensor-to-observation
- observation-to-state
- state-to-decision
- decision-to-actuator

---

## 195. Minimum Relationship Identifier Set

Conceptual relationship identifiers may include:

- `REL-AGR-001`
- `REL-AGR-002`
- `REL-AGR-003`
- `REL-AGR-004`
- `REL-AGR-005`
- `REL-AGR-006`
- `REL-AGR-007`
- `REL-AGR-008`
- `REL-AGR-009`

The final registry values shall be established during implementation.

---

## 196. Minimum Farm Relationship

A minimum farm relationship may be represented as:

`FARM-001 --contains--> FARM-002`

where the target represents the applicable field or farm sub-entity according to the Phase 1 asset registry.

The registry shall use the authoritative asset identifiers.

---

## 197. Minimum Field-to-Sensor Relationship

A minimum sensing relationship shall identify which sensor monitors which field or irrigation zone.

Example:

`Field --monitored-by--> Soil Moisture Sensor`

---

## 198. Minimum Field-to-Actuator Relationship

A minimum control relationship shall identify which actuator controls the applicable irrigation target.

Example:

`Irrigation Zone --controlled-by--> Irrigation Actuator`

---

## 199. Minimum Sensor-to-Observation Relationship

A sensing relationship shall connect the sensor capability to the observation it produces.

Example:

`Soil Moisture Sensor --produces--> Sensor Observation`

---

## 200. Minimum Observation-to-State Relationship

The observation relationship shall support traceability into the virtual farm state.

Example:

`Sensor Observation --updates--> Soil State`

The actual state-transition semantics remain outside the registry.

---

## 201. Minimum Decision-to-Actuator Relationship

The decision context shall identify the target actuator where applicable.

Example:

`Irrigation Decision --targets--> Irrigation Actuator`

---

## 202. Minimum Aggregate Relationship Set

The minimum DTA structure should support:

~~~text
Farm Aggregate
   |
   +--> Field Aggregate
          |
          +--> Crop
          +--> Soil
          +--> Sensors
          +--> Actuators
~~~

Aggregate relationships shall remain distinct from individual functional relationships.

---

## 203. Minimum Context Relationship Set

The minimum pilot should distinguish relationships by applicable context where required:

- operational
- simulation
- emulation
- experimental
- QAI

---

## 204. Minimum Lifecycle Operations

The registry shall conceptually support:

- create
- register
- validate
- activate
- update
- suspend
- reactivate
- archive
- remove

---

## 205. Minimum Query Operations

The registry should support logical queries such as:

- get relationship by ID
- find relationships by source
- find relationships by target
- find relationships by type
- find active relationships
- find relationships by context
- find aggregate members

---

## 206. Minimum Validation Operations

The registry should validate:

- identity
- endpoints
- relationship type
- direction
- cardinality
- context
- lifecycle
- required relationships

---

## 207. Minimum Integrity Checks

The minimum registry should detect:

- orphan relationships
- dangling references
- duplicate candidates
- invalid relationship types
- cardinality violations
- contradictory relationships

---

## 208. Minimum Evidence

For material relationship changes, the registry should preserve sufficient evidence to establish:

- what changed
- when it changed
- why it changed
- source
- applicable context
- resulting status

---

## 209. Relationship Registry Baseline

A Phase 1 relationship baseline shall be established after the minimum virtual-world relationship set has been validated.

The baseline becomes the reference for subsequent Phase 1 work.

---

## 210. Baseline Freeze

Once approved, the relationship baseline should be frozen for the applicable Phase 1 validation cycle.

Changes shall follow controlled change management.

---

## 211. Relationship Baseline Version

The baseline should have an identifiable version.

Example:

`REL-BASELINE-001`

Versioning supports comparison and reproducibility.

---

## 212. Relationship Baseline Scope

The baseline shall explicitly define its scope.

For the initial pilot, scope includes only relationships necessary for the intelligent irrigation virtual world and its required simulation, emulation, QAI, classical, and validation contexts.

---

## 213. Relationship Baseline Extension

Additional relationships may be added for:

- new crops
- new fields
- additional sensors
- additional actuators
- new water systems
- new simulation models
- new QAI experiments

Extensions shall not invalidate existing identities without justification.

---

## 214. Relationship Baseline Compatibility

New relationship records should remain compatible with:

- virtual asset identities
- asset registry
- mapping registry
- state model
- workflow model
- scenario model

---

## 215. Relationship Registry Traceability Chain

The registry shall support a traceability chain:

~~~text
Relationship
    |
    +--> Asset
    |
    +--> Function
    |
    +--> Interface
    |
    +--> Workflow
    |
    +--> Scenario
    |
    +--> Execution
    |
    +--> Measurement
    |
    +--> Evidence
~~~

---

## 216. Relationship Registry to Virtual World

The registry contributes to the structural definition of the Phase 1 virtual world.

~~~text
Virtual Assets
      +
Relationships
      +
Mappings
      +
State
      |
      v
Virtual World
~~~

---

## 217. Relationship Registry Consistency With Virtualization Model

Every registered relationship shall conform to the relationship semantics established in:

`virtualization/01_virtualization_model.md`

---

## 218. Relationship Registry Consistency With Virtual Asset Model

Relationship endpoints shall conform to the virtual asset concepts established in:

`assets/02_virtual_asset_model.md`

---

## 219. Relationship Registry Consistency With Asset Registry

Relationship endpoint identifiers shall be resolvable against:

`assets/03_virtual_asset_registry.md`

where the endpoints are registered virtual assets.

---

## 220. Relationship Registry Consistency With Relationship Model

This registry shall instantiate the semantics defined in:

`relationships/04_asset_relationship_model.md`

It shall not introduce conflicting semantics.

---

## 221. Relationship Registry Consistency With Mapping

Physical associations shall reference the applicable mapping definitions.

The relationship registry shall not create an alternative physical-to-virtual mapping mechanism.

---

## 222. Relationship Registry Consistency With State

State-dependent relationship information shall remain consistent with the Phase 1 state model.

A state change may alter relationship validity without changing relationship identity.

---

## 223. Relationship Registry Consistency With Behavior Models

Behavior models may use relationships as dependencies.

The registry shall provide structural information while behavior remains defined by the model layer.

---

## 224. Relationship Registry Consistency With Interfaces

Relationship-related interface references shall remain aligned with the Phase 1 virtual interface definitions.

---

## 225. Relationship Registry Consistency With Workflows

Workflow steps may depend on relationship lookup, validation, or traversal.

The registry shall provide those capabilities without becoming the workflow engine.

---

## 226. Relationship Registry Consistency With Scenarios

Scenario definitions may select or modify relationship configurations.

Scenario management remains outside the registry.

---

## 227. Relationship Registry and Execution Scope

The registry shall support relationship information required across:

- virtualization
- simulation
- emulation
- physical integration
- Digital Twin
- CPS

without implementing those execution modes itself.

---

## 228. Relationship Registry and Laptop Execution

The minimum registry implementation shall be executable within the Phase 1 laptop boundary.

No cloud or physical infrastructure shall be mandatory.

---

## 229. Relationship Registry and Future Physical Integration

The logical registry shall remain usable when physical sensors, IoT devices, and actuators are later introduced.

The physical integration should add mappings and relationships rather than redesign the registry semantics.

---

## 230. Relationship Registry and Digital Twin Synchronization

When Digital Twin synchronization is introduced, relationship changes may be synchronized between virtual and physical contexts.

The registry shall retain the logical relationship identity and applicable context.

---

## 231. Relationship Registry and Bidirectional Synchronization

Where synchronization is bidirectional:

~~~text
Physical Asset
      |
      v
Virtual Representation
      |
      v
Relationship Registry
      |
      v
Virtual World
      |
      v
Control / Decision
      |
      v
Physical Asset
~~~

Synchronization authority and conflict handling shall remain explicitly defined.

---

## 232. Relationship Registry and Imperfect Synchronization

The registry shall support conditions where relationship information is:

- delayed
- incomplete
- uncertain
- conflicting
- temporarily unavailable

Such conditions shall be represented rather than silently hidden.

---

## 233. Relationship Registry and Uncertainty

Uncertain relationship information may be marked with:

- confidence
- provenance
- validation status
- source
- temporal validity

---

## 234. Relationship Registry and Derived Relationships

Some relationships may be derived from other relationships.

Derived relationships shall be distinguishable from directly authoritative relationships.

---

## 235. Relationship Registry and Inferred Relationships

Inferred relationships shall identify their inference provenance and confidence where applicable.

Inference shall not automatically make a relationship operationally authoritative.

---

## 236. Relationship Registry and Authoritative Relationships

Authoritative relationships originate from a recognized source or controlled definition.

They may override inferred relationships according to governance rules.

---

## 237. Relationship Registry and Relationship Precedence

Where multiple relationship candidates exist, precedence may be determined using:

- authority
- context
- validity
- confidence
- recency
- governance

---

## 238. Relationship Registry and Relationship Selection

Execution contexts may select a subset of relationships.

For example:

~~~text
Complete Registry
       |
       +--> Operational Set
       +--> Simulation Set
       +--> Emulation Set
       +--> QAI Experiment Set
~~~

Selection shall preserve the underlying registry identities.

---

## 239. Relationship Registry and Relationship Views

Different consumers may use different logical views of the same registry.

Examples:

- farm topology
- sensing topology
- control topology
- resource topology
- QAI dependency topology

Views shall not create duplicate relationship identities.

---

## 240. Relationship Registry and Relationship Graph

A graph view may be generated from registered relationships.

The graph is a representation of registry information, not a replacement for the registry semantics.

---

## 241. Relationship Registry and Traversal Safety

Relationship traversal shall respect:

- authorization
- security
- sovereignty
- safety
- context boundaries

Not every relationship should be exposed to every consumer.

---

## 242. Relationship Registry and Access Control

Access may be controlled at:

- registry level
- relationship level
- relationship type
- endpoint
- context
- operation

---

## 243. Relationship Registry and Change Authorization

Relationship creation, modification, activation, suspension, and removal may require different authorization levels.

---

## 244. Relationship Registry and Audit Trail

Controlled relationship lifecycle operations should produce auditable records where required.

---

## 245. Relationship Registry and Compliance

Registry operation shall support applicable compliance requirements without embedding jurisdiction-specific rules into the logical relationship model.

---

## 246. Relationship Registry and Standards

The registry should remain compatible with applicable standards and future standards without making any specific standard mandatory at the architecture-definition stage.

---

## 247. Relationship Registry and Interoperability

Interoperability shall be achieved by preserving stable:

- identifiers
- semantics
- endpoint references
- relationship types
- context
- lifecycle
- provenance

---

## 248. Relationship Registry and Federation

Federated registries may exchange relationship references without requiring a single centralized physical registry.

---

## 249. Relationship Registry and Local Authority

A federated domain may remain authoritative for its own relationships while exposing controlled references to other domains.

---

## 250. Relationship Registry and Cross-Domain Relationship

A cross-domain relationship should identify both endpoint authorities.

~~~text
Domain A
  |
  | relationship
  v
Domain B

Authority A       Authority B
     \               /
      \             /
       Cross-Domain Relationship
~~~

This supports sovereignty and governance without requiring physical infrastructure separation.

---
## 251. Relationship Registry and External Participants

External participants may provide, consume, validate, or influence relationship information.

Examples include:

- research organizations
- technology partners
- service providers
- government interfaces
- external laboratories

Such participants remain outside the registry's internal ownership boundary unless explicitly incorporated.

---

## 252. Relationship Registry and Partner Relationships

Partner relationships may describe controlled collaboration or service dependencies.

Examples include:

- provides-service
- provides-data
- supports-operation
- validates
- collaborates-with

These relationships shall remain distinguishable from physical asset relationships.

---

## 253. Relationship Registry and Government Context

Government-related relationships may provide regulatory, geographic, environmental, or compliance context.

The registry should reference such relationships where required without becoming a regulatory master system.

---

## 254. Relationship Registry and Research Context

Research relationships may connect:

- experimental assets
- research scenarios
- laboratories
- datasets
- QAI experiments
- validation activities

Research relationships shall remain distinguishable from operational relationships.

---

## 255. Relationship Registry and Laboratory Context

A laboratory relationship may identify an asset, experiment, model, or resource associated with a QAI or CPS research environment.

Laboratory execution remains outside the registry.

---

## 256. Relationship Registry and Service Providers

External service providers may be represented through service-related relationships.

Examples include:

- data provider
- compute provider
- connectivity provider
- model provider
- specialized capability provider

---

## 257. Relationship Registry and Capability Relationships

A relationship may identify that an entity provides a capability to another entity.

Example:

`Service A --provides-capability--> QAI Execution`

Capability semantics shall remain separate from implementation details.

---

## 258. Relationship Registry and Resource Relationships

Resource relationships may connect:

- asset
- resource
- execution context
- service
- workload

These relationships support resource-aware execution without replacing Resource Management.

---

## 259. Relationship Registry and Compute Resources

A computational relationship may identify which compute capability is available or assigned to an execution context.

Possible resources include:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU

The registry records the relationship; resource allocation remains elsewhere.

---

## 260. Relationship Registry and Quantum Resources

Quantum-related relationships may identify associations between:

- QAI problem
- representation
- quantum execution capability
- QPU
- virtual qubit resource
- experiment

The registry does not manage quantum hardware.

---

## 261. Relationship Registry and Edge Resources

Edge relationships may connect:

- sensor
- actuator
- edge execution
- gateway
- Digital Farm capability

These relationships support distributed execution contexts.

---

## 262. Relationship Registry and Network Resources

Network relationships may identify logical communication dependencies.

Network provisioning and performance management remain outside the registry.

---

## 263. Relationship Registry and Energy

Energy relationships may associate assets or execution contexts with energy resources or constraints.

This supports energy-aware evaluation without turning the registry into an energy-management system.

---

## 264. Relationship Registry and Budget

Budget relationships may identify value or execution dependencies on financial resources.

Budget control remains under Resource Management and Value Management.

---

## 265. Relationship Registry and Time

Some relationships may have timing constraints.

Examples include:

- valid execution window
- synchronization window
- maintenance period
- scenario duration

Timing metadata shall remain distinguishable from relationship identity.

---

## 266. Relationship Registry and Spatial Context

Relationships may carry spatial context where location affects meaning.

Examples include:

- field-to-zone
- sensor-to-field
- satellite-to-region
- water-source-to-field

Spatial information should reference the applicable geospatial model.

---

## 267. Relationship Registry and Geospatial Consistency

Where a relationship depends on spatial containment or proximity, the registry should remain consistent with authoritative geospatial information.

The registry shall not become the geospatial master.

---

## 268. Relationship Registry and Temporal Context

Relationships may change according to time.

Examples:

~~~text
Sensor A
   |
   +--> monitors Field
   |      Valid: Period 1
   |
Sensor B
   |
   +--> monitors Field
          Valid: Period 2
~~~

Historical validity shall be preserved.

---

## 269. Relationship Registry and Scenario Context

Scenario execution may select a controlled relationship configuration.

Scenario context may include:

- active relationships
- inactive relationships
- simulated relationships
- hypothetical relationships
- alternative configurations

---

## 270. Relationship Registry and What-If Relationships

What-if relationships may represent hypothetical configurations.

They shall be explicitly marked as non-operational unless promoted.

---

## 271. Relationship Registry and Scenario Isolation

Scenario-specific relationship changes shall remain isolated from the operational baseline unless explicitly committed.

---

## 272. Relationship Registry and Experiment Isolation

Experimental relationships shall remain isolated from production or operational relationship sets unless formally promoted.

---

## 273. Relationship Registry and Clone

A cloned virtual-world configuration may contain copied relationship instances.

Clone semantics shall preserve lineage while avoiding unintended identity collisions.

---

## 274. Relationship Registry and Snapshot

A relationship snapshot represents the relationship state at a defined point in time.

Snapshots may support:

- reproducibility
- rollback
- comparison
- scenario initialization
- experiment reconstruction

---

## 275. Relationship Registry and Lineage

Relationship lineage identifies the origin and evolution of a relationship.

Lineage may connect:

~~~text
Original Relationship
        |
        +--> Version
        |
        +--> Derived Relationship
        |
        +--> Replaced Relationship
~~~

---

## 276. Relationship Registry and Derived Relationships

Derived relationships may be generated from established relationships.

They should identify their source relationships where traceability is required.

---

## 277. Relationship Registry and Aggregated Relationships

Aggregated relationships may summarize many lower-level relationships.

For example:

`Farm --served-by--> Water System`

may summarize multiple field-level relationships.

The aggregate relationship shall not replace the underlying relationships.

---

## 278. Relationship Registry and Relationship Inheritance

Some relationships may be inherited through aggregate structures.

Inheritance shall be explicitly defined and shall not silently create operational relationships.

---

## 279. Relationship Registry and Relationship Propagation

When a relationship is propagated from an aggregate to members, the resulting relationship should be identifiable as derived or inherited where appropriate.

---

## 280. Relationship Registry and Relationship Resolution

When multiple possible relationships exist, resolution may consider:

- identity
- type
- context
- authority
- validity
- cardinality
- confidence
- provenance

---

## 281. Relationship Registry and Relationship Precedence

Where competing records exist, precedence rules should determine which relationship is authoritative for the applicable context.

Precedence shall be governed rather than implicitly determined by storage order.

---

## 282. Relationship Registry and Ambiguous Relationships

An ambiguous relationship shall not automatically be treated as valid.

It may be placed into:

- review
- pending
- conditional
- rejected

state according to governance.

---

## 283. Relationship Registry and Relationship Validation Queue

Relationships requiring additional validation may enter a controlled validation queue.

~~~text
New Relationship
      |
      v
Validation Queue
      |
   +--+--+
   |     |
Valid  Review
   |     |
   v     v
Active  Decision
~~~

---

## 284. Relationship Registry and Validation Evidence

Validation results should identify:

- validation performed
- date/time
- applicable context
- result
- evidence
- reviewer or validating component where applicable

---

## 285. Relationship Registry and Automated Validation

Automated validation may perform structural checks such as:

- endpoint existence
- type compatibility
- cardinality
- lifecycle transition
- duplicate detection

Automated validation does not eliminate required human or governance review.

---

## 286. Relationship Registry and Manual Validation

Manual validation may be required where semantic or operational judgement is necessary.

Examples include:

- safety-critical control
- physical correspondence
- ambiguous topology
- cross-domain relationship

---

## 287. Relationship Registry and Validation Failure

Validation failure shall produce an explicit status or error condition.

The registry shall not silently activate an invalid relationship.

---

## 288. Relationship Registry and Conditional Validity

A relationship may be valid only under defined conditions.

Example:

`Field --controlled-by--> Pump`

may be valid only when:

- pump is operational
- authorization exists
- water is available
- safety conditions are satisfied

---

## 289. Relationship Registry and Conditional Relationship

Conditional relationships should preserve the conditions governing their applicability.

The condition itself may reference policy, state, scenario, or other controlled information.

---

## 290. Relationship Registry and Relationship Priority

Where multiple valid relationships are available, priority may determine preferred use.

Priority shall not replace semantic distinction.

---

## 291. Relationship Registry and Primary Relationship

A primary relationship may identify the preferred relationship for a particular context.

Example:

~~~text
Field
 |
 +--> Primary Sensor
 +--> Secondary Sensor
~~~

Both relationships remain identifiable.

---

## 292. Relationship Registry and Secondary Relationship

Secondary relationships may provide:

- redundancy
- backup
- alternative connectivity
- alternate sensing
- failover

---

## 293. Relationship Registry and Redundancy

Relationship redundancy supports resilience where multiple valid paths exist.

Redundancy shall not be confused with accidental duplication.

---

## 294. Relationship Registry and Failover

When a primary relationship becomes unavailable, an eligible secondary relationship may be selected.

Failover rules remain part of the applicable operational or execution logic.

---

## 295. Relationship Registry and Reliability

Relationship reliability may be measured independently from endpoint reliability.

Potential measures include:

- availability
- failure frequency
- recovery time
- successful resolution rate

---

## 296. Relationship Registry and Resilience

A resilient registry should tolerate relationship failures without corrupting unrelated relationships.

---

## 297. Relationship Registry and Failure Isolation

Relationship failures should be isolated to the smallest practical scope.

~~~text
Relationship Failure
        |
        v
Affected Dependency
        |
        +--> Unaffected Relationships Continue
~~~

---

## 298. Relationship Registry and Recovery Evidence

Recovery actions should be traceable where required.

Evidence may include:

- detected failure
- corrective action
- resulting relationship state
- validation result

---

## 299. Relationship Registry and Operational Monitoring

Operational monitoring may track:

- active relationship count
- suspended relationships
- unresolved endpoints
- stale relationships
- validation failures
- relationship health

---

## 300. Relationship Registry and Registry Dashboard

A logical dashboard may summarize:

~~~text
Relationship Registry
---------------------
Active
Suspended
Pending Review
Invalid
Stale
Conflicting
Orphaned
~~~

The dashboard is a management view, not a separate relationship model.

---

## 301. Relationship Registry and Pilot Visualization

The registry may provide relationship information to pilot visualization.

Visualization may show:

- farm topology
- field topology
- sensing paths
- control paths
- active relationships
- relationship status

---

## 302. Relationship Registry and Virtual World Visualization

A virtual-world visualization may render registered relationships as connections between virtual entities.

~~~text
Field
 | \
 |  \
Sensor Actuator
   \    /
    State
~~~

The visualization remains a representation of registry information.

---

## 303. Relationship Registry and Explainability

Relationship information may support explanation of why an asset participated in a workflow or decision.

For example:

`Why was Sensor A used?`

Possible explanation:

`Sensor A --monitors--> Field 001`

---

## 304. Relationship Registry and Decision Traceability

A decision trace may include relevant relationships:

~~~text
Sensor
  |
  v
Observation
  |
  v
Soil State
  |
  v
Decision
  |
  v
Actuator
~~~

This supports explainability and auditability.

---

## 305. Relationship Registry and QAI Explainability

QAI experiment results may reference the relationship context used to construct the problem.

This supports interpretation of QAI results without embedding QAI logic into the registry.

---

## 306. Relationship Registry and Human Explainability

Human operators should be able to understand important relationships through appropriate views and descriptions.

---

## 307. Relationship Registry and Change Notification

Material relationship changes may generate notifications to affected components or responsible users.

Notification policy remains outside the registry.

---

## 308. Relationship Registry and Incident Context

Relationship information may support incident analysis by identifying dependencies surrounding an affected asset.

---

## 309. Relationship Registry and Incident Reconstruction

Historical relationship snapshots should support reconstruction of the virtual-world topology applicable during an incident.

---

## 310. Relationship Registry and Maintenance Context

Maintenance activities may temporarily change relationships.

Examples include:

- actuator disconnected
- sensor replaced
- communication path unavailable
- equipment reassigned

The registry should preserve these changes as lifecycle events.

---

## 311. Relationship Registry and Upgrade Context

Technical upgrades may alter relationship implementations without changing logical relationship semantics.

---

## 312. Relationship Registry and Patch Context

Patches may temporarily affect relationship availability.

The relationship identity should remain stable where the logical relationship remains unchanged.

---

## 313. Relationship Registry and Release Context

A service release may introduce or modify supported relationship types.

Such changes shall follow controlled versioning.

---

## 314. Relationship Registry and Configuration Context

Configuration may determine whether a relationship is enabled, preferred, or applicable.

Configuration shall not redefine relationship semantics.

---

## 315. Relationship Registry and Lifecycle Management

The registry shall provide relationship lifecycle information required by Digital Farm management.

It shall not become a complete service lifecycle management system.

---

## 316. Relationship Registry and Change Management

Material registry changes should follow the applicable change-management process.

---

## 317. Relationship Registry and Upgrade Management

Registry schema or capability upgrades should preserve existing relationship identities and historical information where possible.

---

## 318. Relationship Registry and Incident Management

Relationship-related incidents should be traceable to the affected relationship identifiers.

---

## 319. Relationship Registry and Patch Management

Technical patches affecting the registry should be independently managed from relationship semantics.

---

## 320. Relationship Registry and Add-On Management

Future add-ons may introduce additional relationship types or relationship consumers.

Add-ons shall remain compatible with the core registry model.

---

## 321. Relationship Registry and IaaS

Infrastructure relationships may identify dependencies between execution resources and virtual assets.

The registry shall not become an infrastructure resource manager.

---

## 322. Relationship Registry and PaaS

Platform services may expose capabilities consumed by virtual assets or workflows.

Such dependencies may be represented as service relationships.

---

## 323. Relationship Registry and SaaS

Application-level services may participate in relationships with Digital Farm capabilities.

Service implementation remains outside the relationship registry.

---

## 324. Relationship Registry and Managerial Boundary

The registry remains a managerial/service-layer artifact that defines and records structural relationships.

Technical platforms may realize those relationships but do not redefine the Digital Farm architecture.

---

## 325. Relationship Registry and Technical Boundary

Technical implementation may occur in:

- Digital Twin platform
- simulation environment
- emulation environment
- application runtime
- database
- graph technology
- integration layer

The registry remains the logical reference.

---

## 326. Relationship Registry Non-Duplication

The registry shall not duplicate:

- asset implementation
- simulation logic
- emulation logic
- synchronization engines
- QAI execution
- physical device management
- enterprise master data

---

## 327. Relationship Registry Reuse

The same logical relationship records should be reusable across:

- virtualization
- simulation
- emulation
- Digital Twin
- CPS
- classical execution
- QAI execution
- human-AI workflows

where context permits.

---

## 328. Relationship Registry Extension

The registry may later support additional domains such as:

- machinery
- livestock
- greenhouses
- logistics
- energy
- supply chains

Extensions shall preserve the foundational relationship semantics.

---

## 329. Relationship Registry Evolution

Evolution should occur by adding controlled:

- entity types
- relationship types
- attributes
- contexts
- lifecycle states
- validation rules

rather than redesigning the registry unnecessarily.

---

## 330. Relationship Registry Final Principle

The Asset Relationship Registry provides the controlled instance-level realization of the Phase 1 Asset Relationship Model.

It establishes a reliable registry of:

- relationship identity
- endpoints
- semantic type
- direction
- cardinality
- context
- lifecycle
- validity
- provenance
- quality
- confidence
- history
- evidence

It supports the Digital Farm virtual world from laptop-based virtualization through simulation and emulation to Digital Twin, physical integration, closed-loop CPS, classical execution, QAI experimentation, and future production realization.

The registry remains a logical and managerial reference while technical platforms remain responsible for their own realization mechanisms.

~~~text
Asset Relationship Model
          |
          v
Asset Relationship Registry
          |
          +--> Virtualization
          +--> Simulation
          +--> Emulation
          +--> Digital Twin
          +--> Physical Integration
          +--> CPS
          +--> Classical
          +--> QAI
          +--> Human-AI
~~~

**Status: COMPLETE — PHASE 1 ASSET RELATIONSHIP REGISTRY BASELINE**
---
