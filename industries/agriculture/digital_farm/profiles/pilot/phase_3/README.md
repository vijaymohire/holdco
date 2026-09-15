# Phase 3 — CPS Workflow Definition

## Pilot

**Notebook-based QAI CPS Workflow Playground**

---

# 1. Purpose

Phase 3 defines the executable logical behaviour of the Digital Farm CPS.

Phase 3 converts the virtualized assets and executable representations established in Phases 1 and 2 into a formally defined **CPS Workflow**.

The workflow defines how:

- assets participate in an operation
- actors interact with the system
- states change
- events occur
- conditions are evaluated
- tasks / nodes execute
- decisions are made
- commands are generated
- actions occur
- feedback is returned
- alternate scenarios are handled
- human approval is applied
- Classical / AI / QAI computation can participate
- results are measured
- evidence is recorded

The Phase 3 Pilot does not attempt to build a commercial workflow-management product.

The objective is to prove the **logical QAI CPS workflow architecture** using the minimum practical execution environment.

---

# 2. Architectural Position

Phase 3 sits between the executable representations established by Phase 2 and the open-loop baseline / QAI evaluation activities of Phase 4.

~~~text
Phase 0
Define the Managed Problem
        |
        v
Phase 1
Virtualize Assets and System Representation
        |
        v
Phase 2
Emulate / Simulate / Experiment
        |
        v
Phase 3
CPS Workflow Definition
        |
        v
Formal Phase 3 Review
        |
        v
Phase 4
Open-Loop Baseline / QAI Evaluation
        |
        v
Phase 5+
Closed-Loop / Validation / Physical CPS / Digital Twin / QAI Lab
~~~

Phase 3 therefore defines the behavioural and execution logic connecting:

**Assets → State → Events → Decisions → Commands → Actions → Feedback**

---

# 3. Phase 3 Objective

The primary objective is to establish a minimum credible, executable and reproducible CPS workflow for the agriculture pilot.

The workflow must demonstrate:

1. Workflow definition
2. Asset registration
3. Parameter configuration
4. Task / node construction
5. Workflow dependencies
6. Data flow
7. Control flow
8. State transitions
9. Event handling
10. Decision logic
11. Command / action representation
12. Feedback
13. Alternate scenarios
14. Emulator participation
15. Simulator participation
16. Classical / AI / QAI execution paths
17. Human approval
18. Result generation
19. KPI measurement
20. Comparison
21. Evidence capture
22. Experiment persistence
23. Reproducibility
24. Phase 4 handoff

---

# 4. Governing Engineering Principle

> **Define the managed problem first; realize the technical solution second.**

Phase 3 must not allow the implementation technology to redefine the logical CPS workflow.

The workflow is an architectural object.

The Python notebook is an execution environment.

A future workflow designer, workflow engine, QAI Runtime or QAI OS may become another execution environment, but none of those technologies defines the fundamental meaning of the QAI CPS workflow.

---

# 5. Pilot Implementation Principle

The Phase 3 Pilot follows the principle:

> **Build the minimum environment needed to prove the logical architecture first; introduce sophisticated tooling only when the validated use case requires it.**

The Pilot therefore uses:

- Python
- QAI Python SDK / semantic layer
- Jupyter-style notebook
- virtual assets
- emulator
- simulator
- Classical computation
- optional AI computation
- optional QAI / QAI-inspired computation
- simple validation functions
- human approval checkpoints
- experiment result records
- evidence records

The Pilot does not require an elaborate GUI.

The Pilot does not require a commercial workflow designer.

The Pilot does not require a full QAI OS.

The Pilot does not require a production QAI Runtime.

---

# 6. Reference Pilot

The reference Phase 3 workflow is:

**QAI Agriculture Optimization Workflow**

The workflow provides the first concrete demonstration of the QAI CPS workflow model.

The reference workflow is deliberately bounded.

It is intended to demonstrate architecture, execution and evidence rather than complete agricultural automation.

---

# 7. Reference Workflow Lifecycle

The primary Pilot interaction is:

~~~text
Configure
    |
    v
Validate
    |
    v
Approve
    |
    v
Execute
    |
    v
Observe
    |
    v
Compare
    |
    v
Save
    |
    v
Modify
    |
    v
Re-run
~~~

This creates a simple experiment playground without requiring a workflow IDE.

---

# 8. QAI Logical Workflow

The logical workflow exists independently of the notebook.

~~~text
QAI CPS Workflow
        |
        +-- Identity
        |
        +-- Version
        |
        +-- Purpose
        |
        +-- Assets
        |
        +-- Tasks / Nodes
        |
        +-- Dependencies
        |
        +-- Data Flow
        |
        +-- Control Flow
        |
        +-- States
        |
        +-- Events
        |
        +-- Commands
        |
        +-- Conditions
        |
        +-- Decisions
        |
        +-- Approvals
        |
        +-- Resources
        |
        +-- Policies
        |
        +-- Parameters
        |
        +-- Execution Profile
        |
        +-- Validation Profile
        |
        +-- Result Policy
        |
        +-- Evidence
~~~

The notebook is the first Pilot execution host for this logical object.

---

# 9. QAI Logical Workflow != Python Notebook

This distinction is mandatory.

**QAI Logical Workflow**

defines what the workflow means.

**Python**

provides the initial implementation language.

**QAI Python SDK / Semantic Layer**

provides the initial representation of QAI workflow concepts.

**Notebook**

provides the Pilot execution and experiment environment.

Therefore:

~~~text
QAI Logical Workflow
        |
        v
QAI Semantic Layer
        |
        v
Python SDK
        |
        v
Notebook
        |
        v
Pilot Execution
~~~

Python should execute the QAI workflow.

Python should not define what a QAI workflow fundamentally is.

---

# 10. Notebook-Based QAI CPS Workflow Playground

The Phase 3 Pilot is explicitly defined as:

> **Notebook-based QAI CPS Workflow Playground**

The notebook provides a lightweight combination of:

- workflow definition
- asset registration
- parameter configuration
- task / node construction
- workflow connections
- pre-validation
- human approval
- execution
- result display
- comparison
- experiment history
- evidence persistence
- experiment save / export

No complex graphical workflow environment is required.

---

# 11. Notebook Execution Stages

The reference notebook contains the following logical stages:

1. Workflow Definition
2. Asset Registration
3. Parameters / Configuration
4. Task / Node Construction
5. Workflow Connections
6. Pre-Validation
7. Human Approval
8. Execution
9. Results
10. Comparison / Analysis
11. Save Experiment

These stages are logical workflow stages.

They do not require one-to-one mapping to individual Python files.

An individual notebook cell may contain multiple logical operations.

---

# 12. Notebook Architecture

~~~text
QAI CPS PILOT NOTEBOOK
        |
        +-------------------------+
        |                         |
        v                         v
Workflow Definition       Experiment Parameters
        |                         |
        +------------+------------+
                     |
                     v
               Pre-Validation
                     |
                     v
               Human Approval
                     |
                     v
              Workflow Execution
                     |
          +----------+----------+
          |          |          |
          v          v          v
       Emulator   Simulator  QAI/AI/Classical
          |          |          |
          +----------+----------+
                     |
                     v
               Results / KPIs
                     |
          +----------+----------+
          |                     |
          v                     v
      View / Compare        Save / Export
          |                     |
          v                     v
 Experiment History       Result Package
~~~

---

# 13. Workflow Actors

The Phase 3 workflow recognizes actors as first-class participants.

Candidate actors include:

- Farmer / Operator
- Agronomist
- Farm Manager
- System Operator
- Data Provider
- Workflow Designer
- QAI System
- AI System
- Classical Optimizer
- Simulator
- Emulator
- Human Reviewer
- Approval Authority
- External Service
- Future Autonomous System

Actors may:

- provide inputs
- trigger events
- modify parameters
- approve execution
- reject recommendations
- provide constraints
- review results
- authorize actions
- initiate re-runs
- validate outcomes

Human actors remain explicit rather than being hidden inside automation logic.

---

# 14. Workflow Assets

Phase 3 uses the virtual assets established by the earlier phases.

Initial Pilot assets include:

- Virtual Farm
- Virtual Sensors
- Weather Data Source
- Water Resource
- Farm State
- Emulator
- Simulator
- QAI Functions
- Classical Optimization Function
- AI Function where required
- Virtual HPC
- Virtual QPU
- Virtual Storage
- Virtual Network

These are logical / virtual representations.

Their presence does not imply physical procurement.

---

# 15. Asset Registration

Each workflow asset should have sufficient information to establish:

- identity
- asset type
- role
- state
- capability
- interface
- data source
- workflow relationship
- execution status
- provenance
- availability
- constraints

The asset registry provides the workflow with a controlled asset context.

---

# 16. Workflow Nodes

A workflow node represents a logical task or processing step.

Candidate nodes include:

- Data Input
- Data Validation
- Preprocessing
- State Update
- Weather Assessment
- Soil Assessment
- Water Assessment
- Farm State Assessment
- Crop Simulation
- Irrigation Simulation
- Optimization
- AI Analysis
- QAI Analysis
- Decision
- Human Review
- Approval
- Action Recommendation
- Output
- Feedback
- KPI Calculation
- Evidence Capture

Nodes should remain technology-neutral.

---

# 17. Workflow Dependencies

Dependencies define the conditions under which one node can execute relative to another node.

Dependencies may include:

- sequence
- data availability
- state availability
- resource availability
- event occurrence
- approval status
- computational readiness
- policy conditions
- safety conditions

A workflow must not execute a dependent node until its required conditions are satisfied.

---

# 18. Data Flow

Data flow describes movement of information between workflow nodes.

Example:

~~~text
Weather Data
     |
     v
Preprocessing
     |
     v
Farm State
     |
     v
Crop / Irrigation Model
     |
     v
Optimization
     |
     v
Decision
     |
     v
Result
~~~

Data flow is distinct from control flow.

---

# 19. Control Flow

Control flow defines how execution progresses through the workflow.

Example:

~~~text
Start
  |
  v
Validate Input
  |
  v
Build State
  |
  v
Run Model
  |
  v
Evaluate Condition
  |
  +---- Condition False ----> Reconfigure
  |
  +---- Condition True -----> Decision
                                |
                                v
                           Human Approval
                                |
                                v
                              Execute
~~~

Control flow must remain explicit and traceable.

---

# 20. Workflow States

States describe the condition of the workflow, assets or operating environment.

Candidate workflow states include:

- CREATED
- CONFIGURED
- VALIDATING
- VALIDATED
- WAITING_FOR_APPROVAL
- APPROVED
- EXECUTING
- PAUSED
- COMPLETED
- FAILED
- DEGRADED
- RECOVERING
- REJECTED
- RECONFIGURED

Asset state and workflow state must not be confused.

---

# 21. State Transitions

State transitions occur in response to events, commands, conditions or completed tasks.

~~~text
CREATED
   |
   v
CONFIGURED
   |
   v
VALIDATING
   |
   v
VALIDATED
   |
   v
WAITING_FOR_APPROVAL
   |
   +---- Rejected ----> RECONFIGURED
   |
   v
APPROVED
   |
   v
EXECUTING
   |
   +---- Failure ----> FAILED
   |
   +---- Degraded --> DEGRADED
   |
   v
COMPLETED
~~~

Every important transition should be observable and recordable.

---

# 22. Events

An event represents something that causes or enables workflow progression.

Candidate events include:

- workflow started
- data received
- sensor update received
- weather update received
- state changed
- threshold exceeded
- water constraint detected
- resource constraint detected
- simulation completed
- optimization completed
- approval requested
- approval granted
- approval rejected
- execution failed
- execution recovered
- result generated
- feedback received

Events should be represented independently from specific software technologies.

---

# 23. Commands

A command represents an intended instruction to a workflow asset or execution component.

Examples:

- start simulation
- execute optimization
- update state
- request recommendation
- request human approval
- re-run experiment
- modify parameters
- allocate virtual resource
- release virtual resource
- activate simulated action
- record result

Physical actuation remains outside the initial Phase 3 Pilot unless explicitly authorized by a later validated phase.

---

# 24. Conditions

Conditions determine whether workflow progression is allowed.

Examples:

- required data available
- model available
- resource available
- workflow valid
- policy satisfied
- safety condition satisfied
- approval received
- cost threshold satisfied
- runtime threshold satisfied
- optimization objective satisfied
- confidence threshold satisfied

Conditions should produce explainable outcomes.

---

# 25. Decisions

A decision node evaluates available information and determines the next workflow path.

Example:

~~~text
Optimization Result
        |
        v
Decision Evaluation
        |
   +----+----+
   |         |
   v         v
Accept     Reconfigure
   |
   v
Human Approval
~~~

Decisions may be based on:

- model output
- constraints
- KPI thresholds
- resource availability
- economic value
- risk
- resilience
- human policy
- optimization objectives

---

# 26. Feedback

Feedback closes the logical CPS loop.

~~~text
Sense / Input
      |
      v
Process
      |
      v
Model
      |
      v
Decision
      |
      v
Action / Recommendation
      |
      v
Changed State
      |
      v
Feedback
      |
      +----------> Next Workflow Cycle
~~~

The Pilot may represent feedback through simulated or emulated state changes.

---

# 27. Normal Workflow

The initial normal agriculture workflow is:

~~~text
Data Input
    |
    v
Preprocessing
    |
    v
Virtual Farm State
    |
    v
Emulator
    |
    v
Crop / Irrigation Simulator
    |
    v
AI / QAI / Classical Optimization
    |
    v
Decision / Recommendation
    |
    v
Human Approval
    |
    v
Output / Simulated Action
    |
    v
Changed State
    |
    v
Feedback
~~~

This is the primary Phase 3 demonstration path.

---

# 28. Alternate Workflow

Alternate scenarios allow the workflow to react to changing conditions.

Examples:

- reduced water availability
- changed weather
- increased resource cost
- different crop
- different field size
- changed optimization objective
- computational resource limitation
- changed time horizon

The workflow should be able to reconfigure and re-run without redesigning the logical architecture.

---

# 29. Exception Workflow

Exceptions represent conditions that prevent normal progression.

Examples:

- missing input data
- invalid parameter
- unavailable model
- missing dependency
- unavailable computational resource
- invalid workflow connection
- policy violation
- failed validation

The workflow should produce an explainable failure or correction path.

---

# 30. Failure Workflow

Failure conditions must be explicitly represented.

Candidate failures:

- emulator failure
- simulator failure
- data failure
- computation failure
- resource failure
- invalid state
- workflow node failure
- approval rejection

A failure should not silently appear as a successful result.

---

# 31. Degraded Workflow

A degraded workflow allows controlled continuation when some capability is unavailable.

Examples:

- QAI unavailable → Classical fallback
- AI unavailable → Classical processing
- high-fidelity simulator unavailable → lower-fidelity simulation
- external resource unavailable → local resource
- advanced model unavailable → baseline model

Degraded execution must be recorded.

---

# 32. Recovery Workflow

Recovery provides a controlled return from failure or degraded execution.

Example:

~~~text
Failure
  |
  v
Contain
  |
  v
Identify Cause
  |
  v
Select Recovery Path
  |
  +---- Re-run
  |
  +---- Reconfigure
  |
  +---- Fallback
  |
  +---- Human Intervention
  |
  v
Validate
  |
  v
Resume
~~~

---

# 33. Human Intervention

Human participation is a first-class workflow element.

The Pilot must support explicit human review before selected execution steps.

Examples:

- approve parameters
- approve expensive computation
- approve QAI execution
- reject recommendation
- modify constraints
- request re-run
- select alternate scenario
- accept result
- reject result

Human approval is not merely a GUI button.

It is a logical workflow state and decision.

---

# 34. Open-Loop Workflow

Phase 3 must support open-loop execution.

In open-loop operation:

~~~text
Input
  |
  v
Model / Computation
  |
  v
Recommendation
  |
  v
Result
~~~

No automatic physical action is required.

The recommendation can be reviewed and measured independently.

---

# 35. Closed-Loop Workflow

Closed-loop behaviour may be represented logically or through simulation.

~~~text
State
  |
  v
Sense
  |
  v
Process
  |
  v
Decision
  |
  v
Authorized Action
  |
  v
Changed State
  |
  v
Feedback
  |
  +------> Sense
~~~

Physical closed-loop actuation is outside the initial Phase 3 Pilot boundary unless separately validated and authorized.

---

# 36. Emulator Workflow

The emulator represents system or asset behaviour.

Example:

~~~text
Virtual Farm
     |
     v
Farm Emulator
     |
     v
Virtual State / Sensor Behaviour
     |
     v
Workflow
~~~

The emulator provides executable behaviour without requiring all physical assets.

---

# 37. Simulator Workflow

The simulator represents processes, scenarios or future states.

Candidate Pilot simulation areas:

- crop behaviour
- irrigation
- water availability
- weather conditions
- resource allocation
- agricultural outcome
- economic consequence

Simulation remains distinct from emulation.

---

# 38. Physical Integration Boundary

Phase 3 may define where physical systems could later connect.

~~~text
Logical Workflow
       |
       v
Virtual Asset
       |
       v
Emulated Asset
       |
       v
Physical Asset
       |
       v
Digital Twin / CPS
~~~

The Phase 3 Pilot does not require complete physical integration.

The logical workflow must remain valid when the realization level changes.

---

# 39. Classical Execution Path

A Classical execution path establishes the baseline.

Example:

~~~text
Problem
   |
   v
Classical Model / Optimizer
   |
   v
Result
   |
   v
KPI / Cost / Runtime / Quality
~~~

The Classical baseline is essential for later QAI comparison.

---

# 40. AI Execution Path

AI may be used where it provides useful prediction, classification, inference or decision support.

Examples:

- crop condition prediction
- weather interpretation
- anomaly detection
- recommendation support
- pattern recognition

AI execution remains subject to the same workflow, validation and evidence requirements.

---

# 41. QAI Execution Path

QAI may be used for suitable computational problems.

The logical workflow should support:

- QAI-inspired processing
- hybrid QAI
- optional quantum backend
- external QPU
- future QAI execution

The Pilot must not assume quantum advantage.

---

# 42. Classical / AI / QAI Comparative Path

The same logical problem should support multiple computational paths.

~~~text
                 Pilot Problem
                       |
                       v
                Common Input State
                       |
          +------------+------------+
          |            |            |
          v            v            v
      Classical       AI           QAI
          |            |            |
          +------------+------------+
                       |
                       v
                Common Evaluation
                       |
                       v
              Comparative Evidence
                       |
                       v
                 Advantage Gate
~~~

Possible outcomes:

- QAI Advantage Demonstrated
- Potential QAI Advantage
- No Demonstrated Advantage
- Classical Solution Preferred
- Further Research Required

No outcome is predetermined.

---

# 43. Resource Model

The workflow may refer to virtual resources.

Initial virtual resources include:

- Virtual CPU
- Virtual GPU
- Virtual AI Cluster
- Virtual HPC
- Virtual QPU
- Virtual Storage
- Virtual Network

These resources represent execution requirements rather than mandatory physical infrastructure.

The Pilot may simulate or logically allocate these resources.

---

# 44. Virtual Resource Allocation

A workflow may specify:

- resource type
- required capacity
- expected runtime
- estimated cost
- availability
- priority
- fallback
- release condition

Example:

~~~text
Workflow
   |
   v
Resource Requirement
   |
   v
Virtual Resource Allocation
   |
   +---- Available ----> Execute
   |
   +---- Unavailable --> Fallback / Reconfigure / Wait
~~~

Advanced dynamic resource orchestration remains Post-Pilot.

---

# 45. Workflow Timing

Phase 3 records timing where relevant.

Candidate timing attributes:

- start time
- end time
- duration
- timeout
- sequence order
- event time
- simulation time
- workflow cycle
- processing latency

The Pilot does not require a real-time production scheduler.

Timing is initially an experimental and workflow attribute.

---

# 46. Synchronization

The workflow must distinguish:

- workflow state
- asset state
- simulated state
- emulated state
- physical state
- experiment state

Synchronization between these states should be explicit.

A simulated state must not automatically be represented as a real physical state.

---

# 47. Data Realism and Device Realism

Phase 3 follows the two-dimensional realization model.

**Data realism**

~~~text
Synthetic
   |
   v
Historical / Representative Real
   |
   v
Live Real
~~~

**Device realism**

~~~text
Virtual
   |
   v
Emulated
   |
   v
Physical
~~~

These dimensions are independent.

Therefore:

> Real data does not require physical devices.

> Physical devices do not automatically imply live operational deployment.

The experiment record should identify the realism level used.

---

# 48. Workflow Reproducibility

A workflow experiment should be reproducible from:

- workflow definition
- workflow version
- parameters
- input data
- scenario
- asset configuration
- model versions
- computational path
- resource configuration
- execution configuration
- random seeds where applicable
- validation configuration

The objective is:

**Same configuration → Reproducible experiment**

subject to documented sources of variability.

---

# 49. Workflow Traceability

Each workflow execution should support traceability from:

~~~text
Requirement
   |
   v
Workflow
   |
   v
Node
   |
   v
Input
   |
   v
Execution
   |
   v
Observation
   |
   v
Result
   |
   v
KPI
   |
   v
Evidence
   |
   v
Decision
~~~

This provides the basis for later validation and promotion.

---

# 50. Workflow Validation

Validation should confirm:

- workflow structure
- node validity
- dependencies
- interfaces
- state transitions
- event definitions
- command definitions
- resource requirements
- scenario completeness
- computational path
- policy constraints
- reproducibility requirements
- evidence requirements

Successful execution alone does not constitute validation.

---

# 51. Pre-Validation Process

The Pilot validation sequence is:

~~~text
Check Workflow Structure
        |
        v
Validate Dependencies / Libraries
        |
        v
Check Resource Requirements
        |
        v
Security / Policy Check
        |
        v
Estimate Cost / Runtime
        |
        v
Validation Passed?
       / \
      /   \
    No     Yes
    |       |
    v       v
Correct   Human Review
and       |
Revalidate|
          v
        Approve
          |
          v
        Execute
~~~

A failed validation must return to a correction/re-validation path.

---

# 52. Security and Policy Boundary

The Pilot should establish minimum controls for:

- data provenance
- input integrity
- workflow identity
- experiment identity
- access control
- human approval
- logging
- result traceability
- synthetic / real data separation
- policy constraints

Advanced enterprise security, Zero Trust, PQC, federated identity and production security architecture remain future work unless specifically required.

---

# 53. Fault Injection

Phase 3 should support controlled fault scenarios where useful.

Candidate faults:

- missing sensor input
- corrupted data
- unavailable simulator
- failed computation
- unavailable virtual resource
- rejected approval
- invalid parameter
- workflow node failure
- timeout

Fault injection should demonstrate that the workflow can identify and handle abnormal conditions.

---

# 54. Resilience

Workflow resilience is demonstrated through controlled responses to:

- failure
- degradation
- resource limitation
- data limitation
- computational limitation
- changing environmental conditions
- human rejection
- alternate scenarios

The objective is not to claim operational resilience of a real farm.

The objective is to demonstrate that the **workflow architecture contains explicit resilience paths**.

---

# 55. Results as First-Class Objects

An Experiment Result must not be treated as temporary notebook output.

The result should conceptually contain:

~~~text
Experiment
   |
   +-- Workflow Definition
   |
   +-- Configuration
   |
   +-- Input Data
   |
   +-- Resource Configuration
   |
   +-- Execution Record
   |
   +-- Output Data
   |
   +-- KPI Results
   |
   +-- Comparison Results
   |
   +-- Classical / AI / QAI Results
   |
   +-- Evidence
   |
   +-- Logs / Trace
   |
   +-- Validation Status
   |
   +-- Human Decisions
   |
   +-- Saved Result Package
~~~

---

# 56. Economic and Value Measurement

Where applicable, the workflow should connect technical results to operational and economic outcomes.

~~~text
Technical Result
       |
       v
Operational Outcome
       |
       v
Resource Outcome
       |
       v
Economic / Value Outcome
       |
       v
Evidence
~~~

Candidate measures include:

- operational cost
- resource use
- water use
- energy use
- productivity
- crop value
- resilience
- avoided loss
- decision quality
- computational cost
- runtime
- learning value

These are candidate measurement dimensions.

No economic benefit is claimed until measured and validated.

---

# 57. Minimum Executable Phase 3 Workflow

The minimum credible workflow is:

~~~text
Input State / Scenario
        |
        v
Virtual Asset
        |
        v
Workflow Node
        |
        v
Emulator / Simulator
        |
        v
Observation / State
        |
        v
Classical / AI / QAI
        |
        v
Decision / Recommendation
        |
        v
Human Approval
        |
        v
Result
        |
        v
Measurement
        |
        v
Evidence
~~~

The minimum workflow must be:

- bounded
- executable
- measurable
- reproducible
- explainable
- evidence-producing

Feature completeness is not the objective.

---

# 58. Phase 3 Pilot Implementation Boundary

The following are within the initial Phase 3 Pilot.

### Required

- Python
- Notebook
- QAI semantic constructs
- workflow object
- workflow nodes
- workflow connections
- virtual assets
- parameters
- scenarios
- emulator
- simulator
- Classical path
- optional AI path
- optional QAI path
- validation
- human approval
- results
- KPI measurement
- evidence
- experiment persistence

### Not Required

- elaborate GUI
- workflow IDE
- commercial workflow designer
- COTS workflow engine
- full QAI Runtime
- QAI OS
- physical QPU
- dedicated HPC cluster
- production cloud orchestration
- autonomous physical actuation
- complete physical farm deployment
- multi-tenant SaaS
- multi-client production orchestration
- full QAI Data Center

The Pilot boundary is intentionally narrow.

---

# 59. One Architecture — Multiple Realisation Levels

The same logical workflow should be capable of progressing through:

~~~text
                 Logical QAI Workflow
                         |
        +----------------+----------------+
        |                |                |
        v                v                v
      Pilot             COTS           Production
    Notebook           Runtime           Runtime
        |                |                |
   Virtual Assets    Workflow Engine    Real CPS
   Emulator          Target Platform    Physical Assets
   Simulator                              Digital Twin
~~~

Only the execution binding changes.

The logical workflow remains the common architectural reference.

---

# 60. Progressive Asset Realisation

Virtual resources may progressively become real resources.

Examples:

~~~text
Virtual Sensor
      |
      v
Historical / External Data
      |
      v
Client Sensor
      |
      v
Physical Sensor
~~~

~~~text
Virtual QPU
      |
      v
External QPU
      |
      v
Managed QAI Resource
~~~

~~~text
Virtual HPC
      |
      v
External HPC
      |
      v
QAI Data Center HPC
~~~

~~~text
Virtual Farm
      |
      v
Registered Physical Farm
      |
      v
Digital Farm Twin
      |
      v
Physical CPS
~~~

This progression must not require redesign of the logical workflow.

---

# 61. Phase 3 Notebook-to-Future Runtime Path

The Pilot path is:

~~~text
QAI Logical Workflow
        |
        v
QAI Python SDK
        |
        v
Python-based QAI Semantic Runtime
        |
        v
Notebook
        |
        v
Pilot Experiment
~~~

The future path may become:

~~~text
QAI Logical Workflow
        |
        v
QAI Semantic Model
        |
        v
QAI Runtime
        |
        v
Resource / Execution Control
        |
        v
CPU / GPU / NPU / TPU / FPGA / HPC / QPU
        |
        v
Future QAI OS
        |
        v
QAI Resource Fabric
~~~

The Pilot does not need to implement this future stack.

---

# 62. Workflow Mapping Layer

A future Workflow Mapping Layer may translate the logical QAI workflow into different execution environments.

~~~text
                QAI Logical Workflow
                         |
                         v
                Workflow Mapping Layer
                         |
             +-----------+-----------+
             |           |           |
             v           v           v
          Python       COTS        QAI Runtime
          Notebook     Designer
             |           |           |
             v           v           v
          Pilot       Target       Production
                       Runtime
~~~

This protects the QAI architecture from vendor lock-in.

---

# 63. COTS Workflow Technology Boundary

Potential future technologies may include:

- graphical workflow designers
- enterprise workflow engines
- low-code workflow platforms
- orchestration engines
- cloud workflow services
- process management systems

These technologies are implementation options.

They are not foundational to the Phase 3 Pilot.

The Pilot must not be redesigned around a COTS workflow product before the logical workflow has been validated.

---

# 64. Phase 3 Subfolder Architecture

The Phase 3 root is supported by the following implementation areas:

~~~text
phase_3/
|
+-- README.md
|
+-- workflow/
|
+-- assets/
|
+-- parameters/
|
+-- scenarios/
|
+-- execution/
|
+-- validation/
|
+-- results/
|
+-- evidence/
|
+-- notebook/
~~~

Each subfolder supports one architectural concern.

The root README remains the authoritative Phase 3 definition.

---

# 65. Workflow Folder

The `workflow/` folder contains the logical workflow representation.

Initial files:

- `README.md`
- `agriculture_optimization_workflow.py`
- `workflow_definition.py`
- `workflow_nodes.py`
- `workflow_connections.py`
- `workflow_state.py`

These files should implement the minimum semantic workflow required by the Pilot.

---

# 66. Assets Folder

The `assets/` folder contains the logical asset representations.

Initial files:

- `README.md`
- `virtual_assets.py`
- `asset_registry.py`

The asset layer must remain compatible with the Phase 1 virtual asset model.

---

# 67. Parameters Folder

The `parameters/` folder contains configurable experiment parameters.

Initial files:

- `README.md`
- `agriculture_optimization_parameters.py`

Parameters should remain configurable rather than hard-coded to one farm or one operating condition.

---

# 68. Scenarios Folder

The `scenarios/` folder contains workflow scenarios.

Initial files:

- `README.md`
- `normal_scenario.py`
- `alternate_scenarios.py`

Scenarios should remain separate from the workflow definition so that the same workflow can be executed under different conditions.

---

# 69. Execution Folder

The `execution/` folder contains execution-path implementations.

Initial files:

- `README.md`
- `emulator.py`
- `simulator.py`
- `classical_path.py`
- `ai_path.py`
- `qai_path.py`

Execution implementations must not redefine the logical workflow.

---

# 70. Validation Folder

The `validation/` folder contains pre-validation and approval logic.

Initial files:

- `README.md`
- `pre_validation.py`
- `approval.py`
- `validation_checks.py`

Validation is a controlled workflow stage rather than an informal notebook activity.

---

# 71. Results Folder

The `results/` folder contains formal experiment result structures.

Initial files:

- `README.md`
- `result_record.py`

Results should support comparison and downstream evidence generation.

---

# 72. Evidence Folder

The `evidence/` folder contains experiment evidence structures.

Initial files:

- `README.md`
- `experiment_record.py`

Evidence should preserve sufficient information to understand and reproduce the experiment.

---

# 73. Notebook Folder

The `notebook/` folder contains the primary Pilot interface.

Initial files:

- `README.md`
- `QAI_Agriculture_Optimization.ipynb`

The notebook is intentionally the simplest practical execution environment.

It should evolve from a skeleton into the first complete end-to-end Phase 3 experiment.

---

# 74. Notebook Development Principle

The notebook should be developed incrementally.

Recommended sequence:

1. Define workflow
2. Register assets
3. Configure parameters
4. Construct nodes
5. Connect nodes
6. Validate workflow
7. Request approval
8. Execute
9. Observe results
10. Compare
11. Save experiment

Do not introduce additional framework complexity unless the workflow experiment demonstrates a real need.

---

# 75. Phase 3 Reference Agriculture Workflow

The reference agriculture workflow is:

~~~text
Data Input
Weather / Soil / Field Data
        |
        v
Preprocessing
Data Cleaning / Transformation
        |
        v
Emulator
Virtual Farm / System Behaviour
        |
        v
Simulator
Crop / Irrigation Model
        |
        v
AI / QAI Optimization
        |
        v
Decision / Recommendation
        |
        v
Human Approval
        |
        v
Output / Simulated Action
        |
        v
Feedback / Iterate
~~~

This workflow provides the first concrete CPS workflow demonstration.

---

# 76. Agriculture Experiment Parameters

Initial configurable parameters include:

- crop type
- field area
- soil condition
- weather data
- water availability
- time horizon
- resource limits
- simulation fidelity
- optimization objective
- QAI backend selection
- approval threshold
- additional constraints

These parameters may be synthetic during the initial Pilot.

---

# 77. Agriculture Virtual Assets

Initial logical assets include:

~~~text
Virtual Farm
Virtual Sensors
Weather Data
Water Resource
Farm State
Emulator
Simulator
QAI Function
Classical Optimizer
AI Function
Virtual HPC
Virtual QPU
Virtual Storage
Virtual Network
~~~

The Pilot can execute without physical agricultural infrastructure.

---

# 78. Experiment Comparison

The workflow should support comparison between scenarios and computational approaches.

Candidate comparisons:

- scenario A vs scenario B
- baseline vs optimized
- Classical vs AI
- Classical vs QAI
- resource configuration A vs B
- parameter set A vs B
- simulation fidelity A vs B

Comparisons must use common evaluation criteria wherever possible.

---

# 79. Advantage Gate

The Phase 3 workflow may provide inputs to the existing Advantage Gate architecture.

The basic path is:

~~~text
Problem
   |
   v
Classical Baseline
   |
   v
Alternative Execution Paths
   |
   v
Common Evaluation
   |
   v
Comparative Evidence
   |
   v
Advantage Gate
   |
   +---- QAI justified
   |
   +---- Classical preferred
   |
   +---- Further research
~~~

No quantum advantage is assumed or implied.

---

# 80. Evidence Chain

Phase 3 follows the evidence chain:

~~~text
Problem
   |
   v
Model
   |
   v
Workflow
   |
   v
Experiment
   |
   v
Execution
   |
   v
Observation
   |
   v
Result
   |
   v
Measurement
   |
   v
Evidence
   |
   v
Evaluation
   |
   v
Decision
~~~

This chain provides the foundation for Phase 3 formal review.

---

# 81. Experiment Record

Each meaningful experiment should record:

- experiment ID
- workflow ID
- workflow version
- scenario
- parameter set
- asset configuration
- data source
- data realism
- device realism
- execution path
- resource configuration
- start/end information
- outputs
- KPIs
- comparison
- validation status
- human decision
- evidence
- limitations
- reproducibility information

---

# 82. Experiment History

Experiment history should allow:

- previous experiment review
- parameter modification
- scenario modification
- workflow modification
- re-run
- comparison
- evidence retrieval

The objective is controlled experimentation rather than ad-hoc notebook execution.

---

# 83. Save and Export

The Pilot should support saving:

- workflow definition
- parameters
- scenarios
- asset configuration
- execution configuration
- results
- logs
- metadata
- evidence
- validation status
- human decisions

The result package should be suitable for later review and Phase 4 handoff.

---

# 84. Phase 3 Safety Boundary

The initial Pilot is primarily analytical and experimental.

It should not claim autonomous control of physical agricultural systems.

Where a simulated or emulated action is represented, the action must be clearly identified as:

- simulated
- emulated
- recommended
- human-approved
- physically authorized

depending on the actual realization level.

Physical actuation requires a separately validated control boundary.

---

# 85. Technology Neutrality

Phase 3 is technology-neutral at the logical workflow level.

Python is the initial Pilot implementation technology because it provides a simple and accessible execution environment.

This does not make Python the permanent QAI workflow platform.

Future execution technologies can be introduced through mappings or adapters.

---

# 86. Minimum Complexity Principle

Every Phase 3 component must justify its inclusion through one or more of:

- workflow execution
- validation
- measurement
- reproducibility
- evidence
- safety
- required Pilot functionality

Components that do not contribute to the minimum credible workflow should remain outside the Pilot.

---

# 87. No Premature Productization

Phase 3 is not the commercial workflow product.

The Pilot should not attempt to deliver:

- enterprise workflow management
- workflow marketplace
- graphical workflow authoring product
- multi-tenant workflow SaaS
- production orchestration
- full resource brokerage
- enterprise process management
- QAI OS

These may become Post-Pilot products if justified by evidence and client requirements.

---

# 88. Phase 3 → Phase 4 Handoff

Phase 3 produces the workflow foundation required by Phase 4.

~~~text
Phase 3
Workflow Definition
      |
      v
States / Events / Actors
      |
      v
Commands / Decisions
      |
      v
Normal / Alternate / Failure Paths
      |
      v
Executable Notebook Workflow
      |
      v
Measured Results
      |
      v
Evidence
      |
      v
Formal Phase 3 Review
      |
      v
Phase 4
Open-Loop Baseline / QAI Evaluation
~~~

Phase 4 should not need to redesign the Phase 3 logical workflow.

---

# 89. Phase 3 Handoff Package

The Phase 3 handoff should contain:

1. Approved workflow definition
2. Workflow version
3. Asset mapping
4. State model
5. Event model
6. Command model
7. Decision model
8. Feedback model
9. Normal scenario
10. Alternate scenarios
11. Failure/degraded paths
12. Validation results
13. Experiment records
14. KPI results
15. Classical baseline
16. AI/QAI results where executed
17. Evidence
18. Known limitations
19. Phase 4 recommendations

---

# 90. Post-Pilot Handover Boundary

Advanced capabilities identified during Phase 3 should be recorded for Post-Pilot rather than added to the Pilot by default.

Candidate Post-Pilot capabilities include:

- QAI Semantic Runtime product
- QAI Runtime
- QAI OS
- workflow mapping / compilation
- COTS workflow integration
- graphical workflow designer
- advanced orchestration
- dynamic resource allocation
- real HPC allocation
- real QPU allocation
- QAI Data Center integration
- physical CPS
- Digital Farm production Twin
- edge QAI
- cloud QAI
- multi-client orchestration
- federated execution
- production SaaS
- autonomous physical actuation
- advanced security/trust
- advanced real-time execution
- QAI resource fabrics

These are architectural continuation points, not Phase 3 implementation commitments.

---

# 91. Post-Pilot Architectural Continuity

The intended evolution is:

~~~text
Phase 3 Pilot
Notebook + Python
        |
        v
Validated Logical Workflow
        |
        v
Workflow Mapping
        |
        +-------------------+
        |                   |
        v                   v
COTS Runtime          QAI Runtime
                            |
                            v
                          QAI OS
                            |
                            v
                      Resource Fabric
                            |
             +--------------+--------------+
             |              |              |
             v              v              v
            CPU            HPC            QPU
             |
             v
     Production CPS / Digital Twin
~~~

The logical workflow remains the common reference.

---

# 92. Formal Phase 3 Review

A formal review must occur before progressing to Phase 4.

The review should determine whether:

- the workflow is clearly defined
- workflow nodes are understood
- states are defined
- events are defined
- actors are defined
- commands are defined
- decisions are defined
- feedback is defined
- normal workflow executes
- alternate workflow executes
- failure/degraded behaviour is understood
- validation operates
- human approval operates
- results are recorded
- experiments are reproducible
- evidence is sufficient
- Phase 4 requirements can be accepted

---

# 93. Phase 3 Acceptance Criteria

Minimum acceptance criteria:

### Architecture

- logical workflow defined
- workflow independent of notebook
- workflow nodes defined
- dependencies defined
- states/events/commands defined

### Execution

- minimum workflow executable
- emulator integrated
- simulator integrated
- Classical path available
- AI/QAI path represented where justified

### Control

- pre-validation implemented
- human approval boundary implemented
- failure path defined
- alternate path defined
- feedback path defined

### Evidence

- experiment configuration recorded
- execution result recorded
- KPI results recorded
- comparison available
- evidence package generated
- reproducibility information preserved

### Handoff

- Phase 4 input defined
- known limitations documented
- Post-Pilot capabilities separated

---

# 94. Phase 3 Gate

The Phase 3 gate is:

~~~text
Workflow Defined
      |
      v
Assets Registered
      |
      v
States / Events Defined
      |
      v
Nodes / Dependencies Defined
      |
      v
Normal Workflow Executable
      |
      v
Alternate / Failure Paths Defined
      |
      v
Validation Executable
      |
      v
Human Approval Defined
      |
      v
Results Measured
      |
      v
Evidence Recorded
      |
      v
Formal Review
      |
      v
Phase 4 READY
~~~

Possible gate decisions:

- READY
- READY WITH CONTROLLED LIMITATIONS
- REVISE
- BLOCKED

A known and documented limitation does not automatically constitute failure.

---

# 95. Phase 3 Review Evidence

The review package should demonstrate:

- architecture
- workflow definition
- executable notebook
- representative execution
- normal scenario
- alternate scenario
- controlled fault scenario
- validation
- human approval
- result
- KPI
- comparison
- evidence
- known limitations

The review should focus on **evidence**, not feature count.

---

# 96. Pilot Scope Protection

The following scope-control rule applies:

> **If a proposed feature is not required to demonstrate the logical CPS workflow, it should not automatically enter the Phase 3 Pilot.**

It should instead be classified as:

- required Pilot capability
- implementation detail
- future enhancement
- Post-Pilot capability
- research candidate
- external integration candidate

This prevents Phase 3 scope expansion.

---

# 97. Architecture Preservation Rule

Technical implementation limitations must not silently redefine the Phase 3 architecture.

If an implementation cannot support an architectural requirement, classify the issue as:

- implementation limitation
- design constraint
- capability gap
- integration gap
- validation gap
- requirement clarification
- formally approved architecture change

The workflow architecture remains authoritative unless an explicit change is approved.

---

# 98. Pilot Data Boundary

The initial Pilot may use:

- synthetic data
- controlled datasets
- representative historical data
- parameterized scenarios

Real operational data may be introduced progressively.

Any real data must maintain appropriate:

- provenance
- ownership
- privacy
- security
- licensing
- access control

Synthetic data must not be presented as measured real-world performance.

---

# 99. Pilot Computational Boundary

The Pilot may execute on:

- local CPU
- local GPU where available
- external AI resources
- external HPC
- optional remote QPU
- simulated quantum execution
- QAI-inspired algorithms

The Pilot does not require dedicated quantum hardware.

Any external computational backend must remain behind an execution interface.

---

# 100. Pilot Success Definition

Phase 3 succeeds when the Pilot can demonstrate:

> A logically defined QAI CPS agriculture workflow can be configured, validated, executed, observed, compared, saved and reproduced using a simple Python notebook and QAI virtual assets, while preserving a technology-neutral path toward future production execution.

This is the core Phase 3 success statement.

---

# 101. Phase 3 Implementation Sequence

Recommended implementation order:

~~~text
1. Root README
       |
       v
2. Workflow Object
       |
       v
3. Virtual Asset Registry
       |
       v
4. Experiment Parameters
       |
       v
5. Workflow Nodes
       |
       v
6. Connections / Dependencies
       |
       v
7. State / Event Model
       |
       v
8. Normal Scenario
       |
       v
9. Emulator
       |
       v
10. Simulator
       |
       v
11. Classical Baseline
       |
       v
12. AI / QAI Path
       |
       v
13. Pre-Validation
       |
       v
14. Human Approval
       |
       v
15. Notebook Execution
       |
       v
16. Results / KPIs
       |
       v
17. Evidence
       |
       v
18. Alternate Scenario
       |
       v
19. Formal Review
       |
       v
20. Phase 4 Handoff
~~~

---

# 102. Development Principle

Implementation should proceed from the smallest executable vertical slice.

The first useful milestone is not a complete workflow framework.

It is:

~~~text
One Problem
    |
    v
One Workflow
    |
    v
Small Virtual Asset Set
    |
    v
One Emulator
    |
    v
One Simulator
    |
    v
One Classical Baseline
    |
    v
One QAI / Alternative Path
    |
    v
One Decision
    |
    v
One Result
    |
    v
One Evidence Package
~~~

Once this works, additional capabilities can be added.

---

# 103. Client Demonstration Model

The Phase 3 notebook supports a simple client progression:

~~~text
SEE IT
   |
   v
RUN IT
   |
   v
VALIDATE IT
   |
   v
EXPERIMENT WITH IT
   |
   v
COMPARE IT
   |
   v
SAVE IT
   |
   v
PLAN DEPLOYMENT
~~~

The client does not need to understand the complete future QAI infrastructure to understand the value of the workflow architecture.

---

# 104. Pilot Value Proposition

The Phase 3 Pilot provides a safe environment to explore:

- agricultural optimization
- CPS workflow behaviour
- model interaction
- scenario analysis
- resource constraints
- Classical / AI / QAI alternatives
- economic implications
- resilience scenarios
- human decision points

before committing to more expensive physical or production infrastructure.

---

# 105. Architecture-to-Implementation Mapping

The Phase 3 mapping is:

| Logical Concept | Pilot Implementation |
|---|---|
| QAI Workflow | Python workflow object |
| Workflow Node | Python node/task |
| Asset | Virtual asset object |
| State | Python state model |
| Event | Event object |
| Command | Command object |
| Decision | Decision function |
| Condition | Validation/condition function |
| Approval | Human approval checkpoint |
| Emulator | Python emulator |
| Simulator | Python simulator |
| Classical | Classical baseline |
| AI | Optional AI function |
| QAI | QAI/QAI-inspired function |
| Resource | Virtual resource |
| Result | Result record |
| Evidence | Experiment record |
| Execution | Notebook |
| Persistence | Saved experiment package |

This mapping is implementation-specific only at the Pilot level.

---

# 106. Future Technology Mapping

The same logical concepts may later map to:

| QAI Logical Concept | Future Realisation |
|---|---|
| Workflow | QAI Runtime |
| Node | Runtime service / process |
| Asset | Physical / Digital Twin asset |
| Resource | QAI Resource Manager |
| Execution | QAI Runtime |
| Workflow Designer | COTS / QAI Designer |
| Compute | CPU / GPU / NPU / HPC |
| Quantum | External / managed QPU |
| Control | CPS control layer |
| Storage | Cloud / Edge / QAI Data Center |
| Workflow Interface | API / Event / Message Bus |
| Evidence | Enterprise evidence system |

These mappings are Post-Pilot considerations.

---

# 107. No Workflow Vendor Lock-In

The Phase 3 architecture explicitly avoids making any workflow vendor foundational.

The preferred architecture is:

~~~text
QAI Logical Workflow
        |
        v
Workflow Mapping Layer
        |
   +----+----+----------------+
   |         |                |
   v         v                v
Python     COTS             QAI Runtime
Notebook   Designer
   |         |                |
   v         v                v
Pilot      Target          Production
~~~

The logical workflow remains the common reference.

---

# 108. QAI Semantic Layer

The Pilot may introduce a lightweight QAI semantic layer.

Conceptually:

~~~text
QAI Semantic Layer
        |
        +-- Workflow
        +-- Node / Task
        +-- Asset
        +-- Event
        +-- State
        +-- Command
        +-- Decision
        +-- Condition
        +-- Approval
        +-- Resource
        +-- Result
        +-- Evidence
~~~

This is not intended to become a large standalone runtime during Phase 3.

It exists to keep QAI semantics above raw Python implementation details.

---

# 109. Conceptual Python Representation

The intended style may conceptually resemble:

~~~text
workflow = qai.Workflow("Agriculture Optimization")

farm = qai.Asset("Virtual Farm")
weather = qai.Asset("Weather")
emulator = qai.Emulator(...)
simulator = qai.Simulator(...)
optimizer = qai.QAIFunction(...)

workflow.add(farm)
workflow.add(weather)
workflow.add(emulator)
workflow.add(simulator)
workflow.add(optimizer)

workflow.connect(emulator, simulator)
workflow.connect(simulator, optimizer)

result = workflow.run()
~~~

The exact implementation will be determined during development.

The important principle is that these are **QAI semantic constructs**, not arbitrary notebook variables.

---

# 110. Execution Independence

The logical workflow should not depend on:

- notebook cell order
- a particular Python library
- a particular cloud provider
- a particular workflow engine
- a particular hardware platform
- a particular QPU
- a particular GUI

The notebook provides one execution binding.

---

# 111. Experiment Independence

An experiment is an execution of a workflow under a particular configuration.

Therefore:

~~~text
Workflow Definition
       +
Parameters
       +
Scenario
       +
Asset Configuration
       +
Execution Profile
       =
Experiment
~~~

Changing the experiment does not necessarily change the underlying workflow definition.

---

# 112. Model Independence

Models used by the workflow should remain replaceable.

For example:

~~~text
Agriculture Workflow
       |
       +---- Crop Model A
       |
       +---- Crop Model B
       |
       +---- Irrigation Model A
       |
       +---- Irrigation Model B
       |
       +---- Classical Optimizer
       |
       +---- AI Optimizer
       |
       +---- QAI Optimizer
~~~

The workflow architecture should not be hard-coded to one model.

---

# 113. Reuse

The same workflow structure may later support:

- different crops
- different farms
- different regions
- different weather conditions
- different resource constraints
- different optimization objectives

without changing the fundamental CPS workflow model.

---

# 114. Configuration Management

Phase 3 should maintain explicit versioning for:

- workflow
- nodes
- models
- scenarios
- parameters
- experiment
- evidence

A change should be identifiable.

A previous experiment should remain distinguishable from a modified experiment.

---

# 115. Reproducibility and Auditability

The Pilot should preserve enough information to answer:

- What workflow ran?
- Which version?
- With what parameters?
- Using which assets?
- Using which scenario?
- Which computational path?
- Which models?
- Which resources?
- What happened?
- What result was produced?
- What decision was made?
- Was human approval given?
- What evidence supports the result?

---

# 116. Controlled Expansion

After the minimum workflow is proven, expansion may occur in controlled increments.

Possible progression:

~~~text
Minimum Workflow
      |
      v
Alternate Scenario
      |
      v
Failure Scenario
      |
      v
Economic Model
      |
      v
Additional Optimization
      |
      v
Real / Historical Data
      |
      v
Physical Sensor Integration
      |
      v
Digital Twin
      |
      v
Physical CPS
~~~

Expansion should follow evidence.

---

# 117. Phase 3 Limitations

Known limitations should be recorded explicitly.

Possible limitations include:

- synthetic data
- simplified agricultural models
- virtual resources
- simulated physical behaviour
- limited real-world calibration
- no production control
- no physical actuation
- limited computational benchmarking
- no demonstrated quantum advantage
- limited environmental validation

A limitation is acceptable when it is known, bounded and documented.

---

# 118. Claims Discipline

The Phase 3 Pilot must not claim:

- production readiness
- operational farm automation
- quantum advantage without measurement
- real-world agricultural savings without evidence
- autonomous physical control
- validated crop yield improvement without validation
- enterprise workflow capability
- QAI OS implementation
- production QAI Data Center capability

Claims should use appropriate status such as:

- Proposed
- Demonstrated in Simulation
- Demonstrated in Emulator
- Measured
- Validated
- Independently Validated
- To Be Validated

---

# 119. Phase 3 Quality Principle

The quality objective is:

> **A small workflow that is understandable, executable, reproducible and evidence-producing is more valuable than a large workflow platform that has not been validated.**

---

# 120. Phase 3 Master Realisation Principle

Phase 3 follows:

**Define → Virtualize → Emulate → Simulate → Experiment → Validate → Promote → Scale**

Within Phase 3 specifically:

**Define Workflow → Configure → Validate → Approve → Execute → Observe → Compare → Save → Re-run**

---

# 121. Phase 3 Final Engineering Principle

> **Prove the logical workflow before building the workflow product.**

The Pilot should prove:

**QAI Workflow Semantics**

before attempting:

**QAI Workflow Infrastructure**

before attempting:

**QAI Workflow Product**

before attempting:

**Production QAI Workflow Platform**

---

# 122. Phase 3 Final Status

**PHASE 3 STRUCTURE — CREATED**

**PHASE 3 ROOT README — ARCHITECTURAL BASELINE**

**PILOT MODEL — NOTEBOOK-BASED QAI CPS WORKFLOW PLAYGROUND**

**REFERENCE WORKFLOW — QAI AGRICULTURE OPTIMIZATION**

**EXECUTION HOST — PYTHON / NOTEBOOK**

**LOGICAL WORKFLOW — INDEPENDENT OF NOTEBOOK**

**VIRTUAL ASSETS — INCLUDED**

**EMULATOR — INCLUDED**

**SIMULATOR — INCLUDED**

**CLASSICAL / AI / QAI PATHS — DEFINED**

**HUMAN APPROVAL — DEFINED**

**RESULT / EVIDENCE MODEL — DEFINED**

**NORMAL / ALTERNATE / FAILURE PATHS — DEFINED**

**FORMAL REVIEW — REQUIRED BEFORE PHASE 4**

**ADVANCED WORKFLOW / QAI OS / PRODUCTION CAPABILITIES — POST-PILOT HANDOVER**

---

# 123. Phase 3 Completion Gate

Phase 3 is complete for Pilot purposes when:

~~~text
Logical Workflow Defined
          |
          v
Virtual Assets Registered
          |
          v
States / Events / Actors Defined
          |
          v
Commands / Decisions / Feedback Defined
          |
          v
Normal Workflow Executable
          |
          v
Alternate / Failure Paths Executable
          |
          v
Pre-Validation Executable
          |
          v
Human Approval Defined
          |
          v
Results / KPIs Generated
          |
          v
Experiment Saved
          |
          v
Evidence Recorded
          |
          v
Formal Phase 3 Review
          |
          v
PHASE 4 READY
~~~

---

# 124. Final Phase 3 Statement

Phase 3 establishes the **CPS Workflow Definition layer** of the Digital Farm architecture.

The Pilot intentionally uses a simple Python notebook as the first execution environment.

The notebook is a **workflow playground**, not a workflow IDE.

The logical QAI CPS workflow remains independent of Python, the notebook and any future workflow technology.

The Phase 3 Pilot therefore establishes a controlled bridge from:

**Virtualized Assets**

to:

**Executable CPS Workflow**

to:

**Experiment**

to:

**Evidence**

to:

**Validated Workflow Capability**

to:

**Phase 4 Open-Loop Baseline / QAI Evaluation**

while preserving the architectural path toward:

**Digital Twin → Physical CPS → QAI Lab → QAI Runtime → QAI OS → QAI Resource Fabric → Production / Cloud / Edge / QAI Data Center.**

---

# 125. Final Governing Principle

> **Build the minimum workflow environment needed to prove the logical CPS architecture.**
>
> **Use Python and the notebook as the first execution host.**
>
> **Keep QAI workflow semantics independent of Python.**
>
> **Validate before introducing sophisticated workflow technology.**
>
> **Promote only what is supported by evidence.**
>
> **Move advanced execution infrastructure to the Post-Pilot handover.**
>
> **Scale the workflow only after the Pilot proves the value and behaviour.**

---

**PHASE 3 — CPS WORKFLOW DEFINITION**

**Status: PILOT ARCHITECTURAL BASELINE ESTABLISHED — SEPTEMBER 2026**

**Pilot: NOTEBOOK-BASED QAI CPS WORKFLOW PLAYGROUND**

**Reference: QAI AGRICULTURE OPTIMIZATION WORKFLOW**

**Next Gate: FORMAL PHASE 3 REVIEW → PHASE 4**
---
