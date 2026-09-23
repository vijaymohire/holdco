# Reference Implementations

Technology-specific working examples used to test the General Framework and General Factory architecture.

These remain references and do not become the architecture authority.

~~~

## 1. Purpose

Reference Implementations provide concrete working examples through which the General Framework and General Factory architecture can be exercised, tested, validated and refined.

They allow the platform to learn from actual implementation without making any individual technology, vendor, framework or implementation pattern the architectural definition.

The basic principle is:

```text
Framework Definition
        ↓
Factory Implementation
        ↓
Reference Implementation
        ↓
Experiment / Test
        ↓
Evidence
        ↓
Pattern Extraction
        ↓
Promotion when justified
```

~~~

## 2. Architectural Authority

Reference Implementations are subordinate to the architectural authorities.

```text
General Framework
        │
        │ defines WHAT
        ↓
General Factory
        │
        │ defines HOW
        ↓
Reference Implementations
        │
        │ demonstrate HOW through concrete technology
        ↓
Execution / Evidence
```

A Reference Implementation must not redefine the Framework merely because a particular technology implements a capability in a particular way.

~~~

## 3. Technology-Specific by Design

Reference Implementations may use concrete technologies such as:

- Microsoft Fabric
- notebooks
- Python
- FastAPI
- web frameworks
- browser IDEs
- remote development environments
- workflow technologies
- GPU libraries
- HPC technologies
- quantum SDKs
- cloud services
- storage technologies
- external QPU services
- partner platforms

These technologies are implementation choices.

The Framework should remain technology-neutral where practical.

~~~

## 4. Reference Implementation Categories

Reference Implementations may be organized into several categories.

### Technology References

Working examples used to study and evaluate technologies.

Examples:

- Microsoft Fabric / Dataflows Gen2
- browser-based IDEs
- remote development environments
- API frameworks
- quantum development frameworks
- GPU/HPC technologies
- backend integration technologies

### Pilot References

Working implementations derived from validated pilot activities.

Examples:

- QAI Agriculture Digital Farm notebook
- pilot workflows
- pilot experiment packages
- pilot Fabric integrations

Pilot references should normally point back to the appropriate validated pilot release rather than becoming a second active development branch.

### PaaS References

Working examples demonstrating how technical users can build capabilities through the PaaS engineering environment.

Examples may include:

- project workspace
- notebook-based project
- IDE-based project
- workflow definition
- visual workflow designer
- code-based workflow
- simulation/emulation workspace
- Factory API calls

### IaaS References

Working examples demonstrating resource and backend integration.

Examples may include:

- CPU resource
- GPU resource
- HPC resource
- storage
- network
- quantum simulator
- external QPU
- partner backend
- resource profile
- resource binding

### SaaS References

Working examples demonstrating controlled consumption of validated capabilities.

Examples may include:

- simple product page
- use-case page
- guided input form
- notebook-based client experience
- micro-frontend
- dashboard
- Factory API-backed application

~~~

## 5. PaaS Reference Implementations

PaaS reference implementations demonstrate the engineering path from project definition to executable capability.

Conceptually:

```text
PaaS Project
      ↓
Workspace
      ↓
Assets / Data / Models
      ↓
Workflow
      ↓
Parameters
      ↓
Resource Requirements
      ↓
Factory
      ↓
Execution
      ↓
Results / Evidence
```

A PaaS reference may initially be very small.

For example:

```text
Project
  ↓
Notebook
  ↓
Workflow
  ↓
Factory / Fabric Call
  ↓
Result
```

The reference can progressively evolve toward:

```text
Project
  ↓
Workspace
  ↓
Visual Workflow / Code Workflow
  ↓
Resource Selection
  ↓
Factory Runtime
  ↓
IaaS Resources
  ↓
Results
```

The reference implementation demonstrates the pattern; it does not define the PaaS architecture.

~~~

## 6. Visual and Code-Based Workflow References

Reference Implementations may be used to test both workflow authoring approaches.

### Visual Workflow

```text
[Input]
   ↓
[Transform]
   ↓
[Model]
   ↓
[Simulation]
   ↓
[Execution]
   ↓
[Result]
```

### Code Workflow

```text
workflow = Workflow()

workflow.add(input)
workflow.add(transform)
workflow.add(model)
workflow.add(simulation)
workflow.add(execution)

workflow.run()
```

Both should ultimately exercise the same logical workflow concepts defined by the Framework.

~~~

## 7. IaaS Reference Implementations

IaaS references demonstrate how logical resource requirements can be connected to concrete resources.

Conceptually:

```text
Logical Resource Requirement
          ↓
Resource Capability
          ↓
Resource Fabric
          ↓
Concrete Resource
          ↓
Binding
          ↓
Execution
```

A reference implementation may demonstrate one resource initially.

For example:

```text
PaaS Project
     ↓
GPU Requirement
     ↓
GPU Resource Profile
     ↓
Available GPU
     ↓
Factory Binding
     ↓
Execution
```

Additional resources can be introduced progressively.

~~~

## 8. SaaS Reference Implementations

SaaS references demonstrate how validated capabilities can be presented as controlled products or use cases.

Conceptually:

```text
Product
   ↓
Use Case
   ↓
Guided Parameters
   ↓
Approved Workflow
   ↓
Factory
   ↓
IaaS / Fabric / Backend
   ↓
Result
```

A first SaaS reference may be deliberately simple:

- notebook page
- basic web page
- API-backed page
- micro-frontend
- guided form

The objective is to validate the **consumption pattern**, not to build the entire commercial SaaS platform immediately.

~~~

## 9. PaaS → IaaS → SaaS Reference Progression

The reference implementation model follows the post-pilot development sequence.

```text
Pilot Reference
      ↓
PaaS Reference
      ↓
Identify Resource Requirements
      ↓
IaaS Reference
      ↓
Validate Capability
      ↓
SaaS Reference
      ↓
Client Use Case
```

This progression allows implementation complexity to increase only when justified.

~~~

## 10. Relationship to the Pilot

The pilot remains an important reference implementation.

The existing Digital Farm pilot demonstrated the end-to-end concept through a relatively simple notebook environment.

It should be treated as a **validated reference baseline**, not as the post-pilot platform itself.

Conceptually:

```text
Pilot Notebook
      ↓
Reference
      ↓
Pattern Extraction
      ↓
PaaS Engineering
      ↓
IaaS Integration
      ↓
SaaS Productization
```

The pilot implementation should not be unnecessarily duplicated.

~~~

## 11. Relationship to the General Factory

Reference Implementations are implemented and executed through the General Factory where appropriate.

The Factory provides:

- implementation bindings
- connectors
- adapters
- runtime services
- resource resolution
- workflow execution
- validation
- evidence
- provenance

Reference Implementations provide concrete technology realizations that exercise these mechanisms.

~~~

## 12. Relationship to PaaS, IaaS and SaaS

The three layers have different reference purposes.

```text
PaaS
 ↓
Reference how users BUILD

IaaS
 ↓
Reference how resources are PROVIDED / RESOLVED

SaaS
 ↓
Reference how clients CONSUME
```

All three remain connected to the same Framework and Factory foundation.

~~~

## 13. Reference Implementation and Existing Technology

A technology may be useful without becoming a platform dependency.

For example:

```text
Technology
    ↓
Study
    ↓
Reference Implementation
    ↓
Evaluate
    ↓
Extract Pattern
    ↓
Framework Impact?
    ↓
Factory Implementation?
    ↓
Promote / Retain / Defer
```

This preserves technology neutrality and prevents premature architectural commitment.

~~~

## 14. Reference Implementation Metadata

Where practical, each reference implementation should identify:

- Reference ID
- Name
- Category
- Technology
- Capability
- Framework relationship
- Factory relationship
- Input
- Output
- Resource requirements
- Implementation status
- Validation status
- Evidence
- Provenance
- Source repository
- Version
- Related project
- Related product
- Promotion status

~~~

## 15. Reference Implementation Status

A reference may use statuses such as:

```text
STUDY
REFERENCE
PILOT
VALIDATED
PROMOTED
DEFERRED
RETIRED
```

Status should reflect evidence and lifecycle rather than technology popularity.

~~~

## 16. Promotion Principle

A Reference Implementation may be promoted when sufficient evidence demonstrates that a reusable capability or pattern has been established.

The promotion path is:

```text
Reference
   ↓
Evaluate
   ↓
Extract Pattern
   ↓
Framework Definition
   ↓
Factory Implementation
   ↓
Validate
   ↓
Promote
```

Promotion does not mean that the original technology becomes mandatory.

The reusable architectural concept should be separated from the specific implementation.

~~~

## 17. PaaS Reference Promotion

A PaaS reference may demonstrate:

- project workspace
- workflow authoring
- parameterization
- Factory execution
- resource requirements
- validation
- evidence

If validated, the resulting capability may become part of the reusable PaaS implementation.

~~~

## 18. IaaS Reference Promotion

An IaaS reference may demonstrate:

- resource inventory
- resource profile
- resource request
- resource resolution
- resource binding
- backend execution

If validated, the resulting resource capability may become part of the Resource Fabric and Factory implementation.

~~~

## 19. SaaS Reference Promotion

A SaaS reference may demonstrate:

- product selection
- use-case selection
- guided parameters
- controlled workflow
- Factory execution
- result presentation
- evidence access

If validated, the reference may become a reusable SaaS product template or application capability.

~~~

## 20. Evidence and Provenance

Reference Implementations should preserve appropriate evidence about:

- configuration
- code/version
- workflow
- parameters
- resources
- execution
- results
- validation
- performance
- limitations
- provenance

This ensures that architectural decisions can be traced back to actual implementation experience.

~~~

## 21. Virtual-First Reference Implementations

Reference Implementations may use progressive realization:

```text
Logical
  ↓
Virtual
  ↓
Simulation
  ↓
Emulation
  ↓
Hybrid / HIL
  ↓
Physical
```

A reference does not need physical hardware to demonstrate an architectural capability.

This is particularly relevant to QAI, simulation, digital twin, resource and backend integration.

~~~

## 22. PaaS / IaaS / SaaS Technology Boundary

The Reference Implementation repository should demonstrate technology choices without redefining the architectural layers.

```text
Framework
  ↓
PaaS / IaaS / SaaS Definitions
  ↓
Factory
  ↓
Technology Binding
  ↓
Reference Implementation
```

This maintains a clear distinction between:

- architecture
- implementation
- technology
- experiment
- evidence

~~~

## 23. Country and Industry References

Reference Implementations may also be associated with:

- country
- sector
- industry
- client
- product
- use case

For example:

```text
Country
  ↓
Sector
  ↓
Product
  ↓
Use Case
  ↓
SaaS Reference
  ↓
Factory / IaaS
```

This allows country-specific product samples to reuse common platform capabilities.

~~~

## 24. Small Post-Pilot Release Strategy

The first post-pilot release should remain deliberately small.

A possible progression is:

### Release 1 — PaaS Reference

```text
Project
  ↓
Notebook / Workspace
  ↓
Workflow
  ↓
Factory / Fabric Call
  ↓
Result
```

### Release 2 — IaaS Reference

```text
PaaS
  ↓
Resource Requirement
  ↓
Resource Fabric
  ↓
Concrete Backend
  ↓
Execution
```

### Release 3 — SaaS Reference

```text
Product
  ↓
Use Case
  ↓
Guided Inputs
  ↓
Factory Call
  ↓
Result
```

This provides a practical path from the pilot into post-pilot capability without attempting to implement the complete platform at once.

~~~

## 25. Current Reference Implementation Principle

Reference Implementations should remain **working evidence and learning assets**.

They may be:

- notebooks
- scripts
- APIs
- web pages
- micro-frontends
- workflow examples
- backend integrations
- resource profiles
- technology demonstrations
- experiment environments

Their architectural value comes from the patterns and evidence they provide, not from the technology itself.

~~~

## 26. Current Development Direction

The current post-pilot direction is:

```text
Pilot Reference
      ↓
PaaS
      ↓
IaaS
      ↓
SaaS
```

Therefore, new Reference Implementations should initially support the PaaS engineering path.

IaaS references should be added as concrete PaaS resource requirements emerge.

SaaS references should follow validated PaaS capabilities.

~~~

## 27. Guiding Statement

**Reference Implementations are where the architecture meets working technology.**

They allow the General Framework and General Factory to be tested against real implementations while preserving architectural neutrality.

**Study the technology.
Implement the pattern.
Capture the evidence.
Promote only what is justified.**
~~~
---
## 28. Current Reference Implementation Catalogue

The General Factory Reference Implementations repository provides a
controlled catalogue of concrete technologies, working examples,
execution environments, computational backends and client-facing
implementation samples.

Current reference categories are:

~~~
reference_implementations/
│
├── microsoft_fabric/
├── qai_lab/
│
├── workflow/
├── workflow_designer/
├── ide/
│
├── quantum/
├── ai_ml/
│
├── emulation/
├── simulation/
│
├── resource_backends/
├── cloud/
├── git_execution/
│
├── micro_frontends/
└── notebooks/
~~~

The catalogue is intentionally broader than the current active
implementation set.

A folder may represent:

- an existing working implementation
- a validated pilot reference
- a technology study
- a candidate implementation
- an integration reference
- a future backend
- a deployment reference
- a user-interface reference

The presence of a reference category does not imply that the
corresponding technology is already a production dependency.

~~~

## 29. Current Reference Implementation Structure

Where appropriate, each reference implementation follows a common
structure.

~~~
<reference>/
├── README.md
├── manifest.json
├── configuration/
├── samples/
├── workflows/
├── deployment/
├── execution/
├── results/
└── evidence/
~~~

### configuration/

Contains configuration required to reproduce or exercise the
reference implementation.

Examples:

- environment configuration
- runtime configuration
- backend configuration
- resource requirements
- parameters
- credentials references
- endpoint configuration

Secrets and credentials must not be committed as implementation
data.

### samples/

Contains small, focused implementation examples.

Samples should remain intentionally small enough to understand,
execute and validate.

### workflows/

Contains workflow definitions or examples associated with the
reference.

Workflows may be:

- code-based
- notebook-based
- visual
- API-driven
- open-loop
- closed-loop
- simulation
- emulation
- hybrid

### deployment/

Contains deployment-specific examples.

Examples:

- local
- container
- VPS
- Azure
- Google Cloud
- development workspace
- test environment

### execution/

Contains execution configuration, commands, scripts or runtime
definitions.

### results/

Contains representative outputs generated by the sample.

Results should normally be small and reproducible.

### evidence/

Contains validation and provenance information.

Examples:

- execution logs
- test results
- screenshots
- benchmark results
- validation reports
- configuration snapshots
- provenance records

~~~

## 30. Existing Microsoft Fabric Reference

The Microsoft Fabric reference demonstrates how an external
technology can participate in the General Factory without becoming
the definition of the Factory architecture.

Current reference:

~~~
microsoft_fabric/
└── dataflows_gen2/
~~~

Reference identity:

~~~
REF-MSFABRIC-DATAFLOWS-GEN2-001
~~~

Conceptual capability:

~~~
FABRIC_DATAFLOW_EXECUTION
~~~

The reference is useful for studying:

- data transformation
- workflow execution
- external platform integration
- connectors
- adapters
- configuration
- execution
- results
- evidence

Microsoft Fabric remains a technology-specific reference
implementation.

It does not redefine the General Factory Fabric model.

~~~

## 31. Existing QAI Lab Reference

The QAI Lab reference preserves the validated pilot notebook and
associated experiment implementation.

Current reference:

~~~
qai_lab/
└── pipeline_notebook/
~~~

Reference identity:

~~~
REF-QAILAB-GITLAB-GITHUB-NOTEBOOK-001
~~~

This reference is particularly important because it provides the
starting implementation basis for post-pilot development.

It demonstrates:

- notebook-based engineering
- experiment execution
- Agriculture optimization
- workflow execution
- QAI experimentation
- GitLab/GitHub integration
- experiment packaging
- results
- evidence

The pilot implementation should be reused and promoted selectively
rather than unnecessarily duplicated.

~~~

## 32. Workflow References

The workflow reference area contains examples used to validate
logical workflow semantics and execution patterns.

~~~
workflow/
├── visual_workflow/
├── workflow_engine/
└── workflow_patterns/
~~~

### Visual Workflow

Used to study:

- nodes
- ports
- connections
- tasks
- conditions
- branches
- loops
- approvals
- feedback
- workflow properties

### Workflow Engine

Used to study:

- validation
- orchestration
- execution
- state
- scheduling
- events
- retries
- results
- evidence

### Workflow Patterns

Used to capture reusable patterns such as:

- sequential workflow
- parallel workflow
- conditional workflow
- approval workflow
- human-in-loop
- open-loop workflow
- closed-loop workflow
- feedback workflow
- iterative optimization workflow

The workflow references should ultimately produce the same logical
workflow concepts defined by the General Framework.

~~~

## 33. Open-Loop and Closed-Loop References

The first post-pilot Agriculture implementation should support both
Open Loop and Closed Loop execution.

### Open Loop

~~~
Input
  ↓
Process
  ↓
Optimization / AI / QAI
  ↓
Result
  ↓
Evidence
~~~

Open Loop provides the simpler baseline for:

- deterministic execution
- backend comparison
- emulator testing
- simulation testing
- benchmarking
- repeatable experiments

### Closed Loop

~~~
Sense / Input
      ↓
Process
      ↓
Decide / Optimize
      ↓
Act / Recommend
      ↓
Observe
      ↓
Evaluate
      ↓
Feedback
      ↓
Reconfigure
      ↓
Repeat
~~~

Closed Loop provides the basis for:

- adaptive execution
- feedback
- virtual sensing
- virtual actuation
- iterative optimization
- digital-twin interaction

The initial implementation should use virtual or emulated sensors
and actuators.

Physical actuation is not required for the first post-pilot
demonstration.

### Comparison

~~~
                 Agriculture Experiment
                         │
              ┌──────────┴──────────┐
              │                     │
          Open Loop             Closed Loop
              │                     │
           Run A                  Run B
              │                     │
              └──────────┬──────────┘
                         ↓
                    Comparison
                         ↓
                Results / Evidence
~~~

The same logical problem should be capable of being executed in
both modes.

~~~

## 34. Workflow Designer References

The workflow designer reference area contains candidate technologies
for visual workflow construction.

~~~
workflow_designer/
├── eclipse_glsp/
├── react_flow/
└── bpmn/
~~~

### Eclipse GLSP

Reference for graphical, model-based editors.

### React Flow

Reference for node-based graphical workflow and graph editing.

### BPMN

Reference for process-oriented workflow visualization and
authoring.

These technologies are implementation references.

The logical workflow model remains defined by the General Framework.

The visual designer should produce a Framework-compatible workflow
definition rather than a technology-specific workflow model.

~~~

## 35. IDE and Development Workspace References

The IDE reference area contains development workspace technologies.

~~~
ide/
├── eclipse_che/
├── vscode/
└── eclipse_theia/
~~~

Potential uses include:

- project workspace
- source-code editing
- notebook execution
- terminal access
- workflow development
- asset browsing
- configuration
- testing
- experiment execution

The IDE is the developer workspace.

The General Factory remains responsible for controlled access to
capabilities, resources and execution.

Conceptually:

~~~
PaaS Workspace
      │
      ├── Code Editor
      ├── Notebook
      ├── Terminal
      ├── Asset Explorer
      └── Workflow Designer
                │
                ↓
        Logical Workflow
                │
                ↓
        General Factory
                │
                ↓
             Runtime
~~~

~~~

## 36. Quantum Reference Implementations

The quantum reference area provides a small portfolio of quantum
software implementations.

~~~
quantum/
├── qiskit/
├── qiskit_aer/
├── cirq/
├── pennylane/
└── strawberry_fields/
~~~

### Qiskit

Primary reference for quantum circuit and quantum computing
workflows.

### Qiskit Aer

Reference for:

- circuit simulation
- exact simulation
- noisy simulation
- backend comparison

### Cirq

Reference for:

- quantum circuit construction
- simulation
- device-like quantum execution interfaces

### PennyLane

Reference for:

- hybrid quantum-classical workflows
- quantum machine learning
- differentiable quantum workflows

### Strawberry Fields

Optional reference for:

- photonic quantum computing
- photonic circuit experimentation

These implementations are not required to become permanent platform
dependencies.

The purpose is to demonstrate that the Factory can resolve a
logical quantum capability to different implementations.

Conceptually:

~~~
Framework
    ↓
Quantum Capability
    ↓
Virtual QPU Asset
    ↓
Factory Registry
    ↓
┌────────────┬────────────┬─────────────┐
│            │            │
Qiskit Aer   Cirq        External QPU
│            │            │
└────────────┴────────────┴─────────────┘
             ↓
          Results
             ↓
          Evidence
~~~

~~~

## 37. AI / Machine Learning References

The AI/ML reference area contains implementation samples for
classical AI and machine-learning capabilities.

~~~
ai_ml/
├── mlflow/
├── local_inference/
└── ai_workflow/
~~~

### MLflow

Reference for:

- experiment tracking
- model lifecycle
- model metadata
- model serving
- AI/ML experiment integration

### Local Inference

Reference for small local AI model or inference service execution.

### AI Workflow

Reference for:

- AI model
- inference
- AI service
- AI agent
- model execution
- result handling

The first post-pilot AI implementation should remain intentionally
small.

Large language models and large-scale inference infrastructure are
not required to prove the platform architecture.

~~~

## 38. Emulation References

The emulation reference area supports the virtual-first execution
strategy.

~~~
emulation/
├── quantum_emulation/
├── ai_emulation/
└── virtual_devices/
~~~

Emulation may reproduce selected:

- interfaces
- states
- timing
- protocols
- device behaviour
- service behaviour
- execution responses

### Virtual Devices

May include:

- virtual sensors
- virtual actuators
- virtual QAI devices
- virtual computational devices
- virtual control endpoints

Emulation allows post-pilot workflows to be demonstrated without
requiring all physical infrastructure.

~~~

## 39. Simulation References

Simulation references provide computational or system-level
simulation capabilities.

~~~
simulation/
├── quantum_simulation/
├── system_simulation/
└── digital_twin/
~~~

Simulation may be used for:

- prediction
- optimization
- design-space exploration
- system behaviour
- quantum circuits
- digital twins
- virtual experiments

Simulation and emulation remain distinct.

A workflow may use either or both.

~~~
Workflow
    │
    ├── Simulation
    │
    ├── Emulation
    │
    └── Hybrid
~~~

~~~

## 40. Resource Backend References

The resource backend area provides implementation references for
computational resources.

~~~
resource_backends/
├── gpu/
├── hpc/
├── tpu/
├── qpu/
└── virtual_compute/
~~~

The logical requirement remains independent from the concrete
resource.

For example:

~~~
GPU Capability
      ↓
Resource Fabric
      ↓
┌──────────────┬──────────────┬──────────────┐
│              │              │
Azure GPU   Local GPU    Partner GPU
~~~

Similarly:

~~~
Quantum Capability
      ↓
Resource Fabric
      ↓
Emulator / Simulator / External QPU
~~~

The Factory should resolve the appropriate resource according to
capability, compatibility, availability, security, cost and
execution requirements.

~~~

## 41. Cloud and Deployment References

The cloud reference area contains deployment and resource
realization examples.

~~~
cloud/
├── azure/
├── google_cloud/
└── vps/
~~~

These references demonstrate possible realization environments.

They do not redefine IaaS.

IaaS remains the logical infrastructure and resource consumption
model.

For example:

~~~
Logical GPU Resource
        ↓
Resource Fabric
        ↓
Azure GPU
~~~

or:

~~~
Logical Compute Resource
        ↓
Resource Fabric
        ↓
VPS
~~~

or:

~~~
Logical TPU Capability
        ↓
Resource Fabric
        ↓
Google Cloud TPU
~~~

The technology-specific implementation remains behind the Factory
resource binding.

~~~

## 42. Git Execution References

The Git execution area provides references for repository-based
execution and integration.

~~~
git_execution/
├── gitlab_runner/
└── github/
~~~

### GitLab Runner

Reference for:

- notebook execution
- experiment execution
- pipeline execution
- controlled private repository execution
- reproducible jobs

### GitHub

Reference for:

- repository integration
- source retrieval
- version information
- implementation discovery
- reference asset integration

Existing repositories should remain independent.

The Factory connects to them through connectors and adapters rather
than copying their implementation architecture.

~~~

## 43. Micro-Frontend and Client View References

The micro-frontend reference area supports the client-facing
experience.

~~~
micro_frontends/
├── client_views/
├── workflow_views/
└── resource_views/
~~~

Potential views include:

### Client View

- product selection
- guided inputs
- execution status
- results
- evidence
- download

### Workflow View

- workflow graph
- parameters
- execution state
- feedback
- comparison

### Resource View

- available resources
- resource capabilities
- backend selection
- execution environment
- status

These views are presentation layers over common platform services.

They do not create independent business or workflow models.

~~~

## 44. Notebook References

The notebook reference area captures notebook-based engineering and
experiment execution.

~~~
notebooks/
├── jupyter/
└── experiment_notebooks/
~~~

Notebooks may be used for:

- experimentation
- prototyping
- data analysis
- QAI development
- workflow testing
- simulation
- emulation
- validation

The existing QAI Agriculture notebook remains the primary validated
pilot reference.

Future notebooks should be linked to appropriate workflows,
experiments and evidence.

~~~

## 45. Common Reference Execution Pattern

Across all categories, the reference execution model should remain
consistent.

~~~
Reference
    ↓
Configuration
    ↓
Workflow
    ↓
Deployment
    ↓
Execution
    ↓
Results
    ↓
Evidence
~~~

Where required:

~~~
Configuration
    ↓
Factory Registry
    ↓
Connector
    ↓
Adapter
    ↓
Runtime
    ↓
Resource Fabric
    ↓
Backend
    ↓
Execution
~~~

This allows different technologies to exercise the same Factory
integration architecture.

~~~

## 46. Reference Implementation Status

The reference catalogue contains different maturity levels.

A newly created folder should normally begin as:

~~~
CANDIDATE
~~~

Possible progression:

~~~
CANDIDATE
    ↓
SAMPLE
    ↓
INTEGRATED
    ↓
VALIDATED
    ↓
REGISTERED
    ↓
ACTIVE REFERENCE
~~~

A reference may also become:

~~~
DEFERRED
~~~

or:

~~~
RETIRED
~~~

Status should be based on implementation evidence rather than the
popularity or strategic importance of a technology.

~~~

## 47. Reference Implementation Registry Relationship

Reference implementations should eventually be represented in the
Factory Registry.

Conceptually:

~~~
Reference Implementation
          ↓
Reference ID
          ↓
Capability
          ↓
Implementation Binding
          ↓
Connector / Adapter
          ↓
Runtime
          ↓
Resource / Backend
~~~

The existing Factory runtime binding model can therefore connect
Framework capabilities to selected reference implementations.

Reference folders provide the evidence and implementation context;
the Registry provides the machine-readable resolution mechanism.

~~~

## 48. Reference Implementation Selection Principle

The platform should not attempt to implement every technology listed
in the catalogue.

Selection should follow:

~~~
Required Capability
        ↓
Existing Reference?
     /          \
   Yes           No
    ↓             ↓
Reuse / Adapt   Gap Analysis
    ↓             ↓
Integrate       Develop /
                Research /
                Partner
~~~

The objective is not technology accumulation.

The objective is to obtain sufficient implementation evidence to
build reusable platform capabilities.

~~~

## 49. First Post-Pilot Reference Portfolio

The first post-pilot implementation should remain deliberately
small.

The initial portfolio can focus on:

~~~
QAI Lab
    +
Qiskit / Qiskit Aer
    +
Cirq
    +
Small AI / MLflow
    +
Quantum / Virtual Device Emulation
    +
Selected Simulation
    +
Workflow Execution
    +
Visual Workflow Reference
    +
GitLab Runner
    +
One or More Compute Resources
~~~

This provides enough coverage to demonstrate:

- PaaS engineering
- Open Loop
- Closed Loop
- AI
- QAI
- quantum simulation
- quantum emulation
- workflow execution
- resource resolution
- experiment execution
- results
- evidence

without requiring a large-scale infrastructure deployment.

~~~

## 50. First Post-Pilot Demonstration Architecture

The reference portfolio should ultimately support a demonstration
similar to:

~~~
                    PaaS Project
                         │
                         ↓
                Workflow Designer
                         │
                         ↓
                Logical Workflow
                         │
             ┌───────────┴───────────┐
             │                       │
          Open Loop             Closed Loop
             │                       │
             └───────────┬───────────┘
                         ↓
                  General Factory
                         │
             ┌───────────┼───────────┐
             │           │           │
            AI          QAI       Quantum
             │           │           │
             └───────────┼───────────┘
                         ↓
               Emulator / Simulator
                         │
                         ↓
                  Resource Fabric
                         │
                         ↓
               Execution Backend
                         │
                         ↓
                     Results
                         │
                         ↓
                     Evidence
                         │
                         ↓
                   Client View
~~~

This is the first target architecture for the reference
implementation portfolio.

~~~

## 51. Scope Boundary

The reference catalogue does not imply that the first post-pilot
release requires:

- large language models
- large quantum circuits
- physical QPU execution
- large HPC clusters
- TPU workloads
- complex multi-agent swarms
- physical agricultural actuation
- large persistent cloud storage
- a complete commercial SaaS platform

The objective is to prove the integration architecture with small,
controlled and reproducible implementations.

~~~

## 52. Reference Implementation Guiding Principle

The Reference Implementation repository should remain a controlled
bridge between architecture and working technology.

~~~
Study
  ↓
Reference
  ↓
Implement
  ↓
Experiment
  ↓
Validate
  ↓
Capture Evidence
  ↓
Extract Pattern
  ↓
Promote when justified
~~~

The reference catalogue should therefore grow through actual
implementation experience rather than technology collection.

**Use references to learn.**

**Use the Factory to integrate.**

**Use evidence to validate.**

**Promote only what becomes reusable.**

~~~

**End of Reference Implementation Catalogue**

---
