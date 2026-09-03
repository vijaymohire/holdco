# Phase 1 — Asset–Twin Mapping

## 1. Purpose

The Asset–Twin Mapping defines how logical assets are associated with their Digital Twin representations across the Digital Farm virtual world.

It establishes a technology-neutral mapping model between:

- logical assets
- physical assets
- Digital Twin Prototypes
- Digital Twin Instances
- Digital Twin Aggregates
- virtual representations
- simulation representations
- emulation representations
- operational representations

---

## 2. Architectural Position

This document belongs to:

`profiles/pilot/phase_1/mappings/`

It is a Phase 1 mapping artifact between the Virtual Asset Model and Digital Twin realization.

~~~text
Virtual Asset Model
        |
        v
Asset Registry
        |
        v
Asset–Twin Mapping
        |
        +--> Digital Twin
        +--> Simulation
        +--> Emulation
        +--> Physical Integration
        +--> CPS
~~~

---

## 3. Mapping Objective

The objective is to provide explicit, traceable, lifecycle-aware associations between an asset and its applicable virtual or Digital Twin representations.

The mapping shall support both:

- physical-first realization
- virtual-first realization

---

## 4. Mapping Principle

An asset–twin mapping is a first-class association.

It shall not be inferred solely from:

- matching names
- matching identifiers
- topology
- storage location
- implementation conventions

Where the association is architecturally significant, it shall be explicitly represented.

---

## 5. Mapping Is Not the Asset

The mapping does not create or redefine the asset.

~~~text
Asset
  |
  | associated through
  v
Mapping
  |
  v
Twin Representation
~~~

The asset remains governed by the Asset Model and Asset Registry.

---

## 6. Mapping Is Not the Twin

The mapping does not create the Digital Twin representation itself.

The Digital Twin representation is defined through the applicable virtual asset model and technical realization.

The mapping identifies the association between them.

---

## 7. Mapping Is Not a Relationship Registry

The Asset Relationship Registry defines general relationships between entities.

The Asset–Twin Mapping specifically defines correspondence between an asset and its applicable twin or virtual representation.

---

## 8. Mapping Identity

Each material asset–twin association shall have an independent mapping identifier.

A conceptual identifier may follow:

`MAP-TWIN-<DOMAIN>-<SEQUENCE>`

Example:

`MAP-TWIN-AGR-001`

---

## 9. Mapping Record

A conceptual mapping record contains:

~~~text
Mapping ID
Logical Asset ID
Twin / Virtual Representation ID
Representation Type
Context
Association Type
Cardinality
Status
Validity
Authority
Provenance
Version
~~~

Additional attributes may be added where required.

---

## 10. Logical Asset

The logical asset is the stable architectural identity representing an asset within the Digital Farm model.

It may represent:

- farm
- field
- crop
- soil
- water system
- sensor
- actuator
- machine
- workforce entity
- service
- other controlled entity

---

## 11. Physical Asset

A physical asset is an actual physical entity corresponding to a logical asset where such physical realization exists.

Examples include:

- physical sensor
- irrigation actuator
- pump
- field
- agricultural machine

A logical asset does not require a physical asset to exist.

---

## 12. Virtual Asset

A virtual asset is the virtual representation of an asset within the Digital Farm virtual world.

It may exist:

- before physical realization
- alongside physical realization
- after physical retirement for historical purposes

---

## 13. Digital Twin Prototype

A Digital Twin Prototype (DTP) defines a reusable representation pattern.

It is not itself a mapping to one physical asset.

~~~text
DTP
 |
 +--> Defines Representation Pattern
          |
          +--> DTI-001
          +--> DTI-002
          +--> DTI-003
~~~

---

## 14. Digital Twin Instance

A Digital Twin Instance (DTI) represents a specific virtualized entity.

A DTI may be associated with:

- one logical asset
- one physical asset
- multiple physical assets where explicitly supported
- no physical asset in a virtual-first state

---

## 15. Digital Twin Aggregate

A Digital Twin Aggregate (DTA) represents a logical aggregation of multiple entities.

Examples include:

- farm
- irrigation system
- field group
- water system
- machinery group

A DTA may therefore correspond to:

- a physical aggregate
- a logical aggregate
- a virtual composition
- a dynamically selected group

---

## 16. DTP Mapping

A logical asset may reference the DTP from which its DTI representation was created.

This is a type/template relationship rather than a physical correspondence.

---

## 17. DTI Mapping

A logical asset may be explicitly associated with one or more DTIs.

The mapping shall preserve the identity of each DTI.

---

## 18. DTA Mapping

A logical aggregate may be associated with a DTA representing its virtual composition.

The DTA membership itself remains managed through asset relationships.

---

## 19. Physical-to-Twin Mapping

Where a physical asset exists, the mapping may associate it with its virtual representation.

~~~text
Physical Asset
      |
      v
Asset–Twin Mapping
      |
      v
Digital Twin Instance
~~~

This association is not necessarily one-to-one.

---

## 20. Twin-to-Physical Mapping

The mapping shall also support lookup from a virtual representation to its associated physical asset.

This supports:

- synchronization
- control
- monitoring
- maintenance
- traceability

---

## 21. Virtual-First Mapping

A virtual asset may exist without an associated physical asset.

~~~text
Virtual Asset
     |
     v
Digital Twin Instance
     |
     +--> Physical Asset: None
~~~

This supports simulation, emulation, design, experimentation, and future physical deployment.

---

## 22. Physical-First Mapping

A physical asset may exist before its Digital Twin representation is created.

~~~text
Physical Asset
     |
     v
Registered Logical Asset
     |
     v
Digital Twin Instance
~~~

The mapping may therefore be established after physical registration.

---

## 23. No-Physical Mapping State

A mapping may explicitly indicate that the virtual representation currently has no physical counterpart.

This shall be distinguishable from:

- unknown physical counterpart
- mapping failure
- mapping not yet evaluated

---

## 24. Pending Mapping

A mapping may remain pending when the intended correspondence has been identified but not yet validated.

Pending mappings shall not automatically participate in physical synchronization or control.

---

## 25. Validated Mapping

A validated mapping has passed applicable checks for:

- identity
- representation
- correspondence
- context
- authority
- cardinality
- provenance

---

## 26. Active Mapping

An active mapping represents a currently applicable association.

Activation does not automatically authorize physical control.

---

## 27. Suspended Mapping

A mapping may be suspended when the correspondence cannot currently be trusted or used.

Possible causes include:

- physical asset maintenance
- synchronization failure
- identity ambiguity
- stale information
- validation failure

---

## 28. Archived Mapping

An archived mapping is retained for historical or evidentiary purposes but is no longer part of the active association set.

---

## 29. Mapping Termination

A mapping may be terminated when:

- the physical asset is retired
- the virtual representation is retired
- correspondence is no longer valid
- the representation is replaced
- governance requires removal

Historical traceability should remain available where required.

---

## 30. Mapping Cardinality

Asset–Twin mapping shall support multiple cardinality patterns.

These include:

- zero-to-one
- one-to-one
- one-to-many
- many-to-one
- many-to-many
- zero-to-many

Cardinality shall be explicitly interpreted within the mapping context.
---
## 31. One-to-One Mapping

A one-to-one mapping associates one logical asset with one applicable twin representation within a defined context.

~~~text
Logical Asset A
      |
      v
   Mapping
      |
      v
Twin Instance A
~~~

This is a valid pattern but shall not be assumed as the universal mapping model.

---

## 32. One-to-Many Mapping

One logical asset may have multiple virtual or Digital Twin representations.

~~~text
                 +--> Operational Twin
Logical Asset ---+
                 +--> Simulation Twin
                 |
                 +--> QAI Twin
~~~

This supports different representation contexts without creating multiple logical assets.

---

## 33. Many-to-One Mapping

Multiple logical assets may map to one aggregate or higher-level twin representation where the semantics support aggregation.

~~~text
Asset A ---+
           |
Asset B ---+--> Aggregate Twin
           |
Asset C ---+
~~~

The aggregate semantics shall remain explicit.

---

## 34. Many-to-Many Mapping

Multiple logical assets may participate in multiple twin representations.

~~~text
Asset A ----+       +---- Twin X
Asset B ----+-------+
            |       |
Asset C ----+       +---- Twin Y
~~~

This may occur in complex Digital Twin, simulation, or experimental contexts.

---

## 35. Zero-to-One Mapping

A logical asset may currently have no twin representation or may have at most one applicable twin within a defined context.

The absence of a mapping shall be distinguishable from a mapping failure.

---

## 36. Zero-to-Many Mapping

A logical asset may have no twin representation or multiple representations.

This is particularly useful during staged virtualization.

~~~text
Logical Asset
     |
     +--> No Twin
     |
     +--> Twin A
     +--> Twin B
     +--> Twin C
~~~

---

## 37. Cardinality Is Contextual

Mapping cardinality shall always be interpreted in relation to:

- logical asset identity
- twin identity
- representation context
- association type
- lifecycle
- validity

A single global cardinality rule shall not be imposed.

---

## 38. Multiple Representations of One Asset

A single logical asset may have multiple representations for different purposes.

Examples include:

- operational monitoring
- simulation
- emulation
- maintenance
- training
- QAI experimentation
- what-if analysis

These representations shall remain distinguishable.

---

## 39. Representation Context

Each mapping should identify the context in which the association applies.

~~~text
Logical Asset
      |
      +--> Operational Representation
      +--> Simulation Representation
      +--> Emulation Representation
      +--> Experimental Representation
      +--> QAI Representation
~~~

---

## 40. Representation Context Identity

A representation context should have a stable identifier where necessary.

This prevents different representations of the same asset from being incorrectly treated as one representation.

---

## 41. Mapping Association Type

The mapping should identify the nature of the correspondence.

Possible association types include:

- represents
- operational-representation-of
- simulation-representation-of
- emulation-representation-of
- physical-counterpart-of
- aggregate-representation-of

The controlled vocabulary shall remain extensible.

---

## 42. Representation Versus Physical Counterpart

A virtual representation and a physical counterpart are related concepts but are not interchangeable.

~~~text
Logical Asset
     |
     +--> Virtual Representation
     |
     +--> Physical Counterpart
~~~

The mapping model preserves both dimensions.

---

## 43. Logical Asset as Stable Reference

The logical asset should provide the stable reference connecting different representations.

This allows:

- representation replacement
- physical replacement
- simulation variants
- QAI variants
- lifecycle continuity

without unnecessary asset identity changes.

---

## 44. Physical Asset Replacement

When a physical asset is replaced, the logical asset may remain stable.

~~~text
Logical Asset
      |
      +--> Old Physical Asset
      |
      +--> New Physical Asset
~~~

The applicable mappings and history shall identify the transition.

---

## 45. Virtual Representation Replacement

A virtual representation may be replaced while the logical asset remains unchanged.

~~~text
Logical Asset
      |
      +--> Old Twin
      |
      +--> New Twin
~~~

The registry shall preserve replacement history.

---

## 46. Mapping Continuity

Mapping continuity means preserving the logical association across representation or physical replacement where semantics remain valid.

---

## 47. Mapping Version

Material mapping changes should be versioned.

Examples include:

- changed twin representation
- changed physical counterpart
- changed context
- changed association type
- changed authority

---

## 48. Mapping History

The registry should preserve applicable mapping history.

History may include:

- mapping creation
- validation
- activation
- suspension
- reassignment
- replacement
- termination

---

## 49. Mapping Validity

Mapping validity describes whether the association remains applicable.

Possible states include:

- valid
- invalid
- pending
- expired
- conditional
- unknown

---

## 50. Mapping Temporal Validity

Mappings may be valid only during a defined period.

~~~text
Mapping A
 |----------------|
       Period 1

Mapping B
              |----------------|
                   Period 2
~~~

This supports physical replacement and representation evolution.

---

## 51. Mapping Provenance

The mapping shall identify its source where required.

Possible sources include:

- asset registration
- Digital Twin creation
- physical commissioning
- synchronization
- import
- human validation
- experiment configuration

---

## 52. Mapping Authority

Where multiple sources propose mappings, the applicable authority shall be identifiable.

Authority may be:

- asset owner
- operational system
- Digital Farm
- physical system
- external authority
- experiment authority

---

## 53. Mapping Confidence

Mappings based on inference or incomplete information may carry confidence.

Confidence shall remain distinct from authoritative validation.

---

## 54. Mapping Quality

Mapping quality may consider:

- identity correctness
- completeness
- consistency
- freshness
- provenance
- validation status
- confidence

---

## 55. Mapping Freshness

The registry may track when a mapping was last confirmed.

Freshness requirements may differ between:

- static assets
- operational assets
- physical devices
- synchronized CPS assets

---

## 56. Mapping Validation

A mapping should be validated before being used for consequential operations.

Validation may verify:

- logical asset identity
- twin identity
- physical identity where applicable
- representation context
- association type
- cardinality
- authority
- provenance

---

## 57. Mapping Identity Resolution

The mapping process shall resolve whether two identifiers refer to:

- the same logical asset
- different logical assets
- the same physical asset
- different physical assets
- the same twin
- different twin representations

---

## 58. Mapping Ambiguity

Ambiguous mappings shall not automatically become active.

They may be placed into:

- pending
- review
- conditional
- rejected

status.

---

## 59. Mapping Conflict

A mapping conflict occurs when multiple sources assert incompatible correspondence.

~~~text
Logical Asset
      |
      +--> Twin A
      |
      +--> Twin B

Conflict
   |
   v
Resolution Required
~~~

---

## 60. Mapping Conflict Resolution

Conflict resolution may consider:

- authority
- context
- temporal validity
- provenance
- confidence
- representation identity
- physical verification
- governance

---
## 61. Mapping to Digital Twin Prototype

A mapping may reference the Digital Twin Prototype from which a Digital Twin Instance was derived.

This relationship identifies the representation pattern and shall remain distinct from the concrete asset-to-twin association.

---

## 62. Mapping to Digital Twin Instance

The mapping shall identify the applicable Digital Twin Instance where a specific instance representation exists.

~~~text
Logical Asset
      |
      v
Mapping
      |
      v
DTI-001
~~~

---

## 63. Mapping to Digital Twin Aggregate

A logical aggregate may map to a Digital Twin Aggregate.

The mapping shall identify whether the association represents:

- the aggregate itself
- an aggregate representation
- a physical aggregate
- a dynamically composed virtual aggregate

---

## 64. Mapping to Simulation Representation

A logical asset may map to a simulation representation without being physically realized.

This supports virtual-first development.

~~~text
Logical Asset
      |
      +--> Simulation Representation
      |
      +--> Physical Asset: None
~~~

---

## 65. Mapping to Emulation Representation

A logical asset may map to an emulation representation that reproduces relevant behavior or interfaces.

Emulation mapping does not imply physical correspondence.

---

## 66. Mapping to Operational Representation

An operational representation is the virtual representation used for ongoing operational context.

It may participate in:

- monitoring
- state management
- decision workflows
- control
- feedback

---

## 67. Mapping to Experimental Representation

An experimental representation may be created for controlled experimentation.

It shall remain distinguishable from the operational representation.

---

## 68. Mapping to QAI Representation

A QAI-specific representation may be created to support:

- problem formulation
- representation transformation
- QAI experimentation
- resource evaluation
- Advantage Gate analysis

It may coexist with operational and simulation representations.

---

## 69. Mapping to Maintenance Representation

A maintenance representation may support:

- diagnostics
- maintenance planning
- asset replacement
- failure analysis
- lifecycle evaluation

It does not replace the operational representation.

---

## 70. Mapping to Training Representation

A training representation may be created for:

- operator training
- human-AI collaboration
- safety exercises
- workflow rehearsal

Training representations shall remain isolated from operational control unless explicitly authorized.

---

## 71. Mapping to What-If Representation

A what-if representation may represent a hypothetical asset configuration or alternative Digital Twin state.

It shall be explicitly identified as hypothetical.

---

## 72. Multiple Twin Representations

One logical asset may therefore have several representations simultaneously.

~~~text
                  +--> Operational
                  |
Logical Asset ----+--> Simulation
                  |
                  +--> Emulation
                  |
                  +--> QAI
                  |
                  +--> Maintenance
                  |
                  +--> Training
~~~

These representations share logical asset identity but have distinct representation contexts.

---

## 73. Representation Independence

A representation may be replaced without changing the logical asset identity.

This is a fundamental mapping principle.

---

## 74. Representation Substitution

A new representation may substitute for an existing representation when it satisfies the required semantic and operational criteria.

The previous mapping shall remain traceable.

---

## 75. Mapping Reassignment

A mapping may be reassigned when the associated representation changes.

Reassignment shall preserve historical continuity.

---

## 76. Physical Counterpart Reassignment

A logical asset may change physical counterpart while retaining its logical identity.

~~~text
Logical Asset
      |
      +--> Physical Asset A
      |
      +--> Physical Asset B
~~~

The applicable validity periods shall distinguish the two associations.

---

## 77. Mapping During Commissioning

During physical commissioning, an existing virtual-first asset may be associated with a newly introduced physical asset.

The mapping transitions from:

`Virtual Only`

to:

`Virtual + Physical`

without requiring recreation of the logical asset.

---

## 78. Mapping During Decommissioning

During physical decommissioning, a physical counterpart may be removed while the virtual asset remains available for:

- historical analysis
- simulation
- maintenance history
- replacement planning
- experimentation

---

## 79. Mapping During Physical Replacement

Physical replacement shall preserve the logical asset identity where the replacement represents continuity of the same logical role.

The mapping history shall identify the old and new physical counterparts.

---

## 80. Mapping During Twin Replacement

When a Digital Twin representation is replaced, the logical asset may remain stable.

~~~text
Logical Asset
      |
      +--> DTI-A [Retired]
      |
      +--> DTI-B [Active]
~~~

---

## 81. Mapping During Aggregate Reorganization

When a DTA is reorganized, membership relationships may change while individual asset-to-twin mappings remain unchanged.

This preserves separation between:

- representation mapping
- aggregate membership
- relationship structure

---

## 82. Mapping and Asset Relationship Registry

The mapping may reference relationship information where required to validate correspondence.

It shall not duplicate the Asset Relationship Registry.

---

## 83. Mapping and Physical-Virtual Mapping

The Asset–Twin Mapping establishes correspondence to Digital Twin representations.

Physical-to-virtual associations involving physical identity shall be further governed by:

`mappings/07_physical_virtual_mapping.md`

---

## 84. Mapping and Virtual Asset Registry

The logical asset and twin representation identifiers shall be resolvable through the Virtual Asset Registry.

---

## 85. Mapping and Relationship Registry

Where an asset–twin association itself has relationship semantics, the relationship may be referenced through the Relationship Registry while the mapping remains the authoritative correspondence record.

---

## 86. Mapping and State

A mapped twin may maintain virtual state corresponding to the logical or physical asset.

The mapping establishes correspondence; state management remains the responsibility of the State Model.

---

## 87. Mapping and Synchronization

Where a physical counterpart exists, the mapping may support synchronization between physical and virtual contexts.

Synchronization may be:

- unidirectional
- bidirectional
- periodic
- event-driven
- conditional

---

## 88. Mapping Synchronization Direction

The applicable synchronization direction shall be explicit.

~~~text
Physical --> Virtual
Virtual  --> Physical
Physical <--> Virtual
~~~

The mapping itself does not authorize control.

---

## 89. Mapping Synchronization Status

A mapping may record synchronization status such as:

- synchronized
- delayed
- stale
- degraded
- disconnected
- unknown

---

## 90. Mapping Synchronization Confidence

Where synchronization is imperfect, the mapping may reference confidence or quality information.

This supports controlled interpretation of the correspondence.

---

## 91. Mapping and Imperfect Data

The mapping model shall support imperfect correspondence information.

Possible conditions include:

- delayed identity confirmation
- incomplete metadata
- conflicting source information
- uncertain physical association
- stale synchronization

---

## 92. Mapping and Uncertainty

Uncertainty shall be represented explicitly where it affects the reliability of the asset-to-twin association.

Uncertainty shall not be silently converted into certainty.

---

## 93. Mapping and Provenance Chain

A mapping should support provenance tracing:

~~~text
Physical / Logical Source
          |
          v
Identity Resolution
          |
          v
Mapping
          |
          v
Twin Representation
~~~

---

## 94. Mapping and Evidence

Material mappings may require evidence such as:

- registration records
- commissioning records
- synchronization evidence
- human validation
- system-generated evidence
- experimental evidence

---

## 95. Mapping and Auditability

The mapping lifecycle shall be auditable where required.

Auditability should establish:

- who or what created the mapping
- when it was created
- source
- validation result
- changes
- current status

---

## 96. Mapping and Reproducibility

Historical mapping states should be reconstructable when required for:

- simulation
- experiments
- QAI evaluation
- incident analysis
- Digital Twin validation

---

## 97. Mapping Snapshot

A mapping snapshot may capture all relevant asset-to-twin associations at a defined point in time.

~~~text
Mapping Snapshot T1
        |
        +--> Asset A -> Twin A
        +--> Asset B -> Twin B
        +--> Asset C -> No Physical Counterpart
~~~

---

## 98. Mapping Baseline

A controlled mapping baseline shall identify the mappings required for the Phase 1 pilot.

---

## 99. Mapping Baseline Version

The baseline shall have an identifiable version to support controlled comparison and reproducibility.

Example:

`MAP-TWIN-BASELINE-001`

---

## 100. Mapping Configuration Comparison

Mapping configurations may be compared to identify:

- added mappings
- removed mappings
- reassigned twins
- changed physical counterparts
- changed contexts
- changed validity
- changed status

---

## 101. Mapping Change Impact

Material mapping changes shall be evaluated for their effects on:

- state
- simulation
- emulation
- synchronization
- workflows
- scenarios
- Digital Twin
- CPS
- classical execution
- QAI execution

---

## 102. Mapping Change Isolation

A mapping change in one representation context shall not automatically alter unrelated contexts.

For example, replacing a simulation twin shall not automatically replace the operational twin.

---

## 103. Mapping Change Propagation

Where propagation is required, it shall be controlled and traceable.

Propagation may affect dependent technical realizations without changing the logical mapping semantics.

---

## 104. Mapping Validation Lifecycle

The conceptual lifecycle is:

~~~text
Create
  |
Register
  |
Validate
  |
Approve
  |
Activate
  |
Monitor
  |
Update / Suspend / Replace
  |
Archive / Terminate
~~~

---

## 105. Mapping Creation

A mapping may be created when:

- a virtual asset is instantiated
- a physical asset is registered
- a Digital Twin is created
- a representation is generated
- a commissioning event occurs

---

## 106. Mapping Registration

Registration records the mapping as a controlled association.

Registration does not imply validation or operational activation.

---

## 107. Mapping Approval

Approval may be required for mappings involving:

- physical control
- safety
- production operation
- critical infrastructure
- cross-domain assets

---

## 108. Mapping Activation

Activation makes the mapping available for its intended context after applicable validation and approval.

---

## 109. Mapping Suspension

Suspension temporarily prevents normal use of a mapping while preserving its identity and history.

---

## 110. Mapping Reactivation

A suspended mapping may be reactivated after applicable conditions have been restored and validation completed.

---

## 111. Mapping Archival

Archived mappings remain available for historical reference but are excluded from normal active use.

---

## 112. Mapping Termination

Termination ends the active correspondence.

Historical information should remain available where required.

---

## 113. Mapping Integrity

Mapping integrity requires that:

- logical asset exists
- twin representation exists
- identifiers are valid
- representation context is valid
- association type is valid
- cardinality is respected
- lifecycle state is coherent

---

## 114. Mapping Orphan Detection

An orphan mapping occurs when an endpoint cannot be resolved.

~~~text
Mapping
  |
  +--> Logical Asset ---- Missing
  |
  +--> Twin -------- Valid
~~~

The condition shall be detectable.

---

## 115. Mapping Dangling Detection

A dangling mapping references an endpoint that exists as an identifier but is no longer valid within the applicable registry context.

---

## 116. Mapping Duplicate Detection

The registry should detect accidental duplicate mappings.

Detection shall distinguish intentional multiple representations from unintended duplication.

---

## 117. Mapping Conflict Detection

Conflicts may occur when different sources associate the same logical asset with incompatible representations.

Such conflicts shall be explicitly identified.

---

## 118. Mapping Reconciliation

Reconciliation shall compare mappings against authoritative sources and determine whether to:

- retain
- update
- suspend
- replace
- terminate
- escalate

---

## 119. Mapping Reconciliation Authority

The applicable authority shall depend on context.

For example:

- physical commissioning may establish physical correspondence
- Digital Farm may establish logical correspondence
- experimental configuration may establish temporary experimental correspondence

---

## 120. Mapping Formal Principle

The Asset–Twin Mapping provides the controlled correspondence layer between logical assets and their virtual or Digital Twin representations.

It preserves:

- identity
- cardinality
- context
- representation independence
- physical correspondence
- lifecycle
- synchronization status
- provenance
- uncertainty
- history

The mapping model supports virtual-first and physical-first realization while maintaining a stable logical asset identity.

~~~text
Logical Asset
      |
      +--> DTP
      |
      +--> DTI
      |
      +--> DTA
      |
      +--> Simulation
      |
      +--> Emulation
      |
      +--> Physical Counterpart
      |
      +--> QAI Representation
~~~

The mapping layer therefore provides the foundation for controlled progression from virtualization to Digital Twin and ultimately to CPS realization.
---
## 121. Mapping and Digital Twin Lifecycle

The Asset–Twin Mapping shall support the lifecycle of the Digital Twin representation without becoming the lifecycle manager itself.

The mapping shall reflect transitions such as:

- planned
- created
- initialized
- active
- suspended
- replaced
- archived
- retired

---

## 122. Mapping and Twin Creation

When a Digital Twin Instance is created for a logical asset, an applicable mapping may be established.

~~~text
Logical Asset
      |
      v
Twin Creation
      |
      v
Mapping Creation
      |
      v
Twin Association
~~~

The mapping shall identify the resulting twin representation explicitly.

---

## 123. Mapping and Twin Destruction

Destruction of a virtual representation shall not automatically destroy the logical asset.

The applicable mapping may be terminated while the logical asset remains available for another representation.

---

## 124. Mapping and Twin Archival

An archived twin may retain a historical mapping.

This supports:

- historical reconstruction
- experiment reproducibility
- incident analysis
- lifecycle traceability

---

## 125. Mapping and Twin Reinstatement

A previously archived twin representation may be reinstated where its identity and historical continuity remain valid.

The mapping shall preserve the reinstatement history.

---

## 126. Mapping and Asset Lifecycle

Asset lifecycle and twin lifecycle shall remain separate.

~~~text
Logical Asset Lifecycle
          |
          +--> Physical Lifecycle
          |
          +--> Twin Lifecycle
          |
          +--> Mapping Lifecycle
~~~

A change in one lifecycle does not automatically imply identical transitions in the others.

---

## 127. Mapping and Asset Retirement

When a logical asset is retired, its active mappings shall be evaluated.

Some mappings may be terminated while historical representations remain archived.

---

## 128. Mapping and Physical Retirement

When a physical counterpart is retired, the virtual representation may remain active for:

- historical analysis
- simulation
- replacement planning
- research
- training

The physical mapping shall reflect the absence of the active physical counterpart.

---

## 129. Mapping and Virtual-First Promotion

A virtual-first representation may progress toward physical realization.

~~~text
Virtual Asset
      |
      v
Simulation
      |
      v
Emulation
      |
      v
Physical Integration
      |
      v
Digital Twin
      |
      v
CPS
~~~

The mapping evolves as physical correspondence becomes available.

---

## 130. Mapping and Physical-First Promotion

A physical asset may be registered first and subsequently receive a virtual representation.

~~~text
Physical Asset
      |
      v
Logical Asset
      |
      v
Virtual Representation
      |
      v
Digital Twin
~~~

The mapping is established when correspondence is validated.

---

## 131. Mapping and Simulation-to-Physical Transition

A simulation representation may later become the basis for physical realization.

The simulation mapping shall remain historically distinguishable from the physical mapping.

---

## 132. Mapping and Emulation-to-Physical Transition

An emulation representation may be associated with a physical asset after physical integration.

The mapping shall preserve the distinction between emulated behavior and physical correspondence.

---

## 133. Mapping and Digital Twin-to-CPS Transition

A Digital Twin mapping may become part of a closed-loop CPS when physical sensing and actuation are connected.

The mapping alone does not create the CPS loop.

---

## 134. Mapping and Closed-Loop CPS

Closed-loop operation may require coherent mapping across:

~~~text
Physical Sensor
      |
      v
Virtual Twin
      |
      v
Decision
      |
      v
Virtual Actuator Representation
      |
      v
Physical Actuator
~~~

All consequential physical mappings shall be explicitly validated.

---

## 135. Mapping and Control Authority

A valid asset-to-twin mapping does not grant control authority.

Control authority shall be established through:

- authorization
- policy
- safety
- operational state
- applicable governance

---

## 136. Mapping and Synchronization Authority

Where physical and virtual states differ, synchronization authority shall be explicitly defined.

Possible authority models include:

- physical-authoritative
- virtual-authoritative
- context-dependent
- shared
- unresolved

---

## 137. Mapping and State Authority

The mapping may identify the representation relationship, while state authority remains part of the state and synchronization architecture.

---

## 138. Mapping and Conflict Resolution

When physical and virtual representations disagree, the mapping should provide sufficient context to support resolution.

It shall not silently overwrite one representation with another.

---

## 139. Mapping and Synchronization Failure

If synchronization fails, the mapping may transition to a degraded or suspended condition.

The logical asset identity remains unchanged.

---

## 140. Mapping and Stale Twin

A twin may become stale while its mapping remains structurally valid.

The registry shall distinguish:

- valid mapping
- stale state
- invalid correspondence

---

## 141. Mapping and Twin Fidelity

Mapping may reference the fidelity or quality of the twin representation where relevant.

Fidelity shall not be treated as a substitute for correspondence identity.

---

## 142. Mapping and Model Fidelity

A simulation or emulation representation may have a defined model fidelity.

The mapping shall identify the representation but shall not define the model itself.

---

## 143. Mapping and Physical Fidelity

A Digital Twin may be assessed against physical behavior or observations.

The mapping provides the correspondence needed for such assessment.

---

## 144. Mapping and Validation Evidence

Validation may compare:

- physical observations
- virtual state
- representation metadata
- historical behavior

Evidence shall support the applicable mapping claim.

---

## 145. Mapping and Calibration

Physical sensors and other measurement devices may require calibration before their correspondence to a virtual asset is accepted for consequential use.

Calibration remains a technical or metrology concern.

---

## 146. Mapping and Metrology

Where measured physical properties support a mapping decision, metrology information may be referenced.

The mapping shall not become a metrology system.

---

## 147. Mapping and Observation Provenance

Observations used to validate mappings should preserve their source and provenance.

This supports confidence in the correspondence.

---

## 148. Mapping and Data Quality

Mapping decisions may depend on data quality.

Possible conditions include:

- sufficient
- degraded
- incomplete
- inconsistent
- unavailable

---

## 149. Mapping and Identity Confidence

Where identity matching is uncertain, confidence should be recorded separately from the mapping lifecycle.

---

## 150. Mapping and Identity Verification

Physical-to-virtual correspondence should be verified using appropriate identity evidence before being treated as authoritative.

---

## 151. Mapping and Asset Naming

Human-readable asset names shall not be the sole basis for mapping.

Stable identifiers should be used for authoritative correspondence.

---

## 152. Mapping and Namespace

Mappings may cross namespaces.

A mapping should therefore preserve enough information to distinguish:

- local identifier
- source namespace
- authority
- target namespace
- target authority

---

## 153. Mapping and External Identity

External systems may provide identifiers for physical or virtual assets.

External identifiers should be stored as references rather than replacing the internal logical identity.

---

## 154. Mapping and Identity Aliases

Aliases may be maintained for discovery or interoperability.

Aliases shall not create additional logical asset identities.

---

## 155. Mapping and Identity Resolution Across Systems

Cross-system mapping may require resolving different identifiers to the same logical asset.

The resolution process shall preserve provenance and confidence.

---

## 156. Mapping and Duplicate Physical Identity

The system should detect cases where multiple mappings claim to represent the same physical asset in incompatible contexts.

Such cases shall enter reconciliation.

---

## 157. Mapping and Duplicate Twin Identity

The system should detect accidental duplicate twin representations where uniqueness is required.

Intentional multiple representations shall remain supported.

---

## 158. Mapping and Logical Asset Reuse

A logical asset identity may be reused across multiple representation contexts.

This enables the same asset definition to participate in:

- operational Digital Twin
- simulation
- emulation
- QAI
- training
- maintenance

---

## 159. Mapping and Contextual Isolation

Although logical identity may be shared, context-specific mappings shall remain independently identifiable.

---

## 160. Mapping and Experiment Branches

Experimental branches may create alternative mappings.

~~~text
Baseline
   |
   +--> Experiment A
   |
   +--> Experiment B
   |
   +--> Experiment C
~~~

Branch mappings shall not modify the operational baseline unless explicitly promoted.

---

## 161. Mapping and Scenario Branches

Scenario configurations may create temporary mappings for hypothetical conditions.

Such mappings shall carry scenario context.

---

## 162. Mapping and Configuration Branches

Configuration alternatives may use different twin representations or physical associations.

The branch shall remain identifiable.

---

## 163. Mapping and Model Variants

Different model variants may represent the same logical asset.

The mapping should identify the applicable representation context and model reference.

---

## 164. Mapping and QAI Problem Variants

A QAI experiment may create multiple representations of the same logical asset for different problem formulations.

The mappings shall remain traceable to the common logical asset.

---

## 165. Mapping and Classical Baseline

The classical baseline should use the same logical asset identity and applicable mapping context as the QAI evaluation wherever the experiment requires equivalence.

---

## 166. Mapping and Advantage Gate

The Advantage Gate may select between classical and QAI execution using the same logical asset and mapping context.

---

## 167. Mapping and Fallback

If QAI execution fails or is rejected, the classical fallback may continue using the valid mapping context.

---

## 168. Mapping and Resource Context

A mapping may identify representation dependencies on specific execution contexts or resources.

Resource allocation remains outside the mapping artifact.

---

## 169. Mapping and Edge Execution

A twin representation may be associated with an edge execution context.

The mapping identifies correspondence; edge orchestration remains elsewhere.

---

## 170. Mapping and Cloud Execution

A twin representation may be hosted or processed in cloud infrastructure.

Hosting location is not equivalent to asset identity.

---

## 171. Mapping and Regional Execution

Regional representations may be created for:

- sovereignty
- latency
- resilience
- operational locality

They may map to the same logical asset while remaining context-specific.

---

## 172. Mapping and Federated Twin

A federated Digital Twin environment may maintain multiple representations under different authorities.

The mapping shall preserve authority boundaries.

---

## 173. Mapping and Sovereignty

Physical and virtual mappings shall respect applicable sovereignty requirements.

A mapping does not imply unrestricted data or control transfer.

---

## 174. Mapping and Security Boundary

Access to mapping information may be restricted according to:

- asset sensitivity
- physical location
- administrative domain
- operational criticality
- relationship sensitivity

---

## 175. Mapping and Trust Boundary

A mapping across trust boundaries shall identify the applicable authority and trust assumptions where required.

---

## 176. Mapping and Governance Boundary

Governance shall determine who may:

- create mappings
- validate mappings
- approve mappings
- modify mappings
- suspend mappings
- terminate mappings

---

## 177. Mapping and Human Approval

Human approval may be required for high-impact mappings.

Examples include:

- physical control mappings
- safety-critical mappings
- production mappings
- cross-domain mappings

---

## 178. Mapping and Automated Approval

Low-risk mappings may be automatically approved when predefined validation criteria are satisfied.

Automated approval shall remain auditable.

---

## 179. Mapping and Review

Mappings may enter formal review when:

- ambiguity exists
- conflict exists
- physical verification is required
- safety impact exists
- promotion to production is proposed

---

## 180. Mapping and Formal Acceptance

A mapping baseline shall be accepted when:

- required mappings exist
- endpoints are resolvable
- representation contexts are clear
- cardinality is valid
- provenance is available
- required validation is complete
- applicable governance conditions are satisfied
---
## 181. Mapping and Three-Path Architecture

Asset–Twin mappings shall support the three first-class Digital Farm paths:

- sensing
- computational
- communication

~~~text
              Sensing Path
                   |
                   v
             Virtual Asset
                   |
                   v
          Computational Path
                   |
                   v
              Decision
                   |
                   v
          Communication Path
                   |
                   v
             Physical Asset
~~~

The mapping layer provides correspondence context across these paths without implementing the paths themselves.

---

## 182. Mapping and Sensing Path

A physical sensing capability may map to a virtual sensing representation.

Example:

`Physical Soil Sensor → Virtual Sensor Twin`

The mapping shall identify the applicable physical and virtual identities.

---

## 183. Mapping and Computational Path

Computational representations may map to logical assets participating in decision workflows.

Examples include:

- decision representation
- QAI problem representation
- execution representation
- classical baseline representation

---

## 184. Mapping and Communication Path

Communication endpoints may have virtual representations associated with physical endpoints.

The mapping may support:

- connectivity representation
- endpoint identity
- synchronization
- emulation
- communication-path validation

---

## 185. Mapping Across the Three Paths

A complete closed-loop mapping context may connect:

~~~text
Physical Sensor
      |
      v
Virtual Sensor
      |
      v
Virtual State
      |
      v
Decision Representation
      |
      v
Virtual Actuator
      |
      v
Physical Actuator
~~~

Each association remains independently identifiable.

---

## 186. Mapping and Execution Modes

Mappings shall support the execution modes defined by Phase 1:

- virtualization
- simulation
- emulation
- physical

The same logical asset may participate in different modes through different representation contexts.

---

## 187. Mapping and Virtualization Mode

In virtualization mode, mappings primarily establish virtual identity and representation correspondence.

A physical counterpart is optional.

---

## 188. Mapping and Simulation Mode

In simulation mode, mappings may connect logical assets to simulated representations.

Simulation mappings may represent hypothetical or modeled entities.

---

## 189. Mapping and Emulation Mode

In emulation mode, mappings may connect logical assets to representations reproducing relevant target behavior or interfaces.

---

## 190. Mapping and Physical Mode

In physical mode, mappings may associate virtual representations with actual physical assets.

Such mappings require stronger validation where they affect consequential operations.

---

## 191. Mapping and Digital Twin Progression

The mapping model supports progression from virtual representation to Digital Twin.

~~~text
Virtual Representation
        |
        v
Physical Correspondence
        |
        v
Synchronization
        |
        v
Digital Twin
~~~

Digital Twin realization requires more than the existence of a mapping.

---

## 192. Mapping and CPS Progression

A validated physical mapping may become part of a CPS architecture when sensing, computation, communication, and actuation form a controlled loop.

---

## 193. Mapping and Virtual World

The mapping contributes to the virtual-world representation by establishing correspondence between logical entities and their representations.

---

## 194. Mapping and Simulation World

A simulation world may use mappings to determine which logical assets are represented by which simulation entities.

---

## 195. Mapping and Emulation World

An emulation environment may use mappings to determine which logical assets correspond to emulated components.

---

## 196. Mapping and Physical World

The physical world provides actual assets and observations that may validate or update mappings.

---

## 197. Mapping Across World Boundaries

The mapping layer connects world representations without collapsing them.

~~~text
Virtual World
     |
     | Mapping
     v
Physical World

Simulation World
     |
     | Mapping
     v
Virtual World

Emulation World
     |
     | Mapping
     v
Target Behavior
~~~

---

## 198. Mapping and World Separation

The mapping shall preserve separation between:

- virtual
- simulation
- emulation
- physical

This prevents one realization from being incorrectly treated as another.

---

## 199. Mapping and Synchronization Lifecycle

Synchronization-related mapping states may include:

- not synchronized
- synchronization pending
- synchronized
- delayed
- degraded
- disconnected
- synchronization failed

---

## 200. Mapping and Synchronization Events

Relevant events may include:

- mapping-created
- mapping-validated
- synchronization-started
- synchronization-updated
- synchronization-delayed
- synchronization-failed
- mapping-suspended
- mapping-restored

---

## 201. Mapping and State Synchronization

Where state synchronization exists, the mapping shall identify which virtual representation corresponds to the physical asset whose state is being synchronized.

---

## 202. Mapping and Control Synchronization

Where virtual decisions are transmitted to physical systems, the mapping shall identify the intended physical counterpart.

Control authorization remains separate.

---

## 203. Mapping and Feedback Synchronization

Physical feedback may update the mapped virtual representation.

~~~text
Physical State
      |
      v
Observation
      |
      v
Mapped Twin
      |
      v
Virtual State
~~~

---

## 204. Mapping and Synchronization Conflict

A conflict may occur when physical and virtual states or identities cannot be reconciled.

The mapping shall preserve enough context for controlled resolution.

---

## 205. Mapping and Synchronization Recovery

Recovery from synchronization failure may include:

- retry
- reconciliation
- resynchronization
- temporary suspension
- alternate representation
- human review

---

## 206. Mapping and State Authority

The mapping may reference state authority but shall not define state authority itself.

Possible state authority models include:

- physical
- virtual
- synchronized
- context-specific

---

## 207. Mapping and Representation Authority

Where multiple representations exist, the applicable representation authority shall be explicit.

For example:

~~~text
Logical Asset
    |
    +--> Operational Twin [Authoritative]
    +--> Simulation Twin [Experimental]
    +--> QAI Twin [Analytical]
~~~

---

## 208. Mapping and Context Authority

A mapping may be authoritative within one context and non-authoritative in another.

Authority shall therefore be evaluated together with representation context.

---

## 209. Mapping and Relationship Authority

Asset–Twin mapping shall remain distinct from general relationship authority.

A mapping may establish correspondence while a separate relationship establishes operational or control semantics.

---

## 210. Mapping and Identity Continuity

Identity continuity is maintained when:

- logical asset identity remains stable
- representation changes are tracked
- physical replacement is recorded
- mapping history is preserved

---

## 211. Mapping and Logical Role Continuity

A physical replacement may preserve the logical role of an asset.

For example:

~~~text
Logical Irrigation Actuator
          |
          +--> Physical Actuator A
          |       [Retired]
          |
          +--> Physical Actuator B
                  [Active]
~~~

The logical asset remains the stable reference.

---

## 212. Mapping and Representation Role Continuity

A twin representation may be replaced while preserving the role of the logical asset.

---

## 213. Mapping and Physical Replacement History

Physical replacement shall preserve:

- previous counterpart
- replacement counterpart
- effective time
- mapping transition
- evidence
- applicable authority

---

## 214. Mapping and Twin Replacement History

Twin replacement shall preserve:

- previous twin
- new twin
- representation context
- effective time
- reason
- evidence

---

## 215. Mapping and Logical Asset Replacement

If a replacement represents a genuinely different logical asset, a new logical asset identity shall be created rather than forcing identity continuity.

---

## 216. Mapping and Role-Based Continuity

Logical continuity may be retained when the operational role remains the same even though the physical implementation changes.

The determination shall remain explicit and governed.

---

## 217. Mapping and Aggregation

A DTA mapping may represent an aggregate while member mappings identify individual assets.

~~~text
DTA: Farm
   |
   +--> DTI: Field 1
   +--> DTI: Field 2
   +--> DTI: Field 3
~~~

Aggregate and member mappings shall remain independently traceable.

---

## 218. Mapping and Dynamic Aggregation

A dynamic DTA may change membership without changing the identity of the underlying assets.

The mapping to the DTA shall remain separate from membership relationships.

---

## 219. Mapping and Aggregate Replacement

An aggregate representation may be replaced without requiring replacement of all member assets.

---

## 220. Mapping and Aggregate Context

An aggregate may have multiple representations for:

- operational management
- simulation
- emulation
- research
- QAI
- planning

Each mapping shall identify its applicable context.

---

## 221. Mapping and Hierarchical Aggregation

Aggregates may be nested.

~~~text
Farm
 |
 +--> Region
       |
       +--> Field Group
              |
              +--> Field
~~~

Mappings shall preserve the distinction between aggregate hierarchy and asset identity.

---

## 222. Mapping and Cross-Aggregate Participation

An asset may participate in multiple aggregates where permitted.

Such participation shall not create duplicate logical assets.

---

## 223. Mapping and Aggregate Membership Consistency

Mappings shall remain consistent with applicable aggregate membership.

A mapping shall not imply membership that contradicts the relationship registry.

---

## 224. Mapping and Relationship Consistency

Asset–Twin mappings and asset relationships shall be mutually consistent where they describe the same virtual-world structure.

---

## 225. Mapping and Registry Consistency

The mapping shall remain consistent with:

- Virtual Asset Registry
- Asset Relationship Registry
- Physical–Virtual Mapping
- State Model
- Behavior Model

---

## 226. Mapping and Interface Consistency

Mappings used by virtual interfaces shall resolve to the appropriate representation identities.

---

## 227. Mapping and Workflow Consistency

Workflows should use mappings appropriate to their execution context.

For example:

~~~text
Simulation Workflow
        |
        v
Simulation Mapping

Operational Workflow
        |
        v
Operational Mapping
~~~

---

## 228. Mapping and Scenario Consistency

Scenario-specific mappings shall be explicitly associated with the applicable scenario.

---

## 229. Mapping and Experiment Consistency

Experiment records shall identify the mappings used when those mappings materially affect results.

---

## 230. Mapping and Evidence Chain

The mapping evidence chain should support:

~~~text
Asset
  |
  v
Mapping
  |
  v
Representation
  |
  v
Observation / Execution
  |
  v
Result
  |
  v
Evidence
~~~

---

## 231. Mapping and QAI Evidence

QAI evidence may include the mapping context required to establish which asset representation participated in the experiment.

---

## 232. Mapping and Classical Evidence

Classical baseline evidence should preserve equivalent mapping context where comparison requires it.

---

## 233. Mapping and Advantage Evidence

Advantage Gate evidence may reference mappings when representation choice affects QAI suitability or resource evaluation.

---

## 234. Mapping and Value Evidence

Value evidence may reference mappings to establish which assets and representations were affected.

---

## 235. Mapping and Reproducibility

Reproducible experiments shall be able to restore the applicable mapping configuration.

---

## 236. Mapping and Version Control

Mapping changes should be version-controlled where material.

The version should allow identification of the mapping state used during execution.

---

## 237. Mapping and Baseline Comparison

A mapping baseline may be compared with later configurations to identify architectural or operational changes.

---

## 238. Mapping and Change Review

Material mapping changes should undergo review when they affect:

- physical control
- Digital Twin synchronization
- safety
- QAI evaluation
- acceptance
- value claims

---

## 239. Mapping and Regression Validation

Changes to mappings shall be evaluated for regression effects on dependent workflows and representations.

---

## 240. Mapping and Regression Scope

Regression testing may include:

- asset resolution
- state updates
- simulation
- emulation
- synchronization
- decision execution
- actuator targeting
- QAI comparison

---

## 241. Mapping and Error Classification

Mapping errors should be classified so that consumers can distinguish:

- unknown asset
- unknown twin
- invalid correspondence
- duplicate mapping
- conflicting mapping
- stale mapping
- unauthorized mapping

---

## 242. Mapping and Recovery Classification

Recovery actions should be appropriate to the error class.

For example, an unknown endpoint may require registration, while a stale mapping may require reconfirmation.

---

## 243. Mapping and Operational Safety

Mappings used for physical control shall be subject to stricter validation than mappings used solely for visualization or simulation.

---

## 244. Mapping and Safe Default

Where a consequential mapping cannot be validated, the applicable workflow should default to a safe or non-consequential state according to its safety architecture.

---

## 245. Mapping and Human Escalation

Ambiguous or high-impact mappings may require human review before activation.

---

## 246. Mapping and Human Override

Human override may temporarily alter which representation or physical counterpart is used.

Such overrides should be traceable and should not silently rewrite the baseline mapping.

---

## 247. Mapping and Authorization

Mapping operations shall respect applicable authorization.

Different permissions may apply to:

- create
- validate
- approve
- activate
- update
- suspend
- terminate

---

## 248. Mapping and Audit

Material mapping operations should produce audit records where required.

---

## 249. Mapping and Governance

Mapping governance shall define:

- ownership
- approval
- validation
- retention
- access
- change control
- evidence requirements

---

## 250. Mapping and Data Sovereignty

Mappings crossing administrative, geographic, or sovereignty boundaries shall preserve applicable authority and transfer constraints.
---
## 251. Mapping and External Integration

Asset–Twin mappings may be exchanged with external systems through defined integration interfaces.

External integration shall preserve:

- mapping identity
- logical asset identity
- twin identity
- context
- lifecycle
- provenance
- authority

---

## 252. Mapping and Enterprise Integration

Enterprise systems may consume mapping information to associate business entities with Digital Farm representations.

Such integration shall not make enterprise systems authoritative for technical twin semantics unless explicitly defined.

---

## 253. Mapping and ERP Integration

ERP systems may provide physical or business identifiers that assist mapping resolution.

The mapping layer shall preserve the ERP identifier as an external reference where required.

---

## 254. Mapping and IoT Integration

IoT systems may provide device identifiers used to establish physical-to-virtual correspondence.

~~~text
IoT Device
    |
    v
Identity Resolution
    |
    v
Asset–Twin Mapping
    |
    v
Virtual Asset
~~~

---

## 255. Mapping and External Services

External services may provide:

- asset metadata
- identity information
- observations
- validation information
- Digital Twin capabilities

Such information shall carry appropriate provenance.

---

## 256. Mapping and Market Integration

Market-related entities may be mapped to virtual business or economic representations.

These mappings shall remain distinct from physical asset mappings.

---

## 257. Mapping and Satellite Integration

Satellite-derived information may be associated with virtual field or environmental representations.

Such associations shall identify the observation or data context rather than incorrectly treating the satellite source as the physical farm asset.

---

## 258. Mapping and Upstream Systems

Upstream systems may provide source information for mapping creation.

The mapping shall preserve the originating source and authority.

---

## 259. Mapping and Downstream Systems

Downstream systems may consume mappings for:

- visualization
- analysis
- simulation
- Digital Twin realization
- decision support

Consumers shall not modify authoritative mappings without applicable authorization.

---

## 260. Mapping and QAI Base Platform

The QAI Base Platform may consume representation mappings required to construct QAI workloads.

The Digital Farm mapping layer identifies correspondence; QAI execution remains outside it.

---

## 261. Mapping and HoldCo Factory

HoldCo Factory capabilities may provide common identity, governance, integration, security, or lifecycle support.

The Digital Farm mapping model shall consume such capabilities without duplicating them.

---

## 262. Mapping and Service Management

Changes to services may affect the availability or usability of mappings.

Service Management remains responsible for service lifecycle.

---

## 263. Mapping and Resource Management

Mapping-related execution may require resources.

Resource Management remains responsible for resource allocation, budgeting, compute, network, energy, edge, and quantum resources.

---

## 264. Mapping and Value Management

Mapping information may support attribution of operational or economic value.

Value Management remains responsible for value measurement and evaluation.

---

## 265. Mapping and Human-AI Management

Mapping information may support human-AI workflows by identifying which representation or physical asset is relevant to a task.

---

## 266. Mapping and Intelligence Lifecycle

The mapping layer supports the intelligence lifecycle:

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
Learn
~~~

For example, a sensing observation may be associated with the mapped twin corresponding to the physical sensor.

---

## 267. Mapping and Sense

Sense operations may use mappings to determine which virtual representation corresponds to the source of an observation.

---

## 268. Mapping and Process

Process operations may use mapped representations to contextualize observations and state.

---

## 269. Mapping and Decide

Decision operations may use mapping context to identify the intended asset or system affected by a decision.

---

## 270. Mapping and Act

Act operations may require a validated mapping to identify the physical actuator corresponding to the virtual target.

---

## 271. Mapping and Learn

Learning processes may use historical mappings to understand how physical and virtual representations evolved.

---

## 272. Mapping and Adaptive QAI

Adaptive QAI may select different representations of the same logical asset according to:

- problem characteristics
- resource availability
- execution context
- required fidelity
- latency
- evidence requirements

---

## 273. Mapping and Real-Time QAI

Real-time QAI may require a currently valid mapping between decision targets and their applicable virtual or physical representations.

---

## 274. Mapping and Virtual Qubit Fabric

A QAI representation may map a logical asset or problem component into a virtualized computational context.

The mapping shall distinguish asset-to-twin correspondence from qubit allocation.

---

## 275. Mapping and QAI Resource Selection

Mapping context may provide information required for selecting an appropriate QAI execution representation.

Resource selection remains under the QAI and resource-management layers.

---

## 276. Mapping and Classical HPC

A classical HPC representation may provide an alternative execution representation for the same logical asset or problem.

This supports QAI fallback and comparative evaluation.

---

## 277. Mapping and Hybrid Execution

Hybrid execution may use multiple mapped representations simultaneously.

~~~text
Logical Asset
      |
      +--> Classical Representation
      |
      +--> QAI Representation
      |
      +--> Simulation Representation
~~~

The shared logical identity supports comparison and coordination.

---

## 278. Mapping and Resource-Aware Representation

Representation selection may consider:

- compute availability
- quantum availability
- network availability
- energy
- latency
- budget
- fidelity requirements

The mapping remains a correspondence mechanism rather than a resource allocator.

---

## 279. Mapping and QAI Advantage Gate

The Advantage Gate may evaluate whether a particular mapped representation is suitable for QAI execution.

A mapping alone shall never be treated as evidence of QAI advantage.

---

## 280. Mapping and Classical Fallback

When the Advantage Gate rejects or QAI execution fails, the logical asset may continue through a classical representation.

The mapping context shall preserve comparability.

---

## 281. Mapping and Experiment Design

Experiments may define controlled mapping variants.

Examples include:

- alternate twin models
- alternate physical associations
- alternate representation contexts
- alternate aggregate compositions

---

## 282. Mapping and Matched Experiments

For fair comparison, classical and QAI experiments should use equivalent logical asset and mapping contexts where applicable.

---

## 283. Mapping and Parameter Sweeps

Parameter sweeps may vary representation characteristics while retaining the same logical asset identity.

---

## 284. Mapping and Scaling Experiments

Scaling experiments may increase the number of mapped assets without changing the foundational mapping semantics.

~~~text
1 Asset
   |
   v
10 Assets
   |
   v
100 Assets
   |
   v
Larger Virtual World
~~~

---

## 285. Mapping and Scenario Evaluation

Scenario evaluation may compare different mapping configurations under controlled conditions.

---

## 286. Mapping and Sensitivity Analysis

Sensitivity analysis may determine whether changes in mapping assumptions affect:

- decisions
- performance
- synchronization
- QAI advantage
- value

---

## 287. Mapping and Uncertainty Analysis

Uncertainty analysis may vary mapping confidence or physical correspondence assumptions.

Results should preserve the mapping configuration used.

---

## 288. Mapping and Robustness

A robust architecture should continue to operate appropriately when non-critical mappings become unavailable or degraded.

---

## 289. Mapping and Failure Scenarios

Failure scenarios may include:

- physical asset unavailable
- twin unavailable
- mapping stale
- identity conflict
- synchronization failure
- representation failure

---

## 290. Mapping and Recovery Scenarios

Recovery scenarios may evaluate:

- remapping
- alternate representation
- fallback
- resynchronization
- human review

---

## 291. Mapping and Safety Scenarios

Safety scenarios should verify that invalid or uncertain mappings do not result in unsafe physical control.

---

## 292. Mapping and Human-Assisted Scenarios

Human-assisted scenarios may allow operators to review or confirm mappings before consequential use.

---

## 293. Mapping and Automated Scenarios

Automated scenarios may use prevalidated mappings without requiring manual confirmation for every cycle.

Applicable policy and safety controls shall remain in force.

---

## 294. Mapping and Open-Loop Execution

Open-loop execution may use mappings to identify representations without exercising physical control.

This is appropriate for early experimentation and validation.

---

## 295. Mapping and Closed-Loop Execution

Closed-loop execution requires stronger mapping validation because virtual decisions may influence physical assets.

---

## 296. Mapping and Virtualization

Virtualization creates the initial virtual representation and associated mapping context.

No physical counterpart is required.

---

## 297. Mapping and Simulation

Simulation uses mappings to connect logical assets with simulated representations and scenario models.

---

## 298. Mapping and Emulation

Emulation uses mappings to connect logical assets with emulated representations and target interfaces.

---

## 299. Mapping and Physical Integration

Physical integration establishes or validates correspondence between virtual and physical entities.

---

## 300. Mapping and Digital Twin

Digital Twin realization combines persistent representation, physical correspondence, state synchronization, and lifecycle context.

The mapping is a necessary association mechanism but not the complete Digital Twin.

---

## 301. Mapping and CPS

CPS realization may use mappings to maintain correspondence across the virtual and physical worlds.

~~~text
Virtual World
     |
     | Mapping
     v
Physical World
     |
     | Feedback
     v
Virtual World
~~~

---

## 302. Mapping and Production Transition

Promotion toward production shall require additional validation beyond Phase 1.

Potential requirements include:

- physical verification
- operational validation
- safety
- security
- performance
- governance
- reliability

---

## 303. Mapping and Production Boundary

Phase 1 shall not assume production-grade mapping infrastructure.

The pilot shall establish the logical architecture and minimum implementation boundary.

---

## 304. Mapping and Pilot Demonstration

The minimum pilot should demonstrate that a logical asset can be:

1. identified
2. virtualized
3. mapped to a representation
4. used in simulation or emulation
5. optionally associated with a physical counterpart
6. traced through execution

---

## 305. Mapping and Minimum Callable Demonstration

A minimum callable demonstration may follow:

~~~text
Create Logical Asset
        |
        v
Create Twin Representation
        |
        v
Create Mapping
        |
        v
Validate Mapping
        |
        v
Execute Workflow
        |
        v
Record Evidence
~~~

---

## 306. Mapping and Pilot Baseline

The pilot mapping baseline should contain only mappings necessary for the defined intelligent irrigation use case.

---

## 307. Mapping and Pilot Expansion

Additional mappings may later support:

- additional fields
- additional irrigation zones
- additional sensor types
- additional actuators
- water systems
- machinery
- environmental models

---

## 308. Mapping and Phase 2

Phase 2 may consume the Phase 1 mapping model and baseline for further virtualization, simulation, emulation, or integration work.

Phase 2 shall not require redesign of the fundamental correspondence model.

---

## 309. Mapping and Formal Review

Formal review shall verify:

- mapping identity
- endpoint resolution
- cardinality
- representation context
- physical correspondence
- lifecycle
- provenance
- synchronization semantics
- virtual-first support
- physical-first support
- non-duplication

---

## 310. Mapping Formal Review Questions

The review shall ask:

1. Can one logical asset have multiple twin representations?
2. Can a virtual asset exist without a physical counterpart?
3. Can a physical asset exist before its twin?
4. Can a physical asset be replaced while logical identity remains stable?
5. Can a twin be replaced without changing the logical asset?
6. Is mapping identity independent of asset identity?
7. Is mapping identity independent of relationship identity?
8. Are simulation and emulation representations distinguishable?
9. Can mapping support Digital Twin synchronization?
10. Can mapping support closed-loop CPS?
11. Can QAI and classical execution use equivalent mapping contexts?
12. Are physical control mappings subject to stronger validation?

---

## 311. Mapping READY Condition

The mapping artifact is READY when:

- correspondence semantics are defined
- identities are resolvable
- cardinalities are supported
- representation contexts are explicit
- lifecycle is defined
- physical-first and virtual-first cases are supported
- validation is defined
- provenance is supported
- downstream physical mapping can build upon it

---

## 312. Mapping REVISE Condition

The artifact shall be REVISED when:

- mapping is treated as asset identity
- one-to-one correspondence is incorrectly assumed
- multiple representations cannot be represented
- physical-first or virtual-first realization is unsupported
- representation contexts are conflated
- synchronization semantics are ambiguous

---

## 313. Mapping DEFER Condition

The artifact may be DEFERRED only when an external dependency prevents completion without changing the foundational mapping architecture.

The dependency shall be recorded.

---

## 314. Mapping Baseline Freeze

After formal review, the Phase 1 mapping definition may be frozen as a controlled baseline.

Future changes shall follow the applicable change process.

---

## 315. Mapping Baseline Version

A controlled baseline may be identified as:

`MAP-TWIN-BASELINE-001`

Future revisions shall preserve prior baseline history.

---

## 316. Mapping Handoff to Physical–Virtual Mapping

This artifact establishes the general Asset–Twin correspondence model.

The next artifact:

`mappings/07_physical_virtual_mapping.md`

shall define the more specific physical-to-virtual association and lifecycle concerns.

---

## 317. Mapping Handoff to State

The State Model shall use validated mappings to determine correspondence between physical observations and virtual state where applicable.

---

## 318. Mapping Handoff to Behavior Models

Behavior models may use mapped representations to identify which logical asset they model or emulate.

---

## 319. Mapping Handoff to Interfaces

Virtual interfaces shall reference the representation identity appropriate to their execution context.

---

## 320. Mapping Handoff to Workflows

Workflows shall select mappings according to their execution context and authorization.

---

## 321. Mapping Handoff to Scenarios

Scenarios may create controlled mapping variants without changing the operational baseline.

---

## 322. Mapping Handoff to Validation

Validation shall verify that mappings remain consistent with assets, relationships, state, and execution contexts.

---

## 323. Mapping Handoff to Review

Formal review shall confirm that the mapping model supports the complete Phase 1 virtual-world architecture.

---

## 324. Mapping Completion Test

The mapping model passes its completion test when it can represent:

~~~text
Logical Asset
   |
   +--> DTP
   +--> DTI
   +--> DTA
   +--> Simulation
   +--> Emulation
   +--> Operational Twin
   +--> QAI Representation
   |
   +--> Physical Counterpart
~~~

with explicit identity, context, cardinality, lifecycle, provenance, and validation.

---

## 325. Mapping Architecture Completion Test

The architecture passes when mapping does not require:

- one-to-one physical correspondence
- duplicate logical assets
- duplicate twin definitions
- fixed technical platforms
- mandatory physical infrastructure
- mandatory cloud infrastructure

---

## 326. Mapping Reuse Principle

The same mapping architecture shall be reusable across:

- agriculture
- Digital Farm
- Digital Twin
- CPS
- simulation
- emulation
- QAI
- classical computing
- human-AI workflows

---

## 327. Mapping Expansion Principle

Future complexity shall be handled through additional mappings, representations, contexts, and controlled relationships rather than redesign of the foundational correspondence model.

---

## 328. Mapping Non-Duplication Principle

The mapping layer shall not duplicate:

- asset registry
- relationship registry
- physical asset management
- Digital Twin platform
- simulation engine
- emulation engine
- synchronization engine
- QAI execution
- resource management

---

## 329. Mapping Architectural Principle

The Asset–Twin Mapping is the controlled correspondence layer between stable logical asset identity and one or more virtual, Digital Twin, simulation, emulation, or physical representations.

It preserves separation while enabling controlled association.

~~~text
                 Logical Asset
                      |
          +-----------+-----------+
          |           |           |
         DTP         DTI         DTA
          |           |           |
          +-----------+-----------+
                      |
              Representation
                 Contexts
                      |
        +-------------+-------------+
        |             |             |
    Simulation     Emulation    Operational
        |             |             |
        +-------------+-------------+
                      |
              Physical Mapping
                      |
                      v
                Physical Asset
                      |
                      v
                    CPS
~~~

---

## 330. Mapping Final Status

The Phase 1 Asset–Twin Mapping establishes a technology-neutral foundation for associating logical assets with their virtual and Digital Twin representations.

It supports:

- DTP
- DTI
- DTA
- virtual-first realization
- physical-first realization
- multiple representations
- multiple cardinalities
- representation contexts
- physical replacement
- twin replacement
- synchronization
- simulation
- emulation
- Digital Twin
- CPS
- classical execution
- QAI execution
- human-AI workflows

It preserves identity, provenance, lifecycle, validation, uncertainty, and historical continuity while maintaining the managerial-to-technical boundary.

**Status: COMPLETE — PHASE 1 ASSET–TWIN MAPPING BASELINE**

---

