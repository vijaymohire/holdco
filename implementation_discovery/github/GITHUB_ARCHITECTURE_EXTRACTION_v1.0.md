# GitHub Architecture Extraction

**Version:** 1.0
**Status:** Historical Architecture Baseline
**Phase:** Week 1 — GitHub Discovery / Architecture Extraction
**Scope:** Historical GitHub, GitLab, QAI Factory, FAEP and QAI platform architecture
**Purpose:** Consolidated extraction of architectural principles, implementation candidates and reusable assets identified during historical GitHub/GitLab discovery.

## 1. Purpose

This document captures the consolidated architectural observations recovered during the historical GitHub / GitLab discovery phase.

The objective is not to redesign the historical platform.

The objective is to identify:

- reusable architecture;
- reusable packages;
- reusable control-plane patterns;
- reusable fabric patterns;
- reusable execution pipelines;
- reusable notebooks;
- reusable configuration and boilerplate patterns;
- implementation candidates;
- architectural principles that remain valid;
- concepts that should be modernized;
- concepts that remain future capabilities.

This document acts as the bridge between:

**Historical Architecture → Historical Implementation → Current HoldCo Architecture → Future Implementation**

## 2. Historical Evolution

The historical work evolved progressively rather than being created as one architecture.

The broad evolution identified is:

```text
QAI Platform Foundation
        ↓
QAI Lab
        ↓
Enterprise / UAF Architecture
        ↓
QAI Hub + Dynamic Orchestration
        ↓
Experiment / Evidence Architecture
        ↓
QAI Factory
        ↓
Governance + Control Planes
        ↓
Deployment + Post-Deployment Automation
        ↓
FAEF Ecosystem
        ↓
Advanced Fabrics
        ↓
QAGI / QASI Capability Extensions
        ↓
FAEP Academy / Implementation Assets
        ↓
AI-Native Enterprise Engineering
        ↓
Current HoldCo Implementation
---
                 PHYSICAL ARCHITECTURE
                         │
        Space / Valley / City / Factory / AZ
                         │
                  Fabric Interconnect
                         │
                 LOGICAL ARCHITECTURE
                         │
      Control Planes / Fabrics / Services / Runtimes
```
## 3. Core Physical Hierarchy

The foundational physical / deployment hierarchy is:
```
SPACE
  ↓
VALLEY
  ↓
CITY
  ↓
FACTORY
  ↓
AUTONOMOUS ZONES
```
The primary Factory hierarchy is therefore:

Space → Valley → City → Factory → Autonomous Zones

Additional regional, provincial/state, national and sovereign domains may operate across this physical hierarchy.
---
Autonomous Zones

Autonomous Zones are contained within the Factory hierarchy.

They represent persistent physical/logical operating domains within a Factory and are governed by the Factory's control and policy architecture.

## 4. Physical vs Logical Architecture

Physical and logical architectures are intentionally separated.

```
                 PHYSICAL ARCHITECTURE
                         │
        Space / Valley / City / Factory / AZ
                         │
                  Fabric Interconnect
                         │
                 LOGICAL ARCHITECTURE
                         │
      Control Planes / Fabrics / Services / Runtimes
```

The physical hierarchy answers:

Where does the capability execute?

The logical architecture answers:

How is the capability governed, composed, communicated and executed?

The two layers interact through the Fabric Interconnect and associated communication mechanisms.
---
## 5. Fabric Interconnect

The Fabric Interconnect is a foundational architectural primitive.

It can be viewed conceptually as a high-speed datacenter-style interconnect applied at the enterprise/federated architecture level.

It provides connectivity between:

physical domains;
logical fabrics;
control planes;
runtimes;
services;
autonomous zones;
autonomous nodes;
knowledge systems;
digital twins;
distributed resources.

Conceptually:

```text
Space
  │
Fabric Interconnect
  │
Valley
  │
Fabric Interconnect
  │
City
  │
Fabric Interconnect
  │
Factory
  │
├── Autonomous Zone
├── Autonomous Zone
└── Autonomous Zone
```
The same interconnect can support logical federation across the hierarchy.
---
## 6. Horizontal and Vertical Fabrics

The Factory architecture is organized using both horizontal and vertical capability layers.

### Horizontal Capability Fabrics

Examples include:

Knowledge Fabric
Intelligence / AI Fabric
Communication Fabric
Security Fabric
Operations Fabric
Digital Twin Fabric
Planning Fabric
Mission Fabric
Governance Fabric
Federation Fabric
Quantum Fabric
Compute Fabric
### Vertical / Domain Capabilities

Examples include:

Product
Service
Research
Modernization
QAI Engineering
Robotics
Quantum
Infrastructure
Domain-specific capabilities

The purpose is to prevent individual products and projects from rebuilding common infrastructure capabilities.

## 7. Controllers

Fabrics are managed by controllers at appropriate architectural levels.

The conceptual relationship is:

```
Controller
    ↓
Policy / Governance
    ↓
Fabric
    ↓
Capability
    ↓
Runtime
    ↓
Resource
```
---
The architecture should not be reduced to one centralized controller.

Instead:
```
Enterprise Control
       ↓
Factory Control
       ↓
Capability Control
       ↓
Runtime Control
       ↓
Resource Control

```
---
with cross-plane coordination where required.

Controllers may be responsible for:

discovery;
policy;
lifecycle;
scheduling;
routing;
resource allocation;
observability;
security;
approvals;
automation;
coordination.

---
## 8. Multi-Control-Plane Architecture

The historical architecture establishes multiple control planes rather than a single monolithic control layer.

Potential control domains include:

AI;
Operations;
Security;
Knowledge;
Digital Twin;
Mission;
Quantum;
Compute;
Maintenance;
Governance;
Federation.

Control planes provide:

policy;
lifecycle;
routing;
scheduling;
governance;
resource management;
observability;
security;
approvals;
automation;
coordination.

Control planes may operate independently where separation of concern is required and cooperate through defined interfaces.

## 9. Service Mesh and Communication

The service communication layer is distinct from the broader Fabric Interconnect.

Communication mechanisms may include:

REST;
gRPC;
event-driven messaging;
publish / subscribe;
queues;
streaming;
workflow invocation;
telemetry;
callbacks;
synchronization.

Service routing may consider:

policy;
security;
health;
QoS;
SLA;
trust;
latency;
resource availability;
mission priority.
### Architectural Distinction

**Fabric Interconnect**

Provides broader architectural connectivity and federation.

**Service Mesh**

Provides service-level communication and routing.

**Control Plane**

Provides governance and management.

**Runtime**

Provides execution.

## 10. Adaptive Overlay

The historical architecture includes an adaptive overlay above stable infrastructure.

```
Stable Infrastructure
        ↓
Gateway Fabric
        ↓
Adaptive Overlay
        ↓
Capability Fabrics
        ↓
Control Planes
        ↓
Runtime
```
---
The adaptive overlay may provide:

discovery;
metadata;
identity;
policy;
routing;
resource awareness;
capability discovery;
dynamic composition.

This enables logical evolution without requiring continuous physical infrastructure changes.

## 11. Physical Infrastructure Evolution Principle

Physical infrastructure changes relatively slowly compared with software and logical architecture.

Hardware relocation, replacement and major additions generally occur on longer lifecycle cycles.

Software and logical capabilities can evolve much faster through:

configuration;
policies;
- control planes
orchestration;
runtime updates;
data placement;
replication;
service composition;
logical nodes;
capability extensions.

Therefore:

Prefer logical evolution over unnecessary physical duplication.

Physical assets may remain shared while logical autonomy, sovereignty and operational boundaries evolve.

## 12. Factory Autonomous Zones

Factory Autonomous Zones are persistent physical/logical operating domains inside a Factory.

They may provide:

local autonomy;
local execution;
bounded resources;
local policies;
local observability;
local security;
local digital twins;
local agents;
local workflows.

They remain subject to Factory-level governance.

Conceptually:

```
Factory
│
├── Autonomous Zone A
│
├── Autonomous Zone B
│
└── Autonomous Zone C

```
Autonomous Zones are therefore part of the Factory's established operating environment.

## 13. Dynamically Spawned Autonomous Nodes

Autonomous Nodes are different from Factory Autonomous Zones.

An Autonomous Node is a dynamically composed logical execution unit that may be spawned by a controller in response to:

client request;
mission;
project;
workflow;
regional requirement;
provincial/state requirement;
national requirement;
federated requirement.

Conceptually:

```
Client / Mission Request
        ↓
Controller
        ↓
Policy / Governance
        ↓
Node Specification
        ↓
Spawn Autonomous Node
        ↓
Attach Required Fabrics
        ↓
Attach Knowledge / Digital Twin
        ↓
Attach Runtime
        ↓
Execute
        ↓
Evidence / Report
        ↓
Terminate / Persist / Evolve
```
---
An Autonomous Node does not necessarily require dedicated physical infrastructure.

It may be dynamically composed from shared infrastructure and logical capabilities.

## 14. Sovereign Autonomous Nodes

Sovereignty is primarily a logical and operational separation rather than necessarily a separate physical infrastructure.

A sovereign node may operate over common physical infrastructure while enforcing different:

identity;
policy;
governance;
data boundaries;
security controls;
replication rules;
data-transfer rules;
compliance requirements;
operational authority;
resource allocation;
lifecycle policies.

Potential sovereign domains include:

regional;
provincial/state;
national;
sovereign;
federated.

Conceptually:

```
Shared Physical Infrastructure
          ↓
Logical Sovereign Separation
          ↓
Policy / Identity / Data / Compliance
          ↓
Sovereign Autonomous Node
```
The same physical assets can therefore support multiple logically separated autonomous or sovereign operating domains.

## 15. Autonomy and Sovereignty as Logical Layers

The architecture should distinguish:

```
                    SHARED PHYSICAL REALITY
                            │
          Hardware / Software / Data / Digital Assets
                            │
                    Logical Separation
                            │
        ┌───────────────────┼───────────────────┐
        │                   │                   │
     Autonomy           Sovereignty         Governance
        │                   │                   │
        └───────────────────┼───────────────────┘
                            │
                 Policies / Identity
                 Data Boundaries
                 Replication
                 Transfers
                 Security
                 Compliance
                 Lifecycle
                 Control Planes
                            │
                   Operational Behavior
```
---
This allows physical infrastructure to remain relatively stable while software, policy and logical capabilities evolve rapidly.

## 16. AI-Native Enterprise Interaction Model

The current architecture should not make GUI pages the primary mechanism for every enterprise operation.

Capabilities should be interface-independent.

Possible interfaces include:

AI Chat;
Notebook;
CLI;
API;
Event;
Lightweight GUI.

All should invoke the same underlying capability layer.

```
                 CAPABILITY
                     │
       ┌─────────────┼─────────────┐
       │       │     │     │       │
      Chat  Notebook CLI  API    Event
       │       │     │     │       │
       └───────┴─────┴─────┴───────┘
                     │
              Control / Runtime
```
---
GUI remains valuable for:

configuration;
administration;
complex structured forms;
templates;
YAML/XML editing;
approvals;
client-facing interaction.

AI/GenAI interfaces can reduce the need for heavy GUI screens.

## 17. Capability Augmentation

The Factory is fundamentally a capability augmentation platform.

It can augment:

humans;
enterprise systems;
AI agents;
robots;
- digital twins
other machines;
federated organizations.

The primary principle is:

Augment capability before replacing capability.

The architecture therefore supports both human and machine capability enhancement.

## 18. Augmentation and Automation

Two primary operating modes are:

### Augmentation

Greater human interaction.

Examples:

AI assistance;
recommendations;
analysis;
decision support;
human approval;
collaborative engineering.
### Automation

Reduced human interaction under governance.

Examples:

workflow execution;
scheduled operations;
event-driven actions;
automated deployment;
automated validation;
automated recovery.

Automation should be governed by:

maturity;
risk;
policy;
safety;
compliance;
human authority.
## 19. Human Authority and Autonomy

The architecture supports progressive autonomy:

```
Manual
  ↓
AI Assisted
  ↓
AI Augmented
  ↓
Semi-Autonomous
  ↓
Automated + Human Supervision
  ↓
Federated Autonomous Enterprise
```
Human approval remains available where policy, risk or regulation requires it.

Autonomy should therefore be adjustable rather than absolute.

Potential supervisory modes include:

- Human-in-the-loop
- Human-on-the-loop
- Human-over-the-loop
- Adjustable autonomy
- Shared autonomy
- Collaborative autonomy

## 20. QAI Hybrid Architecture

Quantum capabilities are treated as capability extensions over classical infrastructure rather than requiring the enterprise to become entirely quantum.

The architecture supports:
```
Classical
   ↓
AI
   ↓
Hybrid QAI
   ↓
Quantum
```
---
Execution may use:

- CPU
- GPU
- HPC
- quantum simulators
- QPU APIs
- virtual qubits
- digital twins
specialized quantum hardware.

The classical control plane remains important for:

scheduling;
routing;
observability;
policy;
resource management;
execution coordination.
## 21. Virtual Qubit Architecture

The historical architecture distinguishes:
```
Physical Qubit
      ↓
Logical Qubit
      ↓
Virtual Qubit
      ↓
Digital Twin
```
---
Applications can interact primarily with virtualized abstractions while physical QPUs remain specialized execution resources.

The Virtual Qubit Fabric can provide:

lifecycle management;
resource scheduling;
mapping;
provenance;
governance;
topology awareness;
digital-twin integration.

This allows quantum capabilities to evolve without tightly coupling application logic to a single QPU implementation.

## 22. QAI Platform Execution Model

The QAI platform architecture supports a semantic-to-execution pipeline:

```
Python / Notebook
        ↓
QAI Semantic Layer
        ↓
Intermediate Representation
        ↓
Execution Planner
        ↓
Runtime Selection
        ↓
CPU / GPU / HPC / Simulator / QPU
```
---
Execution should be selected according to:

intent;
capability;
resource availability;
policy;
runtime compatibility;
execution requirements.

Fallbacks may be used where appropriate.

## 23. AI / QAGI / QASI Capability Evolution

AI capability is expected to evolve progressively:

```
AI
 ↓
QAI
 ↓
QAGI
 ↓
QASI
```
---
This is a capability evolution path rather than a requirement that every current product implement QAGI or QASI.

Future capability models may include:

foundation intelligence;
domain intelligence;
enterprise intelligence;
project intelligence;
operational agents;
mission intelligence;
ecosystem intelligence.

Future models should remain classified as future capability unless implementation evidence exists.

## 24. Capability Extension Model

Future technology extensions may include:

AI;
GenAI;
QAI;
quantum computing;
- virtual qubits
- digital twins
world models;
robotics;
autonomous agents;
QAGI;
QASI;
FTQC;
advanced simulation;
specialized hardware.

These should be treated as capability extensions over the foundational enterprise architecture.

The extension model is:
```
Enterprise Base Architecture
        ↓
Capability Layer
        ↓
Extension Model
        ↓
Specialized Runtime
        ↓
Execution Resource
```
Not every extension needs to be implemented immediately.

## 25. Control → Orchestration → Execution

A recurring architectural pattern across the historical work is:

```
Intent
  ↓
Control Plane
  ↓
Policy / Governance
  ↓
Orchestration
  ↓
Fabric
  ↓
Runtime
  ↓
Resource
  ↓
Execution
  ↓
Evidence
```
---
This should become one of the primary patterns used when evaluating historical packages.

## 26. Event-Driven and AI-Driven Execution

Operations can be initiated through:

AI/LLM intent;
notebook execution;
CLI;
API;
events;
scheduled workflows;
client requests;
controller-generated actions.

The interaction mechanism should not determine the underlying implementation.

The preferred model is:
```
Intent / Event
      ↓
Interpretation
      ↓
Policy
      ↓
Decision
      ↓
Approval if required
      ↓
Orchestration
      ↓
Execution
      ↓
Evidence
      ↓
Report
      ↓
Learning / Memory
```
## 27. Experiment / Validation Pattern

The historical QAI experimentation model supports:

```
Intent
  ↓
Registry
  ↓
Workflow
  ↓
Validation
  ↓
Digital Twin / Simulation
  ↓
Execution
  ↓
Metrics
  ↓
Compliance
  ↓
Report
```
---
Typical evidence includes:

hypothesis;
experiment definition;
workflow;
resource selection;
validation;
execution log;
metrics;
report;
decision record;
provenance.
## 28. Product / Offer / Client Execution Pattern

A target implementation vertical slice is:

```
HoldCo / Client Intent
        ↓
Product Prototype
        ↓
Offer
        ↓
Metadata Registration
        ↓
QAI Lab Experiment
        ↓
Validation
        ↓
GitLab Runner
        ↓
Execution
        ↓
Report
        ↓
Evidence / Registry
        ↓
Client / TTO Package
```
---
This should become the first practical validation path for the new implementation phase.

## 29. GitHub / GitLab Relationship

The historical architecture separates public knowledge and private execution assets.

### GitHub

May provide:

public examples;
education;
demonstrations;
notebooks;
reference implementations;
public interfaces;
research demonstrations.
### GitLab

May provide:

private implementation;
CI/CD;
runners;
controlled execution;
confidential IP;
internal packages;
secure artifacts.

The two should be correlated without unnecessarily duplicating their contents.

## 30. 00_xx Boiler Templates

The historical 00_xx boiler templates should be treated as standardized architectural entry points.

They may define:

configuration;
contract;
orchestration policy;
external interface;
data handling;
lifecycle;
governance.

The future extraction should trace:
```
00_xx Template
      ↓
Contract / Configuration
      ↓
Controller
      ↓
Fabric
      ↓
Package
      ↓
Function
      ↓
Pipeline
      ↓
Evidence
```
These templates should therefore be preserved as high-value historical assets.

## 31. Package Reuse Principle

Historical packages should not automatically be classified as obsolete.

Each package should be evaluated as one of:

```
REUSE
REFACTOR
MODERNIZE
REPLACE
REFERENCE
SUPERSEDED
FUTURE

Preferred approach:

Historical Package
       ↓
Identify Capability
       ↓
Identify Architecture Layer
       ↓
Validate Existing Behavior
       ↓
Compare Current Requirements
       ↓
Reuse / Refactor / Replace

```
---
## 32. Architecture-to-Code Traceability

The next implementation discovery phase should trace:

```
Enterprise Architecture
        ↓
Physical Domain
        ↓
Logical Fabric
        ↓
Control Plane
        ↓
Repository
        ↓
Package
        ↓
Module
        ↓
Class / Function
        ↓
API
        ↓
Pipeline
        ↓
Notebook
        ↓
Runner
        ↓
Execution
        ↓
Artifact
        ↓
Report
```
---
This is the primary bridge from historical architecture to current implementation.

## 33. High-Value Historical Assets

The highest-priority assets identified for code-level investigation are:

Factory controllers
Factory intake
Workflow routing
Approval management
Lifecycle state machines
Delivery management
Registry logging
Event models
QAI Hub
QAI Runtime
QAI OS
QAI Processor
QAI Hybrid
Control Plane packages
Fabric packages
Service Mesh
Workload Placement
Digital Twin / World Model
Knowledge / Memory layers
Experiment framework
Validation framework
Notebook execution
GitLab Runner integration
Deployment packages
00_xx boiler templates
## 34. Knowledge and Historical Asset Foundation

The historical work contains several classes of reusable enterprise assets.

### Knowledge Assets
architecture documents;
frameworks;
standards mappings;
engineering patterns;
notebooks;
research;
experiments;
lessons learned;
operational knowledge.
### Product / Service Assets
product catalogues;
service catalogues;
modernization catalogues;
research catalogues;
deployment models;
offer models.
### Project Assets
project definitions;
workflows;
experiments;
reports;
implementation packages;
client delivery packages.
### IP / Research Assets
patent candidates;
algorithms;
research concepts;
QAI models;
hybrid approaches;
future capability concepts.
### Operational Assets
templates;
configuration;
YAML/XML;
registries;
workflows;
CI/CD;
runner configurations;
evidence.

These assets should be classified before reuse.

## 35. Current HoldCo Alignment

The historical architecture maps naturally into the current HoldCo models:
```
Historical Architecture
        ↓
Master Enterprise Reference Architecture
        ↓
Enterprise Federation Model
        ↓
Enterprise Operating Platform
        ↓
AI-Native Enterprise Engineering Model
        ↓
Enterprise Capability Extension Framework
        ↓
Implementation
```
---
The current models should preserve proven historical implementation patterns while introducing the newer AI-native interaction and capability model.

## 36. Important Architectural Distinctions

The following distinctions must remain explicit.

### Designed ≠ Implemented

An architecture document does not prove that code exists.

### Implemented ≠ Production Ready

A working notebook or prototype does not prove operational maturity.

### Demonstrated ≠ Productized

A successful experiment does not automatically become a commercial product.

### Future Model ≠ Current Capability

QAGI, QASI, FTQC and advanced autonomous capabilities should remain future/extension capabilities unless implementation evidence exists.

### Shared Infrastructure ≠ Shared Governance

Physical infrastructure can be shared while logical sovereignty, identity, data boundaries and policies remain separated.

### Autonomous Zone ≠ Autonomous Node

An Autonomous Zone is a persistent operating domain within a Factory.

An Autonomous Node is a dynamically instantiated logical execution unit.

### Physical Hierarchy ≠ Logical Hierarchy

Space → Valley → City → Factory → Autonomous Zones describes physical/logical deployment domains.

Control Planes → Fabrics → Services → Runtimes describe logical capabilities operating across those domains.

## 37. Key Architectural Principles

The recovered architecture suggests the following principles:

Separate physical and logical architecture.
Use fabrics as reusable capability layers.
Use control planes for governance and management.
Keep interfaces separate from capabilities.
Prefer reusable platforms over project-specific infrastructure.
Use notebooks as first-class engineering interfaces.
Support event-driven and API-driven execution.
Preserve human authority for appropriate risk levels.
Use automation progressively according to maturity.
Treat sovereignty primarily as a logical/operational boundary.
Prefer logical evolution over unnecessary physical duplication.
Support classical, AI, QAI and quantum execution through common abstractions.
Preserve provenance and evidence throughout execution.
Use digital twins and simulation before expensive physical execution.
Validate before scaling.
Preserve working classical capabilities.
Use quantum selectively where it provides value.
Reuse knowledge and experience across projects.
Separate historical evidence from future concepts.
Modernize proven assets rather than automatically replacing them.
Keep physical infrastructure relatively stable while allowing software and logical capabilities to evolve rapidly.
Allow autonomous nodes to be dynamically composed from shared infrastructure.
Apply sovereignty through policy, identity, data, compliance and operational boundaries.
Make capabilities accessible through multiple interaction mechanisms.
Prefer augmentation before replacement.
## 38. First Implementation Strategy

The first implementation should be a narrow vertical slice rather than a complete Factory rebuild.

Recommended flow:
```
Board / Client Intent
        ↓
Product Prototype
        ↓
Offer
        ↓
Metadata
        ↓
QAI Lab Experiment
        ↓
Validation
        ↓
GitLab Runner
        ↓
Execution
        ↓
Report
        ↓
Evidence
        ↓
Client / TTO Delivery
```
---
The implementation should test whether existing historical packages can provide the majority of this flow.

New AI-native components should be introduced only where genuine capability gaps are identified.

## 39. Implementation Archaeology Method

The next phase should proceed in the following order.

Step 1 — Identify

Find historical repositories, packages, notebooks, pipelines and configuration.

Step 2 — Correlate

Map each implementation asset to its architectural role.

Step 3 — Execute

Run the smallest available sample or notebook.

Step 4 — Observe

Capture logs, outputs, dependencies and runtime behavior.

Step 5 — Trace

Identify actual package/function/API call relationships.

Step 6 — Compare

Compare historical implementation with the current HoldCo architecture.

Step 7 — Classify

Classify the asset as:

```
Implemented
Demonstrated
Reusable
Refactor Candidate
Modernization Candidate
Reference Only
Superseded
Future
```
Step 8 — Integrate

Reuse proven components within the current implementation.

## 40. Final Assessment

The historical GitHub / GitLab work should not be treated as a collection of obsolete experiments.

It represents an evolving architecture that progressed through:

```
Platform
 → Lab
 → Factory
 → Control Plane
 → Fabric
 → Deployment
 → Ecosystem
 → Intelligence
 → AI-Native Enterprise
 ```
 ---
 The current HoldCo architecture should therefore be considered an evolution and consolidation of the historical engineering work.

The objective of the next phase is not to recreate the historical system.

The objective is to:

Recover the strongest existing implementation patterns, validate them against the current architecture, modernize where necessary, and build the smallest executable vertical slice that proves the new AI-native operating model.

## 41. Week 1 GitHub Discovery Status

Historical architecture extraction: Complete

Historical repository discovery: Complete

Architecture synthesis: Complete

Physical / logical hierarchy identified: Complete

Factory / Autonomous Zone model identified: Complete

Autonomous Node / Sovereignty model identified: Complete

Fabric / Control Plane model identified: Complete

AI-native interaction model identified: Complete

QAI hybrid extension model identified: Complete

Implementation archaeology: Next Phase

## 42. Next Phase

The next implementation discovery phase will focus on:

Inspect Factory source packages.
Inspect QAI Base Platform packages.
Map controllers to fabrics.
Map fabrics to packages.
Identify package dependencies.
Identify function/API call paths.
Identify notebook execution paths.
Identify GitLab Runner pipelines.
Run a minimal historical execution.
Compare results against the current HoldCo architecture.
Identify reuse/refactor/replace decisions.
Build the first AI-native vertical slice.

The first practical validation target is:

```
HoldCo Board / Client Intent
        ↓
Product Prototype
        ↓
Offer
        ↓
QAI Lab Experiment
        ↓
GitLab Runner
        ↓
Execution
        ↓
Report
        ↓
Evidence
        ↓
Client / TTO Package
```
## Final Principle

> **Recover first. Validate second. Reuse where proven. Modernize where necessary. Build new only where a genuine capability gap exists.**
