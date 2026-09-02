# Execution Modes

## 1. Purpose

The Execution Modes layer defines the four conceptual modes through which the Digital Farm can represent, reproduce, explore or operate agricultural systems.

Digital Farm supports four conceptual execution modes:

1. Virtualization
2. Emulation
3. Simulation
4. Physical Execution

These modes provide different relationships between the digital environment and the real farm.

The architecture must distinguish them clearly because they answer different questions.

~~~text
Virtualization
     |
     | What is the asset/state?
     v
Emulation
     |
     | How does the device/CPS behave?
     v
Simulation
     |
     | What could happen?
     v
Physical Execution
     |
     | What actually happens?
     v
Real Farm Outcome
~~~

The modes may be used independently or composed into an integrated Digital Farm workflow.

---

## 2. Architectural Position

Execution Modes sit within the broader Digital Farm execution architecture.

~~~text
                    Digital Farm
                         |
                         v
                  Digital Twin / CPS
                         |
                         v
                  Execution Modes
                         |
       +-----------------+-----------------+
       |                 |                 |
       v                 v                 v
 Virtualization      Emulation        Simulation
       |                 |                 |
       +-----------------+-----------------+
                         |
                         v
                  Physical Execution
                         |
                         v
                    Real Outcome
~~~

Execution Modes do not replace:

- Digital Twin
- QAI Intelligence
- Simulation architecture
- Management
- Resource Management
- QAI Runtime
- QAI Advantage Gate
- Digital Farm Management.

They provide execution contexts that those capabilities may use.

---

## 3. Mode Definitions

### Virtualization

Virtualization represents assets, entities, relationships, configuration and state in a digital environment.

It answers:

**What exists and what is its current or represented state?**

### Emulation

Emulation reproduces the behaviour of a device, controller, machine or CPS sufficiently for the intended purpose.

It answers:

**How does this device, controller or CPS behave?**

### Simulation

Simulation explores possible, alternative, future or hypothetical behaviour of a system.

It answers:

**What could happen under these assumptions or conditions?**

### Physical Execution

Physical Execution operates the actual farm environment.

It answers:

**What happens in the real physical system?**

---

## 4. Virtualization

Virtualization provides a digital representation of physical or logical entities.

Examples include:

- farm
- field
- crop
- irrigation system
- pump
- tractor
- sensor
- greenhouse
- storage facility
- workforce resource
- inventory item.

Virtualization may represent:

- identity
- configuration
- state
- relationships
- location
- ownership
- availability
- operational status.

Conceptually:

~~~text
Physical Entity
      |
      v
Digital Representation
      |
      v
State / Relationship / Configuration
~~~

Virtualization is therefore primarily concerned with **representation**.

It does not by itself reproduce physical behaviour or predict future outcomes.

---

## 5. Emulation

Emulation reproduces the behaviour of a device, controller, subsystem or CPS.

Examples include:

- sensor emulation
- irrigation-controller emulation
- pump-controller emulation
- machinery-controller emulation
- greenhouse-controller emulation
- robotic-system emulation
- communication-device emulation
- CPS-controller emulation.

Conceptually:

~~~text
Real Device / Controller / CPS
             |
             v
       Behaviour Model
             |
             v
          Emulator
             |
             v
   Digital Execution Environment
~~~

Emulation may be used to:

- test control logic
- test interfaces
- reproduce device behaviour
- validate integration
- test failure conditions
- test safety mechanisms
- evaluate controller changes
- support development before physical deployment.

Emulation is therefore concerned with **behavioural reproduction**.

---

## 6. Simulation

Simulation represents possible system behaviour under defined assumptions, scenarios and models.

Examples include:

- irrigation scenarios
- crop-growth scenarios
- drought scenarios
- rainfall scenarios
- machinery scheduling
- workforce allocation
- inventory scenarios
- logistics scenarios
- economic scenarios
- climate-resilience scenarios.

Conceptually:

~~~text
Current / Initial State
        |
        v
Scenario
        |
        v
Model Selection
        |
        v
Simulation
        |
        v
Alternative / Future State
~~~

Simulation is therefore concerned with **exploration**.

It may use:

- physics models
- biological models
- statistical models
- ML models
- CPS models
- farm models
- sensor models
- satellite models
- emulators
- co-simulation.

---

## 7. Physical Execution

Physical Execution represents operation of the real agricultural environment.

Examples include:

- actual irrigation
- machinery operation
- planting
- harvesting
- greenhouse control
- physical inventory movement
- workforce activity
- logistics activity.

Conceptually:

~~~text
Authorized Decision
        |
        v
Physical Control / Operation
        |
        v
Real Farm
        |
        v
Observed Outcome
~~~

Physical execution is subject to:

- safety
- operational constraints
- resource availability
- human authorization where required
- environmental conditions
- governance
- compliance
- physical limitations.

It is the mode in which decisions ultimately produce real-world effects.

---

## 8. Execution Mode Comparison

| Mode | Primary Purpose | Main Question |
|---|---|---|
| Virtualization | Representation | What exists and what is its state? |
| Emulation | Behaviour reproduction | How does the device/CPS behave? |
| Simulation | Scenario exploration | What could happen? |
| Physical Execution | Real operation | What happens in reality? |

The distinction is fundamental to the Digital Farm architecture.

A digital representation is not automatically an emulator.

An emulator is not automatically a simulation.

A simulation is not automatically a Digital Twin.

A simulation result is not automatically a physical outcome.

---

## 9. Virtualization vs Digital Twin

Virtualization and Digital Twin are related but not identical.

Virtualization provides a digital representation.

The Digital Twin provides a richer system-level representation including:

- entities
- state
- relationships
- historical context
- configuration
- spatial context
- operational context.

Conceptually:

~~~text
Virtualization
      |
      v
Digital Representation
      |
      +--> Entity
      +--> State
      +--> Relationship
      +--> Configuration
      +--> Context
      |
      v
Digital Twin
~~~

The Digital Twin may therefore use virtualization as one of its foundational mechanisms.

However, **Digital Twin ≠ Virtualization**.

---

## 10. Emulation vs Simulation

Emulation and simulation may overlap technically, but they have different architectural purposes.

### Emulation

Focuses on reproducing behaviour of an existing device, controller or CPS.

### Simulation

Focuses on exploring behaviour under scenarios or assumptions.

Conceptually:

~~~text
Emulation
   |
   | Reproduce
   v
Existing Behaviour


Simulation
   |
   | Explore
   v
Possible / Alternative Behaviour
~~~

An emulator may be used inside a simulation environment.

A simulation may also contain emulated components.

Therefore:

**Emulation can be a component of simulation, but emulation and simulation are not synonymous.**

---

## 11. Simulation vs Physical Execution

Simulation allows alternatives to be evaluated without necessarily changing the real farm.

~~~text
                    Current State
                         |
              +----------+----------+
              |                     |
              v                     v
          Simulation           Physical System
              |                     |
              v                     v
       Scenario Outcome       Real Outcome
              |                     |
              +----------+----------+
                         |
                         v
                      Compare
                         |
                         v
                      Learn
~~~

Simulation can therefore reduce operational risk by evaluating alternatives before physical execution where appropriate.

However, simulation results must not be represented as real-world measurements.

---

## 12. Execution Mode Composition

The four modes may be composed into an end-to-end Digital Farm workflow.

A representative architecture is:

~~~text
Physical Farm
      |
      v
Sensing / Observation
      |
      v
Virtualization / Digital Twin
      |
      +-----------------------------+
      |                             |
      v                             v
   Emulation                    Simulation
      |                             |
      +-------------+---------------+
                    |
                    v
             QAI / AI Analysis
                    |
                    v
             Decision Support
                    |
                    v
          Human / Management
                    |
                    v
          Authorized Physical
             Execution
                    |
                    v
             Real Outcome
                    |
                    v
              Feedback
                    |
                    v
          Digital Twin / Data
~~~

This composition supports the Digital Farm closed loop:

**Sense → Represent → Reproduce → Simulate → Analyse → Decide → Act → Measure → Learn.**

The applicable modes depend on the problem, lifecycle state, risk, resource availability and operational requirements.
---
## 13. Execution Mode Selection

The applicable execution mode should be selected according to the purpose of the activity.

A representative decision model is:

~~~text
What is the objective?
        |
        +-----------------------------+
        |                             |
        v                             v
Represent / Observe             Reproduce Behaviour
        |                             |
        v                             v
 Virtualization                   Emulation
        |                             |
        +-------------+---------------+
                      |
                      v
             Explore Alternatives?
                      |
                 +----+----+
                 |         |
                Yes        No
                 |         |
                 v         v
            Simulation   Physical
                         Execution
~~~

More than one mode may be selected for the same workflow.

The choice should consider:

- purpose
- required fidelity
- latency
- safety
- cost
- resource availability
- data availability
- lifecycle state
- operational risk
- validation requirements.

---

## 14. Execution Modes Across the Digital Farm Lifecycle

The four modes support different stages of the Digital Farm lifecycle.

### Research

May emphasize:

- virtualization
- emulation
- simulation
- experimental combinations.

### Pilot

May combine:

- real sensing
- virtualization
- limited emulation
- simulation
- controlled physical execution.

### Post-Pilot

May emphasize:

- continuous virtualization
- operational emulation where required
- simulation for planning and optimisation
- physical execution.

### Operational Improvement

May continuously cycle between:

~~~text
Physical
   |
   v
Virtualization
   |
   v
Simulation / Emulation
   |
   v
Decision
   |
   v
Physical
~~~

The architecture therefore supports continuity rather than creating separate architectures for Research, Pilot and Post-Pilot.

---

## 15. Execution Modes and Digital Twin State

The Digital Twin provides the contextual state from which execution modes may operate.

~~~text
                    Digital Twin
                         |
       +-----------------+-----------------+
       |                 |                 |
       v                 v                 v
Virtualization       Emulation        Simulation
       |                 |                 |
       +-----------------+-----------------+
                         |
                         v
                  Physical Execution
                         |
                         v
                  Observed Outcome
                         |
                         v
                    Digital Twin
~~~

The Digital Twin may therefore provide:

- initial state
- current state
- historical state
- configuration
- relationships
- constraints
- context.

Execution modes use that context for their respective purposes.

---

## 16. Execution Modes and QAI Intelligence

QAI Intelligence can operate across the execution modes.

Examples include:

### Virtualization

QAI may analyse:

- current state
- relationships
- anomalies
- patterns
- trends.

### Emulation

QAI may analyse:

- controller behaviour
- device behaviour
- CPS behaviour
- failure conditions.

### Simulation

QAI may perform:

- prediction
- optimisation
- scenario analysis
- alternative evaluation.

### Physical Execution

QAI may support:

- real-time decision support
- operational optimisation
- anomaly detection
- adaptive control.

Conceptually:

~~~text
                 QAI Intelligence
                        |
       +----------------+----------------+
       |                |                |
       v                v                v
 Virtualization      Emulation       Simulation
       |                |                |
       +----------------+----------------+
                        |
                        v
               Physical Execution
~~~

QAI Intelligence does not itself define the execution mode.

It provides intelligence that may be applied within or across the modes.

---

## 17. Execution Modes and QAI Runtime

The QAI Runtime provides the computational execution environment for applicable QAI workloads.

It may coordinate:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- hybrid execution.

Execution Mode describes **what kind of system representation or operation is being performed**.

QAI Runtime describes **how computational workloads are executed**.

Therefore:

**Execution Mode ≠ QAI Runtime.**

For example:

~~~text
Simulation
    |
    v
Optimisation Problem
    |
    v
QAI Runtime
    |
    +--> CPU
    +--> GPU / NPU / TPU
    +--> HPC
    +--> Hybrid
    +--> QPU
~~~

The QAI Advantage Gate may determine whether a quantum or hybrid path is justified.

---

## 18. Execution Modes and the QAI Advantage Gate

Execution mode selection and computational-path selection are separate decisions.

For example:

~~~text
Simulation Scenario
       |
       v
Optimisation Problem
       |
       v
QAI Advantage Gate
       |
 +-----+--------+--------+------+
 |              |        |      |
 v              v        v      v
Classical       HPC    Hybrid  Quantum
~~~

The execution mode determines the system context.

The Advantage Gate determines the appropriate computational path.

This separation prevents the assumption that simulation, emulation or physical execution automatically requires quantum computation.

---

## 19. Execution Modes and Management

Management coordinates execution across the modes.

Management may:

- provision environments
- configure execution
- start or stop workloads
- coordinate workflows
- monitor execution
- manage transitions
- handle incidents
- coordinate maintenance
- authorize applicable actions.

Conceptually:

~~~text
Execution Modes
      |
      v
Management
      |
 +----+----+----+----+
 |    |    |    |    |
 v    v    v    v    v
Config Operate Monitor Lifecycle
                     |
                     v
                 Execution
~~~

Management does not become another execution mode.

It provides the operational control and coordination layer around them.

---

## 20. Execution Modes and Resource Management

Each execution mode may have different resource requirements.

### Virtualization

May require:

- storage
- databases
- compute
- network
- Digital Twin infrastructure.

### Emulation

May require:

- compute
- real-time processing
- device interfaces
- controller environments.

### Simulation

May require:

- CPU
- GPU
- NPU
- HPC
- storage
- simulation engines
- QAI resources.

### Physical Execution

May require:

- physical machinery
- sensors
- actuators
- energy
- communication
- workforce
- operational time.

Resource Management coordinates allocation across these requirements.

~~~text
Execution Mode
      |
      v
Resource Requirement
      |
      v
Resource Management
      |
      v
Allocation
      |
      v
Execution
~~~

---

## 21. Execution Modes and Safety

The risk profile differs by execution mode.

A simplified progression is:

~~~text
Virtualization
      |
      v
Emulation
      |
      v
Simulation
      |
      v
Controlled Physical Execution
      |
      v
Full Physical Operation
~~~

Virtual environments generally allow safer experimentation because they do not directly change the physical farm.

Physical execution can create:

- equipment risk
- crop risk
- environmental impact
- worker safety risk
- economic consequences.

Therefore, transition from digital exploration to physical execution should include appropriate:

- validation
- confidence assessment
- policy checks
- safety controls
- authorization
- rollback or fallback where possible.

---

## 22. Execution Mode Fidelity

Different execution modes may operate at different levels of fidelity.

Fidelity may refer to how closely a representation reproduces the relevant characteristics of the target system.

Examples include:

- state fidelity
- behavioural fidelity
- temporal fidelity
- spatial fidelity
- physical fidelity
- sensor fidelity
- communication fidelity
- economic fidelity.

Conceptually:

~~~text
Low Fidelity
     |
     v
Purpose-Specific Fidelity
     |
     v
High Fidelity
     |
     v
Operationally Relevant Fidelity
~~~

Higher fidelity is not automatically better.

The appropriate fidelity depends on the decision being supported.

---

## 23. Execution Mode Verification and Validation

Execution environments should be verified and validated according to their intended purpose.

### Verification

Asks:

**Was the execution model or environment implemented correctly?**

### Validation

Asks:

**Does it adequately represent the intended real-world behaviour for its purpose?**

For example:

~~~text
Model / Emulator
      |
      v
Verification
      |
      v
Validation
      |
      v
Purpose-Specific Confidence
~~~

Validation requirements should increase with the potential impact of the resulting decision.

A simulation used for exploratory research may require different validation evidence from a model supporting physical control.

---

## 24. Execution Mode Transition

A Digital Farm workflow may transition between execution modes.

Example:

~~~text
Virtualization
      |
      v
Emulation
      |
      v
Simulation
      |
      v
Controlled Physical Test
      |
      v
Operational Physical Execution
~~~

Transitions should not be assumed to be automatic.

Each transition may require:

- readiness assessment
- validation
- evidence
- safety review
- governance review
- resource availability
- authorization.

A system may also move backward to a safer or more controlled mode when confidence or operational conditions deteriorate.

---

## 25. Execution Mode Selection Principle

Execution Mode should be selected according to the question being answered.

~~~text
"What exists?"
       -> Virtualization

"How does it behave?"
       -> Emulation

"What could happen?"
       -> Simulation

"What actually happens?"
       -> Physical Execution
~~~

The same agricultural system may therefore use all four modes during its lifecycle.

The architecture should preserve clear boundaries while allowing controlled composition.

The guiding principle is:

**Use the simplest execution mode that provides sufficient fidelity, evidence and confidence for the intended decision or operation.**
---
## 26. Execution Mode Interoperability

The four execution modes should be interoperable where the operational workflow requires it.

For example:

~~~text
Digital Twin
     |
     +----> Virtualization
     |
     +----> Emulation
     |
     +----> Simulation
     |
     +----> Physical Execution
     |
     +----> Feedback
~~~

A single workflow may move between modes multiple times.

Examples include:

- virtualizing a pump
- emulating its controller
- simulating alternative irrigation schedules
- selecting a schedule
- executing the selected schedule physically
- feeding the measured outcome back into the Digital Twin.

Interoperability should occur through explicit interfaces rather than implicit coupling.

---

## 27. Execution Mode Data Flow

Each mode may consume and produce different forms of information.

~~~text
Sensors / Systems
       |
       v
Observed Data
       |
       v
Virtualization / Digital Twin
       |
       +--------------------+
       |                    |
       v                    v
   Emulation            Simulation
       |                    |
       +---------+----------+
                 |
                 v
          QAI / AI Analysis
                 |
                 v
          Decision Support
                 |
                 v
        Physical Execution
                 |
                 v
          Real Observation
                 |
                 v
              Feedback
~~~

Data flowing between modes should preserve, where applicable:

- provenance
- timestamp
- source
- confidence
- uncertainty
- model version
- configuration
- execution context.

Synthetic, simulated, emulated and physical observations must remain distinguishable.

---

## 28. Synthetic Data and Execution Modes

Synthetic data may be used to support development and testing of execution modes.

Examples include:

- synthetic sensor observations
- synthetic crop conditions
- synthetic weather
- synthetic machinery failures
- synthetic water constraints
- synthetic market conditions.

Synthetic data can support:

- development
- testing
- validation
- stress testing
- scenario generation
- research.

However:

**Synthetic data is not real farm data.**

A successful synthetic execution must not automatically be interpreted as evidence of real-world operational performance.

Where real-world claims are required, appropriate real-world validation is necessary.

---

## 29. Imperfect Data

Execution Modes must account for imperfect observations.

Real agricultural data may contain:

- missing values
- noise
- sensor errors
- stale measurements
- conflicting observations
- communication gaps
- calibration errors
- incomplete historical records.

The architecture should therefore support:

~~~text
Observed Data
     |
     v
Quality Assessment
     |
     v
Uncertainty / Confidence
     |
     v
Execution Mode
     |
     v
Result
     |
     v
Confidence-Aware Decision
~~~

The presence of uncertainty should be visible to downstream decision-support processes.

---

## 30. Time and Synchronization

Execution Modes may operate at different time scales.

Examples:

- milliseconds for real-time control
- seconds or minutes for CPS operation
- hours for irrigation scheduling
- days for crop planning
- weeks or months for seasonal planning.

The architecture should distinguish:

- physical time
- simulation time
- event time
- processing time
- observation time.

Conceptually:

~~~text
Physical Time
     |
     v
Observed Event
     |
     v
Digital Twin Time
     |
     +-------------------+
     |                   |
     v                   v
Simulation Time     Processing Time
     |                   |
     +---------+---------+
               |
               v
         Decision Time
               |
               v
        Physical Action
~~~

Synchronization requirements depend on the execution mode and use case.

---

## 31. Co-Simulation

Complex agricultural systems may require multiple models or execution environments to operate together.

Examples include:

- crop model + irrigation model
- machinery model + crop model
- energy model + water model
- weather model + crop model
- logistics model + economic model
- CPS emulator + physical device.

Conceptually:

~~~text
Model A
   |
   +---------+
             |
Model B -----+----> Co-Simulation
             |
Model C -----+
   |
   v
Shared Time / State / Interfaces
             |
             v
       Scenario Outcome
~~~

Co-simulation should use explicit synchronization and interface contracts.

The Digital Farm architecture should remain independent of any particular co-simulation engine.

---

## 32. Hardware-in-the-Loop

Where appropriate, physical hardware may participate in otherwise digital execution environments.

Examples include:

- irrigation controllers
- pumps
- sensors
- edge devices
- robotics controllers
- communication hardware.

Conceptually:

~~~text
Simulation / Emulation
        |
        v
 Hardware Interface
        |
        v
 Physical Hardware
        |
        v
 Measured Response
        |
        v
Simulation / Emulation
~~~

Hardware-in-the-loop can provide stronger evidence than purely software-based execution for selected use cases.

It remains distinct from full physical farm execution.

---

## 33. Software-in-the-Loop

Software components may similarly be evaluated inside virtualized, emulated or simulated environments.

Examples include:

- control software
- optimisation algorithms
- AI models
- QAI pipelines
- Digital Twin services
- decision-support applications.

~~~text
Software Component
       |
       v
Virtual / Emulated Environment
       |
       v
Execution
       |
       v
Behaviour / Performance
       |
       v
Validation Evidence
~~~

Software-in-the-loop provides an intermediate validation mechanism before physical deployment.

---

## 34. Execution Mode Testing

Testing should reflect the intended execution mode.

### Virtualization Testing

May test:

- entity representation
- state consistency
- relationships
- data synchronization
- configuration.

### Emulation Testing

May test:

- device behaviour
- controller behaviour
- protocol behaviour
- failure behaviour
- timing.

### Simulation Testing

May test:

- model correctness
- scenario execution
- parameter sensitivity
- numerical stability
- alternative outcomes.

### Physical Testing

May test:

- real equipment
- real environmental conditions
- operational safety
- actual system response.

Testing should progress toward the level of evidence required for the intended operational claim.

---

## 35. Execution Mode Observability

Each execution mode should expose sufficient observability.

### Virtualization

Observe:

- state
- synchronization
- entity changes
- data quality.

### Emulation

Observe:

- behaviour
- timing
- state transitions
- interface interactions.

### Simulation

Observe:

- scenario
- parameters
- model execution
- outputs
- uncertainty
- computational resources.

### Physical Execution

Observe:

- actual measurements
- equipment state
- environmental conditions
- human actions
- operational outcomes.

A common observability architecture may be used across all modes.

---

## 36. Execution Mode Evidence

Execution results should generate evidence appropriate to their purpose.

Evidence may include:

- execution configuration
- input dataset
- model version
- emulator version
- simulation scenario
- execution path
- resource usage
- output
- confidence
- validation result
- comparison with baseline
- physical outcome where applicable.

Conceptually:

~~~text
Execution
   |
   v
Result
   |
   +--> Configuration
   +--> Inputs
   +--> Models
   +--> Resources
   +--> Outputs
   +--> Confidence
   +--> Validation
   |
   v
Evidence Record
~~~

Evidence allows results from different execution modes to be compared without confusing their meaning.

---

## 37. Execution Mode Comparison and Baselines

Where an execution mode is used to evaluate an optimisation or decision, an appropriate baseline should be established.

For example:

~~~text
Baseline
   |
   v
Classical / Existing Method
   |
   v
Alternative Execution
   |
   v
Comparison
   |
   v
Measured Difference
   |
   v
Operational / Economic Assessment
~~~

The baseline may be:

- existing farm practice
- classical algorithm
- deterministic method
- conventional optimisation
- existing control logic
- existing planning process.

This is particularly important when evaluating QAI or quantum-enabled execution.

A different execution environment does not itself demonstrate improvement.

---

## 38. Execution Mode Transition Evidence

Moving from one execution mode to another should be supported by evidence appropriate to the transition.

For example:

~~~text
Simulation
    |
    | scenario evidence
    v
Emulation
    |
    | behavioural evidence
    v
Controlled Physical Test
    |
    | physical evidence
    v
Operational Execution
~~~

The required evidence may include:

- model validation
- emulator validation
- safety validation
- integration testing
- performance testing
- resource validation
- human acceptance
- operational readiness
- economic justification.

The transition should be reversible where practical.

If confidence, quality or safety deteriorates, the system should be able to return to a more controlled execution mode.
---
## 39. Execution Mode Security

All execution modes operate within the Digital Farm Security and Trust architecture.

Security considerations include:

- identity
- authentication
- authorization
- secure communication
- data protection
- environment isolation
- configuration protection
- model protection
- execution integrity
- auditability.

The security requirements may differ by mode.

~~~text
Virtualization
      |
      v
Digital Security Boundary
      |
      +----> Emulation
      |
      +----> Simulation
      |
      +----> Physical Execution
      |
      v
Security / Trust / Governance
~~~

Physical execution generally requires stronger operational controls because it can directly affect people, equipment, crops, resources and the environment.

---

## 40. Execution Mode Isolation

Research, testing and operational execution should be appropriately isolated.

Isolation may be achieved through:

- separate environments
- identity boundaries
- network boundaries
- data boundaries
- configuration boundaries
- resource policies
- deployment policies
- authorization controls.

Conceptually:

~~~text
Research Environment
        |
        | isolated
        v
Validation Environment
        |
        | controlled promotion
        v
Pilot Environment
        |
        | controlled promotion
        v
Post-Pilot / Operational Environment
~~~

This prevents experimental execution from unintentionally affecting operational systems.

---

## 41. Execution Mode Promotion

Execution environments may be promoted through controlled lifecycle stages.

~~~text
Experimental
     |
     v
Verified
     |
     v
Validated
     |
     v
Pilot
     |
     v
Operational Candidate
     |
     v
Post-Pilot
~~~

Promotion should consider:

- technical evidence
- behavioural evidence
- model fidelity
- safety
- security
- governance
- resource requirements
- integration readiness
- operational value.

Promotion is therefore an evidence-based lifecycle decision.

---

## 42. Execution Mode Rollback

Execution-mode transitions should support rollback where practical.

For example:

~~~text
Physical Execution
       |
       | confidence / safety degradation
       v
Controlled Physical Test
       |
       v
Emulation
       |
       v
Simulation
       |
       v
Virtualization
~~~

Rollback may be triggered by:

- unexpected behaviour
- low confidence
- model degradation
- equipment failure
- communication failure
- unsafe conditions
- insufficient resources
- governance conditions.

Rollback should be designed into the operational architecture rather than treated only as an emergency procedure.

---

## 43. Execution Mode Resilience

Execution Modes should support graceful degradation when dependencies fail.

Examples include:

- simulation engine unavailable
- emulator unavailable
- Digital Twin synchronization failure
- network failure
- compute-resource shortage
- QPU unavailable
- sensor failure
- physical equipment failure.

Possible responses include:

- alternate execution environment
- classical fallback
- reduced-fidelity execution
- cached state
- manual operation
- delayed execution
- controlled shutdown.

Conceptually:

~~~text
Primary Execution
       |
       v
Health / Availability Check
       |
   +---+---+
   |       |
Healthy  Failure
   |       |
   v       v
Normal   Fallback
Execution / Safe State
   |       |
   +---+---+
       |
       v
Operational Continuity
~~~

The applicable fallback must depend on safety and operational requirements.

---

## 44. Execution Mode Resource Awareness

Execution Mode selection should account for resource availability.

Resources may include:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- memory
- storage
- network
- energy
- edge capacity
- physical equipment
- workforce
- operational time.

For example:

~~~text
Scenario
   |
   v
Execution Requirement
   |
   v
Resource Estimation
   |
   v
Resource Availability
   |
   v
Execution Mode
~~~

Resource constraints may cause the system to select:

- a lower-fidelity simulation
- a different simulation model
- a classical algorithm
- an HPC environment
- an emulation environment
- delayed execution
- physical execution only after resources become available.

---

## 45. Execution Mode Cost Awareness

Each execution mode may have different costs.

Potential cost dimensions include:

- compute cost
- storage cost
- network cost
- energy cost
- QPU cost
- equipment cost
- workforce cost
- operational opportunity cost
- physical risk cost
- time cost.

Conceptually:

~~~text
Execution Option
      |
      v
Resource Requirement
      |
      v
Cost Assessment
      |
      v
Risk / Value Assessment
      |
      v
Execution Decision
~~~

The most sophisticated execution environment is not automatically the most appropriate.

The objective is to achieve sufficient evidence, fidelity and value within applicable constraints.

---

## 46. Execution Mode Fidelity Selection

Fidelity should be selected according to the intended purpose.

For example:

~~~text
Exploratory Question
       |
       v
Low / Moderate Fidelity
       |
       v
Decision-Support Question
       |
       v
Purpose-Specific Fidelity
       |
       v
Safety / Control Question
       |
       v
High Operational Fidelity
~~~

Higher fidelity may require additional:

- compute
- data
- calibration
- model complexity
- synchronization
- validation.

Therefore fidelity should be treated as a resource-aware architectural decision.

---

## 47. Execution Mode Calibration

Models, emulators and simulations may require calibration against appropriate reference data.

Calibration may involve:

- parameter estimation
- sensor characteristics
- equipment characteristics
- environmental conditions
- historical observations
- physical measurements.

Conceptually:

~~~text
Reference Data
      |
      v
Model / Emulator
      |
      v
Calibration
      |
      v
Updated Parameters
      |
      v
Verification / Validation
~~~

Calibration should not be confused with validation.

Calibration adjusts model parameters.

Validation evaluates whether the resulting model is sufficiently representative for its intended purpose.

---

## 48. Execution Mode Reproducibility

Digital execution should be reproducible where practical.

A reproducible execution record may include:

- input dataset
- scenario
- configuration
- model version
- emulator version
- simulation version
- software version
- execution path
- resource configuration
- random seeds where applicable
- timestamp
- output
- evidence.

Conceptually:

~~~text
Execution Record
      |
 +----+----+----+----+
 |    |    |    |    |
Input Model Config Resource
 |    |    |    |
 +----+----+----+----+
          |
          v
      Re-execution
          |
          v
      Comparison
~~~

Reproducibility supports:

- validation
- audit
- research
- debugging
- operational learning
- evidence generation.

---

## 49. Execution Mode Provenance

Execution provenance should identify how an output was produced.

Provenance may include:

- source observations
- Digital Twin state
- model
- emulator
- simulation scenario
- QAI pipeline
- computational path
- resources
- configuration
- user or system initiating the execution
- authorization
- resulting action.

Conceptually:

~~~text
Source
  |
  v
State
  |
  v
Model / Emulator / Simulation
  |
  v
QAI / Computational Path
  |
  v
Result
  |
  v
Decision
  |
  v
Action
~~~

Provenance creates traceability from an outcome back to its originating evidence.

---

## 50. Execution Mode Governance

Execution Modes remain subject to common Digital Farm governance.

Governance may determine:

- who may execute
- what data may be used
- what environments may interact
- which models are approved
- which actions require human authorization
- which physical systems may be controlled
- what evidence is required
- when an execution environment must be isolated.

A representative governance boundary is:

~~~text
Execution Mode
      |
      v
Governance Policies
      |
 +----+----+----+----+
 |    |    |    |    |
Data Safety Security Authorization
      |
      v
Permitted Execution
~~~

Governance should remain policy-driven rather than embedded independently within each execution mode.

---

## 51. Execution Mode Architecture Principles

The Execution Modes architecture follows these principles:

1. **Four distinct conceptual modes**
   - Virtualization
   - Emulation
   - Simulation
   - Physical Execution

2. **Clear semantic boundaries**
   Each mode answers a different system question.

3. **Composable execution**
   Multiple modes may participate in the same workflow.

4. **Digital Twin distinction**
   Digital Twin is not synonymous with any single execution mode.

5. **Simulation distinction**
   Simulation explores alternatives; it does not represent actual outcomes.

6. **Emulation distinction**
   Emulation reproduces relevant device, controller or CPS behaviour.

7. **Physical distinction**
   Physical Execution produces real-world effects and therefore requires appropriate operational controls.

8. **Evidence-driven transitions**
   Movement between modes should be supported by appropriate verification and validation.

9. **Resource awareness**
   Execution-mode selection must consider available computational, physical, economic and operational resources.

10. **Safety and governance**
    Physical impact requires appropriate policy, safety, authorization and oversight.

11. **Technology neutrality**
    Execution Modes are architectural concepts, not vendor-specific technologies.

12. **Reversibility**
    Where practical, workflows should support rollback to safer or more controlled execution modes.

13. **Provenance and reproducibility**
    Important execution results should retain sufficient information to understand and reproduce how they were generated.

14. **Lifecycle continuity**
    The same execution-mode architecture supports Research, Pilot and Post-Pilot operation.

The central principle is:

**Execution Modes describe the relationship between the Digital Farm and the system being represented, reproduced, explored or operated; they do not define separate application architectures.**
---
## 52. Execution Mode Reference Matrix

The four execution modes can be compared across their primary architectural characteristics.

| Characteristic | Virtualization | Emulation | Simulation | Physical Execution |
|---|---|---|---|---|
| Primary purpose | Representation | Behaviour reproduction | Scenario exploration | Real operation |
| Main question | What exists? | How does it behave? | What could happen? | What happens? |
| Real physical effect | No | No | No | Yes |
| State representation | Primary | Supporting | Initial / scenario state | Actual state |
| Behaviour reproduction | Limited | Primary | Model-dependent | Actual |
| Future exploration | Limited | Limited | Primary | Actual outcome |
| Safety risk | Low | Low–moderate | Controlled | Potentially high |
| Typical use | Digital Twin | CPS testing | Planning / optimisation | Operations |
| Main evidence | State consistency | Behavioural fidelity | Scenario validity | Physical outcome |

The matrix is conceptual.

A particular implementation may combine characteristics from more than one mode.

---

## 53. Virtualization as the Representation Foundation

Virtualization provides the foundation for representing agricultural entities digitally.

Examples include:

~~~text
Farm
 |
 +-- Field
 |    |
 |    +-- Crop
 |    +-- Soil
 |    +-- Sensors
 |
 +-- Water System
 |    |
 |    +-- Reservoir
 |    +-- Pump
 |    +-- Irrigation Network
 |
 +-- Assets
 |    |
 |    +-- Tractor
 |    +-- Harvester
 |    +-- Robotics
 |
 +-- Infrastructure
 |
 +-- Workforce
 |
 +-- Inventory
 |
 +-- Economic Resources
~~~

The representation may include:

- identity
- type
- location
- state
- relationships
- configuration
- ownership
- availability
- historical information.

Virtualization therefore establishes the digital representation upon which higher-level Digital Farm capabilities can operate.

---

## 54. Emulation as the Behavioural Validation Layer

Emulation provides a controlled environment for reproducing selected behaviour.

It may reproduce:

- sensor responses
- actuator responses
- controller behaviour
- machinery behaviour
- communication behaviour
- CPS interactions.

A representative architecture is:

~~~text
Digital Twin State
       |
       v
Device / CPS Model
       |
       v
Emulator
       |
       +----> Controller
       |
       +----> Interface
       |
       +----> Fault Injection
       |
       v
Observed Behaviour
~~~

Emulation can therefore provide a bridge between abstract system representation and physical testing.

---

## 55. Simulation as the Scenario Exploration Layer

Simulation provides an environment for exploring alternatives.

A scenario may specify:

- initial conditions
- assumptions
- constraints
- environmental conditions
- resource availability
- objectives
- disturbances
- candidate actions.

~~~text
Initial State
     |
     v
Scenario
     |
     +--> Assumptions
     +--> Constraints
     +--> Objectives
     +--> Disturbances
     |
     v
Model / Simulation
     |
     v
Alternative Outcome
~~~

Multiple scenarios may be executed and compared.

For example:

~~~text
Scenario A -> Outcome A
Scenario B -> Outcome B
Scenario C -> Outcome C
Scenario D -> Outcome D
                  |
                  v
             Comparison
                  |
                  v
             Decision Support
~~~

---

## 56. Physical Execution as the Outcome Layer

Physical Execution provides the real-world result against which digital representations, models and simulations can ultimately be evaluated.

~~~text
Decision
   |
   v
Authorized Action
   |
   v
Physical Farm
   |
   v
Actual Outcome
   |
   v
Measurement
   |
   v
Digital Twin
~~~

Examples include:

- actual irrigation volume
- actual machinery operation
- actual crop response
- actual energy consumption
- actual inventory movement
- actual workforce activity.

Physical outcomes provide important evidence for:

- model validation
- calibration
- operational improvement
- value measurement
- learning.

---

## 57. Execution Mode Feedback

Feedback connects physical execution back to the digital environment.

~~~text
Physical Execution
       |
       v
Observation
       |
       v
Sensing / Communication
       |
       v
Digital Twin
       |
       +------------+
       |            |
       v            v
   Emulation    Simulation
       |            |
       +------+-----+
              |
              v
         QAI / AI
              |
              v
           Decision
              |
              v
      Physical Execution
~~~

This creates a continuous learning loop.

The feedback loop can improve:

- state accuracy
- model parameters
- predictions
- optimisation
- operational policies
- resource planning
- confidence.

---

## 58. Execution Modes and Closed-Loop Control

Where the Digital Farm supports closed-loop operations, execution modes become part of the control lifecycle.

~~~text
Sense
  |
  v
Represent
  |
  v
Analyse
  |
  v
Simulate / Emulate
  |
  v
Decide
  |
  v
Authorize
  |
  v
Act
  |
  v
Measure
  |
  v
Learn
  |
  +------> Sense
~~~

Not every workflow must operate as a closed loop.

Open-loop workflows remain valid for:

- planning
- analysis
- research
- scenario evaluation
- long-horizon forecasting.

The architecture supports both.

---

## 59. Execution Modes and Open-Loop Analysis

An open-loop process may evaluate alternatives without immediately applying an action to the physical farm.

~~~text
Current State
     |
     v
Scenario
     |
     v
Simulation
     |
     v
Analysis
     |
     v
Recommendation
     |
     v
Human Decision
~~~

This is particularly appropriate when:

- consequences are significant
- additional validation is required
- physical execution is not yet authorized
- the objective is strategic planning
- the system is in Research or Pilot.

The recommendation remains separate from physical execution.

---

## 60. Execution Modes and Hybrid Digital-Physical Operation

The Digital Farm may operate with digital and physical components simultaneously.

Examples include:

- physical sensors with simulated equipment
- physical controllers with emulated environments
- physical weather observations with simulated crop scenarios
- physical irrigation equipment with virtual planning
- physical farm state with digital optimisation.

Conceptually:

~~~text
Physical Components
      |
      +----------------+
      |                |
      v                v
Virtualized State   Physical Measurement
      |                |
      +--------+-------+
               |
               v
        Digital Farm
               |
      +--------+--------+
      |                 |
      v                 v
   Emulation         Simulation
      |                 |
      +--------+--------+
               |
               v
          QAI / AI
               |
               v
      Physical / Digital Action
~~~

This hybrid operation is a core capability of the Digital Farm architecture.

---

## 61. Execution Modes and Digital Farm Twin Continuity

Execution Modes support continuity between the Digital Farm's digital and physical representations.

~~~text
Physical Farm
      |
      v
Observed State
      |
      v
Digital Twin
      |
      +-----------------------+
      |                       |
      v                       v
Emulation                Simulation
      |                       |
      +-----------+-----------+
                  |
                  v
            Decision Support
                  |
                  v
          Physical Execution
                  |
                  v
             New State
                  |
                  v
             Digital Twin
~~~

This continuity allows the Digital Farm to move from:

- observation
- representation
- experimentation
- scenario analysis
- decision
- action
- measurement
- learning.

The Digital Twin remains the continuity mechanism for system state and relationships.

---

## 62. Execution Mode Architecture Boundary

The execution-mode layer must not absorb responsibilities belonging to other architectural layers.

| Concern | Primary Architectural Layer |
|---|---|
| Farm state and relationships | Digital Twin |
| Domain capabilities | Domain Services |
| Intelligence | QAI Intelligence |
| Computational execution | QAI Runtime |
| Quantum suitability | QAI Advantage Gate |
| Resource allocation | Resource Management |
| Operational coordination | Management |
| Service lifecycle | Service Management |
| Interfaces | Interfaces |
| Connections and adapters | Integration |
| Governance | Governance |
| Execution context | Execution Modes |

This boundary prevents architectural responsibilities from becoming duplicated across execution environments.

---

## 63. Execution Mode Implementation Structure

The conceptual directory may evolve into implementation-specific components while preserving the architectural boundaries.

A possible structure is:

~~~text
execution_modes/
|
+-- virtualization/
|   +-- representation/
|   +-- state/
|   +-- configuration/
|
+-- emulation/
|   +-- devices/
|   +-- controllers/
|   +-- cps/
|   +-- interfaces/
|
+-- simulation/
|   +-- models/
|   +-- scenarios/
|   +-- engines/
|   +-- co_simulation/
|
+-- physical/
|   +-- devices/
|   +-- actuators/
|   +-- operational_interfaces/
|
+-- interfaces/
+-- tests/
+-- evidence/
~~~

This is a conceptual organization.

Actual implementation technology should be selected later according to the relevant engineering requirements.

---

## 64. Final Execution Modes Architecture

The complete execution-mode relationship can be represented as:

~~~text
                         REAL FARM
                            |
                            v
                    Physical Execution
                            |
                            | observations
                            v
                 +----------------------+
                 |   Digital Twin       |
                 | State / Relationships|
                 +----------------------+
                            |
              +-------------+-------------+
              |                           |
              v                           v
       Virtualization                Domain Context
              |                           |
              +-------------+-------------+
                            |
             +--------------+--------------+
             |                             |
             v                             v
         Emulation                     Simulation
      Behavioural Model             Scenario Model
             |                             |
             +--------------+--------------+
                            |
                            v
                     QAI / AI Intelligence
                            |
                            v
                    Decision Support
                            |
                            v
                    Management / Human
                            |
                            v
                  Authorized Physical
                      Execution
                            |
                            v
                       Real Outcome
                            |
                            v
                         Feedback
                            |
                            +----------> Digital Twin
~~~

The four modes therefore form complementary parts of a single Digital Farm architecture.

They should not be interpreted as four competing implementations.

---

## 65. Final Design Principles

The Execution Modes architecture is governed by the following principles:

1. **Virtualization represents.**
2. **Emulation reproduces behaviour.**
3. **Simulation explores alternatives.**
4. **Physical Execution operates reality.**
5. **Digital Twin maintains system state and relationships.**
6. **Execution Modes are composable.**
7. **Execution Mode is distinct from computational execution.**
8. **QAI Runtime determines how computational workloads execute.**
9. **QAI Advantage Gate determines whether quantum or hybrid execution is justified.**
10. **Resource Management determines how required resources are allocated.**
11. **Management coordinates operational execution.**
12. **Governance determines applicable policy and authorization boundaries.**
13. **Synthetic and simulated results must remain distinguishable from physical observations.**
14. **Execution transitions require appropriate evidence and validation.**
15. **Higher fidelity is not automatically better; fidelity should match purpose.**
16. **Digital execution should be reproducible where practical.**
17. **Physical execution requires appropriate safety and operational controls.**
18. **Failure conditions should support graceful degradation and fallback.**
19. **Feedback from physical operation should improve digital representations and models.**
20. **The same architecture supports Research, Pilot and Post-Pilot lifecycle states.**

The central principle is:

**Execution Modes define whether the Digital Farm is representing, reproducing, exploring or operating a system; they provide complementary execution contexts while preserving the distinct roles of Digital Twin, QAI, Simulation, Management and Physical Operations.**

The resulting conceptual distinction is:

**Virtualization → What exists**

**Emulation → How it behaves**

**Simulation → What could happen**

**Physical Execution → What actually happens**
---
## 66. Execution Modes and External Systems

Execution Modes may interact with systems outside the Digital Farm.

Examples include:

- ERP systems
- farm-management platforms
- weather services
- satellite platforms
- drone systems
- IoT platforms
- machinery platforms
- irrigation controllers
- logistics systems
- market systems.

The architectural flow is:

~~~text
External System
      |
      v
Interface
      |
      v
Integration
      |
      v
Digital Farm
      |
      v
Execution Mode
~~~

External systems should connect through defined interfaces and integration boundaries.

An external system should not become an implicit definition of an Execution Mode.

---

## 67. Execution Modes and IoT

IoT devices may participate in multiple execution modes.

For example:

~~~text
Physical Sensor
      |
      v
Real Observation
      |
      v
Virtualized Sensor
      |
      +------------------+
      |                  |
      v                  v
Emulated Sensor      Simulated Sensor
      |                  |
      +---------+--------+
                |
                v
          Digital Farm
~~~

A physical sensor may provide real observations.

An emulated sensor may reproduce expected sensor behaviour.

A simulated sensor may generate observations for a scenario.

A virtualized sensor may represent the sensor and its state within the Digital Twin.

These representations must remain distinguishable.

---

## 68. Execution Modes and Satellite / Remote Sensing

Satellite and remote-sensing information may enter the Digital Farm through the sensing and integration architecture.

A representative flow is:

~~~text
Satellite / Remote Sensing
          |
          v
Observation
          |
          v
Data / Integration
          |
          v
Digital Twin
          |
          v
Virtualization
          |
          +------------------+
          |                  |
          v                  v
       Simulation        QAI / AI
          |                  |
          +--------+---------+
                   |
                   v
             Decision Support
~~~

Satellite observations may therefore contribute to:

- crop-state representation
- water assessment
- scenario construction
- crop-health analysis
- historical analysis
- validation.

Satellite data does not itself constitute a Digital Twin or simulation.

---

## 69. Execution Modes and Robotics

Agricultural robotics may operate across multiple execution environments.

Examples include:

- virtual robot representation
- robot-controller emulation
- simulated robot
- physical robot.

Conceptually:

~~~text
Physical Robot
      |
      v
Robot Representation
      |
      +----------------------+
      |                      |
      v                      v
Controller Emulation      Robot Simulation
      |                      |
      +----------+-----------+
                 |
                 v
          QAI / AI Planning
                 |
                 v
        Authorized Robot Action
                 |
                 v
           Physical Robot
~~~

This architecture supports testing and optimisation before physical execution.

Physical robotic actions remain subject to applicable safety, authorization and operational controls.

---

## 70. Execution Modes and Greenhouse Systems

Greenhouse systems may combine all four modes.

For example:

~~~text
Greenhouse
    |
    +--> Physical Sensors
    |
    +--> Virtualized Environment
    |
    +--> Controller Emulation
    |
    +--> Climate Simulation
    |
    +--> Physical Control
    |
    v
Measured Greenhouse Outcome
~~~

Simulation may explore:

- temperature
- humidity
- irrigation
- lighting
- ventilation
- crop response
- energy usage.

Emulation may validate controller behaviour.

Virtualization may represent greenhouse state.

Physical Execution applies authorized control to the real greenhouse.

---

## 71. Execution Modes and Post-Harvest Systems

Execution Modes extend beyond field production.

They may support:

- storage
- sorting
- grading
- packaging
- refrigeration
- transportation
- distribution.

Example:

~~~text
Harvest
   |
   v
Physical / Digital State
   |
   v
Virtualized Inventory
   |
   v
Storage / Logistics Simulation
   |
   v
Alternative Evaluation
   |
   v
Decision
   |
   v
Physical Handling / Transport
   |
   v
Observed Outcome
~~~

This enables the Digital Farm architecture to extend from production toward the broader seed-to-shelf value chain.

---

## 72. Execution Modes and Economic Simulation

Economic and operational decisions may also use execution modes.

Examples include:

- crop planning
- water allocation
- machinery allocation
- inventory planning
- workforce scheduling
- logistics planning
- market allocation.

A representative process is:

~~~text
Digital Farm State
       |
       v
Economic Scenario
       |
       v
Simulation
       |
       v
Cost / Risk / Value
       |
       v
Alternative Comparison
       |
       v
Decision
       |
       v
Physical / Operational Execution
~~~

Economic simulation should remain clearly identified as simulated or estimated information.

It should not be confused with realized economic value.

---

## 73. Execution Modes and Resource Optimization

Execution Modes provide environments in which resource-optimization problems may be evaluated.

Examples include:

- water allocation
- energy allocation
- machinery scheduling
- workforce scheduling
- inventory allocation
- logistics routing.

The flow may be:

~~~text
Resource State
      |
      v
Domain Service
      |
      v
Optimization Problem
      |
      v
Simulation / Emulation
      |
      v
QAI Advantage Gate
      |
      v
Classical / HPC / Hybrid / Quantum
      |
      v
Candidate Solution
      |
      v
Decision Support
~~~

The execution environment and computational path remain separate architectural concerns.

---

## 74. Execution Modes and Scenario Libraries

Reusable scenarios may be maintained for recurring agricultural conditions.

Examples include:

- normal operating conditions
- drought
- water shortage
- excess rainfall
- sensor failure
- machinery failure
- workforce shortage
- inventory shortage
- demand spike
- transport disruption
- crop stress.

Conceptually:

~~~text
Scenario Library
      |
      +--> Normal
      +--> Drought
      +--> Water Shortage
      +--> Sensor Failure
      +--> Machinery Failure
      +--> Workforce Shortage
      +--> Inventory Shortage
      +--> Demand Spike
      +--> Transport Disruption
      +--> Crop Stress
      |
      v
Execution Mode
~~~

The same scenario may be evaluated through:

- simulation
- emulation
- controlled physical testing
- operational observation.

This creates reusable evidence across the Digital Farm lifecycle.

---

## 75. Execution Modes and Fault Injection

Emulation and simulation may be used to evaluate controlled fault conditions.

Examples include:

- sensor failure
- communication loss
- pump failure
- machinery failure
- controller failure
- network disruption
- resource shortage
- unexpected environmental conditions.

Conceptually:

~~~text
Normal System
      |
      v
Fault Injection
      |
      +--> Sensor Failure
      +--> Device Failure
      +--> Network Failure
      +--> Resource Failure
      +--> Model Failure
      |
      v
System Response
      |
      v
Resilience Assessment
~~~

Fault injection should remain controlled and isolated from production systems unless explicitly authorized.

---

## 76. Execution Modes and Stress Testing

Execution environments may be used to test conditions beyond normal operating ranges.

Stress testing may evaluate:

- high sensor volumes
- large numbers of assets
- extreme weather
- severe resource constraints
- large optimization problems
- high event rates
- degraded connectivity
- compute shortages.

A representative flow is:

~~~text
Normal Configuration
       |
       v
Stress Scenario
       |
       v
Execution
       |
       v
Performance / Resilience
       |
       v
Threshold Assessment
       |
       v
Improvement
~~~

Stress testing helps identify operational limits before they are encountered in physical operation.

---

## 77. Execution Modes and Performance Testing

Performance testing may evaluate:

- latency
- throughput
- scalability
- resource consumption
- synchronization
- execution time
- model runtime
- communication delay.

For example:

~~~text
Execution Mode
      |
      v
Workload
      |
      v
Performance Measurement
      |
      +--> Latency
      +--> Throughput
      +--> Compute
      +--> Memory
      +--> Network
      +--> Energy
      |
      v
Performance Evidence
~~~

Performance should be measured against the requirements of the intended use case.

A faster execution is not automatically better if it reduces accuracy, safety, reliability or value.

---

## 78. Execution Modes and Scalability

The architecture should support scaling from a small pilot to larger operational environments.

Scaling dimensions may include:

- number of farms
- number of fields
- number of assets
- number of sensors
- number of scenarios
- number of concurrent users
- computational workload
- geographic coverage.

Conceptually:

~~~text
Pilot
  |
  v
Single Farm
  |
  v
Multiple Fields
  |
  v
Multiple Farms
  |
  v
Regional Operation
  |
  v
Large-Scale Agriculture Ecosystem
~~~

Scaling should preserve:

- execution-mode semantics
- Digital Twin boundaries
- domain-service boundaries
- governance
- security
- provenance
- resource management
- operational control.

The architecture should scale through composition and resource expansion rather than by creating separate execution architectures for each scale.
---
## 79. Execution Modes and Multi-Scale Operation

Execution Modes should support multiple operational scales.

### Device Level

Examples:

- sensor
- actuator
- pump
- controller
- machinery component.

### CPS Level

Examples:

- irrigation system
- greenhouse system
- autonomous machinery
- robotic subsystem.

### Farm Level

Examples:

- field operations
- crop management
- water management
- farm logistics.

### Regional / Ecosystem Level

Examples:

- regional water allocation
- supply-chain planning
- climate resilience
- market coordination.

Conceptually:

~~~text
Device
  |
  v
CPS
  |
  v
Farm
  |
  v
Regional System
  |
  v
Agricultural Ecosystem
~~~

The same execution-mode semantics apply at each scale.

---

## 80. Execution Modes and System-of-Systems Operation

Agriculture operates as a system of systems.

The Digital Farm may interact with:

- suppliers
- equipment providers
- energy systems
- water systems
- technology providers
- logistics
- processors
- distributors
- markets
- consumers
- government systems.

Execution Modes may therefore be applied across system boundaries.

~~~text
Supplier Systems
      |
      v
Farm Systems
      |
      v
Processing / Storage
      |
      v
Logistics
      |
      v
Markets
      |
      v
Consumers
~~~

Each system may have its own physical, virtualized, emulated and simulated representations.

The Digital Farm architecture coordinates these representations through defined interfaces.

---

## 81. Execution Modes and Value-Chain Continuity

Execution Modes support the broader agricultural value chain.

For example:

~~~text
Seed
 |
 v
Crop Production
 |
 v
Harvest
 |
 v
Storage
 |
 v
Processing
 |
 v
Packaging
 |
 v
Transport
 |
 v
Wholesale / Retail
 |
 v
Consumer
~~~

Different portions of the value chain may use different execution modes.

Simulation may evaluate:

- harvest timing
- storage conditions
- transport alternatives
- demand scenarios
- destination alternatives.

Physical execution produces actual value-chain outcomes.

Virtualization maintains digital representations of the relevant entities and states.

Emulation may reproduce selected equipment or process behaviour.

---

## 82. Execution Modes and Resilience Engineering

Execution Modes provide an important mechanism for resilience analysis.

Potential disruptions include:

- drought
- flooding
- equipment failure
- sensor failure
- network outage
- workforce shortage
- supply shortage
- logistics disruption
- market disruption.

A representative resilience workflow is:

~~~text
Normal State
    |
    v
Disruption Scenario
    |
    v
Simulation / Emulation
    |
    v
Alternative Response
    |
    v
Resilience Assessment
    |
    v
Decision
    |
    v
Physical Response
    |
    v
Observed Outcome
~~~

This allows the Digital Farm to evaluate resilience strategies before or during real operational events.

---

## 83. Execution Modes and Sustainability

Execution Modes may support sustainability analysis.

Potential dimensions include:

- water consumption
- energy consumption
- resource efficiency
- emissions
- waste
- soil impact
- crop productivity
- logistics efficiency.

A representative process is:

~~~text
Farm State
    |
    v
Sustainability Scenario
    |
    v
Simulation
    |
    v
Resource / Environmental Impact
    |
    v
Alternative Comparison
    |
    v
Decision
    |
    v
Physical Execution
    |
    v
Measured Impact
~~~

Simulation provides estimated outcomes.

Physical measurement provides evidence of actual outcomes.

The two must remain distinguishable.

---

## 84. Execution Modes and Economic Tolerance

Execution-mode results may be evaluated against economic tolerance bands.

A conceptual model is:

~~~text
Expected Value
      |
      +-----------------------------+
      |                             |
      v                             v
Optimal / Acceptable            Warning
      |                             |
      +-------------+---------------+
                    |
                    v
                 Critical
                    |
                    v
             Reassess / Stop
~~~

Execution should not proceed solely because a technically feasible result exists.

Economic consequences may need to be considered before physical action.

The applicable tolerance model depends on the domain, decision and risk.

---

## 85. Execution Modes and Minimum Viable Value

Where a Digital Farm capability has a defined Minimum Viable Value (MVV), execution-mode results may be evaluated against it.

Conceptually:

~~~text
Simulation / Analysis
        |
        v
Expected Value
        |
   +----+----+
   |         |
Above MVV  Below MVV
   |         |
   v         v
Continue   Reassess
 / Pilot   / Restructure
             / Stop
~~~

MVV provides a value-oriented decision boundary.

A simulation result above MVV remains an expected or modeled result until supported by appropriate operational evidence.

---

## 86. Execution Modes and Liquidity Decisions

Execution Modes may support evidence-based liquidity decisions.

A representative flow is:

~~~text
Problem
  |
  v
Diagnose
  |
  v
Quantify
  |
  v
Simulate
  |
  v
Compare Alternatives
  |
  v
Estimate Expected Value
  |
  v
Assess Confidence / Risk
  |
  v
Funding / Liquidity Decision
~~~

Simulation therefore becomes one input to economic decision-making.

It does not independently authorize funding or physical execution.

---

## 87. Execution Modes and Human Decision Support

Execution-mode outputs should be presented in a form appropriate for human decision-making.

Useful information may include:

- scenario
- assumptions
- model
- execution mode
- result
- confidence
- uncertainty
- resource requirements
- cost
- risk
- expected value
- alternatives.

Conceptually:

~~~text
Execution
   |
   v
Result
   |
   v
Evidence + Confidence
   |
   v
Human Decision Support
   |
   v
Decision
   |
   v
Authorization
~~~

This supports the Human + AI architecture and prevents digital execution from being confused with autonomous authority.

---

## 88. Execution Modes and Automation Maturity

Execution Modes may support increasing levels of automation.

~~~text
Human Only
    |
    v
AI-Assisted
    |
    v
Human + AI
    |
    v
Supervised Automation
    |
    v
High-Confidence Automation
~~~

For example:

- Simulation may support human-only planning.
- Emulation may support supervised controller testing.
- Real-time virtualized environments may support AI-assisted operation.
- Physical execution may support supervised automation where appropriate.

Automation maturity should remain reversible.

If quality, safety, reliability or correction capability deteriorates, the system should be able to return to a more supervised mode.

---

## 89. Execution Modes and Operational Learning

Execution Modes support a continuous learning process.

~~~text
Physical Outcome
      |
      v
Observation
      |
      v
Digital Twin
      |
      v
Simulation / Emulation
      |
      v
Analysis
      |
      v
Improved Model / Policy
      |
      v
Decision
      |
      v
Physical Execution
~~~

Operational learning may improve:

- model parameters
- prediction accuracy
- optimisation
- controller behaviour
- resource allocation
- scenario assumptions
- confidence estimates.

Learning should be governed and evidence-based.

---

## 90. Execution Modes and Architecture Evolution

Execution Modes should evolve as technologies and agricultural requirements evolve.

Future technologies may introduce:

- improved simulators
- higher-fidelity emulators
- advanced Digital Twin capabilities
- new processors
- improved QPUs
- robotics
- edge intelligence
- new sensing technologies
- new AI models.

The architecture should absorb these changes through interfaces and capability boundaries.

~~~text
Stable Architectural Concept
            |
            v
   New Technology / Engine
            |
            v
      Implementation
            |
            v
       Execution Mode
~~~

Technology evolution should therefore not require redefining the fundamental distinction between:

**Virtualization → Emulation → Simulation → Physical Execution.**

---

## 91. Execution Modes Final Architecture Checklist

The Execution Modes architecture should be considered complete when the implementation can answer:

1. What is being represented?
2. What is being emulated?
3. What is being simulated?
4. What is physically executed?
5. Which Digital Twin state is being used?
6. What data enters the execution environment?
7. Is the data real, synthetic or simulated?
8. What level of fidelity is required?
9. What model or emulator is being used?
10. How is the execution validated?
11. What computational resources are required?
12. Which QAI or classical execution path is used?
13. Is the QAI Advantage Gate applicable?
14. What safety controls apply?
15. What governance controls apply?
16. Who is authorized to make the decision?
17. What evidence is produced?
18. How is provenance maintained?
19. How are failures handled?
20. How can the system fall back or roll back?
21. How is the result connected to physical outcomes?
22. How are actual outcomes fed back into the Digital Twin?
23. How does the execution support Research, Pilot and Post-Pilot lifecycle states?
24. How can the execution environment scale?
25. How can the execution capability evolve without changing the core architecture?

If these questions can be answered, the Execution Modes layer provides a sufficiently defined architectural boundary for implementation.

---

## 92. Final Execution Mode Principle

The four execution modes form a continuous bridge between digital representation, behavioural reproduction, scenario exploration and real-world operation.

~~~text
                  DIGITAL
                     |
                     v
              Virtualization
                     |
                     v
                Emulation
                     |
                     v
                Simulation
                     |
                     v
              Decision / Action
                     |
                     v
                 PHYSICAL
                     |
                     v
            Physical Execution
                     |
                     v
                 Outcome
                     |
                     v
                Feedback
                     |
                     +--------> Digital
~~~

The architecture therefore establishes:

**Virtualization = representation**

**Emulation = behavioural reproduction**

**Simulation = scenario exploration**

**Physical Execution = real-world operation**

The modes may be composed, repeated and revisited throughout the Digital Farm lifecycle.

The final principle is:

**The Digital Farm should use the appropriate execution mode for the question, decision or operation being performed, while maintaining clear boundaries between digital representation, behavioural reproduction, scenario exploration and physical reality.**

**Digital execution should inform physical action; physical outcomes should continuously improve the digital system.**
---
## 93. Execution Mode Capability Matrix

The execution modes provide different capabilities to the Digital Farm.

| Capability | Virtualization | Emulation | Simulation | Physical Execution |
|---|---:|---:|---:|---:|
| Represent entities | Yes | Yes | Yes | Actual |
| Represent current state | Yes | Supporting | Initial / modeled | Actual |
| Reproduce device behaviour | Limited | Primary | Possible | Actual |
| Explore alternatives | Limited | Limited | Primary | Limited |
| Test failure conditions | Limited | Strong | Strong | Controlled |
| Evaluate future conditions | Limited | Limited | Primary | Actual outcome |
| Produce real-world effect | No | No | No | Yes |
| Support operational feedback | Yes | Yes | Yes | Yes |
| Require physical resources | Usually no | Usually no | Usually no | Yes |
| Require safety controls | Limited | Controlled | Controlled | Strong |
| Support pre-deployment testing | Yes | Yes | Yes | Limited |

The matrix describes architectural intent rather than mandatory implementation behaviour.

---

## 94. Execution Modes and Model Hierarchy

Different execution modes may use models at different levels of abstraction.

~~~text
Enterprise / Economic Model
          |
          v
Farm Model
          |
          v
CPS Model
          |
          v
Device Model
          |
          v
Component Model
~~~

These models may participate in:

- virtualization
- emulation
- simulation
- physical validation.

A model should be selected according to the question being investigated.

A more detailed model is not automatically a better model.

---

## 95. Execution Modes and Model Fidelity Levels

A Digital Farm implementation may use a range of fidelity levels.

A conceptual progression is:

~~~text
Level 0
Conceptual Representation
      |
      v
Level 1
Functional Approximation
      |
      v
Level 2
Behavioural Representation
      |
      v
Level 3
Calibrated Behaviour
      |
      v
Level 4
High-Fidelity Representation
      |
      v
Level 5
Operationally Relevant Fidelity
~~~

The applicable fidelity level depends on:

- intended purpose
- decision impact
- available data
- computational resources
- validation requirements
- operational risk.

The fidelity hierarchy should not be interpreted as a universal implementation standard.

---

## 96. Execution Modes and Model Selection

Model selection should follow the intended decision.

~~~text
Decision / Question
        |
        v
Required Fidelity
        |
        v
Available Data
        |
        v
Available Resources
        |
        v
Candidate Models
        |
        v
Model Selection
        |
        v
Execution Mode
~~~

Possible model-selection criteria include:

- accuracy
- fidelity
- latency
- computational cost
- interpretability
- robustness
- validation evidence
- data availability
- operational relevance.

This prevents unnecessarily complex models from being used where simpler models are sufficient.

---

## 97. Execution Modes and Model Ensembles

More than one model may be used to evaluate the same scenario.

For example:

~~~text
Scenario
   |
   +----> Model A
   |
   +----> Model B
   |
   +----> Model C
   |
   v
Cross-Model Comparison
   |
   v
Confidence / Uncertainty
   |
   v
Decision Support
~~~

Model ensembles can help identify:

- consistent outcomes
- model disagreement
- sensitivity
- uncertainty
- robustness.

Model disagreement should be visible rather than silently averaged away when it materially affects the decision.

---

## 98. Execution Modes and Uncertainty

Execution results should distinguish between:

- observed values
- estimated values
- simulated values
- emulated values
- predicted values.

A representative representation is:

~~~text
Observed
   |
   v
Estimated
   |
   v
Predicted
   |
   v
Simulated
   |
   v
Emulated
~~~

These categories may overlap in implementation, but their evidentiary meaning differs.

A simulated outcome must not be presented as an observed physical outcome.

Uncertainty should be propagated where practical.

---

## 99. Execution Modes and Confidence

Confidence may be associated with outputs from digital execution.

Confidence may depend on:

- data quality
- model validation
- calibration
- execution fidelity
- uncertainty
- historical performance
- scenario similarity
- operational conditions.

Conceptually:

~~~text
Data Quality
     |
     v
Model Quality
     |
     v
Execution Fidelity
     |
     v
Validation Evidence
     |
     v
Confidence
     |
     v
Decision Threshold
~~~

Confidence should influence whether a result is:

- informational
- advisory
- suitable for supervised action
- suitable for automated action.

---

## 100. Execution Modes and Decision Thresholds

Different decisions may require different confidence thresholds.

For example:

~~~text
Low-Impact Decision
       |
       v
Lower Confidence Threshold

Operational Decision
       |
       v
Higher Confidence Threshold

Safety-Critical Decision
       |
       v
Very High Confidence +
Validation + Authorization
~~~

Thresholds should be defined according to the consequences of incorrect decisions.

A universal confidence threshold should therefore not be assumed.

---

## 101. Execution Modes and Experiment Management

Research and pilot execution should maintain structured experiment records where appropriate.

An experiment record may contain:

- objective
- hypothesis
- execution mode
- scenario
- input data
- model
- configuration
- computational path
- resources
- outputs
- confidence
- comparison baseline
- observations
- conclusions.

Conceptually:

~~~text
Experiment Definition
        |
        v
Execution
        |
        v
Result
        |
        v
Evidence
        |
        v
Assessment
        |
        v
Decision
~~~

This supports reproducibility and prevents experimental results from being disconnected from their assumptions.

---

## 102. Execution Modes and Pilot Validation

Pilot execution should use bounded and controlled execution-mode combinations.

A representative pilot may be:

~~~text
Real Farm Records / Assets
          |
          v
Virtualization
          |
          v
Digital Twin
          |
          +------------------+
          |                  |
          v                  v
      Simulation          Emulation
          |                  |
          +--------+---------+
                   |
                   v
             QAI / AI
                   |
                   v
          Decision Support
                   |
                   v
       Controlled Physical Test
                   |
                   v
             Real Outcome
~~~

The pilot should establish evidence for the specific capability being demonstrated.

It should not automatically establish general operational performance.

---

## 103. Execution Modes and Post-Pilot Operations

Post-Pilot operation introduces continuous execution and feedback.

~~~text
Physical Operation
       |
       v
Digital Twin
       |
       v
Domain Service
       |
       +--------+---------+
       |                  |
       v                  v
 Simulation           Emulation
       |                  |
       +--------+---------+
                |
                v
          QAI / AI
                |
                v
       Decision Support
                |
                v
        Authorized Action
                |
                v
        Physical Operation
~~~

Post-Pilot execution should include:

- monitoring
- maintenance
- validation
- evidence collection
- performance assessment
- resource management
- lifecycle management
- service management.

---

## 104. Execution Modes and Research Isolation

Research execution may intentionally use experimental models, emulators and simulation environments that are not approved for operational use.

~~~text
Research
   |
   +--> Experimental Models
   +--> Experimental Emulators
   +--> Experimental Simulators
   +--> Experimental QAI
   |
   v
Validation
   |
   v
Promotion Decision
   |
   +----> Operational
   |
   +----> Continue Research
   |
   +----> Reject / Retire
~~~

Research outputs should not directly control production physical systems unless they have passed the applicable promotion and authorization gates.

---

## 105. Execution Modes and Technology Independence

The execution-mode architecture must remain independent of specific technologies.

For example:

~~~text
Architectural Concept
        |
        v
Execution Mode Interface
        |
   +----+----+----+----+
   |    |    |    |    |
   v    v    v    v    v
Engine A
Engine B
Platform C
Cloud D
Local E
        |
        v
Execution Environment
~~~

A Digital Farm implementation may use different:

- simulation engines
- emulation frameworks
- Digital Twin platforms
- cloud environments
- edge platforms
- processor technologies
- QAI runtimes.

Replacing an implementation technology should not require changing the conceptual Execution Modes architecture.

The principle is:

**Architecture defines the execution semantics; implementations provide the mechanisms.**
---
## 106. Execution Modes and Processor Heterogeneity

The Digital Farm may execute workloads across heterogeneous computational resources.

Possible resources include:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- edge processors.

Execution Mode and processor selection are separate architectural decisions.

~~~text
Execution Mode
      |
      v
Computational Workload
      |
      v
QAI Runtime / Execution Layer
      |
 +----+----+----+----+----+----+
 |    |    |    |    |    |    |
CPU  GPU  NPU  TPU FPGA HPC  QPU
~~~

The appropriate processor depends on:

- workload characteristics
- latency
- scale
- resource availability
- energy
- cost
- accuracy
- reliability
- evidence.

The availability of a specialized processor does not automatically justify its use.

---

## 107. Execution Modes and Edge Computing

Some execution modes may operate close to physical assets.

Examples include:

- sensor processing
- local anomaly detection
- controller emulation
- real-time simulation
- local Digital Twin updates
- safety-oriented decision support.

~~~text
Physical Device
      |
      v
Edge
      |
 +----+----+
 |         |
 v         v
Virtual   Emulated
State     Behaviour
 |         |
 +----+----+
      |
      v
Local QAI / AI
      |
      v
Communication
      |
      v
Regional / Cloud
~~~

Edge execution may reduce:

- latency
- network dependence
- data transfer
- response time.

The execution-mode semantics remain unchanged regardless of deployment location.

---

## 108. Execution Modes and Cloud / Regional Execution

Simulation and computationally intensive emulation may be executed in:

- private cloud
- public cloud
- regional infrastructure
- HPC environments
- distributed environments.

A representative architecture is:

~~~text
Farm / Edge
    |
    v
Digital Twin
    |
    v
Execution Request
    |
    +-------------------+
    |                   |
    v                   v
Regional / Edge       Cloud / HPC
    |                   |
    +---------+---------+
              |
              v
        Execution Result
              |
              v
        Digital Farm
~~~

The deployment environment is independent of the execution mode.

---

## 109. Execution Modes and Distributed Execution

Large Digital Farm scenarios may require distributed execution.

For example:

~~~text
Farm A Simulation ----+
Farm B Simulation ----+----> Distributed Execution
Farm C Simulation ----+
Regional Model -------+
                       |
                       v
                Aggregated Result
                       |
                       v
                 Decision Support
~~~

Distributed execution may be useful for:

- multiple farms
- regional scenarios
- large-scale optimisation
- Monte Carlo analysis
- parameter sweeps
- scenario ensembles.

Distributed execution should preserve:

- synchronization
- provenance
- configuration
- model identity
- execution evidence.

---

## 110. Execution Modes and Parallel Scenario Evaluation

Simulation environments may execute multiple alternatives in parallel.

~~~text
                    Scenario Set
                         |
        +----------------+----------------+
        |                |                |
        v                v                v
   Scenario A       Scenario B       Scenario C
        |                |                |
        v                v                v
    Execute          Execute          Execute
        |                |                |
        +----------------+----------------+
                         |
                         v
                  Compare Outcomes
                         |
                         v
                    Decision Support
~~~

Parallel evaluation can reduce decision latency where sufficient resources are available.

Resource Management should determine whether the additional resource consumption is justified.

---

## 111. Execution Modes and Monte Carlo / Statistical Evaluation

Where uncertainty is significant, simulation may use repeated executions to evaluate a distribution of outcomes.

~~~text
Scenario
   |
   v
Uncertainty Inputs
   |
   v
Repeated Execution
   |
   +--> Run 1
   +--> Run 2
   +--> Run 3
   +--> ...
   +--> Run N
   |
   v
Outcome Distribution
   |
   v
Risk / Confidence Assessment
   |
   v
Decision Support
~~~

This may help evaluate:

- uncertainty
- probability of outcomes
- risk
- robustness
- tolerance boundaries.

Statistical results remain estimates derived from the selected model and assumptions.

---

## 112. Execution Modes and Sensitivity Analysis

Simulation may be used to determine which inputs have the greatest influence on outcomes.

~~~text
Input Variables
      |
      +--> Water
      +--> Weather
      +--> Crop State
      +--> Energy
      +--> Labour
      +--> Machinery
      |
      v
Sensitivity Analysis
      |
      v
Influence Ranking
      |
      v
Critical Variables
      |
      v
Decision Support
~~~

Sensitivity analysis can help prioritize:

- additional sensing
- data-quality improvements
- model refinement
- resource allocation
- operational intervention.

---

## 113. Execution Modes and Scenario Ensembles

A scenario ensemble may combine multiple assumptions and environmental conditions.

For example:

~~~text
             Weather
          /     |     \
       Normal  Dry   Extreme
          |     |       |
          +-----+-------+
                |
             Crop State
                |
                v
           Water State
                |
                v
        Resource Constraints
                |
                v
          Scenario Ensemble
                |
                v
             Simulation
                |
                v
          Outcome Range
~~~

Scenario ensembles can provide a more robust view than a single deterministic scenario.

The ensemble definition should be retained as part of execution evidence.

---

## 114. Execution Modes and Digital Twin Synchronization

When Digital Twin state is used by an execution environment, synchronization requirements must be explicit.

Possible synchronization patterns include:

- event-driven
- periodic
- scheduled
- on-demand
- continuous
- snapshot-based.

Conceptually:

~~~text
Physical State
      |
      v
Observation
      |
      v
Digital Twin Snapshot
      |
      v
Execution
      |
      v
Result
      |
      v
Updated Twin State
~~~

The freshness of the Digital Twin state should be considered when interpreting an execution result.

A simulation based on stale state may produce a technically valid result that is operationally inappropriate.

---

## 115. Execution Modes and State Snapshots

Execution may operate from a defined Digital Farm state snapshot.

A snapshot may include:

- farm state
- crop state
- asset state
- water state
- inventory
- workforce
- economic resources
- environmental conditions
- configuration
- relevant external information.

Conceptually:

~~~text
Live Digital Twin
       |
       v
State Snapshot
       |
       v
Scenario / Execution
       |
       v
Result
~~~

State snapshots improve:

- reproducibility
- comparison
- auditability
- experiment management
- debugging.

The snapshot timestamp and provenance should be retained.

---

## 116. Execution Modes and Configuration Management

Execution results depend not only on models but also on configuration.

Configuration may include:

- model parameters
- scenario parameters
- operating constraints
- resource limits
- execution settings
- optimization objectives
- control policies.

A reproducible execution therefore requires:

~~~text
State
 +
Model
 +
Configuration
 +
Scenario
 +
Execution Environment
 =
Execution Result
~~~

Configuration should be versioned and governed through the common Service Management and lifecycle architecture.

---

## 117. Execution Modes and Environment Reproducibility

An execution environment may itself influence results.

Relevant factors include:

- software version
- runtime version
- processor
- numerical libraries
- simulation engine
- emulator version
- QAI runtime
- execution configuration.

Therefore:

~~~text
Input State
    |
    +--> Model
    +--> Configuration
    +--> Software
    +--> Runtime
    +--> Hardware
    |
    v
Execution
    |
    v
Result
~~~

Where reproducibility is important, the execution environment should be captured sufficiently to reproduce or explain the result.

---

## 118. Execution Modes and Long-Term Evidence

Digital Farm execution evidence should remain useful beyond the original execution event.

Long-term evidence may support:

- model improvement
- service validation
- audit
- research
- operational learning
- QAI advantage assessment
- economic assessment
- regulatory or compliance requirements where applicable.

A representative evidence chain is:

~~~text
Historical Execution
       |
       v
Evidence Repository
       |
       +--> Model Validation
       +--> Service Validation
       +--> Operational Learning
       +--> Value Assessment
       +--> Governance
       |
       v
Future Execution
~~~

Evidence retention should follow applicable governance, sovereignty, privacy and lifecycle requirements.

The objective is to preserve enough context to understand **what was executed, why it was executed, under which conditions, and what actually happened afterward.**
---
## 119. Execution Modes and Operational Readiness

Before an execution mode is used for operational decision-making, its readiness should be assessed.

Readiness may include:

- functional readiness
- model readiness
- data readiness
- integration readiness
- resource readiness
- security readiness
- governance readiness
- safety readiness
- operational readiness
- evidence readiness.

Conceptually:

~~~text
Execution Environment
        |
        v
Readiness Assessment
        |
 +------+------+------+------+------+
 |      |      |      |      |      |
Data  Model  Safety  Resource  Governance
 |      |      |      |      |
 +------+------+------+------+------+
                |
                v
        Operational Readiness
                |
                v
             Execution
~~~

Readiness should be evaluated for the intended use rather than assumed from technical availability.

---

## 120. Execution Modes and Execution Authorization

Execution authorization is distinct from technical capability.

A system may be technically capable of executing an action without being authorized to do so.

~~~text
Technical Capability
        |
        v
Execution Request
        |
        v
Policy / Governance
        |
        v
Safety Assessment
        |
        v
Authorization
        |
        v
Execution
~~~

Authorization may depend on:

- user role
- operational policy
- safety conditions
- confidence
- resource availability
- environmental conditions
- business rules
- governance requirements.

This distinction is especially important when an execution mode can ultimately affect physical systems.

---

## 121. Execution Modes and Action Classes

Physical actions may be categorized according to their potential impact.

For example:

### Informational

Produces information without changing the physical system.

### Advisory

Produces a recommendation requiring human or authorized review.

### Controlled

Executes a bounded action under defined controls.

### Automated

Executes an authorized action according to established policies.

Conceptually:

~~~text
Information
    |
    v
Recommendation
    |
    v
Controlled Action
    |
    v
Authorized Automation
~~~

The applicable action class should be determined by risk, confidence, reversibility and operational requirements.

---

## 122. Execution Modes and Reversibility

Execution decisions should consider whether the resulting action can be reversed.

Examples of relatively reversible actions may include:

- changing a scheduling parameter
- delaying an operation
- modifying a non-critical planning configuration.

Examples of less reversible actions may include:

- physical crop treatment
- irreversible machinery operation
- disposal of inventory
- significant resource consumption.

Conceptually:

~~~text
Execution Proposal
       |
       v
Reversibility Assessment
       |
   +---+---+
   |       |
Reversible  Irreversible
   |       |
   v       v
Lower     Higher
Control   Validation /
Burden    Authorization
~~~

Lower reversibility generally requires stronger evidence and control.

---

## 123. Execution Modes and Safety Boundaries

Safety boundaries should be explicit where physical execution is involved.

Safety boundaries may include:

- operating limits
- equipment constraints
- environmental limits
- human safety conditions
- crop-protection conditions
- emergency-stop mechanisms
- fallback procedures.

~~~text
Candidate Action
      |
      v
Safety Boundary Check
      |
 +----+----+
 |         |
Pass      Fail
 |         |
 v         v
Proceed   Reject /
          Reassess
~~~

Safety boundaries should remain independent of optimization objectives.

An economically optimal action is not acceptable if it violates a required safety constraint.

---

## 124. Execution Modes and Policy Constraints

Policies may constrain what execution modes are permitted.

Examples include:

- data-use policies
- sovereignty policies
- privacy policies
- operational policies
- environmental policies
- safety policies
- automation policies
- resource policies.

Conceptually:

~~~text
Execution Request
       |
       v
Policy Evaluation
       |
       +--> Data Policy
       +--> Security Policy
       +--> Safety Policy
       +--> Resource Policy
       +--> Automation Policy
       |
       v
Permitted Execution
~~~

Policies should be externally governed where practical rather than embedded permanently in individual models or simulation engines.

---

## 125. Execution Modes and Resource Reservation

Some execution environments may require resources to be reserved before execution.

Examples include:

- real-time compute
- GPU capacity
- HPC allocation
- QPU access
- network capacity
- edge compute
- physical equipment
- workforce availability.

A representative process is:

~~~text
Execution Request
       |
       v
Resource Estimate
       |
       v
Resource Reservation
       |
       v
Availability Confirmation
       |
       v
Execution
       |
       v
Resource Release
~~~

Resource reservation should be coordinated through Resource Management.

This prevents individual execution environments from independently consuming shared resources without coordination.

---

## 126. Execution Modes and Queue Management

Some computational execution environments may require queue management.

Examples include:

- HPC
- QPU
- shared simulation infrastructure
- GPU clusters
- centralized processing.

Conceptually:

~~~text
Execution Requests
       |
       v
Resource Queue
       |
       v
Priority / Policy
       |
       v
Scheduling
       |
       v
Execution
       |
       v
Result
~~~

Scheduling may consider:

- priority
- deadline
- resource requirements
- cost
- expected value
- latency
- fairness
- operational criticality.

Queue management belongs to the appropriate resource and execution-management architecture rather than to an individual domain service.

---

## 127. Execution Modes and Real-Time Constraints

Real-time execution introduces explicit timing requirements.

Examples include:

- sensor-response loops
- equipment control
- robotics
- irrigation control
- greenhouse control.

A real-time execution path may be:

~~~text
Observation
    |
    v
Processing
    |
    v
Decision
    |
    v
Authorization / Control
    |
    v
Actuation
~~~

The complete cycle must satisfy the applicable latency and synchronization requirements.

If real-time requirements cannot be met, the system should not silently continue as though they were satisfied.

Possible responses include:

- fallback
- degraded operation
- human intervention
- safe-state transition.

---

## 128. Execution Modes and Non-Real-Time Planning

Longer-horizon agricultural planning may not require real-time execution.

Examples include:

- seasonal crop planning
- annual resource planning
- harvest planning
- procurement
- inventory planning
- logistics planning.

A representative workflow is:

~~~text
Historical / Current State
        |
        v
Scenario Generation
        |
        v
Simulation
        |
        v
Optimisation
        |
        v
Alternative Comparison
        |
        v
Planning Decision
~~~

The absence of real-time requirements allows the system to trade latency for:

- higher fidelity
- larger scenario sets
- deeper optimisation
- broader economic analysis.

---

## 129. Execution Modes and Operational Escalation

Execution may escalate from a lower-impact digital environment toward physical operation.

~~~text
Digital Analysis
      |
      v
Simulation
      |
      v
Emulation
      |
      v
Controlled Physical Test
      |
      v
Operational Execution
~~~

Escalation should be evidence-based.

The system should evaluate:

- confidence
- validation
- safety
- resource availability
- operational conditions
- authorization.

Escalation is therefore a controlled lifecycle transition, not merely a technical deployment step.

---

## 130. Execution Modes and Operational De-Escalation

The reverse transition is equally important.

If operating conditions deteriorate:

~~~text
Operational Physical Execution
          |
          v
Condition / Confidence Check
          |
      +---+---+
      |       |
    Stable  Degraded
      |       |
      v       v
Continue   Controlled
           De-Escalation
                |
                v
           Emulation /
           Simulation /
           Manual Mode
~~~

Triggers may include:

- unexpected physical behaviour
- model degradation
- low confidence
- sensor failure
- communication failure
- resource shortage
- unsafe environmental conditions.

The ability to de-escalate provides an important resilience mechanism.

---

## 131. Execution Mode Operational Continuity

Execution Modes should support continuity across normal operation, disruption, recovery and improvement.

~~~text
Normal Operation
       |
       v
Physical Execution
       |
       v
Observation
       |
       v
Digital Twin
       |
       v
Simulation / Emulation
       |
       v
Recovery Planning
       |
       v
Controlled Execution
       |
       v
Normal Operation
       |
       v
Continuous Improvement
~~~

Operational continuity depends on the coordinated operation of:

- Digital Twin
- Domain Services
- QAI Intelligence
- Execution Modes
- Resource Management
- Management
- Service Management
- Governance
- Security and Trust
- Human + AI.

The Execution Modes layer therefore provides the bridge through which the Digital Farm can move safely and systematically between digital analysis, behavioural validation, scenario exploration and physical operation.
---
## 132. Execution Modes and Operational State

Execution Modes should expose an explicit operational state.

Possible states include:

- Available
- Initializing
- Ready
- Executing
- Paused
- Degraded
- Failed
- Recovering
- Maintenance
- Retired.

Conceptually:

~~~text
              +-----------+
              | Available |
              +-----+-----+
                    |
                    v
                Initializing
                    |
                    v
                  Ready
                    |
                    v
                Executing
                    |
          +---------+---------+
          |                   |
          v                   v
       Complete            Degraded
                              |
                    +---------+---------+
                    |                   |
                    v                   v
                 Recovering          Failed
                    |
                    v
                  Ready
~~~

The exact state machine may differ by execution mode.

Operational state should remain observable to Management.

---

## 133. Execution Mode Health

Each execution environment should provide health information appropriate to its purpose.

Health indicators may include:

- availability
- responsiveness
- synchronization
- resource availability
- model status
- interface status
- data freshness
- execution errors
- confidence
- safety status.

~~~text
Execution Mode
      |
      v
Health Assessment
      |
 +----+----+----+
 |         |    |
Healthy  Warning Failed
 |         |    |
 v         v    v
Operate  Monitor Recover
~~~

Health status should influence whether the execution environment is eligible for use.

---

## 134. Execution Mode Readiness Gates

Before execution begins, the environment may pass through readiness gates.

~~~text
Input Available
      |
      v
Data Valid
      |
      v
Model Ready
      |
      v
Resources Available
      |
      v
Environment Healthy
      |
      v
Policy Permitted
      |
      v
Execution Authorized
      |
      v
Execute
~~~

The number and strictness of gates depend on the execution mode and operational impact.

Physical execution generally requires stronger readiness and authorization controls than exploratory simulation.

---

## 135. Execution Mode Completion

Execution should produce a defined completion state.

A completed execution may provide:

- status
- result
- execution time
- resource consumption
- confidence
- evidence
- errors or warnings
- physical outcome where applicable.

~~~text
Execution
   |
   v
Completion
   |
   +--> Result
   +--> Evidence
   +--> Resource Usage
   +--> Confidence
   +--> Warnings / Errors
   |
   v
Post-Execution Assessment
~~~

Completion does not necessarily mean success.

An execution may complete successfully from a technical perspective while still failing to meet the intended decision or value objective.

---

## 136. Execution Mode Cancellation

Long-running digital execution may need to be cancelled.

Possible reasons include:

- changed requirements
- resource constraints
- obsolete scenario
- invalid input
- safety condition
- higher-priority operation
- model failure
- loss of required data.

Conceptually:

~~~text
Queued / Executing
       |
       v
Cancellation Request
       |
       v
Controlled Termination
       |
       v
Resource Release
       |
       v
Evidence / Status
~~~

Cancellation should preserve an appropriate execution record.

---

## 137. Execution Mode Pause and Resume

Some digital executions may support pause and resume.

This can be useful for:

- long simulations
- HPC workloads
- scenario ensembles
- resource-constrained processing
- maintenance events.

~~~text
Executing
   |
   v
Pause
   |
   v
Checkpoint
   |
   v
Resource Release / Hold
   |
   v
Resume
   |
   v
Continue Execution
~~~

Resume should preserve sufficient state to understand that the execution was interrupted.

Not all real-time or physical execution processes can safely support pause and resume.

---

## 138. Execution Mode Checkpointing

Long-running digital execution may use checkpoints.

A checkpoint may contain:

- execution state
- model state
- scenario state
- configuration
- random-state information where applicable
- resource state
- timestamp.

~~~text
Execution
   |
   +--> Checkpoint 1
   |
   +--> Checkpoint 2
   |
   +--> Checkpoint 3
   |
   v
Completion
~~~

Checkpoints can support:

- recovery
- reproducibility
- debugging
- long-running simulations
- resource management.

Checkpointing requirements depend on the execution environment.

---

## 139. Execution Modes and Version Compatibility

Execution environments may depend on compatible versions of:

- models
- data schemas
- Digital Twin definitions
- interfaces
- simulation engines
- emulators
- QAI pipelines
- runtimes.

Compatibility should therefore be checked before execution.

~~~text
State Version
      |
      v
Model Version
      |
      v
Interface Version
      |
      v
Runtime Version
      |
      v
Compatibility Check
      |
      v
Execution
~~~

Incompatible components should not be silently combined.

---

## 140. Execution Modes and Change Management

Changes to execution environments should be managed through the common Service Management architecture.

Changes may include:

- model updates
- simulator updates
- emulator updates
- runtime updates
- configuration changes
- interface changes
- infrastructure changes.

A representative process is:

~~~text
Change Request
      |
      v
Impact Assessment
      |
      v
Testing
      |
      v
Validation
      |
      v
Approval
      |
      v
Release
      |
      v
Operational Monitoring
~~~

Changes affecting physical execution should receive appropriate additional safety and operational assessment.

---

## 141. Execution Modes and Maintenance

Execution environments require maintenance throughout their lifecycle.

Maintenance may include:

- software updates
- model maintenance
- calibration
- hardware maintenance
- simulator maintenance
- emulator maintenance
- security patches
- configuration maintenance.

Maintenance should preserve:

- compatibility
- evidence
- provenance
- validation
- reproducibility.

A maintained environment may require revalidation before returning to operational use.

---

## 142. Execution Modes and Retirement

Execution environments may eventually become obsolete.

Retirement may occur because of:

- technology replacement
- model obsolescence
- insufficient performance
- security concerns
- operational changes
- lack of value
- unsupported dependencies.

Conceptually:

~~~text
Operational
    |
    v
Replacement Candidate
    |
    v
Migration / Validation
    |
    v
New Environment
    |
    v
Old Environment
    |
    v
Retirement
    |
    v
Evidence / Archive
~~~

Retirement should preserve required historical evidence while preventing obsolete environments from unintentionally returning to operational execution.

---

## 143. Execution Mode Migration

Migration between execution technologies should preserve architectural semantics.

For example:

~~~text
Simulation Engine A
        |
        v
Migration Assessment
        |
        v
Simulation Engine B
        |
        v
Validation / Comparison
        |
        v
Operational Adoption
~~~

Migration should compare, where relevant:

- outputs
- fidelity
- performance
- resource requirements
- numerical behaviour
- reproducibility
- integration
- operational value.

Changing an implementation engine should not automatically invalidate the conceptual Simulation execution mode.

---

## 144. Execution Mode Final Lifecycle

The complete lifecycle can be represented as:

~~~text
Concept
   |
   v
Design
   |
   v
Prototype
   |
   v
Implement
   |
   v
Verify
   |
   v
Validate
   |
   v
Pilot
   |
   v
Operationalize
   |
   v
Operate
   |
   +--------------------+
   |                    |
   v                    |
Monitor                 |
   |                    |
   v                    |
Maintain                |
   |                    |
   v                    |
Improve ----------------+
   |
   v
Replace / Retire
~~~

This lifecycle applies to execution environments while remaining aligned with the broader Digital Farm lifecycle.

The lifecycle must preserve the distinction between:

- experimentation
- validation
- operational execution
- maintenance
- retirement.

---
## 145. Execution Mode Conformance

Each implementation of an Execution Mode should conform to the conceptual contract of that mode.

The implementation should clearly identify whether it provides:

- Virtualization
- Emulation
- Simulation
- Physical Execution
- or a composition of multiple modes.

Conformance should be evaluated against architectural intent rather than a specific vendor technology.

~~~text
Conceptual Execution Mode
          |
          v
   Mode Contract
          |
          v
Implementation
          |
          v
Conformance Assessment
          |
      +---+---+
      |       |
      v       v
Conformant  Gap
      |       |
      v       v
Operational  Remediate
Use
~~~

---

## 146. Execution Mode Contracts

An Execution Mode contract should define the minimum information required to execute and interpret an operation.

A conceptual contract may contain:

- execution mode
- execution environment
- input definition
- state/configuration
- model or implementation
- scenario
- resource requirements
- timing requirements
- expected outputs
- validation requirements
- authorization requirements
- evidence requirements.

~~~text
Execution Contract
       |
       +--> Inputs
       +--> State
       +--> Model
       +--> Scenario
       +--> Resources
       +--> Constraints
       +--> Expected Outputs
       +--> Validation
       +--> Authorization
       +--> Evidence
~~~

Contracts provide a stable boundary between the Digital Farm architecture and specific implementations.

---

## 147. Execution Requests

An execution request represents an intention to perform an operation.

A request may originate from:

- a human user
- QAI Intelligence
- a workflow
- Management
- a simulation experiment
- an external system
- an authorized automated process.

Conceptually:

~~~text
Request Source
      |
      v
Execution Request
      |
      v
Policy / Constraint Check
      |
      v
Resource Check
      |
      v
Execution Selection
      |
      v
Execution
~~~

The request should not directly bypass applicable governance, safety, resource or authorization controls.

---

## 148. Execution Results

Execution results should be structured so that downstream components can distinguish:

- result
- status
- confidence
- uncertainty
- evidence
- resource consumption
- warnings
- errors
- provenance.

~~~text
Execution
    |
    v
Result Package
    |
    +--> Outcome
    +--> Confidence
    +--> Uncertainty
    +--> Evidence
    +--> Resources
    +--> Provenance
    +--> Warnings
    +--> Errors
~~~

This allows results to be consumed by QAI Intelligence, Management, Digital Twin, Human+AI interfaces and Value Management without losing execution context.

---

## 149. Execution Evidence

Every execution does not require the same level of evidence.

Evidence requirements should be proportional to:

- execution purpose
- operational impact
- safety impact
- economic impact
- automation level
- regulatory requirements
- reversibility
- uncertainty.

~~~text
Execution
   |
   v
Impact Assessment
   |
   v
Evidence Requirement
   |
   +--> Basic
   +--> Validated
   +--> Operational
   +--> Safety-Critical
~~~

High-impact physical actions should require stronger evidence than exploratory simulations.

---

## 150. Execution Traceability

Execution should be traceable across the Digital Farm architecture.

A trace may connect:

~~~text
Problem
  |
  v
Decision
  |
  v
Execution Request
  |
  v
Execution Environment
  |
  v
Execution
  |
  v
Result
  |
  v
Action
  |
  v
Physical Outcome
  |
  v
Measured Evidence
~~~

Traceability enables the system to determine how a particular outcome was produced and which inputs, models, decisions and execution environments contributed to it.

---

## 151. Execution Provenance

Provenance records the origin and transformation history of execution inputs and outputs.

It may include:

- data source
- Digital Twin state
- model version
- scenario version
- execution environment
- runtime version
- configuration
- resource allocation
- timestamp
- decision source
- authorization
- resulting action.

Provenance should support both technical investigation and operational accountability.

---

## 152. Execution Observability

Execution observability should provide sufficient information to understand what is happening during and after execution.

Possible observability dimensions include:

- status
- latency
- throughput
- resource utilization
- failures
- queue state
- synchronization
- data freshness
- model behaviour
- confidence
- safety indicators.

~~~text
Execution
   |
   +--> Metrics
   +--> Logs
   +--> Events
   +--> State
   +--> Evidence
   |
   v
Observability
   |
   v
Management / Intelligence / Governance
~~~

Observability should be implemented without exposing information beyond applicable security and sovereignty boundaries.

---

## 153. Execution Alerts and Escalation

Execution anomalies may require escalation.

Examples include:

- unexpected model behaviour
- resource exhaustion
- synchronization loss
- abnormal latency
- data quality deterioration
- simulation instability
- emulator mismatch
- physical-system deviation
- safety threshold breach.

Conceptually:

~~~text
Execution
   |
   v
Observation
   |
   v
Threshold / Rule
   |
   +--> Normal --> Continue
   |
   +--> Warning --> Monitor
   |
   +--> Critical --> Escalate
                         |
                         v
                    Human / Policy
                         |
                         v
                 Continue / Stop /
                 De-escalate / Recover
~~~

Escalation should be proportional to the potential impact.

---

## 154. Execution and Exception Handling

Execution failures should be treated as managed states rather than undefined conditions.

Possible responses include:

- retry
- restart
- checkpoint recovery
- alternative resource
- alternative execution environment
- classical/HPC fallback
- degraded operation
- human review
- controlled termination.

~~~text
Execution Failure
       |
       v
Diagnose
       |
 +-----+-----+--------+
 |           |        |
Retry     Recover   Fallback
 |           |        |
 +-----+-----+--------+
       |
       v
Continue / Escalate / Stop
~~~

The appropriate response depends on execution mode, impact, safety and available alternatives.

---

## 155. Execution and Resource Failure

Execution may fail because required resources become unavailable.

Examples include:

- compute capacity
- GPU/NPU/TPU availability
- QPU availability
- FPGA availability
- network capacity
- storage
- energy
- edge capacity
- time constraints.

Resource Management should coordinate recovery.

~~~text
Execution
    |
    v
Resource Failure
    |
    v
Resource Management
    |
 +--+------+---------+
 |         |         |
Reallocate Queue   Fallback
 |         |         |
 +---------+---------+
           |
           v
       Continue /
       Reschedule /
       Escalate
~~~

Execution Modes therefore remain coupled to resource availability without becoming the owner of resource policy.

---

## 156. Execution and Computational Path Selection

Execution Mode selection and computational path selection remain separate decisions.

For example:

~~~text
              Problem
                 |
        +--------+--------+
        |                 |
 Execution Mode     Computational Path
        |                 |
 Virtualization     Classical
 Emulation          HPC
 Simulation         Hybrid
 Physical           Quantum
        |                 |
        +--------+--------+
                 |
                 v
             Execution
~~~

The same Simulation execution mode may use:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- hybrid combinations.

Similarly, a Physical execution workflow may use classical, AI, QAI or hybrid computation for decision support.

---

## 157. Execution Modes Architectural Completion

The Execution Modes layer is complete when the Digital Farm can clearly distinguish, coordinate and govern:

1. **Virtualization** — representation of entities, assets and state.
2. **Emulation** — reproduction of device, controller or CPS behaviour.
3. **Simulation** — exploration of scenarios, alternatives and future behaviour.
4. **Physical Execution** — operation of the real farm and physical systems.

The layer should also provide:

- explicit execution contracts
- execution requests and results
- readiness and authorization
- health and observability
- evidence and provenance
- checkpointing and recovery
- version compatibility
- change and maintenance management
- migration and retirement
- resource-aware execution
- exception handling
- computational-path independence.

The resulting architectural relationship is:

~~~text
                         DIGITAL FARM
                              |
                     +--------+--------+
                     |                 |
                Digital Twin       Management
                     |                 |
                     +--------+--------+
                              |
                       Execution Modes
                              |
        +-----------+---------+---------+-----------+
        |           |                   |           |
        v           v                   v           v
 Virtualization  Emulation          Simulation   Physical
        |           |                   |           |
        +-----------+---------+---------+-----------+
                              |
                         QAI / AI / HPC
                       Classical / Hybrid
                          Quantum Paths
                              |
                              v
                         Execution Result
                              |
                              v
                    Evidence / Outcome / Value
                              |
                              v
                           Feedback
~~~

The fundamental architectural principle remains:

> **Execution Mode describes where and how the farm capability is represented, reproduced, explored or operated; it does not determine which computational technology must perform the work.**

This preserves the separation between Digital Twin, Execution Modes, QAI Runtime, Computational Paths, Resource Management, Management and Physical Operations while allowing them to operate as one integrated Digital Farm architecture.
---
