# Agriculture Pilot — Cyber-Physical Systems (CPS)

## Purpose

This directory defines the Cyber-Physical Systems (CPS) realization for the HoldCo Agriculture Pilot.

The Agriculture CPS connects physical agricultural assets with:

- Sensors
- Edge devices
- Local compute
- Digital Twin state
- AI / QAI intelligence
- Decision logic
- Safety and constraint controls
- Controllers
- Actuators
- Communication infrastructure
- Observability
- Validation evidence

The pilot CPS provides the physical-to-digital-to-physical execution path through which Agriculture intelligence can observe, reason about and influence real-world agricultural processes.

```text
Physical Agriculture
        │
        ▼
     Sensors
        │
        ▼
 Edge Acquisition
        │
        ▼
 State / Fusion
        │
        ▼
 Digital Twin
        │
        ▼
 AI / QAI Decision Support
        │
        ▼
 Safety / Constraints
        │
        ▼
   CPS Controller
        │
        ▼
     Actuator
        │
        ▼
Physical Agriculture
```

---

# Pilot Scope

The pilot CPS should focus on practical, measurable and controllable agricultural processes.

Potential pilot domains include:

- Soil monitoring
- Environmental monitoring
- Water monitoring
- Irrigation
- Pump control
- Tank monitoring
- Greenhouse sensing
- Greenhouse environmental control
- Equipment monitoring
- Energy monitoring
- Edge processing
- Digital Twin synchronization
- AI / QAI-assisted optimization

Advanced quantum sensors, Q-NEMS, QEMS, advanced photonic sensing and similar technologies belong primarily to the post-pilot or research architecture unless explicitly approved for experimentation.

---

# CPS Architecture Position

The CPS sits between the physical Agriculture environment and the higher-level intelligence architecture.

```text
                    QAI / AI
                       │
                       ▼
                 DIGITAL TWIN
                       │
                       ▼
                DECISION LAYER
                       │
                       ▼
             SAFETY / CONSTRAINTS
                       │
                       ▼
                 CPS CONTROL
                       │
                       ▼
                  ACTUATORS
                       │
                       ▼
              PHYSICAL PROCESS
                       │
                       ▼
                    SENSORS
                       │
                       ▼
                      EDGE
                       │
                       └──────────────► DIGITAL TWIN
```

The resulting architecture forms a closed cyber-physical loop.

---

# CPS Closed-Loop Model

The fundamental pilot loop is:

```text
        ┌─────────────────────────────────────┐
        │                                     │
        ▼                                     │
Physical Process                              │
        │                                     │
        ▼                                     │
      Sensor                                  │
        │                                     │
        ▼                                     │
  Edge Acquisition                            │
        │                                     │
        ▼                                     │
Validation / Filtering                        │
        │                                     │
        ▼                                     │
   State Estimation                           │
        │                                     │
        ▼                                     │
    Digital Twin                              │
        │                                     │
        ▼                                     │
 Decision / Optimization                      │
        │                                     │
        ▼                                     │
Safety / Policy Check                         │
        │                                     │
        ▼                                     │
     Controller                               │
        │                                     │
        ▼                                     │
      Actuator ────────────────────────────────┘
```

---

# Core CPS Principle

QAI intelligence should not automatically receive unrestricted direct control of physical agricultural equipment.

The preferred architecture is:

```text
QAI Recommendation
       ↓
Policy
       ↓
Constraint Validation
       ↓
Safety Validation
       ↓
CPS Controller
       ↓
Actuator
```

This preserves a controlled boundary between probabilistic intelligence and physical actuation.

---

# Physical Agriculture Layer

The physical layer may contain:

- Fields
- Soil
- Crops
- Greenhouses
- Water sources
- Tanks
- Reservoirs
- Pumps
- Irrigation lines
- Valves
- Fertigation equipment
- Weather stations
- Agricultural machinery
- Energy systems

These physical entities provide the real-world state that the CPS observes and influences.

---

# Sensor Layer

The pilot sensor layer may collect measurements such as:

- Soil moisture
- Soil temperature
- Air temperature
- Humidity
- Water level
- Water flow
- Water pressure
- pH
- Electrical conductivity
- Light
- Rainfall
- Wind
- CO₂
- Equipment vibration
- Equipment temperature
- Power consumption
- Camera / vision data

```text
Physical Variable
       ↓
Sensor
       ↓
Signal
       ↓
Acquisition
       ↓
Digital Observation
```

Sensor selection should be based on pilot requirements rather than technology novelty.

---

# Sensor Identity

Each relevant sensor should have an identifiable logical representation.

Potential metadata includes:

```text
Sensor ID
Device ID
Sensor Type
Location
Physical Asset
Measurement Type
Unit
Sampling Rate
Calibration State
Health State
Timestamp
Quality
Firmware
Interface
```

This enables sensor observations to be traced through the Digital Thread.

---

# Edge Acquisition

The edge layer receives physical observations.

```text
Sensor
  ↓
Interface
  ↓
Driver
  ↓
Edge Acquisition
  ↓
Normalization
  ↓
Validation
  ↓
State
```

Potential interfaces include:

- GPIO
- I2C
- SPI
- UART
- USB
- Ethernet
- Wi-Fi
- BLE
- Modbus
- CAN
- MQTT
- OPC UA

The exact interfaces depend on selected pilot devices.

---

# Sensor Normalization

Different sensors may use different formats and units.

The CPS should normalize measurements into consistent representations.

Example:

```text
Raw Sensor
    ↓
Decode
    ↓
Unit Conversion
    ↓
Range Validation
    ↓
Timestamp
    ↓
Quality Metadata
    ↓
Normalized Observation
```

---

# Observation Model

A normalized observation may logically contain:

```text
Observation
│
├── Sensor ID
├── Device ID
├── Asset ID
├── Timestamp
├── Measurement
├── Unit
├── Quality
├── Confidence
├── Location
├── Calibration State
└── Provenance
```

The exact schema may evolve during implementation.

---

# Sensor Quality

Sensor readings should not automatically be treated as trustworthy.

Potential checks include:

- Valid range
- Missing values
- Sudden jumps
- Drift
- Stale readings
- Calibration status
- Cross-sensor disagreement
- Communication errors

```text
Observation
    ↓
Quality Check
    ↓
 ┌───────┴────────┐
 ▼                ▼
VALID          SUSPECT
 │                │
 ▼                ▼
State          Flag / Reject /
Update         Re-evaluate
```

---

# Sensor Fusion

Where multiple sensors describe the same physical condition, observations may be fused.

```text
Sensor A ─┐
Sensor B ─┼──► Fusion ───► Estimated State
Sensor C ─┘
```

Fusion may use:

- Statistical methods
- Filtering
- Rules
- Machine learning
- Neural networks
- QAI techniques where justified

The pilot should retain a classical implementation path.

---

# State Estimation

The CPS converts observations into meaningful operational state.

Example:

```text
Soil Moisture Sensor
        ↓
Observation
        ↓
Quality Validation
        ↓
Field Moisture State
        ↓
Digital Twin
```

State may include:

- Current value
- Trend
- Confidence
- Health
- Alarm state
- Operational status

---

# Digital Twin Integration

The CPS should synchronize relevant physical state with the Agriculture Digital Twin.

```text
Physical Asset
      ↓
Sensor
      ↓
Edge
      ↓
Observation
      ↓
Digital Twin
```

The Digital Twin provides a structured representation of the physical environment for:

- Visualization
- Simulation
- Decision support
- AI
- QAI
- Historical analysis
- Validation

---

# Physical-to-Digital Synchronization

The CPS should maintain controlled synchronization between physical and digital state.

```text
Physical State
      ↓
Observation
      ↓
Timestamp
      ↓
Validation
      ↓
Digital Twin State
```

State freshness should be measurable.

Potential metadata includes:

```text
observed_at
received_at
processed_at
twin_updated_at
```

This allows synchronization delay to be measured.

---

# Digital-to-Physical Path

The reverse path translates decisions into physical action.

```text
Decision
   ↓
Command
   ↓
Policy Check
   ↓
Safety Check
   ↓
Controller
   ↓
Actuator
   ↓
Physical Process
```

Every significant physical command should be attributable to its originating decision or control rule.

---

# Decision Layer

Decisions may originate from:

- Fixed rules
- Threshold logic
- Scheduling
- Optimization
- AI models
- QAI algorithms
- Human operators

```text
Rules ──────────┐
AI ─────────────┤
QAI ────────────┼──► Decision Layer
Optimization ───┤
Human ──────────┘
```

The CPS should preserve the source of the decision.

---

# QAI Integration

QAI may assist with Agriculture CPS functions such as:

- Irrigation optimization
- Resource allocation
- Sensor fusion
- Anomaly detection
- Scheduling
- Forecasting
- Multi-variable optimization
- Water management

However:

> QAI output should normally be treated as decision intelligence rather than unrestricted actuator authority.

```text
CPS State
    ↓
Digital Twin
    ↓
QAI
    ↓
Recommendation
    ↓
Constraint Check
    ↓
Controller
```

---

# QAI Resource Path

The QAI workload may execute on heterogeneous resources.

```text
CPS Problem
    ↓
QAI Runtime
    ↓
Resource Selection
    ↓
┌─────┬─────┬─────┬─────┬─────┐
▼     ▼     ▼     ▼     ▼
CPU   GPU   NPU   QPU   HPC
```

The CPS should not depend on a QPU being continuously available.

---

# Classical Fallback

The pilot must support classical fallback.

```text
QAI Execution
     ↓
Result / Resource Check
     ↓
 ┌──────┴──────┐
 ▼             ▼
Accept       Fallback
 │             │
 ▼             ▼
QAI Result   Classical /
             HPC Result
```

Fallback may occur when:

- QPU is unavailable
- Execution exceeds resource limits
- Confidence is insufficient
- Fidelity is inadequate
- Quantum advantage is not demonstrated
- Cost exceeds policy
- Latency exceeds CPS requirements

---

# Fail-Safe Principle

A failed QAI experiment must not disable essential physical operation.

```text
QAI Failure
    ↓
Fallback
    ↓
Classical Control
    ↓
Safe CPS Operation
```

Essential functions should remain operable using validated classical mechanisms.

---

# Safety Layer

The safety layer protects physical systems from invalid or unsafe commands.

Potential checks include:

- Minimum threshold
- Maximum threshold
- Rate-of-change limit
- Equipment operating range
- Water availability
- Pressure limit
- Temperature limit
- Timing constraint
- Manual override
- Emergency stop
- Interlock

```text
Proposed Command
       ↓
Safety Check
       ↓
 ┌─────┴─────┐
 ▼           ▼
SAFE       UNSAFE
 │           │
 ▼           ▼
Execute     Block
```

---

# Policy Layer

Policy is distinct from physical safety.

A command may be physically safe but operationally disallowed.

Potential policies include:

- Water budget
- Energy budget
- Time-of-day restrictions
- Cost constraints
- User permissions
- Environmental requirements
- Operational schedules

```text
Decision
   ↓
Policy
   ↓
Safety
   ↓
Control
```

---

# Controller Layer

The controller translates approved commands into physical actions.

Potential controllers include:

- PLC
- Microcontroller
- Industrial PC
- Edge controller
- IoT controller
- Pump controller
- Irrigation controller
- Greenhouse controller

The pilot should keep deterministic control functions close to the physical equipment where appropriate.

---

# Actuator Layer

Potential pilot actuators include:

- Water pumps
- Valves
- Irrigation zones
- Fans
- Vents
- Heaters
- Cooling systems
- Lighting
- Dosing systems
- Motors
- Relays

```text
Controller
    ↓
Command
    ↓
Actuator
    ↓
Physical Change
```

---

# Command Acknowledgement

Commands should provide execution status where supported.

```text
Command
   ↓
Controller
   ↓
Actuator
   ↓
Acknowledgement
   ↓
Telemetry
```

Potential status values:

```text
REQUESTED
ACCEPTED
EXECUTING
COMPLETED
FAILED
BLOCKED
TIMEOUT
```

---

# Closed-Loop Verification

A command should ideally be verified using subsequent sensor observations.

Example:

```text
OPEN VALVE
    ↓
Controller
    ↓
Valve Opens
    ↓
Flow Sensor
    ↓
Flow Detected
    ↓
Command Verified
```

This is stronger than assuming command transmission equals physical execution.

---

# Irrigation CPS Example

```text
Soil Moisture
      ↓
Sensor
      ↓
Edge
      ↓
Digital Twin
      ↓
Irrigation Decision
      ↓
Water Availability
      ↓
Policy / Safety
      ↓
Valve Controller
      ↓
Valve
      ↓
Irrigation
      ↓
Updated Soil Moisture
```

This produces a complete closed loop.

---

# Water Tank Example

```text
Tank Level
    ↓
Sensor
    ↓
Edge
    ↓
Digital Twin
    ↓
Threshold / Forecast
    ↓
Pump Decision
    ↓
Safety
    ↓
Pump Controller
    ↓
Pump
    ↓
Tank State Change
```

Potential safety rules include:

- Dry-run protection
- Overflow protection
- Minimum source level
- Maximum destination level
- Pump thermal limit

---

# Greenhouse CPS Example

```text
Temperature ─┐
Humidity ────┤
CO₂ ─────────┤
Light ───────┼──► State / Digital Twin
Soil ────────┘
                    ↓
               Decision
                    ↓
             Policy / Safety
                    ↓
        ┌───────────┼───────────┐
        ▼           ▼           ▼
       Fan         Vent       Irrigation
```

The pilot may validate only a subset of these functions.

---

# Equipment Health Example

```text
Vibration
Temperature
Power
   │
   ▼
Edge Monitoring
   │
   ▼
Health State
   │
   ▼
Anomaly Detection
   │
   ▼
Maintenance Alert
```

Where physical shutdown is involved, safety and control authority should remain explicitly governed.

---

# Edge Autonomy

The CPS should support useful local operation during cloud disconnection.

```text
Cloud Available
      │
      ▼
Normal Operation
```

If connectivity fails:

```text
Cloud Lost
    ↓
Edge Detects Loss
    ↓
Local State
    ↓
Local Rules / Models
    ↓
Safe Operation
    ↓
Reconnect
    ↓
Resynchronize
```

---

# Offline Operation

Potential local functions include:

- Sensor acquisition
- Threshold monitoring
- Safety checks
- Basic irrigation control
- Pump protection
- Local alarms
- State buffering
- Telemetry buffering

Cloud or remote QAI dependence should not create unsafe physical behavior.

---

# Communication Integration

The CPS uses the Agriculture communication path.

```text
Sensor
  ↓
Edge
  ↓
Site Network
  ↓
QAI Hub
  ↓
QAI Cloud
```

Commands return through controlled communication channels.

```text
QAI / Operator
      ↓
QAI Hub
      ↓
Edge
      ↓
Controller
      ↓
Actuator
```

---

# Outbound Connectivity Preference

Where practical, field devices and gateways should establish secure outbound connections rather than exposing unnecessary inbound services.

This can simplify:

- Firewall management
- Remote deployment
- Telemetry
- Security
- NAT traversal

Exact connectivity depends on selected pilot infrastructure.

---

# Device Management

Pilot devices may require:

- Registration
- Identity
- Provisioning
- Configuration
- Software deployment
- Firmware update
- Health monitoring
- Restart
- Decommissioning

```text
Register
   ↓
Provision
   ↓
Configure
   ↓
Operate
   ↓
Monitor
   ↓
Update
   ↓
Retire
```

---

# Remote Application Deployment

Where supported, edge application components may be packaged for remote deployment.

Potential mechanisms include:

- Containers
- Edge runtimes
- Deployment manifests
- Device agents
- OTA packages
- Configuration management

```text
Central Management
       ↓
Deployment Manifest
       ↓
Secure Network
       ↓
Edge Agent
       ↓
Runtime
       ↓
Application Component
```

The selected implementation should remain replaceable behind the logical CPS architecture.

---

# Containerized CPS Components

Suitable non-real-time application components may be containerized.

Examples:

- Sensor adapters
- Data normalization
- MQTT services
- Digital Twin connectors
- AI inference
- QAI client services
- Telemetry
- Diagnostics

Hard real-time or safety-critical functions should be evaluated separately before containerization.

---

# Hardware Mapping

Some containerized edge components may require controlled access to physical interfaces.

Conceptually:

```text
Application Component
        ↓
Runtime
        ↓
Device Mapping
        ↓
USB / Serial / CAN / GPIO / GPU
        ↓
Physical Device
```

Device access should follow least-privilege principles.

---

# CPS Identity

Each significant CPS entity should have a stable identity.

Potential entities include:

```text
Farm
Field
Greenhouse
Tank
Pump
Valve
Sensor
Gateway
Controller
Actuator
Edge Node
```

Identity supports:

- Digital Twin mapping
- Security
- Inventory
- Telemetry
- Provenance
- Validation

---

# CPS Capability Registry

The pilot may maintain a logical registry such as:

```text
Device
│
├── Identity
├── Type
├── Location
├── Capabilities
├── Interfaces
├── Sensors
├── Actuators
├── Compute
├── Network
├── Firmware
├── Health
└── Digital Twin Mapping
```

This can later integrate with broader HoldCo registries.

---

# Timing

Timing is important across the CPS loop.

Potential measurements include:

```text
Sensor Timestamp
      ↓
Edge Receive Time
      ↓
Processing Time
      ↓
Decision Time
      ↓
Command Time
      ↓
Actuation Time
```

Useful metrics include:

- Sensor latency
- Network latency
- Processing latency
- Decision latency
- Control latency
- End-to-end loop latency

---

# Real-Time Classification

Not every Agriculture workload requires the same timing guarantees.

Potential classifications:

```text
Hard Real-Time
Soft Real-Time
Near Real-Time
Interactive
Batch
```

Examples may include:

- Equipment protection → tighter timing
- Irrigation scheduling → less restrictive
- Historical optimization → batch

Timing requirements should be assigned explicitly.

---

# CPS Observability

The pilot should provide observability across the physical and digital loop.

```text
Sensor
  ↓
Edge
  ↓
Twin
  ↓
Decision
  ↓
Controller
  ↓
Actuator
```

Potential telemetry includes:

- Sensor values
- Device health
- Edge health
- Network state
- Digital Twin state
- Decisions
- Commands
- Actuator acknowledgements
- Errors
- Resource usage

---

# Event Logging

Important CPS events should be logged.

Examples:

```text
SENSOR_READING
SENSOR_FAULT
STATE_CHANGE
DECISION_CREATED
COMMAND_REQUESTED
COMMAND_BLOCKED
COMMAND_EXECUTED
ACTUATOR_FAILURE
NETWORK_LOST
NETWORK_RESTORED
FALLBACK_STARTED
FALLBACK_COMPLETED
```

---

# Provenance

A significant physical action should be traceable.

```text
Physical Action
      ↑
Command
      ↑
Decision
      ↑
Model / Rule
      ↑
State
      ↑
Observation
      ↑
Sensor
```

This provides an important Digital Thread relationship.

---

# Virtual Qubit Metadata

Where QAI experiments use Virtual Qubit abstractions, associated metadata may be captured at relevant architecture boundaries.

Potential boundaries include:

- QAI ingress
- QAI egress
- Device boundary
- Network boundary
- Gate boundary
- Resource boundary

Conceptually:

```text
CPS Problem
    ↓
Virtual Qubit Metadata
    ↓
QAI Execution
    ↓
Result Metadata
    ↓
CPS Decision
```

The physical CPS should not depend on exposing underlying physical qubit implementation details.

---

# Security

CPS security should be applied across:

```text
Sensor
  ↓
Device
  ↓
Edge
  ↓
Network
  ↓
QAI Hub
  ↓
Cloud
```

Potential controls include:

- Device identity
- Authentication
- Authorization
- Encryption
- Certificate management
- Secure APIs
- Network segmentation
- Audit
- Secure update
- Least privilege

---

# Command Authorization

Actuation commands require stronger control than passive telemetry.

```text
Command Request
      ↓
Identity
      ↓
Authorization
      ↓
Policy
      ↓
Safety
      ↓
Controller
```

Unauthorized commands should never reach the actuator interface.

---

# Manual Override

The architecture should permit appropriate human override.

```text
Automated Decision
       ↓
Controller
       ↑
Manual Override
```

The exact priority rules depend on the equipment and safety design.

---

# Emergency State

Where applicable:

```text
Unsafe Condition
      ↓
Emergency Logic
      ↓
Override Normal Decision
      ↓
Safe State
```

Emergency control should not depend on remote QAI availability.

---

# Resource Governance

CPS-related AI and QAI workloads should operate within defined resource limits.

Potential controls include:

- CPU limits
- GPU limits
- Memory limits
- QPU shot limits
- Execution time limits
- Network limits
- Cost limits
- Energy limits

```text
Workload
   ↓
Resource Budget
   ↓
Execute
   ↓
Monitor
   ↓
Continue / Stop / Fallback
```

---

# QAI Experiment Isolation

Experimental QAI workloads should be isolated from essential CPS operation.

```text
                 CPS
                  │
        ┌─────────┴─────────┐
        ▼                   ▼
 Essential Control      QAI Experiment
        │                   │
        ▼                   ▼
 Validated Path        Sandbox / Governed
        │                   │
        └─────────┬─────────┘
                  ▼
            Approved Result
```

This reduces the risk of experimental workloads affecting physical operations.

---

# CPS Validation

Pilot CPS validation should include multiple layers.

```text
Component
   ↓
Interface
   ↓
Subsystem
   ↓
Closed Loop
   ↓
Failure
   ↓
Recovery
   ↓
End-to-End
```

---

# Sensor Validation

Potential tests include:

- Range
- Accuracy
- Repeatability
- Sampling
- Timestamp
- Missing data
- Calibration
- Fault detection
- Communication loss

---

# Edge Validation

Potential tests include:

- Sensor ingestion
- Normalization
- Buffering
- Local rules
- Container restart
- Device restart
- Network loss
- Recovery
- Digital Twin synchronization

---

# Controller Validation

Potential tests include:

- Valid command
- Invalid command
- Out-of-range command
- Duplicate command
- Timeout
- Manual override
- Emergency state
- Communication failure

---

# Closed-Loop Validation

A closed-loop test should demonstrate:

```text
Known Initial State
       ↓
Measured Observation
       ↓
Decision
       ↓
Approved Command
       ↓
Physical Action
       ↓
Measured New State
       ↓
Expected Result?
```

The result should produce evidence.

---

# Failure Injection

Where safe, validation may intentionally test failure conditions.

Potential scenarios:

- Sensor failure
- Edge failure
- Network failure
- Cloud failure
- QAI failure
- Controller timeout
- Actuator failure
- Stale Digital Twin state

```text
Failure
   ↓
Detection
   ↓
Isolation
   ↓
Fallback
   ↓
Recovery
```

---

# Validation Evidence

Evidence may include:

- Logs
- Metrics
- Screenshots
- Sensor traces
- State transitions
- Benchmark results
- Command histories
- Digital Twin snapshots
- Test reports

Evidence should map back to requirements where possible.

---

# CPS Digital Thread

The CPS Digital Thread can be represented as:

```text
Requirement
    ↓
CPS Capability
    ↓
Logical Component
    ↓
Implementation
    ↓
Device
    ↓
Deployment
    ↓
Observation / Command
    ↓
Validation
    ↓
Evidence
```

---

# CPS Inventory Mapping

Pilot CPS components should map to the Agriculture inventory.

Example conceptual relationship:

```text
CPS-S-xxx
    ↓
Logical Capability
    ↓
Implementation Group
    ↓
Target Device
    ↓
COTS / Internal Component
    ↓
Pilot Status
    ↓
Validation Evidence
```

The inventory remains the detailed implementation source rather than this README.

---

# Vendor Neutrality

The logical CPS architecture should not depend unnecessarily on one vendor.

For example:

```text
Logical Edge Runtime
        ↓
Implementation Adapter
        ↓
Selected Platform
```

This allows technologies to evolve without redesigning the entire CPS architecture.

---

# Pilot vs Post-Pilot Boundary

The CPS pilot should remain focused.

```text
                 CPS ROADMAP
                     │
          ┌──────────┴──────────┐
          ▼                     ▼
        PILOT               POST-PILOT
          │                     │
 Classical Sensors        Advanced Sensors
 Edge CPS                 MEMS / NEMS
 Digital Twin             Q-NEMS / QEMS
 AI / QAI Assist          Quantum Sensors
 Irrigation               Advanced Robotics
 Water                    Photonic Sensing
 Basic Greenhouse         Advanced Autonomy
```

A post-pilot capability may later move into the validated production architecture after sufficient evidence exists.

---

# Advanced Sensor Evolution

The long-term sensing evolution may be represented as:

```text
Classical Sensor
      ↓
MEMS
      ↓
NEMS
      ↓
Q-NEMS / QEMS
      ↓
Quantum Sensor
```

This is a technology roadmap, not an assumption that each stage will necessarily replace the previous one.

Hybrid sensing is likely to remain important.

---

# CPS and Communication Evolution

The CPS currently relies primarily on classical networking.

Future evolution may include:

```text
Classical CPS
     ↓
5G / Edge
     ↓
6G / AI-Native Network
     ↓
Photonic Overlay
     ↓
Quantum Communication
```

The physical CPS control architecture should remain functional even when advanced communication services are unavailable.

---

# CPS and Autonomous Systems

The same CPS principles can later extend to:

- Agricultural robots
- Autonomous tractors
- UAVs
- Drones
- Robotic harvesters
- Inspection robots
- Humanoid systems

Conceptually:

```text
Sensors
   ↓
Perception
   ↓
State
   ↓
Planning
   ↓
Safety
   ↓
Control
   ↓
Actuation
```

These are primarily post-pilot expansion areas unless included in an approved pilot use case.

---

# CPS Success Criteria

The pilot CPS should demonstrate that the architecture can:

1. Observe a real or representative Agriculture process.
2. Acquire sensor data reliably.
3. Normalize and validate observations.
4. Maintain useful operational state.
5. Synchronize state with a Digital Twin.
6. Generate a decision or recommendation.
7. Apply policy and safety constraints.
8. Execute an approved physical or simulated command.
9. Verify the resulting state.
10. Preserve telemetry and provenance.
11. Recover from defined failures.
12. Fall back safely when QAI or remote resources are unavailable.

---

# Pilot CPS Outcome

The desired pilot outcome is not merely:

```text
Sensor → Dashboard
```

The target is a controlled cyber-physical loop:

```text
PHYSICAL WORLD
      ↓
SENSING
      ↓
EDGE
      ↓
STATE
      ↓
DIGITAL TWIN
      ↓
AI / QAI
      ↓
DECISION
      ↓
POLICY
      ↓
SAFETY
      ↓
CONTROL
      ↓
ACTUATION
      ↓
PHYSICAL WORLD
      ↓
VERIFICATION
```

---

# Relationship to Other Pilot Domains

```text
                     PILOT
                       │
        ┌──────────────┼──────────────┐
        ▼              ▼              ▼
     SENSING           CPS           EDGE
        │              │              │
        └──────────────┼──────────────┘
                       ▼
                 DIGITAL TWIN
                       │
                       ▼
                      QAI
                       │
                       ▼
                  NETWORKING
                       │
                       ▼
                  VALIDATION
```

The CPS therefore acts as one of the principal integration points across the Agriculture pilot.

---

# Related Agriculture Documentation

See:

```text
../../README.md
../../architecture/README.md
../../cps/README.md
../../deployment/README.md
../../digital_twin/README.md
../../inventory/README.md
../../qai/README.md
../../validation/README.md

../README.md
../digital_twin/README.md
../edge/README.md
../networking/README.md
../qai/README.md
../sensing/README.md
../validation/README.md
```

The common reusable architecture remains governed by the HoldCo Enterprise Library.

---

# Governing Principles

## Physical Safety First

Physical safety and deterministic equipment protection remain authoritative.

## Intelligence Is Governed

AI and QAI outputs pass through appropriate policy, safety and control boundaries.

## Local Resilience

Essential operation should not depend completely on cloud or QPU availability.

## Classical Fallback

A validated classical path should remain available for essential pilot functions.

## Closed-Loop Verification

Physical commands should be verified through subsequent observations where possible.

## Traceability

Important observations, decisions, commands and physical outcomes should participate in the Digital Thread.

## Vendor Neutrality

Logical CPS capabilities should remain separated from specific COTS implementations where practical.

## Resource Protection

AI, QAI, edge and cloud resources should operate within explicit budgets and policies.

## Evidence Before Expansion

Advanced capabilities move from research to pilot or production only after appropriate validation.

---

# Status

**Agriculture CPS architecture:** Established

**Pilot CPS structure:** Established

**Sensor-to-edge path:** Defined

**Edge-to-state path:** Defined

**Digital Twin integration:** Defined / evolving

**Decision path:** Defined

**QAI integration:** Defined / evolving

**Safety boundary:** Defined

**Control / actuation path:** Defined

**Classical fallback:** Defined

**Offline resilience:** Defined

**Validation framework:** Defined

**Physical implementation:** Progressive

**Advanced sensing:** Post-pilot / research

**Advanced autonomous systems:** Post-pilot

---

# Governing Statement

> **The Agriculture Pilot CPS provides the controlled bridge between physical agricultural processes and the HoldCo QAI architecture. It combines sensing, edge processing, state estimation, Digital Twin synchronization, AI/QAI-assisted decision intelligence, policy, safety, deterministic control and physical actuation while preserving classical fallback, local resilience, resource governance, observability and end-to-end validation.**

```text
                      AGRICULTURE PILOT CPS

                              QAI
                               │
                               ▼
                         DIGITAL TWIN
                               │
                               ▼
                           DECISION
                               │
                               ▼
                            POLICY
                               │
                               ▼
                            SAFETY
                               │
                               ▼
                          CONTROLLER
                               │
                               ▼
                           ACTUATOR
                               │
                               ▼
                      PHYSICAL AGRICULTURE
                               │
                               ▼
                            SENSOR
                               │
                               ▼
                             EDGE
                               │
                               ▼
                       STATE / FUSION
                               │
                               └────────────► DIGITAL TWIN

                 Observability + Security + Timing
                    + Governance + Validation
                     across the entire loop
```
