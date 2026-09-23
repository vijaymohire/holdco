# Experimentation

Factory-managed experiment definitions, notebooks, scenarios, executions and results.

~~~

## 1. Purpose

The `experimentation/` layer provides the General Factory environment for designing, configuring, executing, observing and validating experiments.

It provides a controlled path from an experiment definition to executable results and evidence.

```text
Experiment Definition
       ↓
Experiment Configuration
       ↓
Scenario
       ↓
Workflow
       ↓
Resource / Backend Resolution
       ↓
Execution
       ↓
Results
       ↓
Validation
       ↓
Evidence
```

Experimentation is therefore a core bridge between platform engineering and validated capability development.

~~~

## 2. Architectural Position

Experimentation sits inside the General Factory and connects reusable platform assets with actual engineering activity.

```text
General Framework
       ↓
Definitions / Contracts
       ↓
General Factory
       ↓
Experimentation
       ↓
Execution
       ↓
Evidence
       ↓
Pilot / Product / Deployment
```

The Framework defines the logical concepts and contracts.

The Factory provides the mechanisms required to instantiate and execute them.

~~~

## 3. Experimentation Versus Deployment

Experimentation and deployment serve different purposes.

```text
Experimentation
    ↓
Explore / Test / Compare / Validate
```

versus:

```text
Deployment
    ↓
Configure / Operate / Deliver
```

An experiment may investigate a proposed deployment before it becomes a validated deployment capability.

~~~

## 4. Experiment Definition

An experiment definition describes what is being investigated or validated.

It may include:

- Experiment ID
- Name
- Objective
- Problem definition
- Hypothesis
- Assumptions
- Inputs
- Parameters
- Variables
- Constraints
- Expected outputs
- Success criteria
- Required capabilities
- Required resources
- Execution mode
- Evidence requirements

Conceptually:

```text
Experiment
 ├── Objective
 ├── Problem
 ├── Hypothesis
 ├── Inputs
 ├── Parameters
 ├── Constraints
 ├── Workflow
 ├── Resources
 ├── Outputs
 └── Evidence
```

~~~

## 5. Experiment Identity

Every experiment should have a stable identity.

An experiment identity may include:

- Experiment ID
- Version
- Experiment type
- Project
- Problem domain
- Industry
- Client where applicable
- Author / owner
- Lifecycle state
- Configuration version
- Execution history

Experiment identity should remain distinct from the identity of the assets and implementations being tested.

~~~

## 6. Experiment Notebook

Notebooks may provide an interactive engineering interface for experiments.

A notebook may contain:

- Environment initialization
- Data preparation
- Asset selection
- Problem definition
- Parameter configuration
- Workflow construction
- Execution
- Observation
- Analysis
- Visualization
- Validation
- Evidence capture

Conceptually:

```text
Experiment Notebook
       ↓
Initialize
       ↓
Configure
       ↓
Design
       ↓
Execute
       ↓
Observe
       ↓
Analyze
       ↓
Validate
       ↓
Capture Evidence
```

The notebook is an experiment interface; it should not become the definition of the entire Factory architecture.

~~~

## 7. Notebook and Factory Runtime

Notebook execution should invoke Factory capabilities through defined interfaces.

```text
Notebook
    ↓
Factory API / Execution Interface
    ↓
Runtime
    ↓
Workflow
    ↓
Backend
```

This allows notebooks to remain lightweight experiment clients while execution remains controlled by the Factory.

~~~

## 8. Scenarios

A scenario represents a particular set of conditions under which an experiment is executed.

A scenario may specify:

- Initial state
- Input data
- Parameters
- Constraints
- Environment
- Resource conditions
- Uncertainty
- Time horizon
- Expected conditions
- Evaluation criteria

```text
Experiment
   ↓
Scenario A
Scenario B
Scenario C
   ↓
Execution
```

Multiple scenarios allow controlled comparison within the same experiment definition.

~~~

## 9. Experiment Configuration

Configuration should be explicit and versioned.

It may include:

- Asset configuration
- Workflow configuration
- Parameters
- Resource requirements
- Backend selection
- Environment
- Scenario
- Execution mode
- Validation criteria

Configuration should be separated from reusable experiment identity where practical.

~~~

## 10. Experiment Workflow

An experiment may use a reusable workflow.

```text
Experiment
     ↓
Workflow
     ↓
Verify
     ↓
Validate
     ↓
Compile
     ↓
Resolve
     ↓
Schedule
     ↓
Execute
```

The workflow should remain reusable where the same execution pattern applies to multiple experiments.

~~~

## 11. Experiment Execution

Execution is the controlled transition from experiment definition and configuration to actual computation.

```text
Experiment
      ↓
Configuration
      ↓
Scenario
      ↓
Resource Resolution
      ↓
Execution Plan
      ↓
Execution
      ↓
Results
```

Execution should preserve sufficient information to reproduce or explain the result.

~~~

## 12. Execution Modes

Experiments may use different realization or execution modes.

Examples include:

- Virtual
- Simulation
- Emulation
- Hybrid
- HIL / testbed
- Physical execution where required

```text
Experiment
    ↓
Execution Mode
    ↓
Selected Backend
```

The execution mode should be explicit in the experiment configuration.

~~~

## 13. Computational Paths

Experiments may investigate different computational strategies.

```text
Problem
   ↓
Experiment
   ├── Classical
   ├── AI
   ├── QAI / Quantum-Inspired
   ├── Quantum
   └── Hybrid
```

This supports evidence-based comparison rather than assuming that a particular computational technology is always required.

~~~

## 14. Comparative Experiments

An experiment may compare multiple approaches.

For example:

```text
Same Problem
      ↓
 ┌────┼────┐
 ↓    ↓    ↓
Classical AI   QAI / Quantum
 └────┼────┘
      ↓
Comparative Evaluation
```

Comparison criteria may include:

- Accuracy
- Runtime
- Resource use
- Cost
- Scalability
- Fidelity
- Latency
- Robustness
- Energy
- Value

The criteria should be defined by the experiment rather than assumed universally.

~~~

## 15. Design-Space Exploration

Experimentation may support controlled exploration of alternative configurations.

Examples include:

- Parameter sweeps
- Scenario exploration
- Sensitivity analysis
- Design-space exploration
- Optimization
- Bayesian optimization
- Evolutionary search
- Surrogate-assisted exploration
- Quantum-inspired search

The Factory should preserve the relationship between each candidate configuration and its resulting evidence.

~~~

## 16. Candidate Management

When experiments generate multiple candidate solutions, candidates should be explicitly identified.

A candidate record may include:

- Candidate ID
- Generation method
- Parameters
- Assumptions
- Constraints
- Seed where applicable
- Execution reference
- Evaluation
- Result
- Provenance

```text
Candidate
    ↓
Execute
    ↓
Evaluate
    ↓
Compare
    ↓
Select / Continue Exploration
```

Candidate generation should be controlled and reproducible where practical.

~~~

## 17. Problem-to-Experiment Flow

Experimentation connects problem definition to executable investigation.

```text
Real-World Problem
       ↓
Problem Definition
       ↓
Mathematical Model
       ↓
Representation
       ↓
Experiment Definition
       ↓
Workflow
       ↓
Execution
       ↓
Evidence
```

This makes experimentation part of the broader problem-to-execution lifecycle.

~~~

## 18. Virtual Assets

Experiments may operate on virtual assets.

Examples include:

- Virtual machines
- Virtual networks
- Virtual sensors
- Virtual actuators
- Virtual QAI assets
- Virtual environments
- Digital twins
- Simulated resources

```text
Experiment
      ↓
Virtual Asset
      ↓
Simulation / Emulation
      ↓
Observation
```

Virtual assets support experimentation before physical realization is available.

~~~

## 19. Progressive Fidelity

An experiment may progressively increase realization fidelity.

```text
Abstract
   ↓
Virtual
   ↓
Simulation
   ↓
Emulation
   ↓
HIL / Testbed
   ↓
Physical
```

The experiment should record which realization was actually used.

This allows results from different fidelity levels to remain distinguishable.

~~~

## 20. Resource Resolution

Experiments may require:

- CPU
- GPU
- TPU
- NPU
- FPGA
- HPC
- Memory
- Storage
- Network
- Simulator
- Emulator
- Virtual QPU
- External QPU
- External service

The experiment specifies logical requirements.

```text
Experiment
      ↓
Resource Requirement
      ↓
Resource Fabric
      ↓
Resource Resolver
      ↓
Backend
```

Physical resource selection remains a Factory concern.

~~~

## 21. Backend Resolution

An experiment may use different execution backends.

```text
Experiment
     ↓
Backend Requirements
     ↓
Backend Resolution
     ├── CPU
     ├── GPU
     ├── HPC
     ├── Simulator
     ├── Emulator
     ├── Virtual QPU
     └── External QPU
```

The backend should be selected according to experiment requirements and available resources.

~~~

## 22. In-Memory Data

Experiments may use the common in-memory data model for rapid execution.

Possible structures include:

- Tables
- Key/value structures
- Documents
- Arrays / tensors
- Graphs
- Event streams
- State objects
- Sparse structures

Quantum-related experiment data may additionally include:

- Circuits
- Parameters
- Shots
- Measurements
- State probabilities
- Observables
- Noise parameters
- Execution state
- Telemetry

~~~

## 23. Time and Execution

Experiments may operate in different time bins:

- Real-time
- Near-real-time
- Batch
- Scheduled
- Asynchronous
- Long-running

Additional execution characteristics may include:

- Latency
- Ordering
- Consistency
- Throughput
- Durability

These should be explicit experiment requirements where relevant.

~~~

## 24. Verification and Validation

Experiment execution should distinguish verification from validation.

```text
Experiment Design
       ↓
VERIFY
       ↓
VALIDATE
       ↓
EXECUTE
       ↓
VERIFY RESULTS
       ↓
ASSEMBLE
       ↓
EVIDENCE
```

Verification may establish that the experiment was constructed and executed according to its specification.

Validation determines whether the observed result supports the intended objective or hypothesis.

~~~

## 25. Results

Experiment results may include:

- Raw outputs
- Measurements
- Metrics
- Logs
- Events
- Performance data
- Resource utilization
- Cost
- Errors
- Validation results
- Visualizations
- Derived conclusions

Results should retain their relationship to the experiment, scenario, configuration and execution.

~~~

## 26. Result Assembly

Results may need to be assembled from multiple executions.

```text
Execution A
Execution B
Execution C
      ↓
Result Assembly
      ↓
Experiment Result
```

Assembly may include:

- Aggregation
- Comparison
- Statistical analysis
- Filtering
- Ranking within the experiment's defined criteria
- Confidence analysis
- Report generation

~~~

## 27. Evidence

Experimentation is a primary evidence-generation mechanism.

Evidence may demonstrate:

- Functional behavior
- Performance
- Scalability
- Accuracy
- Resource requirements
- Computational advantage
- Integration behavior
- Model behavior
- Deployment feasibility
- Value criteria

Evidence should remain linked to the exact experiment and execution that generated it.

~~~

## 28. Provenance

Experiment provenance should capture relationships such as:

```text
Experiment
   ↓
Version
   ↓
Scenario
   ↓
Configuration
   ↓
Workflow
   ↓
Assets
   ↓
Resources
   ↓
Execution
   ↓
Results
   ↓
Evidence
```

This supports reproducibility and traceability.

~~~

## 29. Reproducibility

Where practical, an experiment should preserve:

- Source version
- Notebook version
- Configuration
- Parameters
- Input data reference
- Random seeds
- Software environment
- Model version
- Backend
- Resource configuration
- Execution timestamp
- Results

Exact reproducibility may not always be possible, particularly for stochastic, external or hardware-dependent execution, but the Factory should preserve sufficient provenance to explain the execution.

~~~

## 30. Experiment Lifecycle

An experiment may progress through:

```text
Draft
   ↓
Defined
   ↓
Configured
   ↓
Ready
   ↓
Running
   ↓
Completed
   ↓
Validated
   ↓
Evidence Captured
   ↓
Archived / Promoted
```

An experiment may also be:

```text
Cancelled
Failed
Superseded
Retired
```

~~~

## 31. Experiment Promotion

Experimentation provides a controlled path toward reusable capabilities.

```text
Experiment
      ↓
Evidence
      ↓
Validated Pattern
      ↓
Reusable Capability
      ↓
Module / Package / Product
```

A successful experiment does not automatically become a product.

Promotion should require appropriate evidence and review.

~~~

## 32. Experiment and Pilot

Pilot activities may use Factory experimentation assets.

```text
Experimentation
      ↓
Pilot
      ↓
Client Evidence
      ↓
Validated Capability
      ↓
Post-Pilot Asset
```

Pilot-specific assets should remain identifiable as pilot assets even when their validated patterns are promoted into post-pilot implementations.

~~~

## 33. Experiment and Problem Domains

Problem-domain implementations provide reusable problem-solving capabilities to experiments.

```text
Problem Domain
      ↓
Capability
      ↓
Experiment
      ↓
Scenario
      ↓
Execution
```

Experimentation provides the execution and evidence environment for evaluating those capabilities.

~~~

## 34. Experiment and Industry

Industry implementations provide domain-specific context.

```text
Industry
      ↓
Industry Capability
      ↓
Problem Domain
      ↓
Experiment
```

This allows a common problem-domain capability to be evaluated within different industry contexts.

~~~

## 35. Experiment and Packages

Experiments may consume deployment packages or selected package components.

```text
Package
   ↓
Experiment Configuration
   ↓
Scenario
   ↓
Execution
```

The experiment may therefore test a proposed package before deployment.

~~~

## 36. Experiment and PaaS

PaaS provides the engineering environment for creating and executing experiments.

```text
PaaS Workspace
      ↓
Experiment Design
      ↓
Notebook / Workflow
      ↓
Execution
      ↓
Results
```

The PaaS environment may expose controlled access to Factory experimentation capabilities.

~~~

## 37. Experiment and SaaS

Validated experiment capabilities may become SaaS workflows or products.

```text
Experiment
      ↓
Validated Workflow
      ↓
Productization
      ↓
SaaS
```

The experiment remains evidence of development rather than becoming the SaaS architecture itself.

~~~

## 38. Experiment and IaaS

Experiment execution may consume infrastructure through IaaS and the Resource Fabric.

```text
Experiment
      ↓
Resource Requirements
      ↓
IaaS / Resource Fabric
      ↓
Backend
      ↓
Execution
```

This enables experiments to move from local development resources to larger computational environments when required.

~~~

## 39. Security and Governance

Experiments should operate within Factory security and governance controls.

Controls may include:

- Identity
- Authentication
- Authorization
- Approval
- Data access
- Resource access
- Network access
- Execution policy
- Audit
- Evidence retention

Experiments involving sensitive or controlled resources should require the appropriate approvals before execution.

~~~

## 40. Error Handling and Recovery

Experiment execution should distinguish between:

- Configuration errors
- Validation failures
- Resource allocation failures
- Backend failures
- Execution failures
- Data errors
- Timeout
- Partial execution
- External service failures

Where possible, execution should preserve partial evidence and failure provenance.

~~~

## 41. Experiment Versioning

Experiment definitions should be versioned independently from individual executions.

```text
Experiment v1
   ├── Execution 001
   ├── Execution 002
   └── Execution 003

Experiment v2
   ├── Execution 004
   └── Execution 005
```

This prevents changes to the experiment definition from obscuring the conditions under which earlier results were generated.

~~~

## 42. Execution Records

Each execution should have its own identity.

An execution record may include:

- Execution ID
- Experiment ID
- Experiment version
- Scenario ID
- Configuration version
- Workflow version
- Backend
- Resource allocation
- Start time
- End time
- Status
- Results reference
- Evidence reference
- Error information

~~~

## 43. Experiment Comparison

Experiments may compare scenarios, configurations or computational paths.

Comparison should preserve the experimental context.

```text
Experiment
   ├── Scenario A
   ├── Scenario B
   └── Scenario C
          ↓
Controlled Comparison
```

Comparisons should not mix results generated under materially different assumptions without explicitly identifying those differences.

~~~

## 44. Experiment Repository and Notebooks

Notebooks, scripts, configuration files and supporting artifacts may be retained as experiment assets.

However:

```text
Experiment Definition
        ≠
Notebook Implementation
```

The definition establishes the experiment contract.

The notebook or script provides one implementation interface for executing it.

~~~

## 45. Reference Implementations

Technology-specific experimentation examples may be retained as Factory reference implementations.

Examples may include:

- Microsoft Fabric experiments
- QAI Lab notebooks
- Simulation examples
- AI experiments
- Quantum simulation experiments
- External backend experiments

Reference implementations demonstrate implementation patterns; they do not redefine the technology-neutral Framework.

~~~

## 46. Industry and Country Context

Experiments may be associated with:

- Industry
- Country
- Client
- Problem domain
- Product
- Deployment

These contextual references should not unnecessarily change the core experiment identity.

```text
Common Experiment Pattern
       +
Industry / Country / Client Context
       ↓
Contextual Experiment
```

~~~

## 47. Experiment-to-Product Traceability

Validated experimentation should contribute to product development traceability.

```text
Priority
   ↓
Problem
   ↓
Capability
   ↓
Experiment
   ↓
Evidence
   ↓
Product Opportunity
   ↓
Pilot
   ↓
Productization
```

This connects experimentation to the broader QAI Platform Development lifecycle.

~~~

## 48. Current Scope

The current `experimentation/` boundary provides the Factory structure for:

- Experiment definitions
- Experiment notebooks
- Scenarios
- Configurations
- Workflows
- Executions
- Results
- Candidate management
- Resource resolution
- Backend execution
- Validation
- Evidence
- Provenance
- Experiment lifecycle
- Promotion

The implementation should grow incrementally from actual engineering and product requirements.

~~~

## 49. Guiding Principles

1. Experimentation is a controlled Factory execution and evidence environment.
2. Experiment definitions should remain distinct from notebooks and implementation code.
3. Scenarios provide controlled variations of an experiment.
4. Executions should be independently identifiable and traceable.
5. Experiment configuration should be explicit and versioned.
6. Workflows should be reusable where appropriate.
7. Computational paths should remain open to Classical, AI, QAI, Quantum and Hybrid approaches.
8. Simulation and emulation should remain distinct but composable.
9. Resource requirements should remain separate from physical resource bindings.
10. Experiments should support virtual-first and progressive-fidelity execution.
11. Results should remain linked to their exact experimental conditions.
12. Evidence and provenance are first-class experiment outputs.
13. Reproducibility should be supported wherever practical.
14. Security and governance should apply before and during execution.
15. Failed executions should preserve useful diagnostic provenance where possible.
16. Validated experiments may promote capabilities into modules, packages, products or deployments.
17. Pilot evidence should remain distinguishable from post-pilot reusable assets.
18. Reference implementations should demonstrate technology without redefining the Framework.
19. Experimentation should support both exploratory research and engineering validation.
20. The Factory should preserve the chain from problem → experiment → execution → result → evidence.

~~~

## 50. Guiding Statement

**Experimentation is the General Factory environment where defined problems, models, virtual assets, workflows, resources and computational strategies are executed under controlled scenarios to generate reproducible results and evidence.**

**Experiment first, preserve the execution context, validate the evidence, and promote only what has demonstrated reusable value.**

---
