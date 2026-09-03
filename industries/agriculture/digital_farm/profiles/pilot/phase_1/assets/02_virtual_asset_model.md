# 02_virtual_asset_model.md

## 1. Purpose

This document defines the Phase 1 logical model for virtual assets within the Digital Farm virtual world.

It refines the foundational virtualization principles established in:

- Phase 0 asset inventory
- Phase 1 virtualization model
- Phase 1 architecture README

The model defines how virtual assets are represented, identified, instantiated, composed, associated, managed, and reused across simulation, emulation, Digital Twin, CPS, classical, QAI, and human-AI contexts.

---

## 2. Architectural Position

The Virtual Asset Model belongs to:

~~~text
HoldCo Factory
      |
  Agriculture
      |
 Digital Farm
      |
 Pilot Phase 1
      |
 Asset Virtualization
      |
 Virtual Asset Model
~~~

It is a logical model.

It does not prescribe a particular:

- programming language
- database
- graph technology
- Digital Twin platform
- simulation engine
- emulation platform
- API framework
- cloud platform
- hardware platform

---

## 3. Relationship to Phase 0

Phase 0 established the logical assets participating in the minimum callable agriculture pilot.

Phase 1 now provides a reusable virtual representation model for those assets.

The relationship is:

~~~text
Phase 0 Logical Asset Inventory
             |
             v
Phase 1 Virtual Asset Model
             |
             v
Virtual Asset Instances
             |
             +--> Simulation
             +--> Emulation
             +--> Digital Twin
             +--> CPS
             +--> QAI
~~~

The Phase 1 model shall not redefine the Phase 0 asset inventory.

It shall provide the structure required to virtualize it.

---

## 4. Model Objective

The objective is to define a technology-neutral virtual asset model that supports:

- asset identity
- asset type
- asset representation
- lifecycle
- state
- configuration
- relationships
- mappings
- behavior
- interfaces
- provenance
- history
- validation
- composition
- aggregation
- execution context

---

## 5. Virtual Asset Principle

A virtual asset is a persistent logical representation of an identifiable asset, capability, entity, or aggregate within the Digital Farm virtual world.

A virtual asset may represent:

- a conceptual asset
- a modeled asset
- a software-realized asset
- a physical asset
- a collection of assets
- a service-relevant entity
- an operational context

---

## 6. Virtual Asset Is a Logical Concept

A virtual asset shall first be understood as a logical architectural entity.

Its eventual implementation may become:

- an object
- a record
- a graph node
- a service
- a component
- a data structure
- a runtime entity
- a Digital Twin representation

The architecture does not require any one implementation form.

---

## 7. Virtual Asset and Physical Asset

A virtual asset and a physical asset are distinct architectural concepts.

~~~text
Physical Asset
      |
      | association
      v
Virtual Asset
~~~

The association may exist, but the identities shall not be conflated.

This distinction allows the architecture to support both virtual-first and physical-first realization.

---

## 8. Virtual-First Asset

A virtual asset may be created before a corresponding physical asset exists.

Examples include:

- planned irrigation equipment
- proposed sensor
- simulated pump
- planned field
- experimental crop configuration

The virtual asset may subsequently be associated with a physical realization.

---

## 9. Physical-First Asset

A physical asset may exist before its virtual representation is created.

The virtual representation may subsequently be registered and associated with the physical asset.

This supports progressive Digital Twin adoption.

---

## 10. Asset Representation Context

The same underlying logical asset may be represented differently for different purposes.

Examples include:

- operational representation
- simulation representation
- emulation representation
- maintenance representation
- QAI representation
- training representation
- what-if representation

These contexts shall not automatically imply separate underlying assets.

---

## 11. Representation Context Identity

A representation context should identify why a particular virtual representation exists.

A context may include:

- context identity
- purpose
- execution mode
- lifecycle status
- model reference
- authority
- validity
- provenance

---

## 12. Digital Twin Prototype — DTP

A Digital Twin Prototype is a reusable definition from which Digital Twin Instances may be created.

~~~text
DTP
 |
 +--> DTI-001
 +--> DTI-002
 +--> DTI-003
~~~

The DTP describes the common characteristics and expected semantics of a class or type of virtualized asset.

---

## 13. DTP Is Not a Physical Asset

A DTP is not a physical object.

It is a reusable virtual definition.

For example:

~~~text
DTP: Soil Moisture Sensor
        |
        +--> Sensor Instance A
        +--> Sensor Instance B
        +--> Sensor Instance C
~~~

Each instance may have independent identity and state.

---

## 14. DTP Model Content

A DTP may define:

- asset type
- semantic identity
- required attributes
- optional attributes
- state structure
- lifecycle capabilities
- relationship types
- interface references
- behavior references
- validation rules
- configuration structure
- provenance requirements

The DTP defines reusable semantics rather than implementation classes.

---

## 15. DTP Version

A DTP shall be versionable.

A new version may represent changes to:

- attributes
- state structure
- relationship expectations
- interfaces
- behavior references
- validation rules
- configuration

Existing DTIs shall retain traceability to the DTP version from which they were instantiated.

---

## 16. DTP Lifecycle

The logical DTP lifecycle may include:

~~~text
Define
  |
  v
Validate
  |
  v
Register
  |
  v
Activate
  |
  v
Revise
  |
  v
Deprecate
  |
  v
Archive
~~~

The exact technical implementation remains outside this document.

---

## 17. Digital Twin Instance — DTI

A Digital Twin Instance is a uniquely identifiable virtual representation of a specific asset or entity.

A DTI has its own:

- identity
- state
- lifecycle
- configuration
- relationships
- provenance
- history
- representation context

---

## 18. DTI Identity

Each DTI shall have a unique virtual identity within its applicable identity domain.

A conceptual identity may include:

~~~text
DTI Identity
 |
 +--> Domain
 +--> Asset Type
 +--> Instance Identifier
 +--> Version / Revision Context
~~~

The implementation may use any suitable identifier mechanism.

---

## 19. DTI Is Not a DTP

A DTP describes reusable characteristics.

A DTI represents one specific instance.

~~~text
DTP
 |
 +--> DTI-A
 |
 +--> DTI-B
 |
 +--> DTI-C
~~~

Changes to one DTI's operational state shall not automatically change another DTI's state.

---

## 20. DTI and Physical Association

A DTI may be associated with a physical asset.

~~~text
DTI
 |
 | physical association
 v
Physical Asset
~~~

The association shall be separately identifiable from both identities.

---

## 21. DTI Without Physical Asset

A DTI may exist without a physical asset.

Examples include:

- simulated irrigation pump
- planned sensor
- virtual field
- experimental actuator
- proposed equipment

This enables virtual-first development and experimentation.

---

## 22. DTI With Physical Asset

A DTI may represent an operational physical asset.

The relationship may include:

- physical identity
- association status
- validity
- synchronization state
- provenance
- authority

The DTI remains a virtual representation.

---

## 23. Digital Twin Aggregate — DTA

A Digital Twin Aggregate represents a logical composition or aggregation of multiple virtual assets.

Examples include:

- farm
- field
- irrigation system
- water system
- greenhouse
- machinery group
- workforce group

A DTA is not necessarily itself a physical object.

---

## 24. DTA Identity

A DTA shall have an identity independent of its current membership.

This permits the aggregate to remain stable while its members change.

~~~text
DTA: Irrigation System
       |
       +--> Pump A
       +--> Valve A
       +--> Sensor A
       +--> Controller A
~~~

---

## 25. DTA Membership

Membership shall be represented through explicit relationships.

A virtual asset becomes a member of an aggregate through a relationship rather than by copying the asset into the aggregate.

This preserves independent asset identity.

---

## 26. Dynamic DTA Membership

DTA membership may change over time.

An asset may be:

- added
- removed
- reassigned
- temporarily associated
- replaced
- suspended

Membership history shall remain traceable where required.

---

## 27. DTA State

Aggregate state may be:

- directly represented
- derived from members
- received from an external source
- calculated by a model
- synchronized from a Digital Twin implementation

Aggregate state shall identify its authority and provenance where material.

---

## 28. DTA Behavior

An aggregate may have behavior that differs from the behavior of individual members.

For example:

~~~text
Individual Assets
      |
      v
Irrigation System Aggregate
      |
      v
System-Level Behavior
~~~

Aggregate behavior shall not require duplication of individual asset behavior.

---

## 29. DTP / DTI / DTA Relationship

The three concepts serve different purposes.

| Type | Purpose |
|---|---|
| DTP | Reusable definition |
| DTI | Specific virtual instance |
| DTA | Logical aggregation |

They may coexist.

~~~text
DTP
 |
 +--> DTI
 |     |
 |     +--> Physical Association
 |
 +--> DTI
       |
       +--> DTA Membership
~~~

---

## 30. Asset Type

Every virtual asset should have an identifiable logical type.

Examples include:

- farm
- field
- crop state
- soil state
- sensor
- actuator
- water resource
- environment
- decision
- policy
- experiment
- simulation environment

Asset type shall remain semantic rather than implementation-specific.

---

## 31. Asset Category

Asset type may be grouped into broader categories.

Possible categories include:

- physical
- environmental
- informational
- computational
- sensing
- communication
- control
- operational
- organizational
- aggregate
- experimental

Categories provide classification without imposing implementation structure.

---

## 32. Asset Identity Structure

A virtual asset identity may conceptually contain:

~~~text
Virtual Asset Identity
 |
 +--> Domain
 +--> Asset Type
 +--> Instance ID
 +--> Representation Context
 +--> Lifecycle Status
~~~

Only the fields required for the applicable identity domain need to be implemented.

---

## 33. Logical Asset Reference

A virtual asset may retain a reference to the corresponding Phase 0 logical asset.

For example:

~~~text
Phase 0 Asset
     |
     v
Virtual Asset
     |
     +--> DTP / DTI / DTA
~~~

This preserves traceability from requirements to realization.

---

## 34. Physical Asset Reference

Where a physical association exists, the virtual asset may retain a reference to the physical asset identity.

The reference shall not replace the virtual asset identity.

---

## 35. Representation Identity

A representation may require its own identity when multiple representations of the same underlying asset exist.

For example:

~~~text
Logical Asset
     |
     +--> Operational Representation
     |
     +--> Simulation Representation
     |
     +--> QAI Representation
~~~

Representation identity prevents accidental conflation of different contexts.

---

## 36. Asset State

A virtual asset shall have a defined state representation where state is meaningful.

State may include:

- current condition
- operational status
- measurements
- configuration state
- availability
- health
- uncertainty
- synchronization status

---

## 37. State Is Separate From Identity

An asset's state may change without changing its identity.

~~~text
DTI-001
  |
  +--> State T1
  +--> State T2
  +--> State T3
~~~

This permits historical reconstruction and lifecycle continuity.

---

## 38. Asset Configuration

Configuration describes the applicable operational or modeling configuration of a virtual asset.

Configuration may include:

- operating parameters
- thresholds
- policies
- model references
- interface settings
- resource constraints
- execution preferences

Configuration shall be versionable.

---

## 39. Asset Status

Status indicates the lifecycle or operational condition of an asset.

Possible statuses include:

- defined
- registered
- inactive
- active
- suspended
- archived
- destroyed

Operational status and lifecycle status may be distinguished where necessary.

---

## 40. Asset Health

Where applicable, an asset may have a health representation.

Health may incorporate:

- operational condition
- data quality
- synchronization quality
- model confidence
- communication condition
- physical condition

Health shall not be assumed to be equivalent to lifecycle status.

---

## 41. Asset Availability

Availability indicates whether the asset can currently participate in an applicable workflow.

An asset may be:

- available
- partially available
- unavailable
- unknown

Availability may differ from lifecycle status.

---

## 42. Asset Quality

Virtual asset quality may include:

- data quality
- model quality
- state confidence
- representation completeness
- synchronization quality
- relationship integrity

Quality shall be evaluated according to intended use.

---

## 43. Asset Completeness

A virtual asset representation may be evaluated for completeness.

Completeness may consider whether required elements exist:

~~~text
Identity
   +
State
   +
Configuration
   +
Relationships
   +
Interfaces
   +
Behavior
   +
Provenance
   |
   v
Representation Completeness
~~~

Not every asset type requires every element.

---

## 44. Asset Provenance

Material virtual asset information shall retain provenance where required.

Provenance may identify:

- source
- origin
- transformation
- model
- synchronization event
- responsible process
- timestamp

---

## 45. Asset History

A virtual asset shall support historical information where required.

History may include:

- state changes
- configuration changes
- relationship changes
- physical associations
- lifecycle transitions
- model changes
- synchronization events

History shall support traceability and reproducibility.

---

## 46. Asset Events

Virtual assets may participate in events.

Examples include:

- created
- registered
- activated
- updated
- associated
- disassociated
- suspended
- replaced
- archived
- destroyed

Events may be used to explain state transitions.

---

## 47. Asset Lifecycle

The generic virtual asset lifecycle is:

~~~text
Create
  |
Register
  |
Initialize
  |
Activate
  |
Update
  |
Suspend / Resume
  |
Archive
  |
Destroy
~~~

Not every asset must use every transition.

---

## 48. Create Virtual Asset

Creation establishes a new virtual representation.

Creation may occur:

- from a DTP
- from a predefined model
- from a physical asset discovery process
- from a planning process
- from an experiment

Creation shall establish identity and minimum required metadata.

---

## 49. Register Virtual Asset

Registration makes the virtual asset discoverable within its applicable registry.

Registration shall support:

- identity
- type
- status
- provenance
- ownership or authority where applicable
- references to associated artifacts

---

## 50. Instantiate From DTP

Instantiation creates a DTI using a DTP definition.

~~~text
DTP
 |
 | instantiate
 v
DTI
~~~

The DTI shall retain traceability to the DTP version used for instantiation.

---

## 51. DTI Initialization

A DTI shall be initialized with the state and configuration required for its intended use.

Initialization may use:

- default state
- measured state
- imported state
- simulated state
- emulated state
- derived state

The state source shall remain identifiable.

---

## 52. Create DTA

A DTA is created as a logical aggregate.

Creation establishes:

- aggregate identity
- aggregate type
- purpose
- membership rules where applicable
- initial status
- provenance

Members are added through relationships.

---

## 53. Assign Virtual Asset

A virtual asset may be assigned to an operational, simulation, experimental, organizational, or other context.

Assignment shall be distinguishable from physical association.

---

## 54. Associate With Physical Asset

A virtual asset may be associated with a physical asset through a controlled mapping.

The association may specify:

- association identity
- source virtual identity
- physical identity
- association type
- status
- validity
- provenance
- synchronization context

---

## 55. Disassociate Physical Asset

A physical association may be terminated without destroying the virtual asset.

This supports:

- physical replacement
- maintenance
- decommissioning
- reassignment
- temporary disconnection

The virtual asset history shall remain intact.

---

## 56. Replace Physical Asset

A physical asset may be replaced while preserving the logical virtual role.

~~~text
Virtual Asset
     |
     +--> Physical Asset A
     |
     +--> Physical Asset B
~~~

The historical association with Asset A shall remain traceable while Asset B becomes the current association.

---

## 57. Replace Virtual Representation

A virtual representation may be replaced without necessarily replacing the underlying physical asset.

For example, a simulation model may be upgraded while the physical pump remains unchanged.

---

## 58. Multiple Virtual Representations

One underlying asset may have multiple virtual representations.

~~~text
Physical / Logical Asset
          |
    +-----+-----+-----+
    |     |     |     |
Operational  Simulation  QAI
Representation Representation Representation
~~~

The representations shall remain distinguishable.

---

## 59. Representation Substitution

One representation may be substituted for another where semantic compatibility is established.

Examples include:

- simulation model replacement
- emulation implementation replacement
- QAI representation replacement
- Digital Twin platform migration

Substitution shall preserve required logical identity and traceability.

---

## 60. Virtual Asset Composition

Virtual assets may be composed into higher-level structures.

Composition shall use explicit relationships rather than duplicating the member definitions.

~~~text
Aggregate
   |
   +--> Asset A
   +--> Asset B
   +--> Asset C
~~~

This enables reusable composition across different contexts.

---

## 61. Asset Relationship Reference

A virtual asset may reference relationships to other assets.

Relationship semantics are defined separately in:

`relationships/04_asset_relationship_model.md`

The Virtual Asset Model only establishes that relationships are part of the asset representation.

---

## 62. Relationship Multiplicity

A virtual asset may participate in:

- zero relationships
- one relationship
- multiple relationships

There shall be no assumption that an asset has only one relationship with another asset.

---

## 63. Relationship Context

Relationships may exist for different purposes.

Examples include:

- ownership
- operation
- monitoring
- maintenance
- composition
- dependency
- communication
- control
- QAI processing

The relationship itself shall remain separately identifiable.

---

## 64. Aggregate Membership Reference

A DTI may belong to multiple DTAs where semantically valid.

For example:

~~~text
Pump DTI
  |
  +--> Irrigation System DTA
  |
  +--> Field Operations DTA
  |
  +--> Maintenance Group DTA
~~~

Membership shall not change the DTI's identity.

---

## 65. Asset Dependency

A virtual asset may depend on another asset.

Dependencies may be:

- functional
- operational
- resource-based
- data-based
- communication-based
- computational

Dependencies shall be represented through explicit relationships.

---

## 66. Asset Interface Reference

A virtual asset may reference one or more logical interfaces.

Interfaces define how the asset participates in interactions.

The Virtual Asset Model does not prescribe the implementation of those interfaces.

---

## 67. Asset Behavior Reference

A virtual asset may reference one or more behavior models.

Behavior may be:

- operational
- physical
- statistical
- rule-based
- learned
- simulated
- emulated

Behavior implementation remains outside the Virtual Asset Model.

---

## 68. Asset Model Reference

A virtual asset may reference the model or models used to represent its behavior.

The reference may include:

- model identity
- model version
- purpose
- validity
- fidelity
- provenance

---

## 69. Model and Asset Separation

The asset and its behavior model shall remain conceptually separate.

~~~text
Virtual Asset
      |
      +--> State
      |
      +--> Configuration
      |
      +--> Behavior Model
~~~

This allows models to change without redefining asset identity.

---

## 70. Asset Execution Context

A virtual asset may participate in different execution contexts.

Examples include:

- virtualization
- simulation
- emulation
- physical
- experimentation
- QAI execution

Execution context shall not redefine the asset's core identity.

---

## 71. Asset Execution Independence

A virtual asset definition should remain independent of the execution environment.

The same asset may therefore be exercised:

~~~text
DTI
 |
 +--> Laptop
 +--> Simulation
 +--> Emulation
 +--> Edge
 +--> Cloud
 +--> Physical CPS
 +--> QAI Lab
~~~

---

## 72. Asset Resource Context

A virtual asset may have resource requirements or constraints.

Examples include:

- compute
- memory
- network
- energy
- water
- budget
- time
- quantum resources

Resource requirements shall be references or attributes rather than embedded implementation logic.

---

## 73. Asset Security Context

A virtual asset may have security requirements.

Examples include:

- access classification
- authorization requirement
- trusted source
- integrity requirement
- confidentiality requirement

Security enforcement remains a technical and governance concern.

---

## 74. Asset Governance Context

A virtual asset may carry governance metadata such as:

- owner
- authority
- policy
- compliance requirement
- retention requirement
- review status
- approval status

---

## 75. Asset Data Sovereignty Context

Where applicable, the virtual asset model shall preserve data-sovereignty information.

This may include:

- jurisdiction
- data domain
- permitted processing location
- transfer restrictions
- ownership
- access policy

---

## 76. Asset Human Context

A virtual asset may participate in human-AI workflows.

Human roles may include:

- operator
- reviewer
- approver
- maintainer
- supervisor
- domain expert

Human participation shall be represented through appropriate relationships or workflow context.

---

## 77. Human Override

A virtual asset workflow may permit authorized human override.

Override information should retain:

- actor
- decision
- reason
- timestamp
- affected asset
- previous decision
- resulting state

This is particularly relevant to irrigation and safety-related control.

---

## 78. Asset Safety Context

Safety-critical assets or actions may require explicit safety metadata.

Examples include:

- operating limits
- forbidden states
- approval requirements
- emergency status
- safe fallback

Safety constraints shall take precedence over optimization objectives where applicable.

---

## 79. Asset Uncertainty

Virtual asset state may contain uncertainty.

Uncertainty may arise from:

- incomplete observations
- sensor limitations
- model approximation
- stale information
- conflicting sources
- inferred state

Uncertainty shall not be silently converted into certainty.

---

## 80. Asset Confidence

Where useful, a virtual asset may include confidence associated with:

- state
- observation
- model result
- inferred condition
- synchronization

Confidence shall remain distinguishable from measurement uncertainty.

---

## 81. Asset Freshness

State information may have a freshness indicator.

Freshness may depend on:

- observation timestamp
- synchronization timestamp
- update frequency
- expected update interval

Freshness is important for real-time and closed-loop decisions.

---

## 82. Asset Synchronization Status

Where physical association exists, synchronization status may include:

- synchronized
- partially synchronized
- stale
- conflicting
- unavailable
- unknown

Synchronization status is separate from asset lifecycle status.

---

## 83. Asset State Authority

For each important state element, an authority may be identified.

Possible authorities include:

- physical observation
- simulation model
- emulation model
- external source
- derived computation
- human input

Authority may vary by state element and execution context.

---

## 84. Asset State Derivation

Some state may be derived rather than directly observed.

~~~text
Observed State
     +
Model
     +
Context
     |
     v
Derived Virtual State
~~~

Derived state shall retain sufficient provenance to explain its origin.

---

## 85. Asset State History

State history shall permit reconstruction of material state transitions.

History may be represented through:

- snapshots
- events
- changes
- timestamps
- versioned state

The implementation mechanism remains technology-neutral.

---

## 86. Asset State Validation

State shall be validated according to asset requirements.

Validation may include:

- range checks
- type checks
- temporal checks
- consistency checks
- source checks
- relationship checks
- model checks

Invalid state shall be identified rather than silently accepted.

---

## 87. Asset Configuration Validation

Configuration shall be validated before activation where required.

Validation may include:

- parameter ranges
- dependency consistency
- policy compatibility
- model compatibility
- resource availability
- safety constraints

---

## 88. Asset Type Compatibility

An asset instance shall remain compatible with its declared type and applicable DTP.

Compatibility may include:

- required attributes
- state structure
- interfaces
- relationships
- behavior expectations
- lifecycle rules

---

## 89. DTP-to-DTI Compatibility

A DTI shall retain compatibility with its originating DTP version unless an explicit migration or evolution process is applied.

~~~text
DTP v1
  |
  +--> DTI-001
  +--> DTI-002
~~~

Migration to another DTP version shall be controlled.

---

## 90. DTI Migration

A DTI may migrate to a newer DTP version.

Migration may require:

- state transformation
- configuration transformation
- relationship validation
- interface compatibility
- behavior-model compatibility
- evidence capture

The DTI identity should remain stable where semantic continuity is preserved.

---

## 91. DTA Compatibility

A DTA shall define or reference membership expectations where required.

Membership compatibility may depend on:

- asset type
- role
- interface
- state
- operational constraints
- safety constraints

---

## 92. DTA Composition Rules

A DTA may define composition rules.

Rules may specify:

- permitted members
- required members
- optional members
- cardinality
- dependency
- lifecycle conditions

These rules remain logical requirements rather than implementation classes.

---

## 93. Asset Lifecycle Independence

Individual asset lifecycle shall remain independent from aggregate lifecycle.

For example:

~~~text
Farm DTA
 |
 +--> Field DTI      [Active]
 +--> Pump DTI       [Suspended]
 +--> Sensor DTI     [Active]
~~~

The aggregate may remain active while one member is suspended.

---

## 94. Aggregate Lifecycle Independence

Similarly, an individual DTI may remain active when an aggregate is archived or reorganized.

This preserves reusable asset identity.

---

## 95. Asset Destruction

Destroying a virtual asset shall be a controlled lifecycle action.

Destruction shall not necessarily mean physical destruction.

It means the virtual representation is no longer maintained as an active virtual asset.

---

## 96. Asset Archival

Archival preserves historical information while removing an asset from active operation.

Archived assets may remain available for:

- audit
- historical analysis
- experiment reconstruction
- evidence
- traceability

---

## 97. Asset Suspension

Suspension temporarily prevents normal participation without destroying the asset.

Possible causes include:

- invalid state
- maintenance
- physical disconnection
- resource shortage
- governance restriction
- safety condition

---

## 98. Asset Reactivation

A suspended asset may be reactivated after applicable validation.

Reactivation should verify:

- state validity
- configuration
- relationships
- mappings
- safety
- required resources

---

## 99. Asset Replacement

Replacement shall distinguish between:

- physical replacement
- virtual representation replacement
- model replacement
- configuration replacement

These changes have different architectural meanings.

---

## 100. Asset Identity Continuity

Identity continuity shall be preserved when the logical asset remains semantically the same.

For example:

~~~text
DTI-IRRIGATION-PUMP-001
       |
       +--> Physical Pump A
       |
       +--> Physical Pump B
~~~

The physical replacement does not automatically require a new logical DTI.

---

## 101. Asset Identity Change

A new identity shall be created when the underlying logical entity is genuinely different.

Identity changes shall not be used merely because:

- a model changed
- a configuration changed
- a physical component was replaced
- a representation changed

---

## 102. Asset Clone

A virtual asset may be copied or cloned for controlled experimentation where required.

A clone shall receive a distinct identity.

~~~text
Original DTI
    |
    +--> Experimental DTI
~~~

The relationship between original and clone shall remain traceable.

---

## 103. Asset Template

A reusable asset template may provide initial configuration or structure.

A template is not necessarily a DTP.

Where it represents a formal Digital Twin definition, the DTP model should be used.

---

## 104. Asset Snapshot

A virtual asset snapshot represents its state at a particular point in time.

Snapshots may support:

- experiment reproducibility
- scenario initialization
- rollback
- comparison
- historical analysis

---

## 105. Asset Scenario State

A scenario may create an alternate state without changing operational reality.

~~~text
Operational State
       |
       +--> Scenario A
       +--> Scenario B
       +--> Scenario C
~~~

Scenario state shall remain distinguishable from live operational state.

---

## 106. Asset What-If Context

What-if analysis may use virtual asset copies or alternate state contexts.

The objective is to evaluate potential outcomes without unintentionally modifying the authoritative state.

---

## 107. Asset Simulation Context

A simulation representation may use:

- model state
- simulated observations
- simulated time
- simulated events
- scenario parameters

It shall remain traceable to the corresponding virtual assets.

---

## 108. Asset Emulation Context

An emulation representation may reproduce relevant behavior or interfaces of an asset.

It may emulate:

- sensor behavior
- actuator behavior
- controller behavior
- communication behavior
- device response

The virtual asset identity remains separate from the emulation implementation.

---

## 109. Asset Digital Twin Context

A Digital Twin context may add:

- physical association
- synchronized state
- live observations
- control interaction
- temporal history

The Digital Twin realization shall reuse the virtual asset model.

---

## 110. Asset CPS Context

A CPS context combines virtual and physical elements through feedback and control.

~~~text
Virtual Asset
      |
      v
Decision
      |
      v
Physical System
      |
      v
Observation
      |
      v
Virtual Asset
~~~

The same asset model should remain valid across the loop.

---

## 111. Asset QAI Context

A virtual asset may provide inputs to QAI processing.

The QAI representation may transform asset state into a suitable problem representation.

The transformation shall preserve traceability back to the originating virtual asset.

---

## 112. Asset Classical Context

The same virtual asset state shall be usable by classical computational baselines.

This permits matched comparison between:

- classical
- QAI
- hybrid

execution paths.

---

## 113. Asset Advantage Evaluation Context

QAI evaluation may use virtual assets as the controlled problem context.

The evaluation shall identify:

- asset state
- scenario
- problem representation
- classical baseline
- QAI representation
- resources
- results
- value evidence

---

## 114. Asset Resource Awareness

Virtual asset execution may be conditioned by resource availability.

For example:

~~~text
Virtual Asset
      |
      v
Resource Assessment
      |
   +--+--+
   |     |
Available Limited
   |     |
Execute  Adapt / Fallback
~~~

---

## 115. Asset Observability

Virtual assets shall expose sufficient logical information for observation.

Examples include:

- state
- status
- health
- relationships
- events
- synchronization
- errors

Observability shall support both development and operation.

---

## 116. Asset Auditability

Material lifecycle and state changes should remain auditable where required.

Auditability shall support:

- governance
- safety
- traceability
- accountability
- evidence

---

## 117. Asset Reproducibility

A virtual asset should be reconstructible for a defined historical or experimental context when required.

Reconstruction may require:

- asset definition
- DTP version
- state
- configuration
- relationships
- model
- scenario
- execution context

---

## 118. Asset Versioning

Virtual asset artifacts shall support controlled versioning.

Versioning may apply to:

- DTP
- DTI configuration
- state schema
- behavior model
- relationships
- interfaces
- representation contexts

---

## 119. Asset Change Management

Material changes shall be assessed for impact.

Potential impacts include:

- relationships
- mappings
- state
- models
- interfaces
- workflows
- scenarios
- validation
- QAI evaluation

---

## 120. Asset Traceability

Each virtual asset should remain traceable across the architecture.

~~~text
Phase 0 Asset
     |
     v
Virtual Asset
     |
     +--> Relationship
     +--> Mapping
     +--> State
     +--> Model
     +--> Interface
     +--> Workflow
     +--> Scenario
     +--> Evidence
~~~

---

## 121. Asset Registry Alignment

Virtual assets shall ultimately be discoverable through:

`assets/03_virtual_asset_registry.md`

The registry shall implement or record the logical model defined here.

---

## 122. Relationship Registry Alignment

Asset relationships shall ultimately be managed through:

`relationships/05_asset_relationship_registry.md`

The relationship registry shall reference virtual asset identities defined by this model.

---

## 123. Mapping Alignment

Physical associations shall ultimately be captured through:

`mappings/06_asset_twin_mapping.md`

and:

`mappings/07_physical_virtual_mapping.md`

The Virtual Asset Model establishes the asset-side semantics for those mappings.

---

## 124. State Model Alignment

Detailed state semantics shall be refined in:

`state/08_virtual_state_model.md`

The current document establishes that state belongs to the virtual asset representation but does not prescribe its technical implementation.

---

## 125. Behavior Model Alignment

Behavior-model semantics shall be refined in:

`models/09_virtual_behavior_models.md`

The Virtual Asset Model only establishes references between assets and behavior models.

---

## 126. Interface Alignment

Virtual asset interaction shall use the logical interfaces defined by the Phase 1 interface artifact.

The asset model shall remain independent of specific API technologies.

---

## 127. Workflow Alignment

Asset lifecycle and state changes shall participate in workflows defined under:

`workflows/11_virtual_workflows.md`

The asset model defines the entities affected by those workflows.

---

## 128. Scenario Alignment

Scenario execution shall be capable of selecting virtual assets and their initial states.

Scenario semantics shall be defined under:

`scenarios/12_virtual_scenarios.md`

---

## 129. Validation Alignment

Virtual asset validation shall be defined and executed through the Phase 1 validation artifact.

Validation shall confirm that actual implementations conform to the logical model.

---

## 130. Formal Review Alignment

The Virtual Asset Model shall be reviewed as part of the Phase 1 formal review.

Review shall confirm:

- DTP semantics
- DTI semantics
- DTA semantics
- identity
- state
- lifecycle
- relationships
- mappings
- execution compatibility
- traceability

---

## 131. Minimum Agriculture Asset Model

The minimum callable irrigation pilot should support virtual representations for at least:

~~~text
Farm
 |
 +--> Field / Irrigation Zone
       |
       +--> Crop State
       +--> Soil State
       +--> Water Availability
       +--> Environmental State
       +--> Sensor Representations
       +--> Irrigation Actuator
~~~

These are derived from the Phase 0 logical asset inventory.

---

## 132. Minimum DTP Set

The minimum pilot DTP set should cover reusable definitions for:

- farm
- field / irrigation zone
- crop state
- soil state
- water availability
- environmental state
- sensor
- irrigation actuator
- simulation environment
- experiment context

---

## 133. Minimum DTI Set

The minimum pilot shall instantiate the DTPs into specific virtual entities required for the callable use case.

Examples include:

- one virtual farm
- one or more irrigation zones
- crop state instance
- soil state instance
- environmental state instance
- sensor instances
- actuator instance

---

## 134. Minimum DTA Set

The minimum pilot may use:

- Farm Aggregate
- Irrigation System Aggregate

Additional aggregates may be introduced where they simplify composition without duplicating asset semantics.

---

## 135. Minimum Physical Mapping Set

The pilot shall not require physical mappings.

However, the model shall support future associations for:

- soil sensors
- environmental sensors
- irrigation actuators
- controllers
- communication devices

---

## 136. Minimum Lifecycle Set

The minimum callable pilot should support:

- create
- register
- instantiate
- initialize
- assign
- associate
- activate
- update
- suspend
- archive
- destroy

Not every operation must be exercised in the first demonstration.

---

## 137. Minimum State Set

The minimum asset state should support:

- current value
- timestamp
- validity
- source
- confidence or uncertainty where applicable
- status

---

## 138. Minimum Relationship Set

The minimum virtual world should support relationships such as:

~~~text
Farm
  |
  +--> contains --> Field
Field
  |
  +--> has --> Crop State
  +--> has --> Soil State
  +--> monitored-by --> Sensor
  +--> controlled-by --> Actuator
~~~

The exact relationship semantics are defined separately.

---

## 139. Minimum Representation Set

The minimum pilot should support at least:

- operational virtual representation
- simulation representation
- emulation-compatible representation
- QAI-compatible representation

These may initially be realized within a laptop environment.

---

## 140. Minimum Execution Set

The minimum asset model shall be callable from:

- virtualization mode
- simulation mode
- emulation boundary

Physical execution remains optional at this stage.

---

## 141. Virtual Asset Reuse Principle

A virtual asset definition shall be reusable across multiple technical realizations.

~~~text
One Logical Virtual Asset
          |
    +-----+-----+-----+
    |     |     |     |
  Sim   Emul   Twin   QAI
~~~

This is a core Phase 1 design principle.

---

## 142. No Implementation-Class Requirement

The model does not require each asset to become a software class.

A later implementation may naturally choose:

- classes
- objects
- services
- records
- graph entities
- components
- workflows

The architecture defines semantics first.

---

## 143. No Database Requirement

The model does not mandate a particular persistence technology.

Possible implementations may include:

- relational storage
- graph storage
- document storage
- event storage
- hybrid storage

Selection is an implementation concern.

---

## 144. No Digital Twin Platform Requirement

A Digital Twin platform may implement some or all technical capabilities associated with this model.

However, platform adoption shall not redefine the logical architecture.

The platform remains a technical realization layer.

---

## 145. No Simulation Engine Requirement

A simulation engine may consume virtual assets and state.

The asset model does not prescribe:

- physics engine
- numerical solver
- discrete-event engine
- agent-based engine
- machine-learning simulator

---

## 146. No Emulation Platform Requirement

An emulation platform may realize device or system behavior.

The virtual asset model remains independent of the emulation implementation.

---

## 147. Technology-Neutral Identity

Identity semantics shall remain stable even when the underlying technology changes.

A migration between platforms should not automatically require logical asset re-identification.

---

## 148. Vendor-Neutral Asset Model

No vendor-specific object model shall be treated as the canonical Phase 1 asset model.

Vendor capabilities may be mapped to the logical model.

---

## 149. Interoperable Asset Model

The model shall permit assets to participate across technical boundaries.

~~~text
Virtual Asset Model
      |
      +--> Digital Farm
      +--> Digital Twin
      +--> Simulation
      +--> Emulation
      +--> IoT
      +--> Enterprise
      +--> Classical
      +--> QAI
~~~

---

## 150. Asset Model Stability

The logical asset model should remain stable while implementations evolve.

Changes shall occur through controlled architectural change rather than accidental implementation coupling.

---

## 151. Asset Model Validation Objective

The model shall be validated against the question:

> Can every required Phase 0 pilot asset be represented, instantiated, related, mapped, operated, simulated, emulated, and eventually synchronized without changing the foundational asset semantics?

A positive answer is required for Phase 1 readiness.

---

## 152. DTP Validation

DTP validation shall confirm that:

- the definition is reusable
- required attributes are defined
- lifecycle expectations are defined
- relationship expectations are defined
- applicable interfaces are identifiable
- versioning is supported

---

## 153. DTI Validation

DTI validation shall confirm that:

- identity is unique
- originating DTP is traceable
- state is valid
- configuration is valid
- lifecycle status is valid
- applicable relationships are valid

---

## 154. DTA Validation

DTA validation shall confirm that:

- aggregate identity exists
- membership is explicit
- membership is valid
- aggregate state is defined
- aggregate behavior is distinguishable from member behavior
- membership changes are traceable

---

## 155. Identity Validation

Identity validation shall detect:

- duplicate identities
- invalid identity references
- ambiguous representation identities
- broken physical references
- broken DTP references

---

## 156. Lifecycle Validation

Lifecycle validation shall confirm that asset state transitions follow permitted logical transitions.

Invalid transitions shall be rejected or explicitly handled.

---

## 157. Composition Validation

Composition validation shall confirm that:

- member identities exist
- membership is permitted
- required members exist
- forbidden combinations are prevented
- aggregate constraints are satisfied

---

## 158. State Validation

State validation shall confirm:

- correct asset association
- valid structure
- valid values
- valid timestamp
- valid source
- applicable uncertainty
- applicable confidence

---

## 159. Configuration Validation

Configuration validation shall confirm compatibility with:

- asset type
- DTP
- state
- behavior model
- interfaces
- resources
- safety requirements

---

## 160. Representation Validation

Multiple representations shall be validated to ensure that they:

- refer to the correct logical asset
- remain contextually distinct
- do not accidentally overwrite one another
- retain provenance
- remain semantically compatible where required

---

## 161. Physical Association Validation

Where physical associations exist, validation shall confirm:

- virtual identity
- physical identity
- association status
- association validity
- provenance
- synchronization semantics

---

## 162. Virtual-First Validation

Virtual-first validation shall confirm that an asset can exist without requiring a physical asset.

This is required for:

- simulation
- experimentation
- planning
- design
- early CPS development

---

## 163. Physical-First Validation

Physical-first validation shall confirm that an existing physical asset can receive a virtual representation without redesigning the logical asset model.

---

## 164. Replacement Validation

Replacement validation shall confirm that:

- physical replacement does not unnecessarily change virtual identity
- virtual representation replacement does not unnecessarily change physical identity
- history remains preserved
- current association is unambiguous

---

## 165. Simulation Compatibility Validation

The asset model shall support simulation by providing:

- initial state
- relevant parameters
- model references
- scenario context
- state update semantics

---

## 166. Emulation Compatibility Validation

The asset model shall support emulation by providing:

- asset identity
- interface references
- behavior references
- configuration
- state
- lifecycle context

---

## 167. Digital Twin Readiness Validation

Digital Twin readiness shall confirm that the model can support:

- physical association
- state synchronization
- observation ingestion
- command interaction
- history
- provenance

---

## 168. CPS Readiness Validation

CPS readiness shall confirm that the model can participate in:

- sensing
- processing
- decision
- actuation
- feedback
- state update

without redefining the virtual asset.

---

## 169. QAI Compatibility Validation

QAI compatibility shall confirm that virtual asset state can be transformed into QAI representations while preserving:

- source identity
- scenario
- state
- objective
- constraints
- result traceability

---

## 170. Classical Compatibility Validation

Classical execution shall consume the same logical virtual asset state used for matched QAI evaluation.

This preserves fair comparison.

---

## 171. Human-AI Compatibility Validation

The model shall provide sufficient context for:

- human review
- human approval
- human override
- explanation
- decision traceability

---

## 172. Resource Compatibility Validation

The asset model shall support resource-aware execution without embedding resource-management implementation into the asset itself.

---

## 173. Governance Compatibility Validation

The model shall preserve the metadata required for governance, security, safety, compliance, and auditability.

---

## 174. Evidence Compatibility Validation

Material asset changes and execution results shall be capable of producing evidence references.

---

## 175. Reproducibility Compatibility Validation

The model shall provide enough information to reconstruct an applicable historical or experimental asset context.

---

## 176. Change Impact Validation

Changes to the asset model shall be checked for effects on:

- relationships
- mappings
- state
- behavior
- interfaces
- workflows
- scenarios
- QAI evaluation
- value measurement

---

## 177. Non-Duplication Validation

The implementation shall be checked to ensure that the Virtual Asset Model does not duplicate capabilities belonging to:

- Digital Farm management
- Digital Twin technical realization
- simulation
- emulation
- resource management
- governance
- QAI execution

---

## 178. Architecture Consistency Validation

The model shall remain consistent with:

- Phase 0 scope
- Phase 1 README
- virtualization model
- relationship model
- mapping model
- state model
- behavior model

---

## 179. Asset Model Acceptance

The asset model shall be accepted only when it demonstrates that the minimum callable pilot assets can be represented without architectural ambiguity.

---

## 180. Formal Review Questions

The formal review shall ask:

1. Are DTP, DTI, and DTA clearly distinguished?
2. Can a DTI exist without a physical asset?
3. Can a physical asset exist before its DTI?
4. Can one asset have multiple representations?
5. Is representation context explicit?
6. Is identity independent from state?
7. Is identity independent from implementation technology?
8. Is aggregate membership explicit?
9. Can physical assets be replaced?
10. Can virtual representations be replaced?
11. Can the same asset participate in simulation and emulation?
12. Can it later participate in Digital Twin and CPS?
13. Can it support classical and QAI execution?
14. Is the model free from unnecessary implementation prescriptions?

---

## 181. Formal Review Decision

The review decision shall be:

~~~text
READY
  |
  +--> Asset model accepted

REVISE
  |
  +--> Asset model requires correction

DEFER
  |
  +--> Dependency prevents closure
~~~

The decision shall be recorded in:

`review/15_formal_review.md`

---

## 182. Phase 1 Handoff

Once approved, this model becomes the basis for:

- virtual asset registry
- relationship registry
- asset-twin mapping
- physical-virtual mapping
- virtual state model
- behavior models
- interfaces
- workflows
- scenarios

---

## 183. Implementation Handoff Principle

Implementation shall proceed from:

~~~text
Logical Asset Model
        |
        v
Registry / Relationships / Mappings
        |
        v
State / Behavior / Interfaces
        |
        v
Workflow / Scenario
        |
        v
Execution
~~~

The implementation shall not reverse this dependency by allowing infrastructure choices to redefine the asset semantics.

---

## 184. Asset Model Expansion

Additional asset types may be introduced later.

Expansion shall follow the same principles:

- explicit identity
- defined type
- lifecycle
- state
- relationships
- provenance
- validation
- execution compatibility

---

## 185. Agriculture Expansion

Future agriculture assets may include:

- machinery
- irrigation infrastructure
- weather stations
- drones
- autonomous equipment
- storage systems
- energy systems
- logistics assets
- workforce contexts

They shall reuse the same foundational model.

---

## 186. Cross-Domain Reuse

Although initially developed for agriculture, the virtual asset model should remain reusable across HoldCo domains.

Domain-specific semantics may extend the model without breaking the foundational identity and lifecycle principles.

---

## 187. Asset Federation

Future federated environments may allow assets to remain under separate administrative domains while participating in controlled relationships.

Federation shall not require common ownership.

---

## 188. Asset Sovereignty

Asset information may remain subject to domain-specific sovereignty constraints.

Logical representation shall not imply unrestricted access or transfer.

---

## 189. Asset Portability

Virtual asset definitions should remain portable across:

- local
- edge
- cloud
- simulation
- emulation
- Digital Twin
- CPS
- QAI Lab

Portability shall preserve semantics.

---

## 190. Asset Scalability

The model shall scale from:

- one asset
- one field
- one farm
- multiple farms
- federated agriculture domains

Scaling shall primarily introduce additional instances and relationships.

---

## 191. Asset Resilience

Virtual assets should remain recoverable after applicable technical failures.

Recovery may use:

- persisted state
- snapshots
- event history
- provenance
- registry information
- relationship reconstruction

---

## 192. Asset Recovery

Recovery shall preserve identity continuity where the logical asset remains the same.

A recovered representation shall not automatically be treated as a new asset.

---

## 193. Asset Orphan Detection

The implementation should identify virtual assets that have:

- no valid DTP where one is required
- invalid relationships
- invalid mappings
- missing required state
- unresolved references

---

## 194. Asset Duplicate Detection

Duplicate detection should identify cases where multiple virtual identities appear to represent the same logical asset without an intentional reason.

Intentional multiple representations shall not be incorrectly classified as duplicates.

---

## 195. Asset Reference Integrity

All asset references should resolve to valid identities.

Broken references shall be reported and reconciled.

---

## 196. Asset Relationship Integrity

Relationship references shall remain consistent with the asset identities they connect.

A relationship shall not silently point to an obsolete or nonexistent asset.

---

## 197. Asset Mapping Integrity

Physical and virtual mappings shall remain consistent with the identities and lifecycle states of both sides.

---

## 198. Asset Lifecycle Integrity

Lifecycle status shall remain consistent with:

- relationships
- mappings
- state
- execution participation

For example, a destroyed virtual asset shall not remain an active execution participant.

---

## 199. Asset Model Completion Test

The Virtual Asset Model passes its completion test when the minimum pilot can demonstrate:

~~~text
Create
  |
Register
  |
Instantiate
  |
Initialize
  |
Relate
  |
Represent
  |
Simulate / Emulate
  |
Validate
  |
Associate With Physical Asset
  |
Synchronize
  |
Operate
  |
Archive / Replace / Destroy
~~~

where applicable.

---

## 200. Final Asset Model Principle

The Phase 1 Virtual Asset Model establishes the following principle:

> A virtual asset is a stable, identifiable, reusable logical representation whose identity, state, lifecycle, relationships, mappings, and provenance remain independent of the particular technology used to realize it.

DTP provides reusable definition.

DTI provides specific virtual instance identity.

DTA provides logical aggregation.

Physical association provides connection to physical reality.

Simulation and emulation provide modeled or reproduced behavior.

Digital Twin provides persistent synchronized representation where applicable.

CPS provides closed-loop interaction between virtual and physical worlds.

Classical and QAI execution consume the same underlying virtual-world semantics.

The model therefore provides one common asset foundation across the complete Digital Farm realization path.

**Status: COMPLETE — PHASE 1 VIRTUAL ASSET MODEL BASELINE**
---

