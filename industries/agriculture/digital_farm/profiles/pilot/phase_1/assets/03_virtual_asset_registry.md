# 03_virtual_asset_registry.md

## 1. Purpose

This document defines the Phase 1 logical registry for virtual assets within the Digital Farm.

The registry provides the controlled discovery, identity, lifecycle, classification, and traceability foundation for the virtual assets defined by:

`assets/02_virtual_asset_model.md`

---

## 2. Architectural Position

The Virtual Asset Registry belongs to the asset virtualization layer.

~~~text
Digital Farm
    |
    +--> Phase 1 Asset Virtualization
             |
             +--> Virtual Asset Model
             |
             +--> Virtual Asset Registry
             |
             +--> Relationship Registry
             |
             +--> Mapping Registries
~~~

The registry is a management and reference structure for virtual assets.

It is not itself a simulation engine, Digital Twin platform, graph database, or runtime.

---

## 3. Registry Objective

The registry shall provide a consistent logical mechanism to:

- identify virtual assets
- register virtual assets
- discover virtual assets
- classify virtual assets
- distinguish DTP, DTI, and DTA
- track lifecycle status
- track representation context
- reference state
- reference relationships
- reference mappings
- support validation
- preserve provenance
- support traceability

---

## 4. Registry Principle

The registry shall maintain authoritative references to virtual asset identities without prescribing how those identities are technically persisted.

Possible implementations may include:

- relational storage
- graph storage
- document storage
- service-backed registries
- hybrid storage

The logical registry semantics remain independent of implementation technology.

---

## 5. Registry Is Not the Asset

A registry entry is a reference to a virtual asset.

~~~text
Virtual Asset
     ^
     |
Registry Entry
~~~

The registry shall not become a duplicate implementation of the virtual asset itself.

Detailed asset semantics remain defined by:

`assets/02_virtual_asset_model.md`

---

## 6. Registry Scope

The registry covers virtual assets participating in the Digital Farm virtual world.

This includes:

- DTPs
- DTIs
- DTAs
- virtual-first assets
- physical-first virtual representations
- simulation representations
- emulation-compatible representations
- Digital Twin representations
- QAI-compatible representations
- experimental representations

---

## 7. Registry Boundary

The registry shall not directly implement:

- physical devices
- sensor acquisition
- actuator control
- simulation
- emulation
- QAI execution
- Digital Twin synchronization
- resource management
- governance enforcement

It may reference these capabilities and their associated assets.

---

## 8. Registry Identity

Every registered virtual asset shall have a unique logical identity within its applicable identity domain.

~~~text
Registry
   |
   +--> Virtual Asset ID
   +--> Asset Type
   +--> Asset Kind
   +--> Representation Context
~~~

Identity uniqueness shall be validated.

---

## 9. Asset Registry Entry

A registry entry should contain sufficient information to discover and correctly interpret the referenced virtual asset.

Conceptually:

~~~text
Registry Entry
 |
 +--> Identity
 +--> Type
 +--> Kind
 +--> Status
 +--> Context
 +--> DTP Reference
 +--> State Reference
 +--> Relationship References
 +--> Mapping References
 +--> Provenance
~~~

Not every field is mandatory for every asset.

---

## 10. Asset Registry Record

A logical registry record may contain:

| Field | Purpose |
|---|---|
| Asset ID | Unique virtual identity |
| Asset Type | Semantic asset type |
| Asset Kind | DTP, DTI, or DTA |
| Status | Lifecycle status |
| Context | Representation context |
| DTP Reference | Prototype reference where applicable |
| Physical Reference | Physical association where applicable |
| State Reference | Current state reference |
| Model Reference | Behavior/model reference |
| Provenance | Origin information |
| Version | Registry/model version |
| Created | Creation information |
| Updated | Last material update |

The actual storage structure is implementation-specific.

---

## 11. Asset Kind

The registry shall distinguish at least:

- DTP
- DTI
- DTA

~~~text
Virtual Asset
     |
 +---+---+---+
 |       |   |
DTP     DTI  DTA
~~~

This distinction is foundational to the Phase 1 model.

---

## 12. DTP Registry Entry

A DTP registry entry identifies a reusable Digital Twin Prototype.

It should provide references to:

- prototype identity
- asset type
- version
- definition
- lifecycle status
- validation status
- applicable relationships
- applicable interfaces
- applicable behavior models

---

## 13. DTI Registry Entry

A DTI registry entry identifies a specific Digital Twin Instance.

It should provide references to:

- DTI identity
- asset type
- originating DTP
- DTP version
- current status
- representation context
- state
- relationships
- physical mapping where applicable

---

## 14. DTA Registry Entry

A DTA registry entry identifies a Digital Twin Aggregate.

It should provide references to:

- aggregate identity
- aggregate type
- purpose
- membership context
- lifecycle status
- aggregate state
- aggregate behavior where applicable
- provenance

Membership shall be managed through relationships rather than copied asset definitions.

---

## 15. Registry and Asset Identity

The registry shall preserve the identity semantics established by the Virtual Asset Model.

A registry identifier shall not be changed merely because:

- state changed
- configuration changed
- model changed
- physical asset was replaced
- execution context changed

---

## 16. Identity Continuity

Identity continuity shall be preserved when the logical asset remains the same.

~~~text
DTI-001
  |
  +--> Model v1
  +--> Model v2
  +--> Physical Asset A
  +--> Physical Asset B
~~~

The registry shall preserve the DTI identity across such controlled evolution.

---

## 17. Registry Identifier

A registry identifier should be:

- unique
- stable
- technology-neutral
- persistent
- non-ambiguous

The identifier format shall not depend on a particular vendor or platform.

---

## 18. Human-Readable Name

A virtual asset may also have a human-readable name.

The name is not necessarily the identity.

~~~text
Asset ID: DTI-001
Name: North Field Soil Sensor
~~~

Names may change while the underlying identity remains stable.

---

## 19. Asset Type Reference

Each registry entry shall identify the logical asset type.

Examples include:

- farm
- field
- crop state
- soil state
- water availability
- environmental state
- sensor
- actuator
- simulation environment
- experiment

---

## 20. Asset Category Reference

The registry may classify assets using broader categories such as:

- physical
- environmental
- informational
- sensing
- control
- operational
- computational
- experimental
- aggregate

Classification shall remain semantic.

---

## 21. Lifecycle Status

Each registry entry shall expose an applicable lifecycle status.

Possible statuses include:

- defined
- registered
- initialized
- active
- suspended
- archived
- destroyed

Status transitions shall follow the lifecycle rules of the Virtual Asset Model.

---

## 22. Registry Registration Lifecycle

The registry lifecycle may be represented as:

~~~text
Candidate
   |
   v
Defined
   |
   v
Registered
   |
   v
Validated
   |
   v
Active
   |
   +--> Suspended
   |
   +--> Archived
   |
   v
Destroyed
~~~

Not every asset must traverse every state.

---

## 23. Registration

Registration creates an authoritative registry reference for a virtual asset.

Registration shall establish at least:

- identity
- type
- asset kind
- initial status
- provenance

Additional information may be added subsequently.

---

## 24. Registration Validation

A registration should be validated before being considered active.

Validation may confirm:

- identity uniqueness
- valid asset type
- valid asset kind
- DTP compatibility
- required metadata
- valid references
- provenance availability

---

## 25. Duplicate Identity Detection

The registry shall detect duplicate virtual asset identities.

A duplicate identity is an integrity violation unless the duplication is explicitly scoped to separate identity domains.

---

## 26. Duplicate Representation Detection

Multiple representations of one logical asset shall not automatically be treated as duplicate assets.

The registry should distinguish:

~~~text
Same Logical Asset
       |
       +--> Operational Representation
       +--> Simulation Representation
       +--> QAI Representation
~~~

Representation context provides the distinction.

---

## 27. Registry Discovery

The registry shall support logical discovery of assets.

Discovery may use:

- asset ID
- asset type
- asset kind
- status
- representation context
- aggregate membership
- physical association
- capability
- provenance

---

## 28. Asset Lookup

A registry lookup should return sufficient references to locate the applicable virtual asset and its related artifacts.

Lookup shall not require knowledge of the underlying storage technology.

---

## 29. Asset Filtering

Registry queries may filter assets by:

- type
- kind
- lifecycle status
- execution context
- representation context
- physical association
- aggregate membership
- validation state

---

## 30. Registry Consistency

The registry shall remain consistent with the Virtual Asset Model.

Consistency requires that:

- registered identities are valid
- asset types are recognized
- DTP references resolve
- relationship references resolve
- mapping references resolve
- lifecycle states are valid
- representation contexts are distinguishable
- historical records remain traceable
---
## 31. Registry and DTP Version

Every DTP registry entry shall identify the applicable DTP version.

The version reference shall allow a DTI to remain traceable to the definition from which it was instantiated.

---

## 32. Registry and DTI Instantiation

When a DTI is created from a DTP, the registry shall record the originating DTP reference.

~~~text
DTP v1
   |
   | instantiate
   v
DTI-001
   |
   +--> DTP Reference: v1
~~~

This relationship shall remain traceable throughout the DTI lifecycle.

---

## 33. Registry and DTA Membership

The registry may expose aggregate membership references for discovery.

However, membership semantics shall remain owned by the relationship model and relationship registry.

The registry shall not duplicate relationship semantics.

---

## 34. Registry and Physical Association

A registry entry may reference a physical asset association.

~~~text
Virtual Asset Registry
        |
        v
Virtual Asset
        |
        v
Physical Association
        |
        v
Physical Asset
~~~

The physical association shall be managed through the mapping architecture.

---

## 35. Registry and Virtual-First Assets

The registry shall support virtual assets that have no physical association.

A missing physical mapping shall not make a virtual-first asset invalid.

Examples include:

- simulation assets
- planned assets
- experimental assets
- QAI representations
- virtual design assets

---

## 36. Registry and Physical-First Assets

The registry shall also support virtual representations created for already-existing physical assets.

The registration process may therefore begin from either:

- a logical design
- a virtual model
- a physical asset discovery process

---

## 37. Representation Context

The registry should identify the applicable representation context.

Examples include:

- operational
- simulation
- emulation
- Digital Twin
- QAI
- experiment
- maintenance
- planning

Context prevents different representations from being incorrectly treated as unrelated assets or duplicate assets.

---

## 38. Representation Context Identifier

Where multiple representations exist, a representation context should have an identifiable reference.

~~~text
DTI-001
 |
 +--> Operational
 |
 +--> Simulation
 |
 +--> QAI Experiment
~~~

The same DTI identity may participate in multiple controlled contexts.

---

## 39. Registry and Execution Mode

The registry may expose the execution modes in which an asset can participate.

Possible modes include:

- virtualization
- simulation
- emulation
- physical
- closed-loop CPS

Execution mode is contextual and does not redefine the asset identity.

---

## 40. Registry and Simulation

Simulation-capable assets may contain references to:

- simulation model
- scenario
- initial state
- parameter set
- execution context

The registry does not execute the simulation.

---

## 41. Registry and Emulation

Emulation-capable assets may contain references to:

- emulation model
- interface
- behavior definition
- configuration
- execution context

The registry does not implement the emulator.

---

## 42. Registry and Digital Twin

Digital Twin-capable assets may contain references to:

- physical association
- synchronization context
- current state
- state authority
- observation source
- control relationship

The registry does not itself perform synchronization.

---

## 43. Registry and CPS

CPS participation may be represented through references to:

- sensing
- computation
- decision
- actuation
- feedback
- synchronization

The registry provides asset identity and discovery for these functions.

---

## 44. Registry and QAI

A virtual asset may participate in QAI processing.

The registry may reference:

- QAI representation
- QAI experiment
- problem representation
- execution context
- result evidence

The registry shall not implement QAI execution.

---

## 45. Registry and Classical Execution

Virtual assets shall remain discoverable by classical execution paths.

This allows the same virtual-world assets to support the Phase 0 classical baseline.

---

## 46. Registry and Matched QAI Evaluation

The registry should support discovery of the same asset context for both:

- classical baseline execution
- QAI evaluation

This supports controlled and fair comparison.

---

## 47. Registry and Advantage Gate

Where QAI evaluation is applicable, the registry may reference the Advantage Gate evaluation context.

The relationship may identify:

- asset context
- problem context
- evaluation status
- evidence

The Advantage Gate itself remains a separate capability.

---

## 48. Registry and Fallback

A registered asset shall remain usable when QAI execution is unavailable or unsuitable, where a classical fallback exists.

~~~text
Virtual Asset
     |
     +--> QAI Path
     |
     +--> Classical Fallback
~~~

The registry should not encode the fallback algorithm itself.

---

## 49. Registry and State

A registry entry may reference the current virtual state.

The detailed state structure is defined by:

`state/08_virtual_state_model.md`

The registry should normally reference state rather than duplicate the complete state representation.

---

## 50. Current State Reference

A registry record may identify:

- current state reference
- state version
- state timestamp
- state validity
- state authority

This enables consumers to locate the applicable state.

---

## 51. Registry and State History

Historical state shall remain accessible through appropriate state or evidence mechanisms.

The registry may provide references to historical state without becoming the historical state store itself.

---

## 52. Registry and State Freshness

Where current state is operationally important, the registry may expose state freshness information.

Examples:

- current
- recent
- stale
- unknown

Freshness should not be inferred solely from registry update time.

---

## 53. Registry and State Authority

Where state authority is relevant, the registry may reference the applicable authority.

Possible authorities include:

- physical observation
- simulation
- emulation
- derived computation
- external source
- human input

---

## 54. Registry and State Uncertainty

The registry may expose whether the current asset state has known uncertainty.

Detailed uncertainty semantics belong to the state model.

---

## 55. Registry and Behavior Model

A virtual asset may reference one or more behavior models.

The registry may expose:

- behavior model identity
- version
- purpose
- validity
- execution context

The model itself remains separately managed.

---

## 56. Registry and Interface References

A virtual asset may reference applicable logical interfaces.

These references enable discovery of how the asset can participate in workflows.

The registry does not implement the interfaces.

---

## 57. Registry and Workflow References

A registry entry may identify workflows in which an asset can participate.

Examples include:

- asset creation
- initialization
- sensing
- decision
- actuation
- state transition
- simulation
- synchronization

Workflow semantics remain outside the registry.

---

## 58. Registry and Scenario References

The registry may support discovery of scenarios involving a virtual asset.

Scenario references may identify:

- scenario identity
- purpose
- applicability
- asset role
- execution context

---

## 59. Registry and Provenance

Each registered asset should maintain provenance references appropriate to its origin.

Provenance may identify:

- source
- creator
- registration event
- originating DTP
- imported source
- physical discovery
- transformation
- model

---

## 60. Registry Provenance Chain

A provenance chain may be represented as:

~~~text
Source
  |
  v
Asset Definition
  |
  v
DTP
  |
  v
DTI
  |
  v
State / Model / Representation
~~~

This supports traceability from origin to operational representation.

---

## 61. Registry Creation Metadata

A registry entry should retain creation metadata where required.

This may include:

- creation timestamp
- creating process
- creator or authority
- originating context
- provenance reference

---

## 62. Registry Modification Metadata

Material registry changes should retain:

- modification timestamp
- modifying process
- change reference
- previous version
- reason where required

---

## 63. Registry Versioning

Registry records should support controlled versioning where material changes require historical traceability.

Versioning may apply to:

- metadata
- classification
- status
- references
- representation context
- DTP association

---

## 64. Registry Record History

Registry history shall allow reconstruction of material changes.

~~~text
Registry Record
      |
      +--> Version 1
      +--> Version 2
      +--> Version 3
~~~

Historical records should not be silently overwritten where auditability is required.

---

## 65. Registry Change Classification

Changes may be classified as:

- informational
- operational
- lifecycle
- structural
- relationship-affecting
- mapping-affecting
- model-affecting
- governance-affecting

Classification supports impact assessment.

---

## 66. Registry Change Propagation

A material registry change may affect:

- relationships
- physical mappings
- state
- behavior
- interfaces
- workflows
- scenarios
- validation
- QAI evaluation

Impact shall be assessed before dependent artifacts are considered valid.

---

## 67. Registry Dependency References

A registry entry may reference dependent artifacts.

Examples include:

- DTP
- state model
- behavior model
- interface
- workflow
- scenario
- mapping
- evidence

Dependencies should be explicit where they affect correctness.

---

## 68. Registry Integrity

Registry integrity requires:

- unique identities
- valid types
- valid kinds
- valid status
- resolvable references
- valid lifecycle
- traceable provenance

Integrity failures shall be identified and handled.

---

## 69. Orphan Asset Detection

The registry should identify assets that have unresolved required dependencies.

Examples include:

- DTI without required DTP reference
- DTA without valid aggregate semantics
- asset with unresolved model
- asset with invalid required mapping
- asset with broken references

---

## 70. Dangling Reference Detection

The registry should detect references to:

- deleted assets
- obsolete identities
- invalid DTPs
- unavailable models
- invalid mappings
- nonexistent relationships

---

## 71. Stale Asset Detection

An asset may become stale when its representation has not been updated within its expected operational context.

Staleness shall be distinguishable from inactivity.

---

## 72. Inactive Asset Detection

An inactive asset may be intentionally unavailable.

Examples include:

- planned assets
- suspended assets
- archived assets
- assets awaiting physical deployment

The registry shall distinguish intentional inactivity from integrity failure.

---

## 73. Registry Reconciliation

Registry reconciliation may compare registry information against:

- asset representations
- relationship registry
- mapping registry
- state information
- model references

Discrepancies shall be identified for resolution.

---

## 74. Asset Identity Reconciliation

Identity reconciliation may detect cases where:

- two IDs appear to represent one logical asset
- one logical asset has conflicting identifiers
- a physical mapping points to an incorrect virtual identity

Resolution shall preserve historical traceability.

---

## 75. DTP Reconciliation

The registry should verify that every DTI requiring a DTP has a valid and compatible DTP reference.

---

## 76. DTA Reconciliation

The registry should verify that DTA identities remain consistent with their membership and aggregate definitions.

---

## 77. Relationship Reconciliation

Relationship consistency shall be coordinated with:

`relationships/05_asset_relationship_registry.md`

The Virtual Asset Registry should reference relationships rather than becoming their authoritative store.

---

## 78. Mapping Reconciliation

Physical and virtual mappings shall be coordinated with:

`mappings/06_asset_twin_mapping.md`

and:

`mappings/07_physical_virtual_mapping.md`

The registry may expose mapping status for discovery.

---

## 79. Registry and Asset Replacement

When a physical asset is replaced, the registry should preserve the virtual asset identity where logical continuity remains valid.

~~~text
DTI-001
 |
 +--> Physical A [historical]
 |
 +--> Physical B [current]
~~~

---

## 80. Registry and Virtual Representation Replacement

When a virtual representation is replaced, the registry should preserve logical asset identity where semantic continuity remains valid.

The new representation should be traceable to the previous one.

---

## 81. Registry and Model Replacement

A behavior or simulation model may be replaced without changing the asset identity.

The registry should retain the current model reference and historical model references where required.

---

## 82. Registry and Aggregate Reorganization

DTA membership may change without changing member identities.

The registry may expose current aggregate membership while historical membership remains traceable through relationship history.

---

## 83. Registry and Asset Assignment

Assets may be assigned to operational or experimental contexts.

Assignment should be distinguishable from:

- physical association
- aggregate membership
- ownership
- execution

---

## 84. Registry and Ownership

Where applicable, the registry may reference ownership or administrative authority.

Ownership shall not be inferred from technical hosting location.

---

## 85. Registry and Operational Authority

Operational authority may be different from ownership.

The registry may therefore reference:

- owner
- operator
- administrator
- controlling authority

where required.

---

## 86. Registry and Governance

Governance metadata may include:

- approval status
- policy reference
- compliance classification
- retention requirement
- review status
- responsible authority

The registry records these references but does not replace governance systems.

---

## 87. Registry and Security

Security-related metadata may include:

- access classification
- authorization requirements
- trust status
- integrity status

Technical enforcement remains outside the registry.

---

## 88. Registry and Data Sovereignty

Where applicable, the registry should identify sovereignty constraints associated with an asset or its data.

Examples include:

- jurisdiction
- data domain
- transfer restriction
- processing restriction

---

## 89. Registry and Quality

The registry may expose quality status such as:

- validated
- conditionally validated
- unvalidated
- deprecated
- failed validation

Quality details remain in the appropriate validation and evidence artifacts.

---

## 90. Registry and Safety

Safety-relevant assets may carry references to:

- safety classification
- operating constraints
- approval requirements
- emergency state
- safe fallback

The registry does not itself enforce safety controls.

---

## 91. Registry and Human Oversight

Where human oversight is required, the registry may identify:

- responsible role
- approval requirement
- review state
- escalation requirement

This supports controlled human-AI operation.

---

## 92. Registry and Resource Context

A registry entry may reference resource requirements or constraints.

Examples include:

- compute
- network
- energy
- budget
- quantum resources

Resource management remains a separate capability.

---

## 93. Registry and Three-Path Architecture

Virtual assets may participate across:

~~~text
              Virtual Asset
                   |
       +-----------+-----------+
       |           |           |
 Computational  Sensing   Communication
    Path          Path        Path
~~~

The registry provides common asset identity across the three paths.

---

## 94. Registry and Computational Path

Computational assets may include:

- decision engines
- models
- simulation components
- QAI representations
- classical execution components

The registry provides references to these assets.

---

## 95. Registry and Sensing Path

Sensing-related virtual assets may include:

- sensor representations
- observations
- environmental representations
- derived sensing contexts

The registry maintains their identity and relationships.

---

## 96. Registry and Communication Path

Communication-related virtual assets may include:

- endpoints
- communication representations
- network contexts
- communication capabilities

The registry shall remain independent of the specific networking technology.

---

## 97. Registry and Data Sources

Virtual assets may reference external data sources.

Examples include:

- IoT
- satellite
- market
- enterprise
- environmental
- historical

External data-source semantics remain governed by the applicable interface and governance architecture.

---

## 98. Registry and Agriculture Data

The registry should support discovery of virtual assets associated with agriculture-specific data.

Examples include:

- soil
- crop
- weather
- water
- irrigation
- field
- farm

---

## 99. Registry and Enterprise Integration

Virtual assets may be referenced by enterprise systems through controlled interfaces.

The registry shall not become an ERP or enterprise master-data system.

---

## 100. Registry and External Integration

External systems may query or interact with registry-controlled virtual asset identities through approved interfaces.

External access shall respect governance, security, and sovereignty constraints.

---
## 101. Registry and Virtual Asset Lifecycle

The registry shall track the lifecycle state of each registered virtual asset.

Lifecycle state shall remain consistent with the lifecycle semantics defined in:

`assets/02_virtual_asset_model.md`

---

## 102. Lifecycle Transition Control

Registry lifecycle transitions shall be controlled.

~~~text
Defined
   |
Registered
   |
Validated
   |
Active
   |
+--+--------+
|           |
Suspended  Archived
|
+--> Active

Archived
   |
Destroyed
~~~

Only permitted transitions shall be accepted.

---

## 103. Registration Status

Registration status shall distinguish whether an asset:

- has been defined
- has been registered
- has been validated
- is active
- is suspended
- is archived
- has been destroyed

Registration status shall not be confused with operational health.

---

## 104. Validation Status

The registry may maintain a validation status independently from lifecycle status.

Possible values include:

- not validated
- validation pending
- validated
- conditionally validated
- validation failed
- validation expired

---

## 105. Operational Status

Where required, operational status may identify whether an asset is:

- operational
- degraded
- unavailable
- unknown

Operational status shall remain distinct from lifecycle status.

---

## 106. Registry Availability

The registry should provide sufficient information to determine whether a virtual asset is currently discoverable and eligible for applicable workflows.

An asset may be registered but temporarily unavailable for execution.

---

## 107. Registry Eligibility

An asset may be considered eligible for a workflow only when applicable conditions are satisfied.

Eligibility may depend on:

- lifecycle status
- validation status
- state validity
- configuration
- relationships
- mappings
- resources
- safety
- governance

---

## 108. Registry Capability References

The registry may identify capabilities associated with a virtual asset.

Examples include:

- sensing
- simulation
- emulation
- control
- computation
- QAI
- monitoring

Capabilities shall be references or classifications, not embedded implementations.

---

## 109. Registry Role

An asset may have one or more logical roles within the Digital Farm.

Examples include:

- sensor
- actuator
- controller
- resource
- environment
- decision context
- aggregate
- experiment participant

Roles may vary by execution context.

---

## 110. Context-Dependent Role

The same asset may perform different roles in different contexts.

~~~text
Virtual Asset
      |
      +--> Operational Role
      |
      +--> Simulation Role
      |
      +--> Experiment Role
      |
      +--> QAI Role
~~~

Role context shall not unnecessarily create duplicate asset identities.

---

## 111. Registry Search by Role

Registry discovery may support role-based lookup.

Examples:

- all sensor assets
- all irrigation actuators
- all simulation assets
- all QAI-compatible assets
- all assets requiring human approval

---

## 112. Registry Search by Capability

Capability-based discovery may identify assets suitable for a workflow.

For example:

~~~text
Workflow Requirement
        |
        v
Capability Search
        |
        v
Eligible Virtual Assets
~~~

The registry shall return references rather than directly executing the workflow.

---

## 113. Registry Search by State

Where appropriate, assets may be discovered according to current state.

Examples include:

- soil moisture below threshold
- actuator available
- sensor stale
- pump suspended
- field active

State filtering shall use the authoritative state source.

---

## 114. Registry Search by Geography

Agriculture assets may be discoverable using spatial context.

Examples include:

- farm
- field
- irrigation zone
- sensor location
- actuator location

Spatial semantics shall remain compatible with the broader geospatial architecture.

---

## 115. Registry Search by Time

The registry may support temporal discovery.

Examples include:

- active at a given time
- associated during a time interval
- member of an aggregate during a period
- representation valid during a scenario

Historical queries shall use historical validity rather than current status alone.

---

## 116. Registry Search by Aggregate

The registry may identify all virtual assets belonging to a specified DTA.

~~~text
DTA
 |
 +--> Asset A
 +--> Asset B
 +--> Asset C
~~~

Membership shall be resolved through the relationship model.

---

## 117. Registry Search by Physical Association

The registry may identify virtual assets associated with physical assets.

Examples include:

- all virtual sensors mapped to physical sensors
- all DTIs mapped to irrigation equipment
- all physical assets without a virtual representation

---

## 118. Registry Search for Unmapped Assets

The registry should support identification of:

- virtual assets without physical mappings
- physical assets without virtual representations
- pending mappings
- invalid mappings

This supports the virtual-first and physical-first lifecycle.

---

## 119. Registry Search for Multiple Representations

The registry may identify all representations associated with a logical asset.

~~~text
Logical Asset
     |
     +--> DTI
           |
           +--> Operational
           +--> Simulation
           +--> Emulation
           +--> QAI
~~~

This supports controlled representation selection.

---

## 120. Representation Selection

A consuming workflow may select a representation according to:

- purpose
- execution mode
- scenario
- model
- state authority
- resource availability
- validation status

The registry provides discovery information but does not make domain decisions unless explicitly assigned that responsibility.

---

## 121. Registry and Representation Authority

When multiple representations exist, the registry should identify their applicable authority or purpose.

For example:

~~~text
Asset
 |
 +--> Operational Representation [live context]
 +--> Simulation Representation [what-if]
 +--> QAI Representation [optimization]
~~~

The representations shall remain semantically distinguishable.

---

## 122. Registry and Representation Validity

Each representation may have a validity interval or validity condition.

This allows the registry to distinguish:

- current representation
- historical representation
- experimental representation
- deprecated representation

---

## 123. Registry and Representation Status

Representation status may include:

- defined
- available
- active
- suspended
- deprecated
- archived

This status is distinct from the lifecycle status of the underlying logical asset.

---

## 124. Registry and Experimental Assets

Experimental virtual assets may be registered without becoming operational assets.

They should be clearly identified as experimental.

This prevents experimental state or models from being mistaken for authoritative operational state.

---

## 125. Registry and Scenario Isolation

Scenario-specific asset representations shall be isolated from authoritative operational representations.

~~~text
Operational Asset State
        |
        +--> Scenario A
        +--> Scenario B
        +--> Scenario C
~~~

Scenario execution shall not modify operational state unless explicitly authorized.

---

## 126. Registry and Snapshot References

The registry may reference asset snapshots used for:

- simulation initialization
- experiment reproduction
- historical analysis
- rollback
- comparison

Snapshots shall retain their applicable timestamp and provenance.

---

## 127. Registry and Clone References

Where an asset is cloned for experimentation, the registry should preserve:

- original asset reference
- clone identity
- clone purpose
- creation context
- relationship between original and clone

The clone shall have an independent identity.

---

## 128. Registry and Asset Lineage

Asset lineage shall capture meaningful relationships between successive or derived representations.

~~~text
Source Asset
     |
     +--> Derived Asset
            |
            +--> Experimental Variant
~~~

Lineage shall not be confused with ordinary aggregate membership.

---

## 129. Registry and Derived Assets

A derived virtual asset may be created from another asset or set of assets.

Examples include:

- derived environmental state
- calculated irrigation zone
- aggregated resource state
- analytical representation

The derivation relationship shall remain identifiable.

---

## 130. Registry and Aggregated Assets

Aggregated assets shall be distinguishable from derived assets.

A DTA represents composition or aggregation.

A derived asset represents information or state produced through a defined derivation process.

These concepts shall not be conflated.

---

## 131. Registry and Asset Composition

Composition shall be represented through references to constituent assets.

The registry shall not duplicate constituent asset records inside the aggregate record.

---

## 132. Registry and Nested Aggregates

A DTA may contain other DTAs where semantically valid.

~~~text
Farm DTA
 |
 +--> Field DTA
       |
       +--> Irrigation DTA
             |
             +--> Pump DTI
             +--> Sensor DTI
~~~

Nested aggregation shall preserve independent identities.

---

## 133. Registry and Aggregate Cardinality

Aggregate membership may have cardinality constraints.

Examples include:

- one required controller
- multiple sensors
- zero or more optional actuators

Cardinality semantics remain part of the relationship model.

---

## 134. Registry and Multiple Relationships

The same pair of virtual assets may have multiple relationships.

~~~text
Asset A
  |\
  | +--> monitors --> Asset B
  |
  +----> maintains --> Asset B
  |
  +----> depends-on --> Asset B
~~~

The registry shall not collapse these distinct relationships into a single generic reference.

---

## 135. Registry and Relationship Identity

Relationship identities shall be maintained by the relationship registry.

The Virtual Asset Registry may reference relationship identifiers for discovery.

---

## 136. Registry and Relationship Direction

Where direction is relevant, registry consumers shall be able to determine relationship direction through the relationship model.

---

## 137. Registry and Relationship Lifecycle

Relationship status may affect asset eligibility or discoverability.

For example, a virtual asset may no longer be considered part of an active aggregate after a membership relationship is deactivated.

---

## 138. Registry and Mapping Identity

Physical-virtual mapping shall have its own identity.

The registry may reference mapping identifiers without replacing mapping semantics.

---

## 139. Registry and Mapping Status

Where physical association is exposed, the registry may show:

- mapped
- pending
- suspended
- replaced
- disassociated
- invalid

---

## 140. Registry and Physical Replacement

A replacement physical asset shall result in controlled mapping updates.

The registry shall preserve historical association references where required.

---

## 141. Registry and Synchronization

Synchronization status may be exposed for assets participating in Digital Twin operation.

Possible states include:

- synchronized
- partially synchronized
- stale
- conflicting
- unavailable
- unknown

The registry does not perform synchronization.

---

## 142. Registry and Synchronization Authority

The registry may reference the authority responsible for the current representation state.

Authority may be:

- physical system
- sensor
- simulation
- emulation
- derived model
- human
- external system

---

## 143. Registry and Event References

Material lifecycle or representation events may be referenced from registry entries.

Examples include:

- registration
- activation
- association
- state update
- replacement
- suspension
- archival

---

## 144. Registry Event History

Event history should support reconstruction of important registry transitions.

~~~text
Asset Created
     |
Registered
     |
Activated
     |
Mapped
     |
Updated
     |
Replaced
~~~

Events should retain their applicable timestamps and provenance.

---

## 145. Registry and Audit Trail

Material registry actions should be auditable where required.

Audit information may include:

- actor
- action
- asset
- timestamp
- previous state
- resulting state
- reason
- authorization context

---

## 146. Registry and Reproducibility

The registry should provide enough historical references to reconstruct the applicable asset context for a defined experiment or operational event.

---

## 147. Registry and Evidence

Registry records may reference evidence associated with:

- validation
- lifecycle changes
- mappings
- synchronization
- experiments
- QAI evaluation
- safety decisions

---

## 148. Registry and KPI Context

Virtual assets may be referenced by KPI measurements.

The registry provides asset identity so measurements can be associated with the correct logical entity.

---

## 149. Registry and Value Context

Value measurements may reference virtual assets.

Examples include:

- water savings by field
- irrigation efficiency by zone
- resource utilization by asset
- QAI advantage by problem context

---

## 150. Registry and MVV

Minimum Viable Value measurements shall use stable virtual asset identities wherever asset-level measurement is required.

This preserves comparability across pilot executions.

---

## 151. Registry and Tolerance

Tolerance criteria may be associated with asset state or behavior.

The registry may reference the applicable tolerance definition without embedding the evaluation algorithm.

---

## 152. Registry and QAI Evaluation Identity

QAI evaluation records should reference the virtual asset or asset context used in the experiment.

This allows results to be traced back to:

- asset
- state
- scenario
- representation
- problem
- execution

---

## 153. Registry and Experiment Identity

Experimental execution should use explicit experiment identifiers.

A registry entry may reference experiments in which the asset participated.

---

## 154. Registry and Scenario Identity

Scenario references shall identify the controlled operating condition under which an asset was evaluated.

This is important for comparing asset behavior across conditions.

---

## 155. Registry and Execution Identity

Where execution evidence is required, asset participation may reference an execution identifier.

This connects:

~~~text
Asset
  |
Scenario
  |
Experiment
  |
Execution
  |
Evidence
~~~

---

## 156. Registry and Three-Path Traceability

Asset participation across the three paths should remain traceable.

~~~text
Virtual Asset
    |
    +--> Sensing
    |
    +--> Computational
    |
    +--> Communication
~~~

This supports end-to-end Digital Farm analysis.

---

## 157. Registry and End-to-End Traceability

A complete traceability chain may be:

~~~text
Asset
  |
State
  |
Observation
  |
Context
  |
Decision
  |
Command
  |
State Transition
  |
Feedback
~~~

The registry provides stable asset identities across this chain.

---

## 158. Registry and Sense-Process-Decide-Act-Learn

The registry shall support the intelligence lifecycle by maintaining stable references to assets participating in:

- Sense
- Process
- Decide
- Act
- Learn

It does not implement the intelligence lifecycle.

---

## 159. Registry and Feedback

Assets participating in closed-loop operation shall retain stable identity across feedback cycles.

This enables state and decision history to be associated with the correct asset.

---

## 160. Registry and Learning

Learning processes may reference asset history, state, outcomes, and scenarios.

The registry provides identity and discovery context for those references.

---

## 161. Registry and Human-AI Decisions

Where human review or override occurs, asset identity shall remain explicit in the decision record.

This supports accountability and auditability.

---

## 162. Registry and Automation

Automated workflows may consume registry information to discover eligible assets.

Automation shall still respect:

- lifecycle status
- authorization
- safety
- governance
- state validity

---

## 163. Registry and Safety-Critical Selection

Safety-sensitive asset selection shall not rely solely on registry presence.

Additional validation shall confirm:

- current state
- authorization
- safety status
- operational availability
- applicable constraints

---

## 164. Registry and Error Handling

Registry errors shall be represented explicitly.

Examples include:

- duplicate identity
- missing asset
- invalid type
- broken reference
- invalid lifecycle
- stale mapping
- inconsistent status

---

## 165. Registry Recovery

Registry recovery shall preserve valid identities and historical traceability.

Recovery may use:

- persistent records
- snapshots
- event history
- backups
- reconciliation

---

## 166. Registry Backup

Where implemented persistently, registry data should be backed up according to applicable governance and operational requirements.

Backup mechanisms remain implementation-specific.

---

## 167. Registry Restore

A restored registry shall be reconciled against dependent asset, relationship, mapping, and state information before being considered authoritative.

---

## 168. Registry Availability and Resilience

The registry should support appropriate availability for its intended use.

Availability requirements shall differ between:

- development
- simulation
- experimentation
- pilot operation
- future production CPS

---

## 169. Registry Performance

Registry lookup performance shall be sufficient for the applicable execution context.

The architecture does not impose a specific latency target at this stage.

Performance requirements may be established later through operational and real-time requirements.

---

## 170. Registry Scalability

The logical registry shall scale through additional:

- asset instances
- DTP definitions
- aggregates
- relationships
- mappings
- representation contexts

Scaling shall not require changing the foundational registry semantics.

---

## 171. Registry Federation

Future federation may allow separate registries to exchange controlled asset references.

~~~text
Registry A
    |
    +--> Federated Reference
              |
              v
          Registry B
~~~

Federation shall respect identity, sovereignty, security, and governance boundaries.

---

## 172. Registry Sovereignty

A registry may contain assets belonging to different administrative or sovereignty domains.

Access and exchange shall remain policy-controlled.

---

## 173. Registry Interoperability

Registry information should be exchangeable through technology-neutral logical contracts.

Specific serialization formats or protocols may be selected during implementation.

---

## 174. Registry Portability

The registry model shall remain portable across technical implementations.

Migration between platforms should preserve:

- asset identities
- asset kinds
- lifecycle history
- references
- provenance
- version information

---

## 175. Registry Vendor Neutrality

No vendor-specific registry mechanism shall become a mandatory architectural dependency.

Vendor implementations may be mapped to this logical registry model.

---

## 176. Registry Technology Neutrality

The registry shall remain independent of:

- graph databases
- relational databases
- cloud platforms
- Digital Twin platforms
- IoT platforms
- simulation platforms

---

## 177. Registry Implementation Separation

The logical registry shall be separated from its technical realization.

~~~text
Logical Registry Model
        |
        v
Technical Registry Implementation
        |
        +--> Storage
        +--> Services
        +--> Interfaces
        +--> Security
~~~

---

## 178. Registry and Digital Farm Boundary

The Digital Farm layer may use the registry for service management and orchestration.

The registry does not replace Digital Farm management functions.

---

## 179. Registry and Technical Realization Boundary

Technical components may consume registry information to locate assets.

They remain responsible for their own technical realization.

---

## 180. Registry Non-Duplication

The registry shall not duplicate:

- detailed asset behavior
- complete state stores
- relationship semantics
- mapping semantics
- simulation engines
- emulation engines
- Digital Twin synchronization
- QAI execution

It provides controlled identity and references.

---

## 181. Registry Completion Principle

The registry is complete when every required Phase 1 virtual asset can be:

- uniquely identified
- classified
- registered
- discovered
- lifecycle-managed
- related
- mapped where applicable
- associated with state
- associated with models
- traced to provenance

---

## 182. Minimum Pilot Registry

The minimum irrigation pilot registry shall be capable of registering virtual representations for:

~~~text
Farm
Field / Irrigation Zone
Crop State
Soil State
Water Availability
Environmental State
Sensors
Irrigation Actuator
Simulation Environment
Experiment Context
~~~

---

## 183. Minimum DTP Registry

The pilot shall support DTP entries for the reusable asset types required by the minimum callable use case.

Each DTP shall have:

- identity
- type
- version
- definition
- validation state

---

## 184. Minimum DTI Registry

The pilot shall support DTI entries for the actual virtual assets participating in the callable workflow.

Each DTI shall have:

- identity
- type
- DTP reference
- lifecycle status
- state reference
- context

---

## 185. Minimum DTA Registry

The pilot shall support DTA entries where aggregation is required.

At minimum, the architecture may represent:

- Farm Aggregate
- Irrigation System Aggregate

---

## 186. Minimum Mapping References

The pilot registry shall support mapping references even though physical assets are optional.

This preserves future compatibility with:

- sensors
- actuators
- controllers
- communication devices

---

## 187. Minimum Relationship References

The pilot registry shall support references to relationships such as:

- contains
- monitors
- controls
- belongs-to
- depends-on

The relationship registry remains authoritative for their semantics.

---

## 188. Minimum State References

The pilot registry shall support references to current virtual state.

At minimum, state references should permit identification of:

- state
- timestamp
- validity
- source

---

## 189. Minimum Provenance

Every pilot registry entry should identify its origin sufficiently to support traceability.

At minimum:

- creation context
- originating definition
- registration event

---

## 190. Minimum Validation

Every active pilot registry entry should pass applicable validation for:

- identity
- type
- lifecycle
- required references
- provenance

---

## 191. Registry Quality Gate

Before an asset is used in an important workflow, registry quality should be checked.

~~~text
Registered
    |
    v
Validated
    |
    v
Eligible
    |
    v
Workflow Participation
~~~

---

## 192. Registry Formal Review

The registry shall be reviewed for:

- identity integrity
- DTP/DTI/DTA separation
- lifecycle correctness
- representation handling
- relationship references
- mapping references
- state references
- provenance
- traceability
- non-duplication

---

## 193. Registry Review Questions

The formal review shall ask:

1. Can every Phase 0 pilot asset be registered?
2. Can DTP, DTI, and DTA be distinguished?
3. Can virtual-first assets be registered?
4. Can physical-first assets be registered?
5. Can multiple representations be distinguished?
6. Can asset identity remain stable through replacement?
7. Can relationships be referenced without duplication?
8. Can mappings be referenced without duplication?
9. Can state be referenced without duplicating the state model?
10. Can the registry support simulation, emulation, Digital Twin, CPS, classical, and QAI contexts?

---

## 194. Registry Review Decision

The registry review shall produce one of:

~~~text
READY
REVISE
DEFER
~~~

The decision shall be recorded in:

`review/15_formal_review.md`

---

## 195. Registry Readiness Condition

The registry is READY when:

- required assets are identifiable
- required asset kinds are supported
- lifecycle is valid
- references resolve
- representations are distinguishable
- physical mapping is supported
- state references are valid
- provenance is sufficient
- non-duplication is maintained

---

## 196. Registry Revision Condition

The registry shall be REVISED when:

- identities are ambiguous
- asset types are incomplete
- lifecycle semantics are inconsistent
- required references cannot be resolved
- representation contexts are conflated
- registry responsibilities duplicate another architectural component

---

## 197. Registry Defer Condition

The registry may be DEFERRED only when an unresolved external dependency prevents completion without requiring a redesign of the registry model.

The dependency shall be documented.

---

## 198. Phase 1 Handoff

Once accepted, the Virtual Asset Registry provides the controlled asset identity foundation for:

- relationship registry
- asset-twin mapping
- physical-virtual mapping
- virtual state
- behavior models
- virtual interfaces
- virtual workflows
- virtual scenarios
- execution

---

## 199. Final Registry Principle

The Virtual Asset Registry shall provide one stable logical identity and discovery foundation for the Digital Farm virtual world.

~~~text
                 Virtual Asset Registry
                          |
          +---------------+---------------+
          |               |               |
         DTP             DTI             DTA
          |               |               |
          +---------------+---------------+
                          |
             Relationships / Mappings
                          |
          +---------------+---------------+
          |               |               |
       Simulation      Emulation       Digital Twin
          |               |               |
          +---------------+---------------+
                          |
                     CPS / QAI
~~~

The registry identifies and connects virtual assets without becoming the implementation of the technical capabilities that consume them.

---

## 200. Registry Status

The Phase 1 Virtual Asset Registry baseline shall be considered complete when the registry model, lifecycle, identity, discovery, references, validation, traceability, and formal review requirements defined in this document are satisfied.

**Status: COMPLETE — PHASE 1 VIRTUAL ASSET REGISTRY BASELINE**

---
