# 07 Physical–Virtual Mapping

## 1. Purpose

The Physical–Virtual Mapping model defines the controlled correspondence between a physical asset or physical-world entity and its virtual representation within the Digital Farm architecture.

It establishes how physical assets may be represented, referenced, replaced, observed, synchronized, simulated, emulated, and eventually incorporated into Digital Twin and CPS operation.

The model is technology-neutral and does not prescribe a particular IoT platform, Digital Twin engine, database, cloud provider, protocol, hardware vendor, or implementation framework.

The primary principle is:

> Physical–Virtual Mapping establishes correspondence; it does not by itself constitute a Digital Twin, synchronization mechanism, control mechanism, or physical asset.

## 2. Architectural Position

Physical–Virtual Mapping is a Phase 1 virtualization artifact.

It sits at the boundary between:

- physical-world identity and virtual-world identity,
- physical asset realization and virtual asset realization,
- observation and representation,
- simulation/emulation and physical integration,
- Digital Farm management and technical realization.

~~~text
Physical World
     |
     v
Physical Asset / Entity
     |
     | Physical–Virtual Mapping
     v
Virtual Asset / Representation
     |
     +--> Simulation
     +--> Emulation
     +--> Digital Twin
     +--> CPS
     +--> QAI Intelligence
~~~

The mapping is therefore a controlled architectural boundary rather than an implementation component tied to a particular technology.

## 3. Primary Objective

The primary objective is to ensure that every physical-to-virtual correspondence is:

- identifiable,
- explicit,
- contextual,
- traceable,
- versioned,
- validated,
- governed,
- replaceable,
- auditable,
- uncertainty-aware,
- compatible with multiple representations,
- compatible with future physical integration.

The model must remain valid whether the physical asset exists today, existed historically, is planned for future deployment, or is currently represented only through simulation or emulation.

## 4. Phase 1 Context

Phase 1 establishes a virtualized agriculture environment before requiring physical infrastructure.

Therefore, Physical–Virtual Mapping must support both:

1. physical-first realization, and
2. virtual-first realization.

The pilot may operate entirely on a laptop while retaining the same logical mapping concepts required for later integration with:

- sensors,
- IoT devices,
- actuators,
- machines,
- irrigation equipment,
- environmental infrastructure,
- field equipment,
- satellite observations,
- external data sources.

## 5. Mapping Is First-Class

Physical–Virtual Mapping is a first-class architectural concept.

It is not merely an attribute embedded inside an asset record.

A mapping has its own:

- identity,
- endpoints,
- type,
- direction,
- cardinality,
- validity,
- context,
- status,
- provenance,
- confidence,
- evidence,
- quality,
- history,
- lifecycle.

This allows the correspondence itself to be governed independently from the assets it connects.

## 6. Mapping Identity

Every Physical–Virtual Mapping should have a unique logical mapping identity.

Example:

~~~text
Physical–Virtual Mapping
------------------------
Mapping ID       : PVM-0001
Physical Asset   : PA-001
Virtual Asset    : VA-001
Mapping Type     : REPRESENTATIONAL
Context          : PILOT
Status           : ACTIVE
Confidence       : HIGH
Validity         : CURRENT
~~~

The mapping identity must remain distinct from:

- physical asset identity,
- logical asset identity,
- virtual asset identity,
- asset relationship identity,
- observation identity,
- synchronization identity.

## 7. Endpoint Identity

A mapping connects two independently identifiable endpoints.

Minimum endpoint concepts are:

- physical endpoint,
- virtual endpoint.

The endpoints must be resolvable through their respective registries or identity mechanisms.

The mapping must not depend on positional assumptions such as:

> the first physical asset corresponds to the first virtual asset.

Explicit identity is required.

## 8. Physical Asset Identity

A physical asset identity identifies an entity in the physical world.

Examples include:

- irrigation valve,
- pump,
- field,
- greenhouse,
- soil sensor,
- weather station,
- water tank,
- tractor,
- crop plot,
- physical actuator.

A physical identity may be assigned before the asset is operational.

It may also remain historically valid after physical decommissioning.

## 9. Virtual Asset Identity

A virtual asset identity identifies the corresponding representation in the virtual environment.

The virtual asset may represent:

- a physical asset,
- an aggregate of physical assets,
- a derived representation,
- a simulation entity,
- an emulated entity,
- an operational Digital Twin representation,
- an experimental representation.

The virtual identity must not be assumed to be identical to the physical identity.

## 10. Three Identity Layers

The architecture distinguishes three important identity layers:

~~~text
Physical Identity
      |
      | correspondence
      v
Logical Asset Identity
      |
      | representation
      v
Virtual Asset / Twin Identity
~~~

These identities may sometimes share the same human-readable name, but they remain logically distinct.

This separation prevents physical identity, logical identity, and technical representation identity from becoming inseparable.

## 11. Physical Identity Versus Logical Identity

A physical asset may have a physical-world identifier while the Digital Farm assigns a separate logical asset identifier.

Example:

~~~text
Physical Identifier : SENSOR-17
Logical Asset ID    : ASSET-SOIL-017
~~~

The logical identity represents the asset within the Digital Farm information model.

The physical identifier represents the physical-world identity.

A mapping may associate them without collapsing the two identities.

## 12. Logical Identity Versus Virtual Identity

The logical asset identity and virtual representation identity are also distinct.

A single logical asset may have multiple virtual representations.

For example:

~~~text
Logical Asset: FIELD-001
        |
        +--> Simulation Representation
        |
        +--> Emulation Representation
        |
        +--> Operational Twin Representation
        |
        +--> Experimental Representation
~~~

Therefore, a virtual identity may identify a particular representation context rather than the entire conceptual asset.

## 13. Mapping Does Not Create the Physical Asset

Creating a mapping does not create a physical asset.

The physical asset may:

- already exist,
- be planned,
- be temporarily unavailable,
- have been decommissioned,
- exist only historically,
- exist outside the current Digital Farm boundary.

The mapping records correspondence.

It does not manufacture or physically instantiate the endpoint.

## 14. Mapping Does Not Create the Virtual Asset

Creating a mapping does not automatically create the virtual asset.

The virtual representation must have its own lifecycle.

A mapping may therefore be:

- proposed before virtual creation,
- pending while virtual creation occurs,
- validated after both endpoints exist,
- suspended if the representation becomes unavailable.

This preserves lifecycle independence.

## 15. Physical-First Scenario

In a physical-first scenario, the physical asset exists before its virtual representation.

Example:

~~~text
Physical Pump
     |
     | discovered / registered
     v
Physical Asset Registry
     |
     | mapping
     v
Virtual Pump
~~~

The mapping can therefore be established after physical discovery and virtual modeling.

This is expected for later physical integration.

## 16. Virtual-First Scenario

In a virtual-first scenario, the virtual asset exists before the physical asset.

Example:

~~~text
Virtual Irrigation Valve
        |
        | planned physical realization
        v
Physical Valve
~~~

The physical endpoint may initially be absent.

The mapping can therefore exist in a planned or pending state.

## 17. No Mandatory 1:1 Assumption

The architecture must never assume that:

> one physical asset = one virtual asset.

Real systems frequently require:

- multiple representations,
- aggregation,
- decomposition,
- derived models,
- scenario-specific representations,
- subsystem representations.

Therefore mapping cardinality is explicitly modeled.

## 18. Supported Cardinalities

The Physical–Virtual Mapping model supports:

- one-to-one,
- one-to-many,
- many-to-one,
- many-to-many,
- zero-to-one,
- zero-to-many.

Cardinality is evaluated within a defined context.

~~~text
Physical Side              Virtual Side

1 -------------------------- 1
1 -------------------------- *
* -------------------------- 1
* -------------------------- *
0 -------------------------- 1
0 -------------------------- *
~~~

The meaning of the cardinality must be explicit for each mapping context.

## 19. One Physical to One Virtual

The simplest mapping is:

~~~text
Physical Asset A
       |
       | mapping
       v
Virtual Asset A
~~~

This may be appropriate for a simple physical component with one primary virtual representation.

It is valid but is not the universal architecture rule.

## 20. One Physical to Many Virtual Representations

A physical asset may have multiple virtual representations.

Example:

~~~text
             +--> Simulation Model
             |
Physical Pump+--> Emulation Model
             |
             +--> Operational Twin
             |
             +--> Maintenance Model
~~~

Each representation may serve a different purpose.

The mapping must identify the representation context.

## 21. Many Physical to One Virtual Representation

Multiple physical assets may be represented by a single virtual aggregate.

Example:

~~~text
Pump A ----\
Pump B -----+----> Virtual Pumping System
Pump C ----/
~~~

This is useful where the virtual representation models a functional subsystem rather than individual physical components.

The aggregation must be explicit.

## 22. Many Physical to Many Virtual

Complex systems may contain many-to-many correspondence.

Example:

~~~text
Physical Assets
   |      |      |
   +------+------+----+
          |
          v
   Multiple Virtual
   Representations
~~~

Different virtual models may use different subsets, aggregates, or transformations of physical assets.

The mapping registry must preserve these relationships independently.

## 23. Zero-to-One Mapping

A physical asset may have zero or one virtual representation within a specified context.

For example:

- newly installed equipment,
- legacy equipment,
- unmodeled infrastructure.

The absence of a virtual endpoint must be representable rather than treated as an error by default.

## 24. Virtual-Only Asset

A virtual asset may exist without a physical counterpart.

Examples:

- planned irrigation equipment,
- hypothetical crop field,
- simulation-only actuator,
- optimization scenario,
- experimental asset.

Such an asset remains valid within its representation context.

Its lack of physical realization must be explicit.

## 25. Physical-Only Asset

A physical asset may exist without a virtual representation.

Examples:

- legacy sensor,
- manually operated valve,
- newly discovered field equipment,
- temporary physical infrastructure.

The architecture must support physical assets that have not yet been virtualized.

This prevents forced creation of meaningless virtual objects.

## 26. Mapping Status

Mapping status represents the lifecycle condition of the correspondence.

Minimum statuses include:

- proposed,
- registered,
- validating,
- validated,
- active,
- suspended,
- archived,
- terminated.

Status must not be confused with the lifecycle status of either endpoint.

## 27. Proposed Mapping

A proposed mapping indicates an intended correspondence that has not yet been formally registered or validated.

Example:

~~~text
Planned Physical Pump
        |
        | proposed mapping
        v
Planned Virtual Pump
~~~

Proposal may originate from:

- design,
- planning,
- migration,
- asset onboarding,
- Digital Twin creation,
- scenario development.

## 28. Registered Mapping

A registered mapping has been formally entered into the mapping registry.

Registration establishes:

- mapping identity,
- endpoints,
- mapping type,
- context,
- provenance,
- initial status.

Registration does not necessarily imply validation.

## 29. Validating Mapping

A mapping enters validating state when evidence is being assessed.

Validation may consider:

- endpoint identity,
- asset type,
- physical evidence,
- virtual representation,
- configuration,
- location,
- temporal validity,
- source authority,
- measurement evidence.

The mapping remains distinguishable from a validated mapping.

## 30. Validated Mapping

A validated mapping has passed the defined validation criteria for its context.

Validation may establish that:

- endpoints correspond,
- identifiers are correct,
- representation scope is understood,
- evidence is sufficient,
- constraints are satisfied.

Validation does not necessarily mean that real-time synchronization is active.

## 31. Active Mapping

An active mapping is currently accepted for operational use within its defined context.

It may support:

- observation interpretation,
- state correspondence,
- model association,
- operational workflows,
- Digital Twin operation,
- CPS integration,
- QAI decision processes.

Its operational use remains subject to governance and safety constraints.

## 32. Suspended Mapping

A mapping may be suspended without being deleted.

Reasons include:

- physical asset unavailable,
- virtual representation unavailable,
- synchronization failure,
- identity ambiguity,
- quality degradation,
- safety concern,
- maintenance,
- governance hold.

Suspension preserves historical traceability.

## 33. Archived Mapping

An archived mapping represents a correspondence that is no longer operational but remains historically significant.

Examples:

- retired equipment,
- replaced sensor,
- historical Digital Twin,
- obsolete representation.

Archived records should remain queryable according to governance policy.

## 34. Terminated Mapping

A terminated mapping represents a correspondence that has formally ended.

Termination may result from:

- asset destruction,
- permanent replacement,
- representation retirement,
- incorrect original mapping,
- system boundary change.

Termination must preserve sufficient history to explain why the mapping ended.

## 35. Mapping Lifecycle

A generic lifecycle is:

~~~text
Proposed
   |
   v
Registered
   |
   v
Validating
   |
   v
Validated
   |
   v
Active
   |
   +--> Suspended
   |       |
   |       v
   |     Active
   |
   v
Archived
   |
   v
Terminated
~~~

Lifecycle transitions must be controlled and auditable.

## 36. Mapping Type

Mapping type describes the semantic nature of correspondence.

Possible types include:

- direct,
- representational,
- aggregated,
- composed,
- derived,
- simulation,
- emulation,
- operational,
- experimental,
- historical.

The mapping type is independent of lifecycle status.

## 37. Direct Mapping

A direct mapping indicates that a virtual representation corresponds directly to a physical endpoint.

Example:

~~~text
Physical Soil Sensor
        |
        | direct mapping
        v
Virtual Soil Sensor
~~~

Direct does not imply perfect synchronization.

It only describes correspondence.

## 38. Representational Mapping

Representational mapping associates a physical asset with a virtual representation that models selected properties or behaviors.

The virtual representation may contain:

- state,
- behavior,
- configuration,
- geometry,
- performance,
- environmental context.

It may therefore represent more than a simple identifier.

## 39. Aggregated Mapping

Aggregated mapping connects multiple physical assets to an aggregate virtual representation.

Example:

~~~text
Sensor A ---\
Sensor B ----+--> Irrigation Zone Virtual Model
Valve A ----/
~~~

The virtual entity represents the aggregate rather than one individual physical object.

## 40. Composed Mapping

A composed mapping associates a virtual system with multiple physical components that together form a functional composition.

For example:

~~~text
Pump + Valve + Pipe + Sensor
             |
             v
     Virtual Irrigation System
~~~

Composition must preserve the underlying physical component identities.

## 41. Derived Mapping

A derived mapping represents a virtual entity whose correspondence is derived from one or more physical entities and transformations.

Examples:

- estimated soil moisture state,
- derived crop stress,
- calculated water demand,
- virtual field condition.

Derived mapping must record its derivation lineage.

## 42. Simulation Mapping

Simulation mapping associates a physical asset identity or intended physical asset with a simulation representation.

The simulation representation may operate without live physical data.

Therefore:

> Simulation mapping does not imply operational Digital Twin status.

## 43. Emulation Mapping

Emulation mapping associates a physical asset or planned physical function with an emulated representation.

The emulated endpoint behaves according to defined interfaces or behavior models but does not require the actual physical asset.

This is particularly important for the Phase 1 laptop-based pilot.

## 44. Operational Mapping

Operational mapping is used when the virtual representation participates in an operational environment associated with a real physical asset.

Operational mapping requires stronger evidence and governance than a purely hypothetical mapping.

It may participate in:

- monitoring,
- decision support,
- maintenance,
- control workflows.

## 45. Experimental Mapping

Experimental mapping is used for research, testing, or what-if scenarios.

It may intentionally diverge from operational reality.

Experimental status must therefore be explicit to prevent accidental use as an authoritative operational representation.

## 46. Historical Mapping

Historical mapping preserves a previous physical-to-virtual correspondence.

It supports:

- audit,
- historical reconstruction,
- maintenance analysis,
- model evolution,
- asset replacement analysis,
- incident investigation.

Historical mappings must not be silently treated as current.

## 47. Representation Context

Every mapping should identify its representation context.

Examples:

- pilot,
- simulation,
- emulation,
- operational,
- experimental,
- maintenance,
- training,
- scenario,
- historical,
- Digital Twin,
- CPS.

The same physical asset may have different mappings in different contexts.

## 48. Context-Specific Validity

Mapping validity is contextual.

A mapping may be valid for simulation but invalid for operational control.

Example:

~~~text
Physical Asset
      |
      +--> Simulation Mapping: VALID
      |
      +--> Operational Mapping: NOT ACTIVE
~~~

This prevents a representation created for experimentation from being accidentally treated as authoritative operational truth.

## 49. Mapping Authority

The mapping should identify the authority responsible for asserting or approving the correspondence.

Possible authorities include:

- asset registry,
- field operations,
- engineering system,
- Digital Farm management,
- external authoritative source,
- verified sensor/device identity,
- approved Digital Twin process.

Authority is metadata about trust and governance.

## 50. Mapping Evidence

Mapping evidence supports the assertion that two endpoints correspond.

Evidence may include:

- physical identifier,
- installation record,
- location,
- device metadata,
- calibration record,
- engineering documentation,
- configuration,
- observation history,
- operator confirmation,
- authoritative external source.

Evidence should be traceable rather than represented only as an unexplained confidence value.

## 51. Mapping Confidence

Mapping confidence represents the current confidence that the correspondence is correct.

Example scale:

~~~text
HIGH
MEDIUM
LOW
UNKNOWN
~~~

Confidence should be contextual and evidence-based.

It must not be treated as equivalent to validation status.

## 52. Confidence Versus Validation

Validation and confidence are different concepts.

A mapping may be:

- validated with medium confidence,
- unvalidated with high preliminary confidence,
- validated and high confidence,
- suspended because confidence degraded.

Validation answers:

> Has the defined validation procedure passed?

Confidence answers:

> How strongly do current evidence and conditions support the correspondence?

## 53. Mapping Quality

Mapping quality captures the quality of the correspondence record and supporting evidence.

Relevant dimensions include:

- completeness,
- correctness,
- consistency,
- freshness,
- provenance,
- identity quality,
- spatial accuracy,
- temporal accuracy.

Quality must be evaluated separately from endpoint operational health.

## 54. Mapping Freshness

Mapping freshness indicates how current the mapping information is.

A mapping can become stale even if both endpoints continue to exist.

Examples:

- physical asset moved,
- sensor replaced,
- virtual representation changed,
- identifier changed,
- representation retired,
- system boundary changed.

Freshness therefore requires explicit consideration.

## 55. Temporal Validity

Mappings may have temporal validity.

Example:

~~~text
Mapping M1
Valid From : T1
Valid To   : T2
~~~

This allows the architecture to represent historical and changing physical environments without overwriting previous states.

## 56. Spatial Validity

Mappings may also have spatial validity.

Relevant information may include:

- field,
- zone,
- coordinates,
- facility,
- region,
- containment,
- physical installation location.

Spatial information may change over time and therefore should not automatically be treated as permanent identity.

## 57. Physical Location Changes

A physical asset may move while retaining its identity.

Example:

~~~text
T1: Pump A -> Field 1
T2: Pump A -> Field 2
~~~

The mapping must preserve identity continuity while allowing location correspondence to change.

A location change does not automatically imply creation of a new physical asset.

## 58. Virtual Location Representation

The virtual representation may maintain:

- current location,
- historical location,
- planned location,
- modeled location,
- scenario-specific location.

The physical and virtual location records should therefore remain distinct but linked through mapping and provenance.

## 59. Physical Replacement

Physical replacement is a critical lifecycle event.

Example:

~~~text
Old Physical Sensor
        |
        X  mapping terminated
        |
New Physical Sensor
        |
        | new mapping
        v
Existing Virtual Representation
~~~

The virtual representation may continue while its physical counterpart changes.

## 60. Identity Continuity Through Replacement

Replacement must preserve continuity where the conceptual asset remains the same.

For example:

- sensor hardware replaced,
- valve replaced,
- pump replaced.

The architecture must distinguish:

- physical instance identity,
- logical asset identity,
- virtual representation identity.

This permits continuity without incorrectly claiming that the physical object itself is unchanged.

## 61. Replacement Mapping

A replacement event may produce:

- termination of the old mapping,
- creation of a new mapping,
- lineage between mappings,
- continuity of logical asset identity where appropriate.

Example:

~~~text
PVM-001
Old Sensor ---> Virtual Sensor
     |
     | replaced by
     v
PVM-002
New Sensor ---> Virtual Sensor
~~~

The historical mapping remains available.

## 62. Physical Decommissioning

When a physical asset is decommissioned:

- the physical identity remains historically meaningful,
- the active mapping may be suspended or terminated,
- the virtual representation may be archived,
- a replacement may inherit logical continuity if appropriate.

Decommissioning must not erase historical correspondence.

## 63. Virtual Replacement

A virtual representation may be replaced while the physical asset remains unchanged.

Example:

~~~text
Physical Pump
     |
     +--> Old Virtual Model
     |
     +--> New Virtual Model
~~~

This may occur when:

- a better model is introduced,
- simulation fidelity improves,
- Digital Twin architecture changes,
- an experimental model is promoted.

Mapping lineage must capture the transition.

## 64. Mapping Lineage

Mapping lineage records how mappings evolve.

Lineage may connect:

- original mapping,
- replacement mapping,
- derived mapping,
- migrated mapping,
- corrected mapping.

This supports reproducibility and auditability.

## 65. Mapping History

Mapping history records important lifecycle and semantic changes.

History should capture events such as:

- creation,
- registration,
- validation,
- activation,
- suspension,
- reassignment,
- replacement,
- archival,
- termination.

Historical records should not be silently overwritten.

## 66. Mapping Version

Mapping definitions should be versioned where material changes occur.

A version may change when:

- endpoint identity changes,
- mapping type changes,
- cardinality changes,
- validity changes,
- representation context changes,
- authority changes.

Versioning supports controlled evolution.

## 67. Immutable Historical Evidence

Historical evidence should remain immutable according to governance policy.

This is especially important for:

- safety investigations,
- model validation,
- Digital Twin audit,
- physical asset replacement,
- QAI experiment reproducibility,
- regulatory evidence.

Current state and historical evidence should therefore be separately represented.

## 68. Physical Observation Relationship

A physical asset may generate observations.

For example:

~~~text
Physical Soil Sensor
        |
        +--> Observation
        |
        v
Virtual Soil Sensor
~~~

The mapping identifies correspondence.

The observation represents evidence about physical state.

These are different concepts.

## 69. Mapping Does Not Equal Observation

A mapping does not itself provide a measurement.

For example:

> Sensor A maps to Virtual Sensor A

does not mean:

> Sensor A currently measures soil moisture = 32%.

The latter requires an observation.

This distinction prevents identity correspondence from being confused with data acquisition.

## 70. Mapping Does Not Equal Synchronization

A mapping does not imply synchronization.

A mapping may exist while:

- data is delayed,
- synchronization is paused,
- sensor is offline,
- virtual state is stale,
- communication is unavailable.

Therefore:

> Mapping establishes correspondence; synchronization establishes state/data alignment.

## 71. Mapping to Synchronization

When synchronization exists, it should reference the mapping.

~~~text
Physical Asset
      |
      | Physical–Virtual Mapping
      v
Virtual Asset
      |
      | Synchronization Mechanism
      v
Virtual State
~~~

This preserves architectural separation.

Synchronization belongs to the technical realization layer rather than being embedded into the mapping concept itself.

## 72. Digital Twin Boundary

A Physical–Virtual Mapping is necessary for many Digital Twin relationships but is not sufficient by itself to constitute a Digital Twin.

A Digital Twin generally requires additional properties such as:

- meaningful virtual representation,
- persistent correspondence,
- state exchange,
- temporal continuity,
- defined synchronization,
- context,
- lifecycle,
- evidence.

Therefore:

~~~text
Physical–Virtual Mapping
          |
          +--> may support Digital Twin
          |
          +--> does NOT automatically equal Digital Twin
~~~

## 73. Simulation Boundary

Simulation represents modeled behavior or scenarios.

It may use mapping to identify the physical asset being represented, but simulation can operate without the physical asset being present.

Therefore:

> Simulation mapping identifies correspondence; simulation executes a model.

The two concepts remain separate.

## 74. Emulation Boundary

Emulation represents behavior through an executable substitute.

For the Phase 1 pilot:

~~~text
Virtual Farm
    |
    +--> Emulated Sensor
    +--> Emulated Actuator
    +--> Emulated Environment
~~~

These may have mappings corresponding to future or hypothetical physical assets.

This enables development without physical hardware.

## 75. Pilot Boundary

The pilot must remain executable within:

- laptop,
- software,
- simulation,
- emulation,
- virtual assets.

Physical integration is not required for the pilot.

However, the mapping model must preserve the future physical integration boundary.

## 76. Laptop-Only Mapping

A laptop-only implementation may contain mappings such as:

~~~text
Virtual Soil Sensor
        |
        | planned physical mapping
        v
Future Physical Soil Sensor
~~~

or:

~~~text
Emulated Pump
      |
      | representation mapping
      v
Virtual Pump Asset
~~~

The architecture therefore remains physically extensible without requiring physical equipment.

## 77. Emulated Physical Asset

An emulated asset may behave like a physical endpoint.

Example:

~~~text
Virtual Physical Asset
        |
        v
Emulated Sensor / Actuator
        |
        v
Simulation Environment
~~~

The emulated endpoint must be clearly identified as emulated.

It must not be silently presented as physical evidence.

## 78. Simulated Physical Environment

The pilot may simulate physical conditions such as:

- soil moisture,
- rainfall,
- temperature,
- crop demand,
- water availability,
- irrigation response.

Mappings can connect these modeled entities to their virtual representations.

Simulation provenance must make the modeled origin explicit.

## 79. Physical Integration Later

Later physical integration should reuse the same mapping concepts.

Example:

~~~text
PHASE 1
Virtual / Simulated / Emulated
        |
        v
PHASE 2
Physical Sensors / IoT / Actuators
        |
        v
DIGITAL TWIN / CPS
        |
        v
Operational QAI
~~~

The mapping architecture therefore becomes the continuity mechanism between virtual-first and physical-first realization.

## 80. Sensor Mapping

Sensor mapping associates a physical sensing endpoint with a virtual sensing representation.

Example:

~~~text
Physical Soil Sensor
        |
        | mapping
        v
Virtual Soil Sensor
        |
        v
Soil Moisture State
~~~

Sensor mapping should preserve:

- sensor identity,
- location,
- sensing capability,
- observation provenance,
- calibration context,
- mapping validity.

## 81. Actuator Mapping

Actuator mapping associates a physical actuator with its virtual representation.

Example:

~~~text
Virtual Irrigation Valve
        |
        | mapping
        v
Physical Irrigation Valve
~~~

The mapping alone does not authorize actuation.

Actuation requires:

- command path,
- authorization,
- safety validation,
- appropriate governance,
- execution controls.

## 82. Sensor Versus Actuator Mapping

Sensor and actuator mappings have different operational semantics.

Sensor:

~~~text
Physical
   |
   | observation
   v
Virtual
~~~

Actuator:

~~~text
Virtual
   |
   | command
   v
Physical
~~~

The mapping model should preserve this directionality.

## 83. Bidirectional Mapping Context

Some assets require bidirectional correspondence.

Example:

~~~text
        Observation
Physical ----------> Virtual
   ^                   |
   |                   |
   +-------------------+
          Command
~~~

Even where both directions exist, observation and command remain separate technical flows.

A bidirectional mapping must not imply unrestricted physical control.

## 84. Observation Direction

Observation generally flows:

> physical → virtual.

Examples:

- soil moisture,
- temperature,
- pump state,
- valve position,
- tank level.

The mapping identifies which virtual representation the observation refers to.

## 85. Command Direction

Command generally flows:

> virtual → physical.

Examples:

- irrigation ON,
- valve OPEN,
- pump START.

Command direction must be explicitly governed.

The existence of a mapping does not create command authority.

## 86. No Implicit Physical Control

A fundamental rule is:

> Physical–Virtual Mapping must never implicitly authorize physical control.

Control requires separate:

- command interfaces,
- policy,
- authorization,
- safety controls,
- validation,
- operational governance.

This is especially important for autonomous QAI operation.

## 87. Safety-Critical Mapping

Mappings associated with safety-critical assets require stronger validation.

Examples:

- high-pressure irrigation,
- heavy machinery,
- electrical equipment,
- chemical delivery,
- water infrastructure.

The mapping should therefore support:

- safety classification,
- validation authority,
- confidence threshold,
- approval state,
- control restrictions.

## 88. Mapping and Governance

Physical–Virtual Mapping participates in Digital Farm governance.

Governance may define:

- who can create mappings,
- who can approve mappings,
- validation requirements,
- acceptable confidence,
- retention rules,
- archival rules,
- safety restrictions,
- change-control requirements.

The mapping itself remains a technical realization artifact, while governance defines the rules under which it may be used.

## 89. Mapping and Security

Mapping records may expose sensitive information about:

- physical infrastructure,
- equipment locations,
- operational relationships,
- communication endpoints,
- control assets.

Therefore mappings require appropriate:

- access control,
- authentication,
- authorization,
- auditability,
- integrity protection.

Security implementation belongs to the technical security layer.

## 90. Mapping and Data Sovereignty

Physical assets and their virtual representations may fall under different data boundaries.

For example:

~~~text
Physical Farm
      |
      v
Regional Virtual Representation
      |
      v
Controlled External Service
~~~

Mapping metadata must therefore support:

- ownership,
- jurisdiction,
- residency,
- sharing constraints,
- authority,
- permitted representation context.

Data sovereignty policies remain external governance constraints on the mapping.

## 91. Mapping and Provenance

Every important mapping assertion should have provenance.

Provenance may identify:

- who created it,
- when it was created,
- source system,
- evidence,
- validation method,
- approving authority,
- previous mapping.

Provenance allows mapping decisions to be reconstructed.

## 92. Mapping and Metrology

Where mapping involves measured physical properties, metrology matters.

Examples:

- calibrated sensor,
- field measurement,
- water flow measurement,
- temperature measurement.

Mapping does not perform calibration.

Instead, it references the calibration and measurement context needed to establish trustworthy correspondence and observations.

## 93. Mapping and Quality

Mapping quality must be monitored over time.

Possible indicators include:

- endpoint completeness,
- identity consistency,
- location consistency,
- provenance completeness,
- evidence quality,
- freshness,
- confidence.

Quality degradation may trigger:

- validation,
- reconciliation,
- suspension,
- replacement.

## 94. Mapping and Uncertainty

Physical-to-virtual correspondence can contain uncertainty.

Examples:

- uncertain physical identity,
- approximate location,
- ambiguous device assignment,
- delayed replacement record,
- incomplete installation information.

Uncertainty should therefore be explicitly represented rather than hidden.

## 95. Mapping and Confidence Propagation

Confidence associated with a mapping may influence downstream processes.

For example:

~~~text
Low Mapping Confidence
        |
        v
Lower Confidence in Corresponding State
        |
        v
More Conservative Decision
        |
        v
Human Review / Additional Observation
~~~

However, confidence propagation must follow explicit rules.

It must not be assumed automatically.

## 96. Mapping and Freshness Propagation

Stale mapping information can affect downstream state interpretation.

Example:

~~~text
Stale Mapping
      |
      v
Uncertain Asset Correspondence
      |
      v
Reduced State Confidence
      |
      v
Reduced Decision Confidence
~~~

The architecture should therefore distinguish:

- mapping freshness,
- observation freshness,
- virtual-state freshness.

They are related but not identical.

## 97. Mapping and Three Paths

Physical–Virtual Mapping intersects all three Digital Farm paths:

1. Sensing Path
2. Computational Path
3. Communication Path

~~~text
                 Physical–Virtual Mapping
                          |
          +---------------+---------------+
          |               |               |
       Sensing       Computational   Communication
          |               |               |
       Observe          Process          Transfer
          |               |               |
          +---------------+---------------+
                          |
                     Virtual State
~~~

The mapping does not replace any of these paths.

## 98. Sensing Path

The sensing path uses mapping to determine which physical sensing endpoint corresponds to which virtual representation.

Example:

~~~text
Physical Sensor
      |
      | mapping
      v
Virtual Sensor
      |
      v
Observation
      |
      v
Farm State
~~~

Mapping establishes identity correspondence; sensing provides measurements.

## 99. Computational Path

The computational path uses mapped virtual representations as computational entities.

Example:

~~~text
Physical Asset
      |
      | mapping
      v
Virtual Asset
      |
      v
QAI / Classical / HPC Processing
~~~

The computation may operate on:

- state,
- models,
- observations,
- scenarios,
- relationships.

Mapping identifies the represented entity.

## 100. Communication Path

The communication path transports information between endpoints.

Example:

~~~text
Physical Endpoint
      |
      | communication
      v
Technical Gateway
      |
      | mapping reference
      v
Virtual Endpoint
~~~

Mapping is not itself the communication channel.

## 101. Mapping Versus Communication

Communication answers:

> How does information move?

Mapping answers:

> Which physical and virtual entities correspond?

These concepts must remain separate.

A communication failure may leave a valid mapping intact.

## 102. Mapping Versus Computation

Computation answers:

> What processing is performed?

Mapping answers:

> What entity does the representation correspond to?

QAI, classical, or HPC computation may use mapped representations without changing the mapping itself.

## 103. Mapping Versus Sensing

Sensing answers:

> What is observed?

Mapping answers:

> Which entity does the observation refer to?

For example:

~~~text
Sensor S1
   |
   | mapping
   v
Virtual Sensor V1

Observation O1
   |
   +--> refers to V1
~~~

The mapping and observation remain separate records.

## 104. Mapping and Intelligence

The intelligence lifecycle:

> Sense → Process → Decide → Act → Learn

can use Physical–Virtual Mapping as an identity/context foundation.

~~~text
Physical World
      |
   Mapping
      v
Virtual World
      |
    Sense
      |
   Process
      |
    Decide
      |
     Act
      |
    Learn
~~~

Mapping therefore supports intelligence without becoming intelligence itself.

## 105. Mapping and Digital Farm Management

Digital Farm management may:

- define mapping requirements,
- coordinate onboarding,
- manage lifecycle,
- establish policies,
- assess readiness,
- manage service boundaries,
- coordinate changes.

Technical systems implement:

- identity resolution,
- synchronization,
- sensor ingestion,
- actuator communication,
- Digital Twin state management.

This preserves the managerial-versus-technical boundary.

## 106. Technical Realization Boundary

Physical–Virtual Mapping is a logical architecture artifact.

It does not prescribe:

- database technology,
- Digital Twin platform,
- IoT broker,
- device protocol,
- cloud service,
- programming language,
- AI framework.

Technical realization may occur in different systems while preserving the same logical model.

## 107. Mapping Registry Relationship

Mappings should be maintained in a controlled registry.

The registry provides:

- unique mapping identity,
- endpoint resolution,
- lifecycle,
- status,
- provenance,
- confidence,
- validity,
- version,
- history.

The registry is the realization of the mapping model, not a replacement for the model itself.

## 108. Asset–Twin Mapping Versus Physical–Virtual Mapping

`06_asset_twin_mapping.md` defines the broader logical correspondence between an asset and its virtual/twin representation.

`07_physical_virtual_mapping.md` specializes that concept to the **physical ↔ virtual boundary**.

The distinction is:

~~~text
Asset–Twin Mapping
      |
      +--> logical asset
      +--> virtual representation
      +--> twin contexts
      +--> broader correspondence

Physical–Virtual Mapping
      |
      +--> physical endpoint
      +--> virtual endpoint
      +--> physical realization
      +--> physical lifecycle
      +--> physical replacement
      +--> physical integration
~~~

The two models must remain consistent.

## 109. Relationship Registry Versus Mapping

An asset relationship describes a semantic relationship between entities.

A mapping describes correspondence between physical and virtual representations.

For example:

~~~text
Relationship:
Pump A --SUPPLIES--> Zone A

Mapping:
Physical Pump A --CORRESPONDS--> Virtual Pump A
~~~

Both may exist simultaneously.

Neither should replace the other.

## 110. Mapping Record — Minimum Logical Schema

A minimum logical mapping record should contain:

~~~text
Mapping ID
Physical Endpoint ID
Virtual Endpoint ID
Mapping Type
Direction
Cardinality
Representation Context
Status
Validity
Authority
Evidence Reference
Confidence
Quality
Freshness
Provenance
Created Time
Updated Time
Version
Lineage Reference
~~~

Additional attributes may be added without changing the core architecture.

## 111. Optional Mapping Metadata

Optional metadata may include:

- spatial coordinates,
- physical installation reference,
- device identifier,
- model identifier,
- calibration reference,
- synchronization reference,
- safety classification,
- governance classification,
- sovereignty classification,
- external identifiers,
- scenario identifier,
- experiment identifier,
- replacement reference.

Optional metadata should not become mandatory merely because a particular implementation needs it.

## 112. Mapping Constraints

Mapping constraints should be explicit.

Examples:

- endpoint identity must be resolvable,
- mapping type must be valid,
- cardinality must be consistent,
- representation context must be defined,
- status transition must be valid,
- evidence requirements must be satisfied,
- safety restrictions must be respected.

Constraints may vary by lifecycle stage and operational context.

## 113. Missing Physical Endpoint

A virtual representation may have no current physical endpoint.

The mapping may therefore reference:

- planned physical asset,
- future installation,
- hypothetical realization,
- absent physical counterpart.

The status and context must make this explicit.

Example:

~~~text
Virtual Valve
      |
      | pending physical mapping
      v
[Physical Endpoint Not Yet Available]
~~~

## 114. Missing Virtual Endpoint

A physical asset may exist without a virtual representation.

This condition should be represented explicitly.

Example:

~~~text
Physical Pump
      |
      | no active virtual representation
      v
[Virtual Endpoint Pending]
~~~

This supports staged onboarding.

## 115. Orphaned Mapping

An orphaned mapping occurs when one endpoint can no longer be resolved.

Examples:

- physical asset deleted from registry,
- virtual asset permanently removed,
- identity migration incomplete.

The mapping should not simply disappear.

It should be flagged for reconciliation.

## 116. Dangling Mapping

A dangling mapping references an endpoint that is technically present in a registry but cannot be correctly resolved or validated.

Example:

~~~text
Mapping
  |
  +--> Physical ID exists
  |
  +--> Virtual ID exists
  |
  +--> Correspondence cannot be validated
~~~

Dangling mappings may require suspension or corrective action.

## 117. Stale Mapping

A stale mapping is one whose information is no longer sufficiently current.

Potential causes:

- asset moved,
- equipment replaced,
- representation changed,
- identity migrated,
- physical installation modified,
- synchronization history outdated.

Staleness should be detected through defined freshness rules.

## 118. Conflicting Mapping

A conflict occurs when available evidence indicates incompatible correspondence.

Example:

~~~text
Physical Sensor S1
       |
       +----> Virtual Sensor V1
       |
       +----> Virtual Sensor V2
              ^
              |
        conflicting evidence
~~~

The system should not silently choose one mapping.

Conflict resolution must consider:

- authority,
- evidence,
- temporal validity,
- context,
- confidence,
- governance.

## 119. Context Resolves Apparent Conflict

Two mappings that appear conflicting may both be valid when they belong to different contexts.

Example:

~~~text
Physical Field F1
      |
      +--> Operational Twin
      |
      +--> Irrigation Simulation
      |
      +--> Research Scenario
~~~

These are not necessarily conflicting because each represents a different virtual context.

Therefore conflict detection must be context-aware.

## 120. End of Part 1

Part 1 establishes the complete foundational Physical–Virtual Mapping model for Phase 1.

The model establishes that:

- physical and virtual identities are distinct,
- correspondence is first-class,
- mapping is not the same as observation,
- mapping is not the same as synchronization,
- mapping is not the same as Digital Twin,
- mapping is not the same as communication,
- mapping does not authorize control,
- one-to-one correspondence is not mandatory,
- virtual-only and physical-only assets are valid,
- multiple representations are valid,
- replacement and continuity are explicit,
- simulation and emulation are supported,
- laptop-only pilot execution remains valid,
- later physical integration does not require architectural redesign,
- sensing, computational, and communication paths remain distinct,
- governance, security, sovereignty, quality, metrology, uncertainty, and provenance remain explicit,
- the mapping registry provides controlled instance-level realization.

The resulting architectural principle is:

> **Physical–Virtual Mapping is the controlled, contextual, versioned, and evidence-aware correspondence between physical-world entities and virtual representations, enabling a continuous architectural path from virtual-first experimentation to physical Digital Twin and CPS realization without conflating identity, representation, observation, synchronization, communication, computation, or control.**

**Status: COMPLETE — PHASE 1 PHYSICAL–VIRTUAL MAPPING BASELINE — PART 1 (SECTIONS 1–120)**
---
## 121. Mapping Reconciliation

Physical–Virtual Mapping requires reconciliation whenever evidence, identity, state, location, configuration, or lifecycle information indicates that the current correspondence may no longer be correct.

Reconciliation is the controlled process of comparing the mapping against authoritative information and determining whether the mapping should be:

- retained,
- corrected,
- suspended,
- replaced,
- archived,
- terminated.

Reconciliation must preserve the previous mapping history.

## 122. Reconciliation Inputs

Reconciliation may use evidence from:

- physical asset registries,
- virtual asset registries,
- installation records,
- sensor observations,
- device identity,
- engineering systems,
- maintenance records,
- Digital Twin state,
- operator confirmation,
- simulation or emulation configuration,
- external authoritative sources.

The source of each reconciliation decision should remain traceable.

## 123. Reconciliation Outcome

A reconciliation process should produce an explicit outcome.

~~~text
Mapping Under Review
        |
        v
Evidence Comparison
        |
   +----+----+
   |    |    |
   v    v    v
Valid  Correct  Conflict
   |    |       |
   v    v       v
Retain Update  Resolve
~~~

No reconciliation outcome should silently overwrite historical information.

## 124. Identity Resolution

Identity resolution determines whether the physical endpoint and virtual endpoint refer to the intended entities.

Resolution may use:

- unique identifiers,
- aliases,
- location,
- type,
- configuration,
- installation records,
- temporal evidence,
- authoritative registries.

Identity resolution is foundational because an incorrect identity correspondence can invalidate downstream state and decisions.

## 125. Identity Ambiguity

A mapping may become ambiguous when multiple physical or virtual entities appear to match the same identity evidence.

Example:

~~~text
Physical Candidate A ----\
Physical Candidate B -----+--> Mapping Candidate
Physical Candidate C ----/
~~~

The architecture must represent ambiguity explicitly rather than selecting an endpoint without evidence.

## 126. Identity Confidence

Identity confidence should reflect the strength of evidence supporting endpoint resolution.

Possible factors include:

- uniqueness,
- source authority,
- identifier consistency,
- spatial consistency,
- temporal consistency,
- configuration consistency.

Identity confidence may contribute to overall mapping confidence but should remain logically distinguishable.

## 127. Alias Management

Physical assets and virtual representations may have multiple names or identifiers.

Examples:

- manufacturer identifier,
- local farm identifier,
- enterprise identifier,
- Digital Farm identifier,
- device identifier,
- historical identifier.

Aliases should resolve to the appropriate canonical identity without creating duplicate assets.

## 128. External Identity Mapping

External systems may assign their own identities.

Example:

~~~text
External Device ID
        |
        | identity association
        v
Digital Farm Physical Asset ID
        |
        | Physical–Virtual Mapping
        v
Virtual Asset ID
~~~

External identity must remain distinguishable from the Digital Farm identity.

## 129. Identity Migration

Identity systems may change over time.

A migration must preserve:

- previous identity,
- new identity,
- migration date,
- authority,
- lineage,
- mapping continuity.

Identity migration must not be interpreted automatically as physical asset replacement.

## 130. Identity Correction

If an incorrect identity was previously assigned, the correction should preserve:

- original mapping,
- correction event,
- evidence,
- responsible authority,
- corrected identity,
- effective time.

The historical record must remain available for audit.

## 131. Mapping Cardinality Constraints

Cardinality constraints should be validated within context.

For example, a rule may permit:

~~~text
Physical Sensor
   |
   +--> Operational Twin
   +--> Simulation Twin
   +--> Maintenance Model
~~~

while another context may require only one active operational representation.

Therefore cardinality rules must be context-specific.

## 132. Representation Multiplicity

Multiple virtual representations of one physical asset are legitimate when their purposes differ.

Examples include:

- operational representation,
- simulation representation,
- maintenance representation,
- optimization representation,
- research representation.

The registry should distinguish these representations rather than treating them as duplicates.

## 133. Representation Selection

When multiple virtual representations exist, downstream processing must select the appropriate representation according to:

- context,
- purpose,
- lifecycle,
- authority,
- freshness,
- quality,
- execution mode.

Selection must not be based solely on the existence of a mapping.

## 134. Authoritative Representation

A context may designate one representation as authoritative.

For example:

~~~text
Physical Pump
     |
     +--> Operational Representation [AUTHORITATIVE]
     |
     +--> Simulation Representation
     |
     +--> Research Representation
~~~

Authority is contextual and does not imply that alternative representations are invalid.

## 135. Representation Promotion

A simulation or experimental representation may eventually be promoted to an operational role.

Promotion should require:

- validation,
- evidence,
- quality assessment,
- governance approval,
- compatibility assessment,
- lifecycle transition.

The mapping must be updated without losing its experimental history.

## 136. Representation Demotion

An operational representation may be demoted or suspended when evidence indicates that it no longer meets operational requirements.

Possible causes:

- degraded model quality,
- stale state,
- failed validation,
- replacement by a better representation,
- safety concern.

Demotion should preserve historical lineage.

## 137. Physical–Virtual Consistency

The mapping should support consistency checks between physical and virtual representations.

Checks may include:

- identity,
- type,
- location,
- configuration,
- lifecycle,
- capability,
- membership,
- operational status.

Consistency does not require the physical and virtual states to be identical at every instant.

## 138. State Correspondence

A mapping may provide the identity foundation for state correspondence.

Example:

~~~text
Physical Asset
      |
      | mapping
      v
Virtual Asset
      |
      | state correspondence
      v
Virtual State
~~~

State correspondence is a separate technical function.

## 139. State Mismatch

Physical and virtual states may temporarily differ.

Examples:

- delayed observation,
- communication outage,
- model prediction,
- actuator command in transit,
- sensor failure.

A state mismatch should therefore not automatically invalidate the mapping.

## 140. Mapping Versus State Divergence

The architecture distinguishes:

> correspondence validity

from:

> state synchronization quality.

A valid mapping may exist while virtual and physical states temporarily diverge.

This is essential for realistic Digital Twin operation.

## 141. Synchronization Status

Where synchronization is implemented, its status should be tracked separately.

Possible statuses include:

- synchronized,
- partially synchronized,
- delayed,
- unavailable,
- degraded,
- unknown.

The mapping status should not be automatically changed solely because synchronization is temporarily unavailable.

## 142. Synchronization Direction

Synchronization may be:

- physical-to-virtual,
- virtual-to-physical,
- bidirectional.

Example:

~~~text
Physical
   |
   | state / observation
   v
Virtual
   |
   | command / control
   v
Physical
~~~

The direction must be explicitly defined.

## 143. Synchronization Authority

Where conflicts occur between physical and virtual state, an authority model should determine which source is authoritative for the relevant property.

Examples:

- measured temperature → physical observation,
- planned irrigation schedule → virtual planning state,
- valve command → authorized control system,
- derived crop stress → computational model.

Authority is property- and context-specific.

## 144. Synchronization Conflict

A synchronization conflict occurs when different sources provide incompatible information.

Example:

~~~text
Physical Valve State : CLOSED
Virtual Valve State  : OPEN
             |
             v
       Conflict State
~~~

The conflict should be represented explicitly.

Resolution may require:

- additional observation,
- reconciliation,
- human review,
- technical recovery,
- safety intervention.

## 145. Conflict Resolution

Conflict resolution should consider:

- source authority,
- timestamp,
- provenance,
- confidence,
- measurement quality,
- communication status,
- safety classification,
- operating context.

No universal rule should be assumed for every asset type.

## 146. Mapping and Temporal Alignment

Physical and virtual representations may operate on different time scales.

For example:

- physical sensor reports every minute,
- simulation advances every second,
- optimization executes every hour.

Mapping remains stable while temporal processing differs.

## 147. Observation Timestamp

Observations associated with a mapping should retain their original timestamps.

This allows the system to distinguish:

- event time,
- observation time,
- ingestion time,
- processing time,
- synchronization time.

Mapping should not overwrite observation temporal semantics.

## 148. Mapping Effective Time

A mapping itself may have an effective time independent of when it was recorded.

Example:

~~~text
Recorded:    T5
Effective:   T2
~~~

This supports delayed registration and historical reconstruction.

## 149. Retroactive Mapping

A mapping may be created after the physical relationship existed.

For example, a legacy physical sensor may be discovered and later mapped to an existing virtual representation.

The mapping should preserve:

- discovery time,
- effective time,
- evidence,
- uncertainty,
- historical context.

## 150. Future-Dated Mapping

A mapping may be planned to become effective in the future.

Example:

~~~text
Current
  |
  v
Mapping Planned
  |
  v
Installation
  |
  v
Validation
  |
  v
Active
~~~

Future-dated mappings are particularly useful for virtual-first planning.

## 151. Mapping and Asset Lifecycle

Physical–Virtual Mapping must align with the lifecycle of both endpoints.

Possible physical lifecycle states include:

- planned,
- installed,
- commissioned,
- operational,
- maintenance,
- retired,
- decommissioned.

Possible virtual lifecycle states include:

- modeled,
- instantiated,
- active,
- suspended,
- archived,
- retired.

The mapping lifecycle connects these states without replacing them.

## 152. Lifecycle Independence

The physical and virtual endpoints may progress through lifecycle states independently.

Example:

~~~text
Physical Asset
Planned -> Installed -> Operational -> Retired

Virtual Asset
Modeled -> Active -> Updated -> Archived
~~~

The mapping must represent the correspondence across these differing lifecycles.

## 153. Commissioning

Physical commissioning may trigger mapping validation.

Typical evidence may include:

- installation confirmation,
- device identity,
- location,
- configuration,
- operational test.

Commissioning does not automatically make the mapping active if validation requirements remain incomplete.

## 154. Maintenance

During maintenance, the mapping may remain active or become temporarily suspended depending on policy.

Maintenance may affect:

- physical availability,
- observations,
- state freshness,
- control availability.

The mapping record should preserve the maintenance context where relevant.

## 155. Temporary Removal

A physical asset may be temporarily removed.

The architecture should distinguish:

- temporary absence,
- permanent decommissioning,
- replacement,
- relocation.

Temporary removal should not automatically terminate historical identity.

## 156. Physical Reinstallation

A reinstalled physical asset may retain its physical identity if the identity model defines it as the same asset instance.

If a new physical instance is introduced, a new physical identity may be required.

The mapping must follow the identity decision rather than assume continuity.

## 157. Asset Instance Replacement

Where an asset consists of replaceable components, mapping may operate at multiple levels.

Example:

~~~text
Physical Irrigation System
        |
        +--> Pump Instance
        +--> Valve Instance
        +--> Sensor Instance
        |
        v
Virtual Irrigation System
~~~

Replacement of one component need not replace the entire system mapping.

## 158. Component-Level Mapping

Mapping may therefore exist at:

- system level,
- subsystem level,
- component level,
- device level,
- sensor level,
- actuator level.

The granularity must be explicit.

## 159. Mapping Granularity

Mapping granularity determines what the correspondence means.

A system-level mapping may establish:

> this virtual system represents this physical system.

A component-level mapping may establish:

> this virtual component corresponds to this physical component.

Both can coexist.

## 160. Nested Mapping

Mappings may exist within hierarchical systems.

Example:

~~~text
Physical Farm
   |
   +--> Physical Irrigation System
           |
           +--> Physical Pump
           +--> Physical Valve
           +--> Physical Sensor

Virtual Farm
   |
   +--> Virtual Irrigation System
           |
           +--> Virtual Pump
           +--> Virtual Valve
           +--> Virtual Sensor
~~~

Nested mappings must remain consistent with asset relationships and composition.

## 161. Mapping and Aggregation Hierarchy

Aggregate virtual representations may correspond to physical aggregates.

For example:

- farm,
- field,
- irrigation zone,
- equipment group.

Mapping must preserve aggregate semantics rather than falsely implying one-to-one physical correspondence.

## 162. Mapping and Decomposition

A physical system may map to multiple virtual components.

Example:

~~~text
Physical Irrigation System
             |
             +--> Virtual Pump
             +--> Virtual Valve
             +--> Virtual Pipe
             +--> Virtual Sensor
~~~

Decomposition must be explicitly modeled.

## 163. Mapping and Composition Consistency

If a virtual aggregate is mapped to a physical aggregate, membership should remain consistent with the relevant asset and relationship registries.

Changes in membership may require mapping review.

## 164. Membership Change

If a physical component is added or removed from an aggregate, the mapping may remain valid while its composition changes.

The change should be versioned and traceable.

## 165. Mapping and Spatial Hierarchy

Agricultural physical assets often exist within spatial hierarchy:

~~~text
Farm
 |
 +--> Field
       |
       +--> Zone
             |
             +--> Sensor
             +--> Valve
             +--> Crop Area
~~~

Virtual representations should be able to preserve corresponding hierarchy.

Mapping does not replace spatial relationships.

## 166. Mapping and Geospatial Reference

A mapping may reference geospatial information such as:

- coordinates,
- field boundary,
- zone,
- region,
- installation location.

Geospatial information should be versioned where movement or boundary change is possible.

## 167. Geospatial Uncertainty

Physical locations may have uncertainty.

Examples:

- approximate GPS position,
- inferred location,
- coarse satellite-derived location,
- manually entered location.

Such uncertainty should not automatically invalidate the physical–virtual correspondence.

## 168. Mapping and Satellite Representation

Satellite-derived information may contribute evidence for physical–virtual correspondence.

For example:

~~~text
Physical Field
      |
      +--> Satellite Observation
      |
      v
Virtual Field Representation
~~~

Satellite observations are evidence or observations, not the mapping itself.

## 169. Mapping and External Data

External data sources may provide supporting information about physical assets.

Examples:

- weather,
- geospatial information,
- market information,
- public infrastructure information,
- partner data.

External data should retain source provenance and authority.

## 170. Mapping and IoT

IoT infrastructure may provide technical realization for physical-to-virtual data exchange.

Example:

~~~text
Physical Device
      |
      v
IoT Connectivity
      |
      v
Digital Farm / Twin Platform
      |
      | mapping reference
      v
Virtual Asset
~~~

IoT connectivity and mapping remain separate concerns.

## 171. Mapping and Device Identity

Device identity may provide strong evidence for physical endpoint identification.

However, device identity does not automatically establish the complete physical asset identity.

For example, a device may be:

- replaced,
- reassigned,
- moved,
- shared,
- attached to another asset.

Therefore device identity must be interpreted within asset context.

## 172. Mapping and Sensor Calibration

Calibration evidence may strengthen confidence in observations associated with a mapped sensor.

However:

> Calibration validates measurement behavior; mapping validates correspondence.

These remain distinct.

## 173. Mapping and Actuator Verification

For physical actuators, verification may establish that:

- the physical device exists,
- the device is correctly identified,
- its capabilities match the virtual representation,
- commands can be safely associated with the endpoint.

Mapping alone does not establish actuator safety.

## 174. Mapping and Command Verification

Before physical command execution, the system may require verification of:

- mapping status,
- endpoint identity,
- authorization,
- actuator availability,
- safety conditions,
- command validity.

Example:

~~~text
QAI Decision
     |
     v
Policy / Authorization
     |
     v
Mapping Verification
     |
     v
Safety Verification
     |
     v
Physical Command
~~~

## 175. Mapping and Closed-Loop CPS

In a closed-loop CPS, mapping participates in the identity foundation.

~~~text
Physical State
      |
   Sensing
      |
   Mapping
      |
Virtual State
      |
     QAI
      |
   Decision
      |
   Mapping
      |
Physical Actuation
      |
      v
Changed Physical State
~~~

Mapping does not itself perform the closed-loop operation.

## 176. Open-Loop Operation

In open-loop operation, the system may map physical assets to virtual representations without sending commands back to physical infrastructure.

Example:

~~~text
Physical
   |
Observation
   v
Virtual
   |
Analysis / QAI
   |
Recommendation
~~~

This is suitable for early pilot stages.

## 177. Closed-Loop Readiness

Before moving from open-loop to closed-loop operation, additional requirements may include:

- mapping validation,
- command verification,
- safety validation,
- actuator verification,
- authorization,
- fallback behavior,
- human oversight.

Mapping therefore contributes to readiness but does not establish it alone.

## 178. Mapping and QAI

QAI may consume mapped virtual assets as part of:

- state estimation,
- optimization,
- prediction,
- classification,
- decision support,
- control planning.

The mapping provides identity and context.

QAI remains a separate intelligence and computational layer.

## 179. Mapping and Advantage Gate

Where QAI execution passes through the QAI Advantage Gate, mapped assets may provide the problem and representation context.

Example:

~~~text
Physical / Virtual Context
          |
          v
Physical–Virtual Mapping
          |
          v
Problem Representation
          |
          v
QAI Advantage Gate
          |
     +----+----+
     |         |
    QAI    Classical/HPC
~~~

The mapping does not determine the execution technology by itself.

## 180. Mapping and Classical Fallback

Classical or HPC fallback may operate on the same virtual representation when QAI is not selected.

This supports:

- comparison,
- resilience,
- performance evaluation,
- operational continuity.

Mapping therefore remains independent from execution selection.

## 181. Mapping and Adaptive QAI

Adaptive QAI may dynamically select computational resources or representations.

Mapped assets provide the identity and context needed to understand what is being processed.

The mapping itself remains stable unless correspondence changes.

## 182. Mapping and Virtual Qubit Fabric

Where QAI workloads use the Virtual Qubit Fabric, the mapping may connect the agricultural problem context to the virtual computational representation.

~~~text
Physical Farm Asset
       |
Physical–Virtual Mapping
       |
Virtual Farm Representation
       |
QAI Problem Representation
       |
Virtual Qubit Fabric
~~~

The mapping is not itself a quantum-resource mapping.

## 183. Mapping and Real-Time QAI

Real-Time QAI may require mapping information with strong:

- freshness,
- confidence,
- latency awareness,
- operational status.

A stale or uncertain physical-to-virtual mapping may therefore cause a real-time decision to be downgraded, deferred, or rejected.

## 184. Mapping and Resource Context

Mapping may reference resource context when a particular representation requires:

- edge compute,
- cloud compute,
- quantum resources,
- network capacity,
- energy,
- storage.

Resource allocation remains the responsibility of Resource Management.

## 185. Mapping and Edge Execution

Some physical-to-virtual mappings may be realized close to the physical asset.

Example:

~~~text
Physical Sensor
      |
      v
Edge Node
      |
      | mapping / processing
      v
Virtual Representation
~~~

The logical mapping remains technology-neutral.

## 186. Mapping and Cloud Execution

A virtual representation may reside in private, public, regional, or federated cloud infrastructure.

The mapping does not depend on where the virtual representation executes.

## 187. Mapping and Federated Environments

A physical asset may be represented across multiple governed environments.

Example:

~~~text
Physical Farm
      |
      +--> Local Virtual Representation
      |
      +--> Regional Representation
      |
      +--> Research Representation
~~~

Each mapping must respect its own context, authority, and sovereignty constraints.

## 188. Mapping and Sovereignty Boundary

Cross-boundary mapping must not imply unrestricted transfer of physical asset data.

A mapping may exist while only limited information is shared.

Possible shared information:

- pseudonymous identity,
- aggregate state,
- derived metrics,
- authorized observations.

## 189. Mapping and Security Boundary

Security boundaries may require that some mapping attributes are hidden from particular users or services.

For example:

~~~text
Mapping Record
     |
     +--> Public Metadata
     |
     +--> Controlled Metadata
     |
     +--> Restricted Physical Details
~~~

Access control should therefore apply to mapping information according to policy.

## 190. Mapping and Human Oversight

Humans may be required to approve important mappings.

Examples:

- safety-critical equipment,
- ambiguous identity,
- physical control endpoint,
- high-value asset,
- cross-boundary representation.

The mapping lifecycle should support explicit approval states.

## 191. Mapping Approval

Approval should identify:

- approving authority,
- approval time,
- scope,
- evidence considered,
- applicable policy,
- expiration or review requirement where applicable.

Approval must not be confused with technical validation.

## 192. Mapping Review

Mappings should be reviewed when material conditions change.

Review triggers may include:

- physical replacement,
- relocation,
- model replacement,
- identity migration,
- synchronization failure,
- quality degradation,
- safety incident,
- governance change.

## 193. Periodic Mapping Review

Operational mappings may require periodic review.

Review frequency should be determined by:

- asset criticality,
- mapping volatility,
- safety,
- regulatory requirements,
- data freshness,
- operational risk.

Not every mapping requires the same review frequency.

## 194. Event-Driven Mapping Review

In addition to periodic review, events may trigger immediate review.

Examples:

- device replacement,
- asset movement,
- unexpected state,
- identity conflict,
- communication failure,
- maintenance event.

Event-driven review improves mapping integrity.

## 195. Mapping Monitoring

Mapping monitoring should detect conditions such as:

- stale records,
- unresolved endpoints,
- conflicting mappings,
- inactive physical assets,
- missing virtual representations,
- degraded confidence,
- failed validation.

Monitoring supports lifecycle management without changing the conceptual mapping model.

## 196. Mapping Health

Mapping health represents whether the correspondence remains fit for intended use.

Possible dimensions:

- identity health,
- evidence health,
- freshness,
- confidence,
- endpoint availability,
- synchronization quality.

Mapping health is distinct from physical asset health.

## 197. Mapping Health Versus Asset Health

A healthy physical pump may have an unhealthy mapping.

Conversely, a mapping may be valid while the physical pump is temporarily unhealthy.

Therefore:

~~~text
Physical Asset Health != Mapping Health
Virtual Asset Health  != Mapping Health
~~~

Each must remain independently observable.

## 198. Mapping Health Versus Twin Health

Digital Twin health may include:

- synchronization,
- model performance,
- data quality,
- computational availability.

Mapping health focuses specifically on correspondence integrity.

These concepts should not be conflated.

## 199. Mapping Availability

Mapping availability indicates whether the mapping can currently be resolved and used.

An archived mapping may remain available for historical queries but unavailable for operational use.

Availability is therefore context-specific.

## 200. Mapping Reliability

Mapping reliability reflects the likelihood that the correspondence remains correct and usable over time.

Reliability may depend on:

- identity stability,
- asset stability,
- representation stability,
- evidence quality,
- governance,
- lifecycle controls.

## 201. Mapping Failure Modes

Potential mapping failure modes include:

- incorrect identity,
- duplicate mapping,
- missing endpoint,
- stale endpoint,
- incorrect cardinality,
- incorrect context,
- incorrect authority,
- obsolete representation,
- replacement not propagated,
- location mismatch,
- synchronization mismatch.

These failure modes should be included in validation and assurance processes.

## 202. Duplicate Mapping

Duplicate mappings occur when the same correspondence is registered multiple times without legitimate contextual distinction.

Duplicate detection should consider:

- endpoints,
- context,
- mapping type,
- validity period,
- lifecycle status.

Legitimate multiple representations must not be incorrectly classified as duplicates.

## 203. Duplicate Prevention

The registry should apply controlled uniqueness rules.

For example:

~~~text
Same Physical + Same Virtual + Same Context
                     |
                     v
              Potential Duplicate
~~~

Different contexts may legitimately produce separate mappings.

## 204. Mapping Integrity

Mapping integrity requires protection against unauthorized modification.

Important fields include:

- endpoint identities,
- mapping type,
- status,
- authority,
- validity,
- confidence,
- provenance.

Integrity protection is particularly important for mappings associated with physical control.

## 205. Mapping Auditability

Every material mapping change should be auditable.

Audit information may include:

- previous value,
- new value,
- actor,
- time,
- reason,
- evidence,
- approval,
- resulting version.

## 206. Mapping Reproducibility

Historical mapping state should be reproducible.

Given an historical time and context, the system should be able to determine:

> which physical entity was considered corresponding to which virtual representation at that time.

This is important for:

- experiments,
- incidents,
- model validation,
- regulatory review,
- QAI analysis.

## 207. Mapping Snapshot

A mapping snapshot captures the correspondence state at a defined point in time.

Example:

~~~text
Mapping Snapshot T1
-------------------
P1 -> V1
P2 -> V2
P3 -> V3
~~~

Snapshots support reproducibility without altering current mappings.

## 208. Scenario Mapping

A scenario may define alternative physical-to-virtual correspondence.

Examples:

- proposed irrigation expansion,
- alternative equipment configuration,
- what-if field arrangement,
- future deployment.

Scenario mappings must be isolated from operational mappings.

## 209. Experimental Branch

Experimental mappings may branch from an operational baseline.

~~~text
Operational Mapping
        |
        +--> Experiment A
        |
        +--> Experiment B
        |
        +--> Scenario C
~~~

Branches should preserve lineage to the source mapping.

## 210. Mapping Branch Merge

An experimental mapping may later be merged into an operational representation after validation.

The merge must preserve:

- source branch,
- validation evidence,
- approval,
- resulting mapping version,
- effective time.

## 211. Mapping and Model Version

A virtual model may change while the physical endpoint remains constant.

The mapping should identify the applicable model or representation version when necessary.

This prevents ambiguity about which virtual representation was used.

## 212. Mapping and Configuration Version

Configuration may also change independently.

Examples:

- sensor calibration configuration,
- pump operating parameters,
- irrigation threshold,
- virtual model parameters.

Mapping should reference relevant configuration versions where required for reproducibility.

## 213. Mapping and Workflow Version

A mapping may be consumed by multiple workflows.

For example:

- sensing workflow,
- irrigation workflow,
- maintenance workflow,
- QAI optimization workflow.

Workflow versions should not be embedded into mapping identity.

Instead, workflows reference the mapping according to their own lifecycle.

## 214. Mapping and Scenario Version

Scenario execution may use a particular mapping version.

This enables reproducibility of historical simulation or experimentation.

## 215. Mapping and Data Lineage

Data generated through a physical asset should be traceable through:

~~~text
Physical Asset
      |
      | Mapping
      v
Virtual Asset
      |
      v
Observation / State
      |
      v
Processing
      |
      v
Decision
~~~

This provides identity continuity across the intelligence lifecycle.

## 216. Mapping and Decision Traceability

Where a QAI or classical decision depends on physical observations, the decision trace should be able to identify the relevant mapping.

This enables investigation of:

- which physical asset,
- which virtual representation,
- which observations,
- which model,
- which decision.

## 217. Mapping and Actuation Traceability

Where a decision results in physical actuation, the trace should include:

- decision,
- policy,
- command,
- mapping,
- physical endpoint,
- actuator result.

~~~text
Decision
   |
Policy
   |
Command
   |
Mapping
   |
Physical Actuator
   |
Result
~~~

## 218. Mapping and Learning

The Learn stage may identify mapping quality issues.

For example:

- repeated identity conflicts,
- unexpected physical response,
- persistent state divergence,
- incorrect location,
- actuator mismatch.

Learning may therefore produce evidence for mapping improvement.

## 219. Mapping Feedback Loop

The intelligence lifecycle can feed mapping assurance.

~~~text
Sense
  |
Process
  |
Decide
  |
Act
  |
Learn
  |
  +----> Mapping Review
             |
             v
        Correct / Update
~~~

This creates a controlled improvement loop.

## 220. Mapping and MVV

Mapping quality can affect Minimum Viable Value evaluation.

For example, a pilot may require:

- sufficient mapping completeness,
- acceptable correspondence confidence,
- reproducible asset identity,
- usable virtual representation.

MVV should therefore consider mapping readiness where relevant.

## 221. Mapping and ROI

Mapping enables traceability of value-generating physical assets.

Examples:

- water-saving equipment,
- irrigation systems,
- sensor infrastructure,
- crop zones.

ROI analysis may use mapping to associate value outcomes with physical and virtual assets.

## 222. Mapping and Liquidity

Asset liquidity or operational value may depend on the ability to identify and represent assets consistently.

Mapping supports:

- asset discovery,
- asset valuation context,
- lifecycle visibility,
- replacement history.

Financial logic remains within Value Management.

## 223. Mapping and Sustainability

Mapping supports sustainability analysis by associating physical infrastructure with virtual measurements and models.

Examples:

- water consumption,
- energy use,
- equipment efficiency,
- resource utilization.

Mapping itself does not calculate sustainability metrics.

## 224. Mapping and Tolerance

Tolerance thresholds may determine whether a mapping remains acceptable.

Examples:

- spatial deviation,
- identity uncertainty,
- synchronization delay,
- model mismatch.

Tolerance policies should be defined externally and referenced by the mapping lifecycle.

## 225. Mapping and Quality Gates

Mapping may participate in readiness gates.

Example:

~~~text
Mapping Created
      |
      v
Identity Valid
      |
      v
Evidence Sufficient
      |
      v
Quality Acceptable
      |
      v
Operationally Eligible
~~~

The gate should be context-specific.

## 226. Mapping and Phase 1 Validation

Phase 1 validation should establish that the physical–virtual mapping model can support:

- virtual-first assets,
- physical-first assets,
- multiple representations,
- lifecycle changes,
- replacement,
- simulation,
- emulation,
- future physical integration.

## 227. Minimum Pilot Mapping Set

The minimum agriculture pilot should include mappings for at least:

~~~text
Virtual Farm
    |
    +--> Virtual Field
    |
    +--> Virtual Soil State
    |
    +--> Virtual Irrigation Controller
    |
    +--> Virtual Sensor
    |
    +--> Virtual Actuator
~~~

Where physical endpoints are not yet present, planned or emulated physical counterparts may be used.

## 228. Pilot Mapping Example

A minimum irrigation mapping could be:

~~~text
Physical / Emulated Soil Sensor
            |
            | PVM-SENSOR-001
            v
Virtual Soil Sensor

Physical / Emulated Valve
            |
            | PVM-ACT-001
            v
Virtual Irrigation Valve

Physical / Emulated Field
            |
            | PVM-FIELD-001
            v
Virtual Field
~~~

This provides sufficient identity continuity for the pilot workflow.

## 229. Pilot Virtual-Only Mapping

The pilot may intentionally use virtual-only representations.

For example:

~~~text
Virtual Field
     |
     +--> Planned Physical Field
     |
     +--> Pending Mapping
~~~

This allows architectural validation before physical deployment.

## 230. Pilot Emulated Mapping

The pilot may also use emulated physical endpoints.

Example:

~~~text
Emulated Sensor
      |
      | mapping
      v
Virtual Sensor
      |
      v
Sense -> Process -> Decide
~~~

This enables a fully executable laptop-based demonstration.

## 231. Pilot Open-Loop Mapping

Open-loop pilot operation may use:

~~~text
Emulated Physical State
       |
       v
Physical–Virtual Mapping
       |
       v
Virtual Farm State
       |
       v
QAI / Classical Analysis
       |
       v
Recommendation
~~~

No physical command is required.

## 232. Pilot Closed-Loop Mapping

If a closed-loop emulation is implemented:

~~~text
Emulated Physical State
       |
       v
Mapping
       |
       v
Virtual State
       |
       v
QAI Decision
       |
       v
Policy / Command
       |
       v
Mapped Emulated Actuator
       |
       v
Changed Emulated State
~~~

This demonstrates the architecture without requiring physical equipment.

## 233. Physical Integration Readiness

A mapping implementation is physically integration-ready when it can accommodate:

- physical identities,
- real sensor observations,
- real actuator endpoints,
- physical locations,
- lifecycle events,
- replacement,
- synchronization,
- safety constraints.

This does not require physical hardware during Phase 1.

## 234. Technology-Neutral Implementation

An implementation may use:

- relational storage,
- graph storage,
- document storage,
- event systems,
- APIs,
- Digital Twin platforms,
- custom services.

The logical mapping model remains independent of implementation technology.

## 235. Vendor Neutrality

The mapping architecture must not depend on a particular vendor.

A vendor-specific system may implement the mapping, but the conceptual model must remain portable.

This protects future migration and federation.

## 236. Portability

Mapping records should be exportable and portable where governance permits.

Portability should preserve:

- identity,
- endpoints,
- context,
- lifecycle,
- provenance,
- validity,
- lineage,
- version.

## 237. Federation

Federated Digital Farm environments may maintain mappings across organizational or geographic boundaries.

Federation requires:

- namespace management,
- authority identification,
- provenance,
- sovereignty controls,
- conflict handling.

## 238. Federation Conflict

Two federated environments may provide different mappings for what appears to be the same physical asset.

This should be represented as a federation-level conflict rather than silently merged.

Resolution should consider source authority and governance.

## 239. Mapping Interoperability

Interoperability requires that mapping semantics can be exchanged across systems.

At minimum, exchanged information should preserve:

- endpoint identities,
- mapping type,
- context,
- lifecycle,
- validity,
- provenance,
- confidence.

## 240. End of Part 2

Part 2 extends the foundational Physical–Virtual Mapping model into operational assurance, lifecycle management, synchronization, hierarchy, QAI integration, governance, validation, pilot realization, and future physical integration.

The architecture now establishes that Physical–Virtual Mapping:

- can be reconciled without destroying history,
- supports identity resolution and correction,
- supports multiple representations,
- distinguishes correspondence from state synchronization,
- supports temporal and spatial evolution,
- follows physical and virtual lifecycle changes,
- supports nested and aggregate assets,
- integrates with sensing, computation, communication, and intelligence,
- supports QAI and classical execution without coupling mapping to execution technology,
- supports open-loop and closed-loop CPS evolution,
- supports governance, security, sovereignty, human oversight, and auditability,
- supports physical-first and virtual-first realization,
- supports laptop-based pilot execution,
- remains compatible with future sensors, IoT, actuators, Digital Twins, and CPS,
- remains technology- and vendor-neutral,
- supports federation and interoperability.

The resulting principle is:

> **Physical–Virtual Mapping provides the controlled identity and correspondence fabric through which physical assets, virtual representations, observations, state, intelligence, decisions, and eventual physical actions remain traceable across lifecycle, spatial, temporal, operational, experimental, and federated contexts.**

**Status: COMPLETE — PHASE 1 PHYSICAL–VIRTUAL MAPPING BASELINE — PART 2 (SECTIONS 121–240)**
---
# 07 Physical–Virtual Mapping

## PART 3 — SECTIONS 241–500

## 241. Mapping and Architecture Traceability

Physical–Virtual Mapping must remain traceable to the broader Digital Farm architecture.

The mapping connects physical realization to virtual realization while preserving the boundaries between:

- assets,
- relationships,
- state,
- observations,
- models,
- workflows,
- scenarios,
- interfaces,
- execution,
- governance,
- intelligence.

~~~text
Physical Asset
      |
      | Physical–Virtual Mapping
      v
Virtual Asset
      |
      +--> State
      +--> Model
      +--> Interface
      +--> Workflow
      +--> Scenario
      +--> Intelligence
~~~

Mapping provides correspondence; the other artifacts provide the semantics and execution behavior.

## 242. Mapping and Virtualization Model

The Physical–Virtual Mapping model depends on the Phase 1 virtualization model.

The virtualization model defines how assets can be represented virtually.

Physical–Virtual Mapping specializes that capability for correspondence with physical realization.

Therefore:

> Virtualization defines the virtual representation; Physical–Virtual Mapping establishes its physical correspondence.

Neither should duplicate the other.

## 243. Mapping and Virtual Asset Model

The Virtual Asset Model defines the structure and lifecycle of virtual assets.

Physical–Virtual Mapping references those virtual assets but does not replace their:

- state,
- configuration,
- behavior,
- lifecycle,
- model,
- interface,
- provenance.

The mapping therefore remains a separate architectural artifact.

## 244. Mapping and Virtual Asset Registry

The Virtual Asset Registry provides the identity and discovery mechanism for virtual assets.

Physical–Virtual Mapping should reference registry identities rather than duplicate complete virtual asset definitions.

~~~text
Virtual Asset Registry
          |
          | Virtual Asset ID
          v
Physical–Virtual Mapping
          |
          | Physical Asset ID
          v
Physical Asset Registry
~~~

This preserves registry responsibility boundaries.

## 245. Mapping and Asset Relationship Model

Asset relationships describe semantic relationships among assets.

Examples:

- contains,
- supplies,
- monitors,
- controls,
- depends on,
- communicates with.

Physical–Virtual Mapping describes correspondence.

The two models may reference each other but should not be merged.

## 246. Mapping and Asset Relationship Registry

The relationship registry provides instance-level relationships.

A Physical–Virtual Mapping may itself be referenced by relationships such as:

- represented-by,
- mapped-to,
- synchronized-with,
- observed-by,
- controlled-through.

However, correspondence remains distinct from semantic relationships.

## 247. Mapping and State Model

The State Model describes the state of a virtual asset.

Physical–Virtual Mapping identifies the physical endpoint to which that representation corresponds.

Example:

~~~text
Physical Pump
     |
     | Mapping
     v
Virtual Pump
     |
     | State Model
     v
RUNNING / STOPPED / FAULT
~~~

State values should not be embedded into mapping identity.

## 248. Mapping and Behavior Model

Behavior models describe how an asset behaves.

For example:

- pump response,
- irrigation response,
- soil moisture dynamics,
- crop water demand.

Mapping identifies which physical asset the model represents.

Behavior remains a separate model artifact.

## 249. Mapping and Interface Model

Physical and virtual endpoints may expose different interfaces.

Examples:

- physical device interface,
- IoT interface,
- virtual API,
- simulation interface,
- Digital Twin interface.

The mapping connects identities while interface definitions remain separate.

## 250. Mapping and Workflow Model

Workflows may consume mapping information.

Example:

~~~text
Workflow
   |
   +--> Resolve Physical–Virtual Mapping
   |
   +--> Obtain State
   |
   +--> Process
   |
   +--> Decide
   |
   +--> Act
~~~

Workflow logic should not hard-code physical-to-virtual assumptions.

## 251. Mapping and Scenario Model

Scenarios may use alternative mappings.

For example:

- current farm configuration,
- planned irrigation expansion,
- alternative sensor placement,
- equipment replacement.

Scenario-specific mappings must remain distinguishable from operational mappings.

## 252. Mapping and Execution Modes

Physical–Virtual Mapping supports all four execution modes:

- virtualization,
- emulation,
- simulation,
- physical execution.

~~~text
                Physical–Virtual Mapping
                         |
       +-----------------+-----------------+
       |                 |                 |
 Virtualization       Emulation        Simulation
       |                 |                 |
       +-----------------+-----------------+
                         |
                    Physical CPS
~~~

The same logical mapping model can persist across these modes.

## 253. Virtualization Execution

In virtualization mode, the system may define virtual assets before physical realization.

Mapping may therefore remain:

- planned,
- pending,
- virtual-only.

This supports early architectural development.

## 254. Emulation Execution

In emulation mode, virtual endpoints may interact with executable substitutes for physical assets.

The mapping must identify the endpoint as emulated rather than physical.

This protects evidence integrity.

## 255. Simulation Execution

Simulation may represent:

- physical environment,
- physical asset behavior,
- asset interactions,
- alternative configurations.

Mapping provides correspondence to the modeled physical context.

## 256. Physical Execution

In physical execution, mapping connects virtual representations to actual physical endpoints.

Additional requirements may apply:

- safety,
- authorization,
- verification,
- synchronization,
- communication,
- fallback.

## 257. Execution Mode Transition

A physical–virtual mapping may persist while execution mode changes.

Example:

~~~text
Simulation
    |
    v
Emulation
    |
    v
Physical Integration
    |
    v
Operational CPS
~~~

The mapping model provides continuity while technical realization evolves.

## 258. Mapping and Pilot-to-Production Evolution

The pilot may begin with no real physical assets.

Later stages may introduce:

- physical sensors,
- IoT,
- actuators,
- Digital Twin,
- CPS,
- production QAI.

Mapping must support this progression without redesigning the logical identity architecture.

## 259. Mapping Promotion Gate

Promotion from virtual/emulated mapping to physical operational mapping should require a controlled gate.

~~~text
Virtual / Emulated Mapping
          |
          v
Physical Endpoint Available
          |
          v
Identity Verified
          |
          v
Mapping Validated
          |
          v
Safety / Governance Checks
          |
          v
Operational Mapping
~~~

Promotion is a lifecycle decision, not an automatic consequence of physical deployment.

## 260. Mapping Demarcation

The mapping model must maintain clear demarcation between:

- physical existence,
- virtual existence,
- correspondence,
- synchronization,
- control.

This prevents architectural shortcuts.

A physical asset may exist without synchronization.

A virtual asset may exist without a physical counterpart.

A mapping may exist without control.

## 261. Mapping and Trust Chain

Physical–Virtual Mapping contributes to a broader trust chain.

~~~text
Physical Identity
      |
      v
Mapping Evidence
      |
      v
Mapping Validation
      |
      v
Virtual Representation
      |
      v
State / Observation
      |
      v
Decision
~~~

Each stage should retain its own evidence and assurance requirements.

## 262. Mapping and Evidence Chain

Evidence should remain traceable from the physical endpoint through the mapping into downstream processing.

Possible evidence chain:

~~~text
Physical Asset
     |
Installation Evidence
     |
Identity Evidence
     |
Mapping
     |
Observation Evidence
     |
Virtual State
     |
Decision Evidence
~~~

This supports auditability and explainability.

## 263. Mapping and Explainability

Where a QAI or classical system produces a recommendation, the mapping may help answer:

- which physical asset was represented,
- which virtual representation was used,
- which observations were associated,
- which model was applied.

Mapping is therefore part of the traceability chain for explainable operation.

## 264. Mapping and AI Assurance

AI assurance may require confidence in the identity and correspondence of the underlying assets.

A decision based on an incorrectly mapped sensor can be invalid even when the AI model itself operates correctly.

Therefore mapping assurance is part of the broader AI assurance chain.

## 265. Mapping and QAI Assurance

QAI execution may involve:

- probabilistic results,
- approximation,
- hybrid computation,
- adaptive execution,
- classical fallback.

Mapping provides the identity context needed to interpret those results.

QAI uncertainty must not be confused with mapping uncertainty.

## 266. Mapping Uncertainty Versus QAI Uncertainty

The architecture distinguishes:

~~~text
Mapping Uncertainty
        |
        +--> Which asset is represented?

QAI Uncertainty
        |
        +--> What is the confidence in the computational result?
~~~

These may propagate together in a decision pipeline but remain separate dimensions.

## 267. Mapping and Confidence Budget

A decision system may establish minimum confidence requirements across multiple layers.

For example:

~~~text
Mapping Confidence
        +
Observation Confidence
        +
Model Confidence
        +
QAI Result Confidence
        |
        v
Decision Confidence
~~~

The exact combination rule belongs to the relevant assurance architecture.

## 268. Mapping and Data Quality Pipeline

Mapping quality should be considered before downstream data processing.

~~~text
Physical Endpoint
       |
       v
Mapping Validation
       |
       v
Observation Validation
       |
       v
State Validation
       |
       v
QAI / Classical Processing
~~~

This helps prevent identity errors from being mistaken for data-quality errors.

## 269. Mapping and Fault Isolation

Mapping can support fault isolation.

If a virtual representation produces unexpected behavior, the system can check:

1. mapping identity,
2. physical endpoint,
3. observation freshness,
4. synchronization,
5. model behavior,
6. computational execution.

This avoids incorrectly attributing every failure to the QAI or Digital Twin layer.

## 270. Mapping and Incident Management

Incidents may involve mapping failures.

Examples:

- incorrect asset correspondence,
- command sent to wrong physical endpoint,
- obsolete mapping,
- identity conflict,
- unexpected replacement.

Incident records should reference the relevant mapping identity and version.

## 271. Mapping and Change Management

Changes affecting physical or virtual assets may require mapping impact assessment.

Examples:

- asset replacement,
- relocation,
- model replacement,
- identifier migration,
- interface change,
- Digital Twin migration.

Change Management should determine whether mappings must be updated, suspended, or replaced.

## 272. Mapping and Configuration Management

Configuration changes may alter correspondence assumptions.

For example:

- device reassignment,
- sensor channel reassignment,
- controller configuration,
- virtual model configuration.

Relevant configuration versions should therefore be traceable from the mapping.

## 273. Mapping and Release Management

A software or model release may change virtual representation semantics.

Release management should assess:

- mapping compatibility,
- representation compatibility,
- state compatibility,
- synchronization compatibility.

A release should not silently invalidate active mappings.

## 274. Mapping and Upgrade Management

Upgrades may affect:

- identity resolution,
- registries,
- synchronization,
- Digital Twin engines,
- interfaces.

Upgrade processes should therefore include mapping integrity checks.

## 275. Mapping and Patch Management

Security or functional patches may alter technical components implementing mapping.

Patch validation should ensure that:

- mappings remain resolvable,
- registry integrity remains intact,
- lifecycle semantics remain unchanged,
- security controls continue to operate.

## 276. Mapping and Incident Recovery

After an incident, mappings may need to be reconciled.

Recovery should preserve:

- previous state,
- mapping history,
- incident evidence,
- corrective actions,
- restored mapping version.

## 277. Mapping and Business Continuity

Mapping information may be essential to business continuity.

For example, restoration may require knowing:

- which physical assets correspond to virtual assets,
- which representations are authoritative,
- which mappings remain active.

Mapping records should therefore be recoverable according to continuity requirements.

## 278. Mapping and Disaster Recovery

Disaster recovery should preserve mapping integrity.

Recovery procedures should restore:

- mapping identities,
- endpoint references,
- lifecycle states,
- validity periods,
- provenance,
- lineage,
- audit history.

A recovered system must not silently create new identities for existing mappings.

## 279. Mapping and Backup

Mapping data should be included in appropriate backup strategies.

Backups should preserve historical versions where required.

The mapping registry is a critical architectural asset because it connects physical and virtual worlds.

## 280. Mapping and Recovery Validation

After recovery, validation should confirm:

~~~text
Registry Recovered
       |
       v
Endpoint Resolution
       |
       v
Mapping Integrity
       |
       v
Lifecycle Consistency
       |
       v
Operational Readiness
~~~

Recovery should not automatically reactivate mappings that were suspended before failure.

## 281. Mapping and Security Trust

Mapping can participate in a trust chain for physical endpoint identity.

Possible trust sources include:

- device identity,
- secure enrollment,
- installation records,
- cryptographic identity,
- operator approval.

The specific security mechanism remains implementation-dependent.

## 282. Mapping and Authentication

Authentication establishes who or what is communicating.

Mapping establishes which physical and virtual entities correspond.

These must remain separate.

~~~text
Authentication
     |
     v
Who / What?
     |
     +--> Mapping
              |
              v
        Which Entity?
~~~

## 283. Mapping and Authorization

Authorization determines what an actor may do.

Mapping determines which endpoint is involved.

For example:

> A user may be authorized to control irrigation valves, but mapping verification must determine which physical valve corresponds to the selected virtual valve.

## 284. Mapping and Least Privilege

Mapping systems should expose only the information required for the requesting context.

For example:

- analytics may need virtual identity,
- maintenance may need physical identity,
- external systems may receive pseudonymous identity,
- control systems may require verified endpoint identity.

## 285. Mapping and Integrity Protection

Mapping records must be protected against unauthorized modification.

Important protected fields include:

- endpoint identities,
- mapping type,
- status,
- authority,
- validity,
- confidence.

## 286. Mapping and Non-Repudiation

For high-assurance environments, mapping changes may require evidence that identifies the responsible actor or system.

This supports:

- audit,
- accountability,
- safety investigation,
- regulatory review.

## 287. Mapping and Privacy

Mapping may indirectly expose sensitive information.

Examples:

- exact equipment location,
- farm infrastructure,
- operational topology,
- ownership relationships.

Privacy controls should therefore apply according to data classification.

## 288. Mapping and Data Classification

Mapping information may be classified according to:

- public,
- internal,
- confidential,
- restricted,
- safety-critical.

Classification should be inherited or derived according to governance rules.

## 289. Mapping and Cross-Boundary Transfer

When mapping information crosses organizational boundaries, the system should verify:

- permitted fields,
- receiving authority,
- jurisdiction,
- purpose,
- retention,
- permitted use.

A shared mapping reference does not imply unrestricted data sharing.

## 290. Mapping and External Services

External services may consume mapping references.

Examples:

- weather service,
- satellite service,
- market service,
- research platform,
- partner platform.

External service integration should preserve provenance and authority.

## 291. Mapping and Enterprise Integration

Enterprise systems may reference physical assets through:

- enterprise asset IDs,
- ERP identifiers,
- maintenance IDs,
- inventory IDs.

The mapping layer should preserve those identifiers as external references.

## 292. Mapping and ERP

ERP systems may represent equipment for:

- procurement,
- inventory,
- maintenance,
- financial accounting.

Physical–Virtual Mapping connects operational physical identity to virtual representation without duplicating ERP asset semantics.

## 293. Mapping and Inventory

Inventory may identify physical equipment before installation.

This enables:

~~~text
Inventory Asset
      |
      v
Planned Physical Asset
      |
      v
Physical–Virtual Mapping
      |
      v
Virtual Asset
~~~

The mapping becomes active only when the defined lifecycle conditions are satisfied.

## 294. Mapping and Maintenance

Maintenance systems may use mappings to locate the relevant virtual representation.

Likewise, Digital Farm workflows may use mapping to identify the physical asset requiring maintenance.

This creates traceability without merging maintenance management with mapping.

## 295. Mapping and Workforce

Human operators may interact with physical and virtual assets using different identifiers.

Mapping can provide the translation between these identity domains.

Example:

~~~text
Operator Label
      |
      v
Physical Asset ID
      |
      v
Virtual Asset ID
~~~

## 296. Mapping and Human–AI Collaboration

Human–AI systems may use mappings to present physical-world context to users.

For example:

> Virtual Valve V-17 corresponds to physical valve PV-17 in Irrigation Zone 3.

This makes AI recommendations more actionable and understandable.

## 297. Mapping and Human Override

Human override actions should reference the relevant mapped asset explicitly.

This avoids ambiguity where multiple physical assets correspond to related virtual representations.

## 298. Mapping and Safety Override

Safety systems may override normal virtual-to-physical command flows.

Mapping must remain available so the safety system can identify the physical endpoint affected.

## 299. Mapping and Manual Operations

Some physical assets may remain manually operated.

They may still have virtual representations and mappings even though commands are not automatically transmitted.

This supports monitoring and decision support without requiring automation.

## 300. Mapping and Progressive Automation

Agriculture automation may evolve through:

~~~text
Manual
  |
  v
Decision Support
  |
  v
Human Approved Automation
  |
  v
Supervised Automation
  |
  v
Controlled Autonomous Operation
~~~

Physical–Virtual Mapping remains foundational across these stages.

## 301. Mapping and Service Models

Physical–Virtual Mapping may be used by:

- IaaS,
- PaaS,
- SaaS

service layers.

However, the mapping semantics remain below the service packaging layer.

## 302. Mapping and IaaS

Infrastructure services may provide resources hosting mapping registries or technical mapping engines.

The mapping model does not depend on infrastructure implementation.

## 303. Mapping and PaaS

Platform services may provide:

- asset registries,
- Digital Twin services,
- IoT services,
- identity services,
- mapping APIs.

These implement the logical model.

## 304. Mapping and SaaS

Agriculture SaaS applications may consume mapping information to provide:

- farm monitoring,
- irrigation optimization,
- asset management,
- maintenance,
- analytics.

Applications should consume mappings through controlled interfaces.

## 305. Mapping API Boundary

A mapping API may provide operations such as:

- create mapping,
- retrieve mapping,
- validate mapping,
- update mapping,
- suspend mapping,
- resolve physical endpoint,
- resolve virtual endpoint,
- retrieve history.

API design is an implementation concern.

## 306. Mapping Query Patterns

Common logical queries include:

- Which virtual asset represents this physical asset?
- Which physical asset corresponds to this virtual asset?
- Which mappings are active?
- Which mappings are stale?
- Which mappings are awaiting validation?
- Which assets have no virtual representation?
- Which virtual assets have no physical counterpart?

## 307. Mapping Traversal

Mapping traversal may support navigation between identity domains.

Example:

~~~text
Physical ID
    |
    v
Mapping
    |
    v
Virtual ID
    |
    v
Virtual State
    |
    v
Decision
~~~

Traversal must respect authorization and context.

## 308. Mapping Search by Context

Queries should be able to filter by:

- operational,
- simulation,
- emulation,
- experimental,
- historical,
- scenario,
- maintenance.

This prevents irrelevant mappings from being selected.

## 309. Mapping Search by Status

Mappings should be discoverable by lifecycle status.

Example:

~~~text
ACTIVE
SUSPENDED
VALIDATING
ARCHIVED
TERMINATED
~~~

Status filtering supports operational management.

## 310. Mapping Search by Confidence

Mapping discovery may filter by confidence where required.

For example:

> return only active mappings with high or medium confidence.

Such filters should be applied according to decision risk.

## 311. Mapping Search by Freshness

Operational systems may require mappings that satisfy freshness thresholds.

Example:

> return mappings reviewed or updated within the permitted validity period.

Freshness should be interpreted according to asset and context.

## 312. Mapping Search by Geography

Agricultural workflows may query mappings by:

- farm,
- field,
- irrigation zone,
- region,
- coordinate range.

Geospatial filtering should reference authoritative spatial information.

## 313. Mapping Search by Asset Type

Queries may select mappings for:

- sensors,
- pumps,
- valves,
- fields,
- crop plots,
- tanks,
- machinery.

Asset type comes from the asset model rather than being independently invented by the mapping layer.

## 314. Mapping Search by Capability

A workflow may search for mappings associated with assets capable of:

- sensing,
- irrigation,
- pumping,
- monitoring,
- actuation.

Capability semantics belong to the asset/capability model.

## 315. Mapping Search by Lifecycle

A lifecycle query may identify:

- newly registered physical assets,
- assets awaiting virtualization,
- active Digital Twin mappings,
- retired mappings,
- pending replacements.

This supports operational lifecycle management.

## 316. Mapping Search by Physical Availability

Physical availability can affect mapping usability.

For example:

~~~text
Mapped Physical Asset
       |
       +--> AVAILABLE
       |
       +--> UNAVAILABLE
       |
       +--> MAINTENANCE
       |
       +--> RETIRED
~~~

Availability should not be confused with mapping validity.

## 317. Mapping Search by Virtual Availability

Similarly, the virtual representation may be:

- available,
- degraded,
- unavailable,
- archived.

A valid mapping can exist even while its virtual endpoint is temporarily unavailable.

## 318. Mapping Selection for Decision

Before a decision workflow uses a mapping, it may evaluate:

- status,
- context,
- confidence,
- freshness,
- authority,
- endpoint availability.

Example:

~~~text
Candidate Mapping
       |
       v
Context Check
       |
       v
Status Check
       |
       v
Confidence Check
       |
       v
Freshness Check
       |
       v
Decision Eligible
~~~

## 319. Mapping Eligibility

Eligibility is a derived operational condition.

A mapping may be valid but not eligible for a particular action.

For example:

- valid for analytics,
- not eligible for physical control.

This distinction is critical for safety.

## 320. Mapping and Policy

Policies may determine eligibility based on:

- asset criticality,
- confidence,
- freshness,
- human approval,
- operating mode,
- execution context.

Policy remains a governance artifact.

## 321. Mapping and Advantage Gate Eligibility

For QAI problem execution, mappings may contribute contextual eligibility.

For example:

- physical endpoint identity confirmed,
- virtual representation available,
- required state fresh,
- mapping confidence acceptable.

Only then may the associated problem proceed through the relevant computational path.

## 322. Mapping and Classical Baseline

The same mapped virtual assets should be usable by classical baselines.

This ensures that QAI and classical comparisons operate on equivalent asset representations.

~~~text
Mapped Virtual State
       |
       +--> Classical Baseline
       |
       +--> QAI Execution
~~~

## 323. Mapping and QAI Comparison

QAI-versus-classical evaluation should maintain the same mapping context.

Otherwise differences may result from different asset representations rather than computational method.

## 324. Mapping and Reproducible Experiment

A reproducible QAI experiment should record:

- mapping version,
- virtual asset version,
- state snapshot,
- model version,
- scenario version,
- QAI configuration,
- classical baseline.

This creates a complete experiment context.

## 325. Mapping and Research Promotion

Research mappings may become production mappings only after defined validation and governance.

Promotion should preserve:

- research provenance,
- experiment history,
- model lineage,
- mapping lineage.

## 326. Mapping and QAI Lab

The QAI Lab may maintain experimental mappings for:

- new representations,
- alternative models,
- new sensing arrangements,
- future physical configurations.

Experimental mappings should remain isolated from operational mappings unless explicitly promoted.

## 327. Mapping and Research Isolation

Research isolation prevents experimental correspondence from accidentally affecting operational control.

~~~text
Operational Mapping
        |
        | controlled copy / branch
        v
Research Mapping
        |
        | experimentation
        v
Validation
        |
        v
Promotion Candidate
~~~

## 328. Mapping and Fabric Integration

When Digital Farm integrates with broader HoldCo or QAI fabrics, Physical–Virtual Mapping provides an identity bridge.

Possible fabrics include:

- Digital Twin fabric,
- transduction fabric,
- Virtual Qubit Fabric,
- Real-Time QAI fabric,
- security/trust fabric,
- resource advantage fabric.

## 329. Mapping and Transduction

Transduction converts information between physical and digital forms.

Physical–Virtual Mapping identifies correspondence.

~~~text
Physical Phenomenon
       |
       v
Transduction
       |
       v
Digital Observation
       |
       | Mapping
       v
Virtual Asset
~~~

The two layers must remain distinct.

## 330. Mapping and Synchronization Fabric

A synchronization fabric may maintain correspondence between physical and virtual state.

Mapping provides the identity reference needed by the fabric.

Synchronization implementation remains outside the mapping model.

## 331. Mapping and Real-Time Fabric

Real-time systems may require rapid mapping resolution.

Caching or pre-resolution may be used technically, but logical mapping identity remains authoritative.

Real-time performance must not weaken mapping correctness.

## 332. Mapping and Resource Advantage Fabric

Resource allocation may depend on mapped asset context.

For example:

- high-priority field,
- critical irrigation asset,
- urgent physical state.

Resource Management may use mapping context without becoming responsible for mapping semantics.

## 333. Mapping and Security/Trust Fabric

Security and trust fabrics may validate:

- endpoint identity,
- authority,
- integrity,
- access rights.

The mapping remains the semantic correspondence layer.

## 334. Mapping and Digital Twin Fabric

The Digital Twin fabric may consume Physical–Virtual Mappings to construct persistent operational relationships.

The mapping remains necessary but does not itself constitute the complete Twin.

## 335. Mapping and CPS Fabric

CPS integration uses mapping to connect:

- physical sensing,
- virtual state,
- computation,
- decision,
- control.

The mapping is therefore part of the CPS identity foundation.

## 336. Mapping and Architecture Non-Duplication

No other artifact should silently recreate the complete Physical–Virtual Mapping model.

Other artifacts may reference:

- mapping ID,
- endpoint ID,
- mapping status,
- mapping context.

The authoritative mapping semantics remain in this artifact and its registry.

## 337. Mapping and Separation of Concerns

The architecture maintains:

~~~text
Asset Model
    |
Relationship Model
    |
Mapping Model
    |
State Model
    |
Interface Model
    |
Workflow Model
    |
Execution
~~~

Each model has a defined responsibility.

## 338. Mapping and Managerial Boundary

Digital Farm management may define:

- service requirements,
- lifecycle policy,
- validation policy,
- operational readiness,
- governance requirements.

It should not duplicate technical mapping engines.

This maintains the established managerial/service/coordination boundary.

## 339. Mapping and Technical Boundary

Technical realization may implement:

- mapping registry,
- identity resolution,
- synchronization,
- device integration,
- Digital Twin connectivity.

These are technical realization capabilities.

## 340. Mapping and Service Boundary

A Digital Farm service may expose physical-to-virtual mapping as a capability.

The service may provide:

- mapping discovery,
- mapping validation,
- mapping lifecycle management.

The underlying technical implementation remains replaceable.

## 341. Mapping and Configuration Boundary

Mapping configuration should be separated from general application configuration.

Configuration may control:

- validation thresholds,
- freshness rules,
- lifecycle policies.

The mapping records themselves remain data entities.

## 342. Mapping and Governance Boundary

Governance defines:

- who can modify mappings,
- which mappings require approval,
- what evidence is sufficient,
- which mappings may control physical assets.

Governance does not replace the mapping registry.

## 343. Mapping and Compliance

Compliance requirements may affect:

- retention,
- provenance,
- auditability,
- sovereignty,
- physical control,
- safety.

The mapping model should support these requirements without embedding jurisdiction-specific rules into its core semantics.

## 344. Mapping and Standards

The architecture may later align its implementation with relevant standards.

However, standards adoption should not force a vendor-specific or technology-specific conceptual model.

The logical mapping principles remain primary.

## 345. Mapping and Extensibility

The mapping model should allow additional metadata without breaking existing semantics.

Future extensions may include:

- new execution contexts,
- new physical asset types,
- new representation types,
- new assurance levels,
- new federated identities.

Core identity and correspondence semantics should remain stable.

## 346. Mapping and Backward Compatibility

Changes to mapping schema should preserve compatibility with existing mappings where possible.

Breaking changes require:

- migration,
- versioning,
- validation,
- rollback planning.

## 347. Mapping and Forward Compatibility

The model should allow future physical technologies to be incorporated without redesign.

Examples:

- advanced sensors,
- autonomous machinery,
- robotic systems,
- new edge hardware,
- future CPS technologies.

Only technical adapters should need to evolve where logical semantics remain stable.

## 348. Mapping and Physical Technology Independence

The mapping model does not assume whether a physical endpoint is:

- mechanical,
- electronic,
- robotic,
- IoT-enabled,
- manually operated,
- autonomous.

All can be represented through the same logical correspondence principles.

## 349. Mapping and Virtual Technology Independence

Similarly, the virtual representation may be implemented using:

- deterministic models,
- machine learning,
- physics models,
- hybrid models,
- Digital Twin platforms,
- QAI-enabled representations.

The mapping remains independent.

## 350. Mapping and Model Interchange

A physical asset may retain its mapping while its virtual model changes technology.

Example:

~~~text
Physical Pump
     |
     | Stable Mapping
     +----------------+
     |                |
     v                v
Physics Model     ML Model
~~~

This allows technical evolution without physical identity disruption.

## 351. Mapping and Representation Interchange

Virtual representations may be exchanged between platforms while preserving physical correspondence.

The mapping should therefore support representation migration.

## 352. Mapping and Platform Migration

During platform migration:

~~~text
Old Virtual Platform
        |
        v
Migration
        |
        v
New Virtual Platform
        |
        v
Same Physical Asset
~~~

Mapping lineage should record the transition.

## 353. Mapping and Registry Migration

If the mapping registry itself is migrated, identity continuity must be preserved.

The migration must not create duplicate active mappings merely because storage technology changed.

## 354. Mapping and Namespace Federation

Federated environments may use separate namespaces.

A mapping should be able to reference:

- local namespace,
- external namespace,
- canonical namespace,
- alias namespace.

Namespace translation must preserve identity meaning.

## 355. Mapping and Canonical Identity

Where multiple systems refer to the same physical asset, the architecture may designate a canonical identity.

Other identities remain aliases or external references.

This reduces ambiguity without requiring every system to use the same identifier.

## 356. Mapping and Identity Graph

Complex identity relationships may be represented logically as a graph.

~~~text
External ID
    |
    v
Canonical Physical ID
    |
    v
Logical Asset ID
    |
    v
Virtual Asset ID
~~~

This graph supports identity resolution across boundaries.

## 357. Mapping and Historical Identity Graph

Historical identifiers should remain connected to current identity where continuity exists.

Example:

~~~text
Old Physical ID
       |
       v
Migration Event
       |
       v
Current Physical ID
       |
       v
Current Mapping
~~~

This supports long-term traceability.

## 358. Mapping and Asset Retirement

When an asset retires, its mapping history remains available.

Retirement should therefore change lifecycle state rather than destroy historical evidence.

## 359. Mapping and Twin Retirement

A Digital Twin representation may be retired while the physical asset remains operational.

The system may then create or activate another representation.

This demonstrates why mapping and virtual lifecycle must remain separate.

## 360. Mapping and Representation Retirement

When a representation is retired:

- mapping may terminate,
- replacement mapping may be created,
- lineage must be preserved.

The physical asset itself may remain unchanged.

## 361. Mapping and Physical Retirement

When a physical asset is retired:

- physical mapping may terminate,
- virtual historical representation may remain,
- replacement physical asset may receive a new mapping.

This preserves operational history.

## 362. Mapping and Historical Reconstruction

Historical reconstruction may require combining:

- asset history,
- relationship history,
- mapping history,
- state history,
- observation history,
- workflow history.

Physical–Virtual Mapping provides one essential part of this reconstruction.

## 363. Mapping and Audit Scenario

An auditor may ask:

> Which physical sensor was represented by Virtual Sensor V-17 on a particular date?

The architecture should answer this using:

~~~text
Time + Context
      |
      v
Mapping History
      |
      v
Physical Endpoint
~~~

This is a core auditability requirement.

## 364. Mapping and Incident Scenario

An incident investigation may ask:

> Which physical valve received the command associated with Decision D-42?

The trace should support:

~~~text
Decision
   |
Command
   |
Virtual Valve
   |
Mapping Version
   |
Physical Valve
~~~

## 365. Mapping and Research Scenario

A research experiment may ask:

> Which physical or emulated assets were represented in Experiment E-07?

The experiment record should reference the mapping version used.

This ensures reproducibility.

## 366. Mapping and Scenario Comparison

Two scenarios may use different mappings.

Example:

~~~text
Scenario A --> Sensor Configuration A
Scenario B --> Sensor Configuration B
~~~

The mapping context prevents scenario differences from being confused with operational differences.

## 367. Mapping and What-If Analysis

What-if analysis may create virtual-only mappings.

For example:

> What happens if a second irrigation pump is installed?

The hypothetical pump may have:

- virtual identity,
- planned physical identity,
- scenario mapping.

It must remain isolated from current operational reality.

## 368. Mapping and Forecasting

Forecast models may operate on virtual representations associated with physical assets.

Forecast results should retain:

- mapping context,
- asset identity,
- observation time,
- model version.

This supports traceability.

## 369. Mapping and Optimization

Optimization may select actions for virtual representations that correspond to physical assets.

Before physical execution, the system must resolve the mapping and verify eligibility.

## 370. Mapping and Control Planning

Control planning may generate commands for virtual assets.

Mapping resolution is required before translating those commands to physical endpoints.

~~~text
Virtual Control Target
        |
        v
Mapping Resolution
        |
        v
Physical Control Target
~~~

## 371. Mapping and Control Safety

A control system must verify that the mapping remains valid before physical execution.

Recommended checks may include:

- mapping active,
- physical endpoint available,
- endpoint identity verified,
- confidence acceptable,
- safety policy satisfied.

## 372. Mapping and Fallback Control

If mapping validation fails, the system should support fallback behavior such as:

- hold state,
- safe state,
- human approval,
- classical fallback,
- manual operation.

Mapping failure should therefore be treated as an operational condition rather than ignored.

## 373. Mapping and Resilience

Resilient architecture should tolerate:

- temporary registry unavailability,
- communication loss,
- physical endpoint failure,
- virtual service outage.

Cached mappings may support temporary operation where governance permits, but authoritative mapping state must remain recoverable.

## 374. Mapping Cache

A technical implementation may cache frequently used mappings.

Cached records should carry:

- version,
- validity,
- freshness,
- authority.

Caching must not silently override authoritative mapping state.

## 375. Mapping Staleness During Outage

During an outage, a previously valid mapping may become stale.

The system must determine whether stale mapping use is:

- permitted,
- restricted,
- prohibited.

The decision should depend on operational risk.

## 376. Mapping Recovery After Outage

After connectivity or registry recovery, cached mappings should be reconciled against authoritative records.

~~~text
Cached Mapping
      |
      v
Authoritative Mapping
      |
      v
Reconciliation
      |
      +--> Retain
      +--> Update
      +--> Suspend
      +--> Replace
~~~

## 377. Mapping and Availability Zones

In distributed deployments, mappings may be replicated across:

- edge,
- regional,
- private cloud,
- public cloud.

Replication must preserve identity and version semantics.

## 378. Mapping and Replication

Replication may improve availability.

However, concurrent mapping updates require controlled consistency.

Conflicting updates should enter reconciliation rather than silently overwrite one another.

## 379. Mapping and Distributed Consistency

Distributed implementations should define:

- authoritative source,
- update ordering,
- conflict detection,
- versioning,
- reconciliation.

The logical model remains independent from the chosen consistency mechanism.

## 380. Mapping and Event Sourcing

A technical implementation may represent mapping changes as events.

Example:

~~~text
MappingCreated
MappingValidated
MappingActivated
MappingSuspended
MappingReplaced
MappingArchived
~~~

Event representation is optional and implementation-specific.

## 381. Mapping and Event Traceability

If events are used, each mapping event should identify:

- mapping ID,
- version,
- timestamp,
- actor,
- reason,
- resulting state.

This strengthens auditability.

## 382. Mapping and Change Propagation

A physical asset change may require propagation to:

- virtual asset,
- relationships,
- state,
- workflows,
- scenarios,
- QAI context.

The mapping acts as an explicit reference point for identifying affected representations.

## 383. Mapping Impact Analysis

Impact analysis may ask:

> What virtual representations are affected if physical asset P-001 is replaced?

The mapping registry should make the affected representations discoverable.

## 384. Mapping Dependency Analysis

Mapping may be a dependency for:

- synchronization,
- monitoring,
- analytics,
- QAI,
- control,
- maintenance.

Dependency analysis should identify affected downstream capabilities when mapping status changes.

## 385. Mapping and Service Incidents

If a mapping becomes invalid, affected services may include:

- monitoring,
- irrigation optimization,
- Digital Twin,
- QAI,
- maintenance.

Service Management should be able to reference mapping impact.

## 386. Mapping and Service Change

A service change may alter mapping behavior.

For example:

- new Digital Twin platform,
- new identity provider,
- new IoT gateway.

Change impact should include mapping validation.

## 387. Mapping and Service Configuration

Service configuration should identify which mapping contexts are enabled.

For example:

- pilot,
- simulation,
- operational.

Configuration should not redefine the underlying mapping semantics.

## 388. Mapping and Service Release

A new release should verify backward compatibility of active mappings.

This is particularly important where the mapping registry is shared by multiple services.

## 389. Mapping and Service Upgrade

Upgrades may require migration of mapping schema or APIs.

Migration should preserve:

- mapping identity,
- history,
- provenance,
- lifecycle.

## 390. Mapping and Service Patch

Patches should not unintentionally change endpoint resolution or mapping semantics.

Regression tests should therefore include mapping resolution.

## 391. Mapping and Add-On Services

Future add-on services may consume mapping information.

Examples:

- predictive maintenance,
- crop optimization,
- equipment marketplace,
- sustainability analytics.

Add-ons should use the authoritative mapping service rather than creating competing mappings.

## 392. Mapping and Service Composition

Multiple services may compose around the same mapping.

~~~text
             Mapping
                |
       +--------+--------+
       |        |        |
    Monitor   QAI    Maintenance
       |        |        |
       +--------+--------+
                |
          Virtual Asset
~~~

This demonstrates why mapping must be shared and authoritative.

## 393. Mapping and Service Isolation

A service may have restricted mapping visibility.

For example, a research service may access experimental mappings but not safety-critical operational mappings.

Isolation should be enforced through governance and security controls.

## 394. Mapping and Service Federation

Different services may maintain partial mapping views.

The authoritative mapping service remains responsible for canonical semantics.

Consumers should not silently modify the canonical mapping.

## 395. Mapping and Data Product

A mapping dataset may be exposed as a governed data product.

It should include appropriate:

- metadata,
- provenance,
- quality,
- freshness,
- access policy.

## 396. Mapping and Data Contract

A data contract for mapping exchange should define:

- identifiers,
- endpoint semantics,
- context,
- lifecycle,
- validity,
- provenance,
- confidence.

The contract must preserve semantic meaning across systems.

## 397. Mapping and Schema Evolution

Schema evolution should distinguish:

- additive changes,
- semantic changes,
- breaking changes.

Semantic changes require additional validation because they may alter correspondence interpretation.

## 398. Mapping and Data Validation

Mapping data validation should check:

- required fields,
- identifier resolution,
- cardinality,
- context,
- lifecycle,
- timestamps,
- provenance.

Validation should produce explicit results.

## 399. Mapping and Data Reconciliation

Data reconciliation compares mapping records across:

- registries,
- systems,
- replicas,
- external sources.

Differences should be classified as:

- expected,
- contextual,
- stale,
- erroneous,
- conflicting.

## 400. Mapping and Data Quality Dashboard

A future Digital Farm dashboard may summarize:

~~~text
Physical–Virtual Mapping Health
--------------------------------
Active mappings       : N
Pending mappings      : N
Suspended mappings    : N
Stale mappings        : N
Conflicting mappings  : N
Low-confidence        : N
Unmapped physical     : N
Virtual-only          : N
~~~

The dashboard is a management and observability view, not the mapping model itself.

## 401. Mapping and Observability

Observability should expose mapping conditions such as:

- resolution failures,
- stale mappings,
- conflicts,
- lifecycle transitions,
- synchronization impact.

This enables proactive maintenance.

## 402. Mapping and Metrics

Possible metrics include:

- mapping completeness,
- validation rate,
- active mapping rate,
- stale mapping rate,
- conflict rate,
- average resolution time,
- replacement propagation time.

Metrics should be interpreted within context.

## 403. Mapping and Alerts

Alerts may be generated for:

- critical mapping conflict,
- mapping invalidation,
- control-target mismatch,
- unauthorized mapping change,
- stale safety-critical mapping.

Alert severity should depend on operational impact.

## 404. Mapping and Logging

Technical systems should log material mapping events.

Logs should include enough context to reconstruct:

- what mapping changed,
- when,
- by whom,
- why,
- from which version,
- to which version.

## 405. Mapping and Telemetry

Mapping-related telemetry may include:

- resolution latency,
- cache hit rate,
- synchronization association success,
- mapping validation failures.

Telemetry should remain separate from authoritative mapping records.

## 406. Mapping and Testing

Testing should include:

- unit tests,
- integration tests,
- lifecycle tests,
- identity tests,
- cardinality tests,
- conflict tests,
- replacement tests,
- recovery tests.

## 407. Mapping Unit Testing

Unit tests should validate logical rules such as:

- unique mapping identity,
- valid lifecycle transitions,
- endpoint references,
- cardinality semantics.

## 408. Mapping Integration Testing

Integration testing should verify interaction with:

- asset registry,
- virtual registry,
- state service,
- IoT layer,
- Digital Twin,
- QAI,
- governance.

## 409. Mapping Scenario Testing

Scenario tests should include:

- new physical asset,
- missing virtual asset,
- physical replacement,
- virtual replacement,
- relocation,
- synchronization outage,
- conflicting identity.

## 410. Mapping Failure Testing

Failure tests should verify that:

- invalid mappings are rejected,
- unsafe commands are blocked,
- stale mappings are detected,
- conflicts are surfaced,
- historical records remain intact.

## 411. Mapping Performance Testing

Performance tests may evaluate:

- mapping resolution latency,
- registry query performance,
- concurrent lookup,
- distributed resolution,
- cache behavior.

Performance optimization must not weaken correctness.

## 412. Mapping Scalability

The architecture should scale from:

~~~text
Single Farm
    |
    v
Multiple Farms
    |
    v
Regional Agriculture Network
    |
    v
Federated HoldCo Environment
~~~

The logical mapping model remains consistent at each scale.

## 413. Mapping Multi-Farm Context

A physical asset identity should remain unique within the appropriate namespace.

A farm context may be used to disambiguate local identifiers.

## 414. Mapping Regional Context

Regional environments may aggregate mappings from multiple farms.

Aggregation must preserve source authority and identity lineage.

## 415. Mapping Enterprise Context

Enterprise systems may maintain mappings across multiple subsidiaries or operating units.

Federation rules must prevent identity collision.

## 416. Mapping HoldCo Context

HoldCo may provide shared governance, identity, trust, resource, or service fabrics.

Physical–Virtual Mapping remains a domain-level artifact within the Agriculture Digital Farm.

## 417. Mapping and Shared Infrastructure

Shared infrastructure may host mapping services for multiple domains.

Logical sovereignty and data boundaries remain enforceable even when physical infrastructure is shared.

## 418. Mapping and Sovereignty Architecture

Sovereignty is implemented through:

- identity,
- policy,
- access,
- data boundaries,
- replication controls,
- governance.

It does not require physically separate mapping infrastructure for every domain.

## 419. Mapping and Resource Sharing

Shared compute, storage, and network infrastructure may host mapping services.

Resource sharing does not alter mapping ownership or authority semantics.

## 420. Mapping and Energy Awareness

Energy constraints may affect synchronization or physical execution.

A mapping may remain valid even when an endpoint is temporarily unavailable due to energy constraints.

## 421. Mapping and Network Constraints

Network limitations may affect:

- synchronization,
- observation freshness,
- command delivery.

Mapping remains logically stable unless correspondence itself changes.

## 422. Mapping and Edge Disconnection

An edge device may become disconnected.

The physical–virtual mapping may remain active but its synchronization state becomes degraded or unavailable.

## 423. Mapping and Offline Operation

Offline operation may use locally cached mappings where permitted.

The cached mapping must retain:

- version,
- validity,
- confidence,
- authority.

## 424. Mapping and Reconnection

Upon reconnection:

~~~text
Offline Mapping
      |
      v
Reconnect
      |
      v
Authoritative Check
      |
      v
Reconcile
      |
      v
Continue / Update / Suspend
~~~

## 425. Mapping and Latency

Mapping resolution latency may matter in real-time control.

However, latency optimization must not introduce ambiguous or incorrect endpoint resolution.

## 426. Mapping and Determinism

Where physical control requires deterministic endpoint selection, mapping resolution must provide deterministic results for a fixed mapping version and context.

## 427. Mapping and Idempotency

Mapping lifecycle operations should be designed so that repeated requests do not unintentionally create duplicate mappings.

Examples:

- repeated registration,
- repeated activation,
- repeated replacement.

## 428. Mapping and Transaction Integrity

Where a mapping change affects multiple registries, the implementation should preserve consistency through appropriate transaction or compensation mechanisms.

The logical requirement is consistency; implementation may vary.

## 429. Mapping and Concurrency

Concurrent mapping changes must be controlled.

Example:

~~~text
Update A ----\
              +--> Mapping PVM-001
Update B ----/
              |
              v
         Conflict Check
~~~

The system must not silently lose one valid update.

## 430. Mapping and Optimistic Versioning

Version identifiers may help detect concurrent changes.

An update based on an outdated version should be rejected or reconciled.

## 431. Mapping and Approval Concurrency

Approval should apply to the mapping version actually reviewed.

A mapping changed after approval must not automatically retain approval if the change is material.

## 432. Mapping and Delegated Authority

Organizations may delegate mapping approval.

The record should identify:

- approving authority,
- delegation context,
- scope,
- time.

## 433. Mapping and Expiring Approval

Some high-risk mappings may require approval expiration.

Expiration may trigger:

- review,
- suspension,
- restricted operation.

## 434. Mapping and Risk Classification

Mappings may be classified by operational risk.

Possible categories:

- informational,
- analytical,
- operational,
- control,
- safety-critical.

Risk classification can determine validation and approval requirements.

## 435. Mapping and Risk-Based Validation

Higher-risk mappings should require stronger evidence.

~~~text
Low Risk
   |
Basic Validation

Medium Risk
   |
Enhanced Validation

High Risk
   |
Enhanced Validation
+ Approval
+ Safety Verification
~~~

## 436. Mapping and Safety Case

Safety-critical physical control may require a safety case that references the relevant mappings.

The mapping provides endpoint correspondence within that safety argument.

## 437. Mapping and Fail-Safe Behavior

If mapping validity cannot be established for a safety-critical command, the system should transition to the defined safe behavior.

Mapping failure must never be silently ignored.

## 438. Mapping and Human Escalation

Unresolved mapping ambiguity may require human escalation.

Example:

~~~text
Mapping Conflict
      |
      v
Automatic Resolution Not Permitted
      |
      v
Human Review
      |
      v
Approve / Correct / Suspend
~~~

## 439. Mapping and Assurance Evidence

Assurance evidence may include:

- validation records,
- approvals,
- tests,
- calibration evidence,
- identity evidence,
- reconciliation results.

The mapping should reference rather than duplicate large evidence artifacts.

## 440. Mapping and Certification

Where certification applies, the mapping may reference relevant certification status.

Certification belongs to the applicable governance or assurance process.

## 441. Mapping and Formal Verification

Critical mapping rules may be formally checked.

Examples:

- no prohibited endpoint ambiguity,
- valid cardinality,
- no unauthorized active control mapping,
- lifecycle consistency.

Formal methods are optional implementation techniques.

## 442. Mapping and Architecture Review

Architecture review should verify that:

- mapping is first-class,
- identity layers remain distinct,
- no 1:1 assumption has been introduced,
- physical-only and virtual-only states are supported,
- replacement is supported,
- synchronization remains separate.

## 443. Mapping and Design Review

Design review should verify that technical components correctly implement the logical model.

The review should identify any technology-specific assumptions that could compromise portability.

## 444. Mapping and Implementation Review

Implementation review should verify:

- schema,
- APIs,
- registry,
- lifecycle,
- validation,
- security,
- auditability.

## 445. Mapping and Acceptance Testing

Acceptance testing should demonstrate the minimum pilot scenarios.

At least one successful:

- virtual-first mapping,
- emulated mapping,
- replacement mapping,
- conflict handling,
- reconciliation flow

should be demonstrated.

## 446. Mapping and Phase 1 Exit Criteria

Phase 1 Physical–Virtual Mapping is ready for downstream implementation when:

- core model is defined,
- identities are separated,
- cardinalities are defined,
- lifecycle is defined,
- validation is defined,
- uncertainty is represented,
- pilot mappings are demonstrable,
- future physical integration is supported.

## 447. Mapping and Documentation Completeness

Documentation should include:

- conceptual model,
- lifecycle,
- cardinality,
- schemas,
- examples,
- validation,
- failure modes,
- governance,
- implementation boundaries.

This file provides the foundational conceptual and architectural baseline.

## 448. Mapping and Implementation Artifacts

Implementation artifacts may later include:

- schema definitions,
- registry implementation,
- APIs,
- validation services,
- test fixtures,
- sample mappings,
- migration tools.

These should be developed after architectural approval.

## 449. Mapping and Pilot Demonstration

The pilot should demonstrate a minimum callable flow.

~~~text
Virtual / Emulated Physical Asset
             |
             v
Physical–Virtual Mapping
             |
             v
Virtual Farm State
             |
             v
Sense
             |
             v
Process
             |
             v
Decide
             |
             v
Act / Recommend
             |
             v
Learn
~~~

The demonstration should remain executable within the defined pilot boundary.

## 450. Mapping and Demonstration Evidence

The pilot should retain evidence showing:

- mapping creation,
- endpoint resolution,
- state association,
- decision traceability,
- mapping version,
- lifecycle status.

This makes the architecture demonstrable rather than purely conceptual.

## 451. Mapping and Phase 0 Traceability

Phase 0 defined the minimum callable agriculture use case and its implementation boundary.

Physical–Virtual Mapping realizes the physical/virtual identity correspondence required by that use case.

The mapping therefore provides traceability from Phase 0 requirements into Phase 1 virtualization.

## 452. Mapping and Phase 0 Asset Inventory

Phase 0 Asset Inventory identifies candidate assets.

Phase 1 Physical–Virtual Mapping determines how those assets correspond to physical and virtual endpoints.

This maintains continuity between phases.

## 453. Mapping and Phase 0 Function Inventory

Functions such as:

- sensing,
- irrigation decision,
- actuation,
- monitoring

operate on mapped assets.

The mapping provides the identity context for those functions.

## 454. Mapping and Phase 0 Interface Inventory

Phase 0 interfaces may later reference physical-to-virtual mappings.

For example:

- sensor interface,
- actuator interface,
- QAI interface,
- Digital Twin interface.

Mapping does not replace those interfaces.

## 455. Mapping and Phase 0 Workflow Catalogue

Workflows may include mapping resolution as a step.

Example:

~~~text
Start
  |
Resolve Mapping
  |
Read State
  |
Process
  |
Decide
  |
Act / Recommend
  |
End
~~~

## 456. Mapping and Phase 0 Scenario Catalogue

Scenarios such as:

- normal irrigation,
- dry soil,
- excessive rainfall,
- sensor failure,
- actuator failure

may use different mapping states.

## 457. Mapping and Phase 0 Classical Baseline

The classical baseline should use the same mapped virtual representation as the QAI experiment where comparison is intended.

This maintains experimental fairness.

## 458. Mapping and Phase 0 QAI Evaluation

QAI evaluation should retain mapping context so that measured advantage is attributable to computational method rather than representation mismatch.

## 459. Mapping and Phase 0 KPI

Mapping-related KPIs may include:

- mapping completeness,
- mapping resolution success,
- mapping confidence,
- mapping freshness,
- mapping validation time.

These are supporting KPIs rather than replacing business KPIs.

## 460. Mapping and Phase 0 Value Criteria

Mapping contributes to value by enabling:

- reliable asset context,
- traceable decisions,
- reduced ambiguity,
- future physical integration,
- reusable virtual representations.

## 461. Mapping and Acceptance Criteria

Acceptance criteria should verify that:

- physical and virtual identities remain distinct,
- mappings can be created,
- mappings can be resolved,
- mappings can be invalidated,
- mappings can be replaced,
- mappings remain auditable.

## 462. Mapping and Implementation Scope

The Phase 1 implementation remains within:

~~~text
IN SCOPE
- Virtual assets
- Emulated physical endpoints
- Mapping registry
- Mapping validation
- Simulation
- Laptop execution
- QAI / Classical integration
- Traceability

OPTIONAL LATER
- Real sensors
- IoT
- Physical actuators
- Digital Twin
- CPS

OUT OF PILOT SCOPE
- Large production deployment
- Full enterprise lifecycle
- Full multi-subsidiary federation
~~~

## 463. Mapping and Pilot Boundary Preservation

The mapping model must not cause physical hardware to become mandatory for the pilot.

Its purpose is to preserve the architectural boundary so physical integration can occur later.

## 464. Mapping and Minimum Callable Architecture

The minimum callable architecture is:

~~~text
Virtual Asset
     |
Physical–Virtual Mapping
     |
Emulated Physical Context
     |
Virtual State
     |
QAI / Classical Processing
     |
Decision
     |
Emulated Actuation
     |
Updated State
~~~

This is sufficient to validate the core concept.

## 465. Mapping and Physical Extension Point

The physical extension point is:

~~~text
Emulated Endpoint
       |
       | replace / integrate
       v
Physical Endpoint
~~~

The logical mapping contract remains stable.

## 466. Mapping and Digital Twin Extension Point

The Digital Twin extension point is:

~~~text
Physical–Virtual Mapping
        |
        v
Persistent Twin Relationship
        |
        v
Synchronization
        |
        v
Operational Digital Twin
~~~

The mapping therefore provides an architectural precursor.

## 467. Mapping and CPS Extension Point

The CPS extension point adds:

- physical sensing,
- computation,
- decision,
- actuation,
- feedback.

Mapping remains the identity correspondence layer.

## 468. Mapping and QAI Lab Extension Point

The QAI Lab may use mapping to create experimental representations of physical assets.

These experiments remain isolated until validation and promotion.

## 469. Mapping and Commercial Service Extension

Commercial services may eventually expose mapped asset capabilities through SaaS or other service models.

Commercialization does not change the core mapping semantics.

## 470. Mapping and Architecture Stability

The mapping model should remain stable while technical realization evolves.

Changes in:

- cloud,
- hardware,
- AI,
- QAI,
- IoT,
- Digital Twin platform

should not require redesign of the fundamental physical–virtual correspondence concept.

## 471. Mapping and Technology Evolution

The architecture anticipates evolution from:

~~~text
CPU / GPU / NPU
       |
       v
TPU / FPGA / HPC
       |
       v
QPU / Hybrid QAI
       |
       v
Future QAI Processor
~~~

Physical–Virtual Mapping remains independent of this computational evolution.

## 472. Mapping and Hardware Independence

The mapping does not identify the computational processor as the physical endpoint unless the processor itself is the mapped physical asset.

This preserves the distinction between:

- physical asset,
- computational resource,
- virtual representation.

## 473. Mapping and Resource Identity

Compute resources may themselves have physical and virtual identities.

However, resource mapping and agricultural asset mapping should not be conflated.

Resource Management owns resource semantics.

## 474. Mapping and Data Identity

Data records may reference:

- physical asset ID,
- virtual asset ID,
- mapping ID.

This provides traceability across data pipelines.

## 475. Mapping and Observation Identity

Observations should retain their own identities.

An observation may reference the mapping or virtual asset to establish context.

The mapping does not become the observation identifier.

## 476. Mapping and Decision Identity

Decisions should retain their own identities.

A decision may reference:

- virtual asset,
- mapping,
- observations,
- models,
- execution context.

This supports traceability.

## 477. Mapping and Command Identity

Commands should retain their own identities.

A command may reference the mapped virtual and physical endpoints.

This allows command traceability without making mapping itself a command.

## 478. Mapping and Event Identity

Lifecycle events affecting mappings should have unique event identities where required.

Examples:

- mapping creation,
- validation,
- suspension,
- replacement.

## 479. Mapping and Provenance Graph

The complete traceability graph may be:

~~~text
Physical Asset
      |
      v
Mapping
      |
      v
Virtual Asset
      |
      v
Observation
      |
      v
State
      |
      v
Decision
      |
      v
Command
      |
      v
Physical Effect
~~~

Each arrow represents a different semantic relationship.

## 480. Mapping and End-to-End Traceability

The architecture should support tracing from physical asset to business outcome.

Example:

~~~text
Physical Irrigation Asset
          |
          v
Physical–Virtual Mapping
          |
          v
Virtual Farm State
          |
          v
QAI Decision
          |
          v
Irrigation Action
          |
          v
Water / Crop Outcome
          |
          v
Value Measurement
~~~

This connects physical realization to Digital Farm value management.

## 481. Mapping and Business Outcome

Mapping itself does not create business value.

It enables reliable correspondence required by services that produce value.

This distinction preserves architectural clarity.

## 482. Mapping and Operational Value

Operational value may result from:

- reduced ambiguity,
- better monitoring,
- improved asset utilization,
- reliable automation,
- improved traceability.

Mapping contributes indirectly through identity integrity.

## 483. Mapping and Strategic Value

Strategic value includes:

- reusable architecture,
- physical/virtual continuity,
- technology independence,
- future Digital Twin readiness,
- QAI readiness.

## 484. Mapping and Innovation

A stable mapping layer enables experimentation without repeatedly redesigning physical identity structures.

This supports innovation across:

- models,
- QAI,
- sensors,
- automation,
- Digital Twins.

## 485. Mapping and Reuse

A validated physical–virtual mapping may be reused across multiple services and workflows.

For example:

~~~text
One Mapping
   |
   +--> Monitoring
   +--> Simulation
   +--> QAI
   +--> Maintenance
   +--> Sustainability
~~~

Reuse reduces duplicate identity logic.

## 486. Mapping and Composability

Mapping should compose with:

- asset relationships,
- virtual state,
- models,
- interfaces,
- workflows.

This enables modular Digital Farm architecture.

## 487. Mapping and Modularity

A mapping implementation may be replaced or upgraded without replacing:

- asset model,
- relationship model,
- workflow model,
- QAI logic.

This supports modular evolution.

## 488. Mapping and Decoupling

Physical infrastructure and virtual infrastructure should remain decoupled through explicit mapping.

This is especially important when physical infrastructure changes more slowly than software.

## 489. Mapping and Slow/Fast Evolution

Physical assets may evolve relatively slowly.

Software, models, workflows, and QAI capabilities may evolve rapidly.

Mapping provides a controlled boundary between these rates of change.

~~~text
Slow Physical Evolution
          |
          | Mapping Boundary
          v
Fast Virtual / Software Evolution
~~~

## 490. Mapping and Architectural Continuity

The mapping model provides continuity across:

- pilot,
- post-pilot,
- research,
- Digital Twin,
- CPS,
- QAI Lab,
- commercial service.

## 491. Mapping and Lifecycle Continuity

The same conceptual correspondence can evolve through:

~~~text
Planned
  |
Virtual
  |
Emulated
  |
Physical
  |
Operational
  |
Replaced
  |
Historical
~~~

The mapping lifecycle records this progression.

## 492. Mapping and Architectural Invariants

The following invariants should remain stable:

1. Physical identity is distinct.
2. Virtual identity is distinct.
3. Mapping identity is distinct.
4. Mapping is contextual.
5. Cardinality is explicit.
6. Mapping does not imply synchronization.
7. Mapping does not imply control.
8. Mapping is versioned.
9. Mapping is traceable.
10. Mapping supports replacement.

## 493. Mapping and Anti-Patterns

The architecture should reject patterns such as:

- embedding physical ID as virtual ID without distinction,
- assuming 1:1 correspondence,
- deleting mappings when assets are retired,
- treating mappings as observations,
- treating mappings as synchronization,
- treating mappings as authorization,
- using experimental mappings operationally,
- silently resolving conflicts.

## 494. Mapping and Corrective Principles

When an anti-pattern is discovered:

~~~text
Detect
  |
  v
Classify
  |
  v
Reconcile
  |
  v
Correct / Suspend
  |
  v
Validate
  |
  v
Resume
~~~

Corrective actions must remain auditable.

## 495. Mapping and Governance Principle

The governing principle is:

> No physical-to-virtual correspondence should be treated as authoritative for a context unless its identity, validity, evidence, and lifecycle status satisfy the requirements of that context.

## 496. Mapping and Operational Principle

The operational principle is:

> Always resolve the physical and virtual endpoints through explicit mapping rather than inferred naming or positional assumptions.

## 497. Mapping and Safety Principle

The safety principle is:

> A valid mapping is necessary for physical control but is never sufficient to authorize physical control.

## 498. Mapping and Research Principle

The research principle is:

> Experimental mappings may explore alternative physical–virtual correspondences but must remain isolated from operational authority until validated and promoted.

## 499. Mapping and Pilot Principle

The pilot principle is:

> Physical hardware is optional, but physical–virtual correspondence must be modeled so that the same architecture can evolve from laptop-based emulation to physical Digital Twin and CPS operation.

## 500. Part 3 Completion

Part 3 completes the broader integration and implementation-readiness dimension of the Physical–Virtual Mapping model.

It establishes that the mapping model is:

- traceable to the Phase 1 virtualization architecture,
- independent from asset relationships,
- independent from state,
- independent from synchronization,
- independent from interfaces,
- independent from workflows,
- compatible with all execution modes,
- compatible with QAI and classical processing,
- compatible with Digital Twin and CPS evolution,
- compatible with governance and assurance,
- compatible with security and sovereignty,
- compatible with service management,
- compatible with enterprise integration,
- compatible with federation,
- compatible with physical replacement and virtual replacement,
- compatible with experimentation and research,
- compatible with laptop-only pilot execution,
- compatible with later physical deployment,
- technology-neutral,
- vendor-neutral,
- reusable across Digital Farm services.

The final architectural principle for Part 3 is:

> **Physical–Virtual Mapping is the stable correspondence boundary between the relatively slow-changing physical world and the rapidly evolving virtual, computational, intelligent, and service layers. It preserves identity, context, lifecycle, evidence, safety, and traceability while allowing physical assets, virtual representations, Digital Twins, CPS, QAI, and future technologies to evolve independently without breaking architectural continuity.**

**Status: COMPLETE — PHASE 1 PHYSICAL–VIRTUAL MAPPING BASELINE — PART 3 (SECTIONS 241–500)**
---

