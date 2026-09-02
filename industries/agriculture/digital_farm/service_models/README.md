# Service Models

Digital Farm service exposure models:

- SaaS — Digital Farm applications and business services
- PaaS — QAI APIs, pipelines, orchestration and integration services
- IaaS — deeper compute, quantum, sensing, networking and infrastructure resources

SaaS/PaaS/IaaS are exposure and deployment models, not separate copies
of the Digital Farm architecture.
---
# Service Models (New added)

The `service_models/` directory defines the service exposure and
deployment models through which QAI Digital Farm capabilities may be
consumed.

The three primary service models are:

- SaaS — Software as a Service
- PaaS — Platform as a Service
- IaaS — Infrastructure as a Service

These models describe how Digital Farm capabilities are exposed,
consumed and operated.

They do not represent three separate copies of the Digital Farm
architecture.


# 1. Purpose

The purpose of the service-model abstraction is to provide different
levels of access to Digital Farm capabilities for different types of
consumers.

Potential consumers include:

- Farm operators
- Farm managers
- Agronomists
- Researchers
- Developers
- System integrators
- Enterprise users
- Infrastructure operators
- External service providers


## 1.1 Common Architecture

All three service models operate over the same Digital Farm
architecture.

~~~text
                     DIGITAL FARM
                          |
                Common Architecture
                          |
             +------------+------------+
             |            |            |
             v            v            v
           SaaS          PaaS         IaaS
             |            |            |
             +------------+------------+
                          |
                   Shared Capabilities
                          |
       +------------------+------------------+
       |                  |                  |
       v                  v                  v
   Digital Twin          CPS                QAI
~~~

The service model changes the exposure boundary, not the underlying
architectural identity.


# 2. SaaS — Software as a Service

SaaS exposes Digital Farm capabilities as applications, workflows and
business-oriented services.

The primary consumer does not need to manage the underlying
infrastructure or platform.


## 2.1 SaaS Scope

SaaS may expose:

- Digital Farm applications
- Farm management applications
- Digital Twin views
- Crop intelligence
- Water intelligence
- Asset intelligence
- Inventory intelligence
- Workforce intelligence
- Economic intelligence
- QAI recommendations
- Operational dashboards
- Value-management dashboards
- Simulation scenarios
- Decision-support workflows


## 2.2 SaaS Consumer

Typical SaaS consumers include:

- Farm owners
- Farm managers
- Farm operators
- Agronomists
- Business users
- Enterprise users


## 2.3 SaaS Model

~~~text
                    SaaS
                     |
        +------------+------------+
        |            |            |
        v            v            v
   Farm App      QAI Service   Digital Twin
        |            |            |
        +------------+------------+
                     |
                User / Operator
~~~

The SaaS consumer primarily interacts with the service rather than
with the underlying infrastructure.


## 2.4 SaaS Example

A Digital Farm Water Management service could provide:

- Current water state
- Soil moisture
- Crop water requirements
- Weather information
- Irrigation recommendations
- Simulation scenarios
- Water-use metrics
- Cost/value information

The user consumes the service without needing to manage the QAI
runtime, compute resources or underlying infrastructure.


# 3. PaaS — Platform as a Service

PaaS exposes Digital Farm platform capabilities to developers,
integrators and advanced users.

PaaS provides reusable platform services without requiring consumers
to manage the complete underlying infrastructure.


## 3.1 PaaS Scope

PaaS may expose:

- QAI APIs
- QAI pipelines
- Digital Twin APIs
- Data APIs
- Simulation APIs
- Model APIs
- Orchestration services
- Integration services
- Event services
- Workflow services
- Knowledge services
- Graph services
- Rules services
- Resource-management APIs


## 3.2 PaaS Consumers

Typical consumers include:

- Developers
- Data scientists
- AI/ML engineers
- QAI developers
- System integrators
- Research teams
- Enterprise application developers


## 3.3 PaaS Model

~~~text
                    PaaS
                     |
       +-------------+-------------+
       |             |             |
       v             v             v
    QAI APIs      DT APIs      Simulation APIs
       |             |             |
       +-------------+-------------+
                     |
               Developer / System
                  Integrator
~~~

PaaS provides building blocks for creating applications and services.


## 3.4 QAI PaaS

The QAI platform may expose reusable capabilities such as:

- QAI functions
- QAI pipelines
- AI/ML models
- Optimization services
- Quantum workflows
- Hybrid execution
- Resource estimation
- Quantum Advantage Gate
- Classical/HPC fallback


## 3.5 Digital Twin PaaS

Digital Twin platform capabilities may include:

- DTP management
- DTI management
- DTA aggregation
- State APIs
- Relationship APIs
- Event APIs
- Spatial context
- Provenance
- Simulation interfaces


# 4. IaaS — Infrastructure as a Service

IaaS provides access to underlying computational, sensing,
communication and infrastructure resources.


## 4.1 IaaS Scope

IaaS may expose:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- Edge compute
- Storage
- Network
- Sensors
- Communication resources
- Energy resources
- Physical infrastructure


## 4.2 IaaS Consumers

Typical consumers include:

- Platform operators
- Infrastructure teams
- Developers with infrastructure requirements
- Research teams
- System integrators
- Advanced QAI workloads


## 4.3 IaaS Model

~~~text
                     IaaS
                      |
       +--------------+--------------+
       |              |              |
       v              v              v
     Compute        Quantum       Network
       |              |              |
       +--------------+--------------+
                      |
                  Infrastructure
                      |
                  Consumer
~~~

The consumer receives access to infrastructure resources while the
Digital Farm architecture continues to provide the higher-level
management and governance context.


# 5. Service Model Comparison

| Dimension | SaaS | PaaS | IaaS |
|---|---|---|---|
| Primary focus | Applications / business services | Platform capabilities | Infrastructure resources |
| Typical consumer | Farm / business user | Developer / integrator | Infrastructure / advanced user |
| Abstraction level | Highest | Intermediate | Lower |
| Infrastructure management | Mostly hidden | Partially abstracted | More directly exposed |
| QAI access | Application/service | APIs/pipelines/platform | QPU and compute resources |
| Digital Twin access | Applications/views | APIs/services | Underlying infrastructure |
| Customization | Lower | Medium/High | High |
| Primary objective | Consume capability | Build capability | Run capability |


# 6. Service Model Stack

The models can be viewed as layers of increasing infrastructure
exposure.

~~~text
                  SaaS
        Applications / Services
                     |
                     v
                  PaaS
       APIs / Platforms / Pipelines
                     |
                     v
                  IaaS
       Compute / Network / Quantum
                     |
                     v
             Physical Resources
~~~

However, these should not be interpreted as mandatory sequential
layers for every service.

A Digital Farm capability may be exposed directly at the most
appropriate level.


# 7. One Capability, Multiple Exposure Models

The same underlying capability may be exposed through more than one
service model.

For example, Digital Twin capabilities could appear as:

~~~text
                 DIGITAL TWIN
                      |
        +-------------+-------------+
        |             |             |
        v             v             v
       SaaS          PaaS          IaaS
        |             |             |
        v             v             v
   Twin Dashboard  Twin APIs    Infrastructure
                                for Twin Runtime
~~~

The underlying architecture remains common.


# 8. Service Model and Digital Farm Fabrics

Service models consume the common Digital Farm fabrics.

~~~text
                      FABRICS
                         |
       +-----------------+-----------------+
       |                 |                 |
       v                 v                 v
 Digital Twin       Security & Trust   Resource &
 Fabric                  Fabric         Advantage
       |                 |                 |
       +-----------------+-----------------+
                         |
                  Service Models
                         |
             +-----------+-----------+
             |           |           |
             v           v           v
           SaaS        PaaS        IaaS
~~~

Security, trust, resource awareness and governance remain applicable
across all service models.


# 9. Service Model and Three Paths

The service models may expose capabilities from all three primary
paths.

~~~text
                       SERVICE MODELS
                             |
            +----------------+----------------+
            |                |                |
            v                v                v
           SaaS             PaaS             IaaS
            |                |                |
            +----------------+----------------+
                             |
             +---------------+---------------+
             |               |               |
             v               v               v
       Computational      Sensing       Communication
           Path             Path             Path
~~~

For example:

- SaaS may provide a farm dashboard.
- PaaS may provide sensor and QAI APIs.
- IaaS may provide edge, network or compute resources.


# 10. Service Model and QAI

QAI capabilities may be exposed at all three levels.


## 10.1 SaaS QAI

Users may consume:

- Recommendations
- Predictions
- Optimization results
- Scenario analysis
- Decision support


## 10.2 PaaS QAI

Developers may consume:

- QAI APIs
- QAI functions
- QAI pipelines
- Model services
- Optimization APIs
- Quantum workflow APIs


## 10.3 IaaS QAI

Advanced users may access:

- CPU
- GPU
- NPU
- TPU
- FPGA
- HPC
- QPU
- Edge infrastructure


## 10.4 QAI Exposure Model

~~~text
                       QAI
                        |
          +-------------+-------------+
          |             |             |
          v             v             v
        SaaS          PaaS          IaaS
          |             |             |
      Decision       QAI APIs      QPU / HPC
       Support      Pipelines      Resources
~~~

This allows QAI to remain a common capability rather than becoming
three separate implementations.


# 11. Service Model and Digital Twin

The Digital Twin may also be exposed at different levels.


### SaaS

Provides:

- Farm state
- Asset views
- Maps
- Dashboards
- Alerts
- Scenarios


### PaaS

Provides:

- Twin APIs
- Entity APIs
- State APIs
- Event APIs
- Simulation interfaces


### IaaS

Provides infrastructure required to host:

- Twin runtime
- Databases
- Graph systems
- Compute
- Storage
- Network


# 12. Service Model and Simulation

Simulation can be exposed through different models.


## SaaS

Users may run predefined scenarios.


## PaaS

Developers may create and integrate simulation workflows.


## IaaS

Advanced users may access the compute infrastructure required for
large-scale simulation.


~~~text
Simulation Capability
        |
   +----+----+
   |    |    |
   v    v    v
 SaaS  PaaS IaaS
  |     |     |
Run    Build  Execute
Scenario Model Infrastructure
~~~

External simulation providers may be integrated through the PaaS or
IaaS boundaries as appropriate.


# 13. Service Model and Resource Management

IaaS exposes infrastructure resources, while Resource Management
controls their allocation and optimization.

~~~text
                 SERVICE REQUEST
                       |
                       v
                 Service Model
                       |
                       v
                Resource Manager
                       |
          +------------+------------+
          |            |            |
          v            v            v
       Compute       Quantum      Network
          |            |            |
          +------------+------------+
                       |
                       v
                    Execute
~~~

The existence of IaaS does not mean that consumers bypass resource
governance.


# 14. Service Model and Management

Digital Farm Management operates above the service models.

~~~text
                    MANAGEMENT
                         |
             +-----------+-----------+
             |           |           |
             v           v           v
           SaaS        PaaS        IaaS
             |           |           |
             +-----------+-----------+
                         |
                  Shared Resources
~~~

Management provides:

- Administration
- Orchestration
- Operations
- Monitoring
- Maintenance
- Lifecycle management
- Service coordination


# 15. Service Model and Service Management

Service Management provides lifecycle controls across SaaS, PaaS and
IaaS.

~~~text
                 SERVICE MANAGEMENT
                         |
        +----------------+----------------+
        |                |                |
        v                v                v
      SaaS              PaaS             IaaS
        |                |                |
     Release          Release          Release
     Patch            Patch            Patch
     Change           Change           Change
     Upgrade          Upgrade          Upgrade
~~~

This avoids creating separate lifecycle-management systems for each
service model.


# 16. Service Model and Governance

All service models operate under common governance principles.

Relevant controls include:

- Security
- Safety
- Compliance
- AI ethics
- Data sovereignty
- Quality
- Assurance
- Metrology
- Standards


## 16.1 Governance Model

~~~text
                     GOVERNANCE
                          |
          +---------------+---------------+
          |               |               |
          v               v               v
        SaaS            PaaS            IaaS
          |               |               |
          +---------------+---------------+
                          |
                       Resources
~~~

Governance requirements may vary by service and risk level, but the
architectural governance boundary remains common.


# 17. Service Model and Security

Security should apply consistently across all service levels.

~~~text
User / System
     |
     v
    SaaS
     |
     v
    PaaS
     |
     v
    IaaS
     |
     v
Physical Resources
~~~

Security and Trust Fabric capabilities should span these boundaries.


# 18. Service Model and Data

Data may be exposed differently according to the service model.


### SaaS

Users consume information and insights.

### PaaS

Developers consume APIs, datasets and data services.

### IaaS

Infrastructure consumers may manage storage, processing and data
infrastructure.

Data access remains subject to:

- Identity
- Authorization
- Ownership
- Sovereignty
- Privacy
- Security
- Provenance
- Governance


# 19. Service Model and Human-AI Collaboration

Service models can provide different levels of human interaction.


~~~text
                         HUMAN
                           |
             +-------------+-------------+
             |             |             |
             v             v             v
           SaaS          PaaS          IaaS
             |             |             |
        Consume       Develop /       Operate /
        Services      Integrate      Manage Resources
~~~

Most farm operators will primarily interact through SaaS.

Developers and integrators may use PaaS.

Infrastructure specialists may use IaaS.


# 20. Service Model and Lifecycle Profiles

SaaS, PaaS and IaaS are independent of Pilot, Post-Pilot and Research.

~~~text
                 DIGITAL FARM
                      |
          +-----------+-----------+
          |                       |
     Service Model          Lifecycle Profile
          |                       |
    +-----+-----+           +-----+-----+
    |     |     |           |     |     |
   SaaS  PaaS  IaaS        Pilot Post  Research
                                  Pilot
~~~

For example:

- Pilot SaaS
- Pilot PaaS
- Pilot IaaS
- Post-Pilot SaaS
- Post-Pilot PaaS
- Post-Pilot IaaS
- Research PaaS

are all possible combinations.


# 21. Service Model and Deployment

Service exposure and deployment location are also distinct concepts.

A SaaS service may run on:

- Edge
- Regional infrastructure
- Private cloud
- Public cloud

A PaaS service may similarly be distributed.

IaaS resources may exist across:

- Farm
- Edge
- Regional
- Private cloud
- Public cloud
- External infrastructure


~~~text
                 SERVICE MODEL
                      |
              +-------+-------+
              |       |       |
             SaaS    PaaS    IaaS
              |       |       |
              +-------+-------+
                      |
                  Deployment
                      |
       +--------------+--------------+
       |              |              |
       v              v              v
     Edge          Regional        Cloud
~~~

The service model therefore does not dictate a particular deployment
location.


# 22. Service Model and Vendor Neutrality

The architecture should remain independent of specific vendors.

For example:

~~~text
                     PaaS
                      |
          +-----------+-----------+
          |           |           |
          v           v           v
       Provider A  Provider B  Provider C
          |           |           |
          +-----------+-----------+
                      |
              Common Interface
~~~

The same principle applies to:

- Cloud
- AI
- Quantum
- Simulation
- IoT
- Storage
- Networking


# 23. Service Model Composition

A Digital Farm solution may combine all three service models.

For example:

~~~text
                DIGITAL FARM SERVICE
                         |
          +--------------+--------------+
          |              |              |
          v              v              v
        SaaS            PaaS           IaaS
          |              |              |
    Farm Dashboard   QAI Pipeline   Edge / QPU
          |              |              |
          +--------------+--------------+
                         |
                       Farm
~~~

This is often more useful than treating SaaS, PaaS and IaaS as
mutually exclusive alternatives.


# 24. Service Model Example — QAI-WATER

A complete QAI-WATER service could be exposed through all three
models.


## SaaS

Farm operator receives:

- Water status
- Irrigation recommendation
- Forecast
- Alerts
- Scenario results
- Cost/value information


## PaaS

Developer receives:

- Water APIs
- Sensor APIs
- QAI optimization API
- Simulation API
- Digital Twin API


## IaaS

Infrastructure operator provides:

- Edge compute
- Network
- Storage
- GPU/HPC
- QPU where justified


~~~text
                         QAI-WATER
                             |
          +------------------+------------------+
          |                  |                  |
          v                  v                  v
        SaaS               PaaS               IaaS
          |                  |                  |
       Operator          Developer         Infrastructure
          |                  |                  |
          +------------------+------------------+
                             |
                         Water System
~~~


# 25. Service Model Example — Digital Farm Twin

The Digital Farm Twin can similarly be exposed as:

~~~text
                   DIGITAL FARM TWIN
                           |
             +-------------+-------------+
             |             |             |
             v             v             v
           SaaS          PaaS          IaaS
             |             |             |
        Twin Views       Twin APIs     Twin Runtime
        Dashboards       Events        Compute
        Scenarios        State         Storage
             |             |             |
             +-------------+-------------+
                           |
                       Farm Twin
~~~


# 26. Service Model Example — QAI Optimization

An optimization capability may provide:

### SaaS

"Optimize today's irrigation schedule."

### PaaS

"Submit an optimization problem through the QAI API."

### IaaS

"Provide compute/QPU resources for the optimization workload."


The underlying QAI Resource and Advantage Fabric determines the most
appropriate execution path.


# 27. Service Model Boundaries

The three models should maintain clear boundaries.


## SaaS Boundary

Primary concern:

> What business or operational capability does the user consume?


## PaaS Boundary

Primary concern:

> What reusable platform capability can developers and integrators
consume?


## IaaS Boundary

Primary concern:

> What underlying infrastructure resources can authorized consumers
use?


~~~text
SaaS
"What do I consume?"
       |
       v
PaaS
"What can I build with?"
       |
       v
IaaS
"What can I provision/use?"
~~~


# 28. Service Model Design Principles

### Principle 1 — One Architecture

SaaS, PaaS and IaaS use the same Digital Farm architecture.


### Principle 2 — Different Exposure Levels

The service models differ primarily in their exposure and abstraction
levels.


### Principle 3 — No Duplication

Do not create three independent implementations of Digital Farm.


### Principle 4 — Reusable Capabilities

A common capability should be reusable across service models.


### Principle 5 — Appropriate Abstraction

Expose only the level of control required by the consumer.


### Principle 6 — Governance Across All Models

Security, compliance, safety and governance apply to every service
model.


### Principle 7 — Resource Awareness

Infrastructure consumption must remain subject to resource
management.


### Principle 8 — Vendor Neutrality

Service interfaces should minimize unnecessary vendor coupling.


### Principle 9 — Lifecycle Management

All service models require appropriate lifecycle management.


### Principle 10 — Value Driven

The service model should support measurable operational or economic
value.


# 29. Service Model Folder Model

The current structure is:

~~~text
service_models/
|
+-- README.md
|
+-- iaas/
|
+-- paas/
|
+-- saas/
~~~

Each directory represents the corresponding service-exposure model.


## 29.1 `saas/`

May contain:

- Application definitions
- Business services
- User-facing workflows
- Dashboards
- Service specifications
- SaaS examples


## 29.2 `paas/`

May contain:

- APIs
- QAI pipelines
- Platform services
- Integration services
- Developer services
- Simulation interfaces


## 29.3 `iaas/`

May contain:

- Infrastructure profiles
- Compute resources
- Quantum resources
- Edge resources
- Network resources
- Storage resources


# 30. Service Model Evolution

Service models should evolve independently of the underlying
architecture.

For example:

~~~text
Stable Digital Farm Architecture
             |
      +------+------+
      |      |      |
      v      v      v
    SaaS    PaaS   IaaS
      |      |      |
      v      v      v
   Version Version Version
      |      |      |
      +------+------+
             |
       Shared Architecture
~~~

A change in one service model should not automatically require a
change to the complete Digital Farm architecture.


# 31. Service Model Summary

The service models can be summarized as:

| Model | Primary Consumer | Primary Exposure |
|---|---|---|
| SaaS | Farm / business user | Applications and business services |
| PaaS | Developer / integrator | APIs, pipelines and platform services |
| IaaS | Infrastructure / advanced user | Compute, quantum, sensing, networking and infrastructure |

The relationship is:

~~~text
                      DIGITAL FARM
                           |
                    Common Architecture
                           |
             +-------------+-------------+
             |             |             |
             v             v             v
           SaaS          PaaS          IaaS
             |             |             |
        Applications     APIs       Infrastructure
             |             |             |
             +-------------+-------------+
                           |
                       Shared Fabrics
                           |
             +-------------+-------------+
             |             |             |
             v             v             v
        Digital Twin      QAI            CPS
             |             |             |
             +-------------+-------------+
                           |
                       Physical Farm
~~~


# 32. Final Position

SaaS, PaaS and IaaS provide different ways of consuming and exposing
Digital Farm capabilities.

They should therefore be understood as:

> **Service exposure and deployment models over a common Digital Farm
> architecture, not separate Digital Farm architectures.**

The conceptual relationship is:

~~~text
                    DIGITAL FARM
                         |
                 Common Capabilities
                         |
          +--------------+--------------+
          |              |              |
          v              v              v
        SaaS            PaaS           IaaS
          |              |              |
      Consume          Build          Provision
      Services        Services        Resources
          |              |              |
          +--------------+--------------+
                         |
                  Digital Farm Value
~~~


The ultimate objective is to allow different consumers to access the
same underlying Digital Farm capabilities at the appropriate level of
abstraction while preserving:

- Architectural consistency
- Reusability
- Vendor neutrality
- Security
- Governance
- Resource awareness
- Lifecycle management
- Human-centric operation
- Economic value

SaaS, PaaS and IaaS therefore form complementary service models
within one coherent QAI Digital Farm architecture.
---
