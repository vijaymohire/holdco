# Three Architectural Paths

Digital Farm is organized around three first-class paths:

1. Computational Path
2. Sensing Path
3. Communication Path

The paths are interconnected through common fabrics, intelligence, management, governance and resource services.

---

## 1. Purpose of the Three Paths

The three paths provide the fundamental movement and transformation architecture of Digital Farm.

~~~text
                    DIGITAL FARM
                         │
          ┌──────────────┼──────────────┐
          ↓              ↓              ↓
   COMPUTATIONAL       SENSING      COMMUNICATION
       PATH              PATH            PATH
          │              │              │
          └──────────────┼──────────────┘
                         ↓
              Digital Farm Capabilities
~~~

The paths are architectural building blocks rather than independent applications.

---

## 2. Computational Path

The Computational Path provides the processing and execution capabilities required by Digital Farm.

It may include:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- Edge compute
- Regional compute
- Cloud compute
- Storage
- Hybrid execution

The Computational Path supports classical, AI, QAI and hybrid workloads.

---

## 3. Sensing Path

The Sensing Path provides observations of the physical, environmental and operational farm.

It may include:

- Farm sensors
- IoT devices
- Machinery telemetry
- Weather observations
- Soil observations
- Crop observations
- Drone observations
- Satellite observations
- Laboratory observations
- Human observations

The Sensing Path converts observations from the physical environment into information that can be processed by Digital Farm.

---

## 4. Communication Path

The Communication Path provides connectivity and information transport between Digital Farm components and external environments.

It may connect:

- Sensors
- Devices
- Edge systems
- Regional hubs
- Private cloud
- Public cloud
- Enterprise systems
- ERP
- Markets
- External services
- Upstream systems
- Downstream systems

The Communication Path supports the movement of information, events and authorised commands.

---

## 5. Path Relationship

The three paths operate together.

~~~text
Physical Farm
      │
      ↓
 Sensing Path
      │
      ↓
Communication Path
      │
      ↓
Computational Path
      │
      ↓
Intelligence
      │
      ↓
Decision
      │
      ↓
Communication Path
      │
      ↓
Actuation / Human Action
      │
      ↓
Physical Farm
~~~

The actual deployment may vary, but the architectural responsibilities remain distinct.

---

## 6. Path Separation

The paths should remain logically separable.

- Sensing = observe
- Communication = transport
- Computational = process and execute

A single physical device may participate in more than one path, but the architectural responsibilities remain distinct.

---

## 7. Path Interconnection

The paths are interconnected through shared Digital Farm capabilities.

~~~text
                 SENSING
                    │
                    ↓
              COMMUNICATION
                    │
                    ↓
             COMPUTATIONAL
                    │
                    ↓
             DIGITAL TWIN
                    │
                    ↓
             QAI INTELLIGENCE
                    │
                    ↓
          DECISION / ACTION
~~~

This provides a common architecture for physical, digital and computational operation.

---

## 8. Paths and Digital Twin

The Digital Twin receives information through the paths and provides contextual state for intelligence.

~~~text
Sensing
   ↓
Communication
   ↓
Digital Twin
   ↓
QAI Intelligence
   ↓
Decision
   ↓
Communication
   ↓
Physical / Digital Action
~~~

The Digital Twin does not replace the three paths.

It uses them to maintain and exchange farm context.

---

## 9. Paths and QAI Intelligence

QAI Intelligence operates across the three paths.

~~~text
Sensing Path
     ↓
   Sense
     ↓
Communication Path
     ↓
  Process
     ↓
Computational Path
     ↓
  Decide
     ↓
Communication Path
     ↓
   Act
     ↓
Physical / Digital Outcome
     ↓
   Learn
~~~

QAI Intelligence therefore depends on the paths but is architecturally distinct from them.

---

## 10. Paths and Human + AI

Human + AI capabilities may consume information from all three paths.

Examples include:

- Human observations through sensing
- Operational context through communication
- AI/QAI analysis through computation
- Human decisions
- Authorised actions
- Feedback from operational outcomes

The paths provide the underlying capability; Human + AI provides the human-centred operating relationship.

---

## 11. Paths and Management

Management coordinates the operational use of the paths.

Management may coordinate:

- Path availability
- Resource allocation
- Workload placement
- Monitoring
- Maintenance
- Configuration
- Failures
- Recovery
- Lifecycle
- Operational continuity

Management does not replace the paths.

---

## 12. Paths and Resource Management

Each path consumes and depends on resources.

~~~text
Sensing
   ↓
Sensors / Energy / Storage
   │
Communication
   ↓
Network / Bandwidth / Energy
   │
Computational
   ↓
Compute / Memory / Storage / QPU / Energy
~~~

Resource Management coordinates these resources according to operational requirements.

---

## 13. Paths and Governance

The three paths operate within governance boundaries.

Governance may establish requirements for:

- Safety
- Security
- Data sovereignty
- Privacy
- Quality
- Metrology
- AI ethics
- Assurance
- Compliance
- Standards

The paths provide capability; governance defines the conditions under which that capability may operate.

---

## 14. Paths and Security and Trust

Security and Trust applies across all three paths.

~~~text
              SECURITY / TRUST
                     │
       ┌─────────────┼─────────────┐
       ↓             ↓             ↓
   SENSING      COMMUNICATION   COMPUTATIONAL
       │             │             │
       └─────────────┼─────────────┘
                     ↓
              Digital Farm
~~~

Security must therefore not be implemented as isolated protection for only one path.

---

## 15. Paths and Digital Twin Fabric

The Digital Twin Fabric provides the common digital representation connecting observations, state, relationships and operational context.

The three paths provide the mechanisms through which information reaches and leaves the Digital Twin environment.

---

## 16. Paths and Real-Time QAI Fabric

Real-Time QAI may require coordinated operation across:

- Sensing latency
- Communication latency
- Computational latency
- Synchronization
- Device control
- QPU execution
- Feedback

Real-time operation therefore requires coordinated path behaviour rather than optimisation of computation alone.

---

## 17. Paths and Virtual Qubit Fabric

The Virtual Qubit Fabric abstracts quantum-resource allocation from the Computational Path.

~~~text
QAI Workload
     ↓
Virtual Qubit
     ↓
Virtual Qubit Fabric
     ↓
Available QPU Resources
     ↓
Quantum Execution
~~~

External systems should not need to depend directly on individual physical QPUs.

---

## 18. Paths and Transduction Fabric

The Transduction Fabric supports transformations between physical and digital representations.

~~~text
Physical World
      ↓
 Transduction
      ↓
Digital Representation
      ↓
Computational Processing
      ↓
Decision
      ↓
 Transduction
      ↓
Physical Action
~~~

Transduction therefore interacts strongly with the Sensing and Computational Paths while remaining a shared cross-cutting fabric.

---

## 19. Paths and QAI Resource and Advantage Fabric

The QAI Resource and Advantage Fabric evaluates computational requirements against available resources and potential advantage.

It may consider:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- Memory
- Storage
- Network
- Energy
- Latency
- Queue
- Shots
- Fidelity
- Confidence
- Cost

This enables workload placement across the Computational Path.

---

## 20. Sensing Path Architecture

The Sensing Path may be viewed as a layered observation chain.

~~~text
Physical Environment
        ↓
Sensors / Devices
        ↓
Measurement
        ↓
Local Processing
        ↓
Observation
        ↓
Context
        ↓
Digital Farm
~~~

Measurement quality, calibration, provenance and uncertainty remain important throughout the sensing lifecycle.

---

## 21. Communication Path Architecture

The Communication Path may connect local and distributed environments.

~~~text
Farm / Field / Greenhouse
            ↓
           Edge
            ↓
      Regional Hub
            ↓
    Private / Public Cloud
            ↓
 External / Enterprise Ecosystem
~~~

The same logical architecture may operate with intermittent, low-latency or high-bandwidth connectivity depending on deployment requirements.

---

## 22. Computational Path Architecture

The Computational Path provides heterogeneous execution.

~~~text
                    Computational Path
                           │
       ┌───────────┬───────┼───────┬───────────┐
       ↓           ↓       ↓       ↓           ↓
      CPU         GPU     NPU     FPGA        QPU
       │           │       │       │           │
       └───────────┴───────┼───────┴───────────┘
                           ↓
                     Hybrid Execution
                           │
                     QAI / AI / HPC
~~~

Workloads should be assigned according to requirements and evidence rather than technology preference.

---

## 23. Path Data Flow

Information may move through the paths in multiple directions.

~~~text
              ┌───────────────┐
              │ Physical Farm │
              └───────┬───────┘
                      ↓
                   Sensing
                      ↓
                Communication
                      ↓
                 Computation
                      ↓
               Intelligence
                      ↓
                  Decision
                      ↓
                Communication
                      ↓
               Physical Action
~~~

Feedback returns observations to the sensing and intelligence lifecycle.

---

## 24. Path Control Flow

Control is distinct from information flow.

A Digital Farm may:

- Observe a condition
- Analyse it
- Determine an action
- Authorise the action
- Issue a command
- Verify execution
- Measure the outcome

Control therefore crosses the paths but remains governed by authority and safety boundaries.

---

## 25. Path Synchronization

The paths may require synchronization of:

- Time
- State
- Events
- Measurements
- Commands
- Computation
- Physical actions

Synchronization is particularly important for real-time CPS and QAI operation.

---

## 26. Path Latency

Different path operations have different latency requirements.

Examples include:

- Non-real-time analytics
- Periodic monitoring
- Near-real-time decision support
- Real-time CPS control
- Safety-sensitive operation

Path architecture should therefore support multiple latency classes rather than assume one universal timing requirement.

---

## 27. Path Reliability

Reliability must be considered across the complete path chain.

~~~text
Sensor Reliability
        +
Communication Reliability
        +
Computational Reliability
        =
End-to-End Operational Reliability
~~~

Optimising one path does not guarantee end-to-end reliability.

---

## 28. Path Failure and Degradation

A failure in one path should not automatically cause complete Digital Farm failure.

Possible responses include:

- Retry
- Buffering
- Caching
- Local processing
- Alternative communication
- Classical fallback
- Reduced sensing resolution
- Reduced computational scope
- Manual operation
- Safe shutdown

The appropriate response depends on operational criticality.

---

## 29. Path Resilience

Resilience may be achieved through:

- Redundancy
- Alternative resources
- Distributed deployment
- Local autonomy
- Store-and-forward
- Graceful degradation
- Classical fallback
- Recovery procedures
- Human intervention

Resilience is an end-to-end property across the three paths.

---

## 30. Path Edge Operation

Edge environments may combine capabilities from all three paths.

~~~text
                 EDGE
        ┌────────┼────────┐
        ↓        ↓        ↓
     Sensing  Communication  Compute
        │        │        │
        └────────┼────────┘
                 ↓
          Local Intelligence
~~~

This can support local autonomy and reduced dependency on cloud connectivity.

---

## 31. Path Regional Operation

Regional hubs may aggregate and coordinate:

- Multiple farms
- Regional sensing
- Communication
- Computational resources
- Models
- Digital Twin information
- QAI workloads

Regional operation can provide an intermediate level between local edge autonomy and central cloud capabilities.

---

## 32. Path Cloud Operation

Cloud environments may provide:

- Large-scale computation
- Model training
- Simulation
- QAI workloads
- Data processing
- Cross-farm analytics
- Long-term storage
- Enterprise integration

Cloud execution remains an implementation and deployment choice rather than an architectural requirement.

---

## 33. Path and Interfaces

Interfaces provide controlled boundaries between Digital Farm and connected systems.

~~~text
External System
      ↓
   Interface
      ↓
Communication Path
      ↓
Digital Farm
~~~

The interface defines the contract; the Communication Path provides transport.

---

## 34. Path and Execution Modes

The three paths operate across:

- Virtualization
- Emulation
- Simulation
- Physical execution

For example, sensing may be represented by a sensor emulator during simulation while using physical sensors during operational execution.

---

## 35. Path and Simulation

Simulation may reproduce or model the behaviour of one or more paths.

~~~text
Real Path
    ↕
Path Model / Emulator
    ↕
Simulation
    ↕
Alternative Scenario
~~~

This allows path behaviour to be evaluated before operational deployment.

---

## 36. Path and Pilot

The Pilot should establish the smallest useful end-to-end path.

~~~text
Real Sensor
    ↓
Communication
    ↓
Computation
    ↓
Digital Twin
    ↓
QAI / AI
    ↓
Decision
    ↓
Evidence
~~~

The objective is to prove a callable capability rather than implement the complete production architecture.

---

## 37. Path and Post-Pilot

Post-Pilot expands and hardens the paths for continuous operation.

This may include:

- Additional sensing
- Increased connectivity
- More computational resources
- Redundancy
- Monitoring
- Maintenance
- Security hardening
- Operational automation
- Resource optimisation
- Multi-farm scaling

---

## 38. Path and Research

Research may introduce experimental capabilities into any path.

Examples include:

- New sensors
- New communication methods
- New processors
- New QAI algorithms
- New transduction methods
- New simulation models

Research implementations should remain appropriately isolated until validated.

---

## 39. Path and Value

The three paths ultimately support operational and economic value.

~~~text
Observation
    ↓
Information
    ↓
Computation
    ↓
Decision
    ↓
Action
    ↓
Outcome
    ↓
Economic / Operational Value
~~~

Path investments should therefore be evaluated according to measurable operational requirements and expected value.

---

## 40. Path Resource Awareness

Each path must remain resource-aware.

Resources may include:

- Energy
- Compute
- Storage
- Network
- Sensors
- Communication capacity
- Quantum resources
- Human resources
- Budget
- Time

Resource constraints may change the appropriate operating mode.

---

## 41. Path Security Boundary

Security controls should follow the path boundaries.

~~~text
Sensing Security
       ↓
Communication Security
       ↓
Computational Security
       ↓
Intelligence Security
       ↓
Action Security
~~~

Security must cover both information and operational control.

---

## 42. Path Sovereignty

The paths may operate across different administrative and geographic domains.

Logical sovereignty may be maintained through:

- Identity
- Access control
- Data boundaries
- Policy
- Replication controls
- Administrative separation
- Operational authority

Shared physical infrastructure does not require shared sovereignty.

---

## 43. Path Observability

Path observability should provide visibility into:

- Sensor health
- Communication health
- Compute health
- Latency
- Throughput
- Errors
- Resource utilisation
- Synchronization
- Workload state
- Operational outcomes

This information supports management and assurance.

---

## 44. Path Lifecycle

Each path follows a lifecycle consistent with Digital Farm operation:

**Define → Build → Integrate → Validate → Deploy → Monitor → Maintain → Evolve → Retire**

The lifecycle may differ operationally between Pilot, Post-Pilot and Research profiles.

---

## 45. Path Versioning

Path capabilities should evolve without changing their fundamental architectural responsibilities.

For example:

~~~text
Sensor Technology v1
        ↓
Sensor Technology v2
        ↓
New Sensing Technology
~~~

The Sensing Path remains the same architectural capability.

The same principle applies to Communication and Computational technologies.

---

## 46. Path Vendor Neutrality

The paths are technology- and vendor-neutral.

The architecture does not require a particular:

- Sensor vendor
- Network provider
- Cloud provider
- CPU vendor
- GPU vendor
- QPU provider
- IoT platform

Vendor-specific implementations should remain behind appropriate architectural boundaries.

---

## 47. Path Portability

Path implementations should be replaceable where practical.

Portability supports:

- Technology evolution
- Vendor replacement
- Cloud migration
- Edge migration
- Regional expansion
- Resource substitution
- Long-term architecture stability

---

## 48. Path Interoperability

The three paths must interoperate with:

- Digital Farm
- QAI Base Platform
- HoldCo Factory
- Enterprise systems
- External services
- Digital Twin
- CPS
- Human + AI

Interoperability should use explicit interfaces and reusable contracts.

---

## 49. Path Non-Duplication

The paths should not duplicate capabilities already provided by:

- HoldCo Factory
- QAI Base Platform
- Digital Twin Fabric
- Management
- Resource Management
- Service Management
- Governance
- Interfaces

The paths provide fundamental architectural transport, observation and computation responsibilities.

---

## 50. Path Composition

Complex Digital Farm capabilities may compose all three paths.

~~~text
                   Digital Farm Capability
                            │
              ┌─────────────┼─────────────┐
              ↓             ↓             ↓
          SENSING      COMMUNICATION   COMPUTATION
              │             │             │
              └─────────────┼─────────────┘
                            ↓
                    Digital Twin / QAI
~~~

No single path should be treated as the complete Digital Farm architecture.

---

## 51. Path Authority Boundary

The paths provide capability but do not independently determine operational authority.

Authority remains with the appropriate:

- Human
- Policy
- Governance
- Management
- Safety control
- Security control

A computational capability does not automatically have permission to execute an action.

---

## 52. Path Evidence

Important path operations should generate appropriate evidence.

Examples include:

- Measurement
- Transmission
- Computation
- Decision
- Command
- Execution
- Verification
- Outcome

Evidence supports:

- Assurance
- Auditability
- Reproducibility
- Learning
- Operational improvement

---

## 53. Path Quality

Quality should be evaluated end-to-end.

~~~text
Measurement Quality
        ↓
Communication Quality
        ↓
Computational Quality
        ↓
Decision Quality
        ↓
Action Quality
        ↓
Outcome Quality
~~~

Quality therefore cannot be assessed solely at an individual component level.

---

## 54. Path Adaptation

The paths may adapt to changing conditions.

Examples include:

- Reduced network availability
- Sensor degradation
- Compute shortage
- Energy constraints
- QPU queue delays
- Weather disruption
- Operational emergencies

Adaptation may change resource allocation, execution location, workload type or operating mode.

---

## 55. Path Intelligence

QAI Intelligence can reason about path conditions.

Examples include:

- Sensor anomalies
- Network degradation
- Compute availability
- Resource constraints
- Latency conditions
- Alternative execution options

This allows intelligence to consider not only the farm state but also the capability state of the architecture itself.

---

## 56. Path and QAI Adaptation

Adaptive QAI may select among computational resources based on:

- Problem size
- Representation
- Available resources
- Expected advantage
- Latency
- Cost
- Confidence
- Queue
- Fidelity
- Classical alternatives

The Computational Path therefore becomes an adaptive execution environment rather than a fixed processor pipeline.

---

## 57. Path and Closed-Loop Operation

Closed-loop operation crosses all three paths.

~~~text
Sense
  ↓
Communication
  ↓
Compute
  ↓
Decide
  ↓
Communication
  ↓
Act
  ↓
Physical Outcome
  ↓
Sense
~~~

Safety, governance and human authority determine whether and how the loop may be closed.

---

## 58. Path and Open-Loop Operation

Open-loop operation may stop before physical action.

~~~text
Sense
  ↓
Communication
  ↓
Compute
  ↓
Analyse / Simulate
  ↓
Recommendation
  ↓
Human Decision
~~~

This is often appropriate during early pilots and decision-support use cases.

---

## 59. Path Architectural Stability

Technology may change significantly while the three paths remain stable.

~~~text
Stable Architecture
        │
        ├── New Sensors
        ├── New Networks
        ├── New Processors
        ├── New QPUs
        ├── New Edge Platforms
        └── New Cloud Platforms
~~~

The architectural responsibilities remain:

**Sense → Communicate → Compute**

---

## 60. Three Paths Operating Model

The complete operating relationship can be represented as:

~~~text
                         DIGITAL FARM
                              │
          ┌───────────────────┼───────────────────┐
          ↓                   ↓                   ↓
       SENSING           COMMUNICATION       COMPUTATIONAL
         PATH                  PATH                PATH
          │                   │                   │
          └───────────────────┼───────────────────┘
                              ↓
                        DIGITAL TWIN
                              ↓
                       QAI INTELLIGENCE
                              ↓
                        HUMAN + AI
                              ↓
                       MANAGEMENT
                              ↓
                        GOVERNANCE
                              ↓
                     AUTHORISED ACTION
                              ↓
                      PHYSICAL OUTCOME
                              ↓
                           LEARN
                              ↺
~~~

The paths provide the operational foundation through which the Digital Farm observes, communicates, computes, decides and acts.

---

## 61. Final Three Paths Principle

**The Sensing Path observes the physical and operational environment, the Communication Path moves information and authorised commands, and the Computational Path transforms information into analysis, intelligence and execution.**

Together they form the three first-class architectural paths of Digital Farm.

They are interconnected through the Digital Twin, QAI Intelligence, Human + AI, fabrics, management, governance and resource services while remaining logically distinct.

**Architecture Status: Core / Foundational / Vendor-Neutral**
---
