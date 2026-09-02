# Quantum Advantage Gate

The Quantum Advantage Gate determines whether a problem should use:

- QAI / quantum execution
- Hybrid execution
- Classical execution
- HPC fallback

Conceptual flow:

Problem
  -> Representation
  -> Resource Estimation
  -> Advantage Assessment
  -> Quantum / Hybrid Execution
  -> Classical / HPC Fallback when appropriate
  -> Results
  -> Value Realization

Quantum execution must not be assumed merely because a QPU is available.
---
# QAI Quantum Advantage Gate ( New added)

The **Quantum Advantage Gate (QAG)** is the decision boundary within the QAI Digital Farm architecture that determines whether a workload should be executed using:

- Classical execution
- Classical HPC execution
- Hybrid classical–quantum execution
- Quantum execution

The gate prevents quantum hardware availability from becoming the reason for using quantum computation.

Its purpose is to determine whether a workload has a sufficiently justified combination of:

- problem characteristics
- representation suitability
- computational requirements
- resource availability
- expected performance
- cost
- latency
- confidence
- risk
- measurable value

to justify routing part or all of the workload toward quantum or hybrid execution.

The fundamental principle is:

> **Quantum execution is a decision, not an assumption.**

The gate therefore provides an architectural separation between **workload analysis and execution technology**.

---

## 1. Purpose and Architectural Position

### 1.1 Purpose

The Quantum Advantage Gate evaluates a computational or optimisation problem before selecting an execution path.

Conceptually:

~~~text
Problem
   |
   v
Representation
   |
   v
Resource Estimation
   |
   v
Advantage Assessment
   |
   +-------------------------------+
   |                               |
   v                               v
Quantum / Hybrid              Classical / HPC
Execution                     Execution
   |                               |
   +---------------+---------------+
                   |
                   v
                Results
                   |
                   v
             Value Realization
~~~

The gate is therefore positioned between **problem/resource characterization** and **execution selection**.

It does not replace:

- QAI Runtime
- QAI Pipeline
- QAI Control Plane
- QPU control
- classical compute orchestration
- simulation
- optimisation algorithms
- Digital Twin services
- management
- service management

Instead, it determines which execution path is justified for a particular workload.

---

### 1.2 Position within the Digital Farm Architecture

The Quantum Advantage Gate sits inside the broader QAI intelligence and execution architecture.

~~~text
Digital Farm / Digital Twin
          |
          v
   Problem / Scenario
          |
          v
   QAI Problem Ingestion
          |
          v
      Representation
          |
          v
   Resource Estimation
          |
          v
  +----------------------+
  | Quantum Advantage    |
  |       Gate           |
  +----------------------+
          |
     +----+----+----------------+
     |         |                |
     v         v                v
 Classical   Hybrid           Quantum
     |         |                |
     +---------+----------------+
               |
               v
       Execution / Runtime
               |
               v
        Results / Evidence
               |
               v
       Value / Risk Assessment
               |
               v
          Decision Layer
~~~

The gate therefore connects the **problem domain** to the **execution domain** without making either domain dependent on a particular hardware platform.

---

### 1.3 Relationship to QAI

QAI is broader than quantum computing.

The QAI Digital Farm architecture includes:

- AI/ML
- classical analytics
- graph reasoning
- simulation
- classical optimisation
- hybrid quantum-classical computation
- quantum computation
- decision support
- feedback and learning

The Quantum Advantage Gate determines where quantum or hybrid computation is technically and economically appropriate within that broader QAI stack.

Therefore:

~~~text
QAI
 |
 +-- Classical AI / ML
 |
 +-- Classical Analytics
 |
 +-- Graph Intelligence
 |
 +-- Classical Optimisation
 |
 +-- Simulation
 |
 +-- Hybrid Quantum-Classical
 |
 +-- Quantum Execution
 |
 +-- Decision / Feedback
~~~

The existence of a QPU does not imply that every QAI workload should use it.

---

### 1.4 Relationship to Digital Twin

The Digital Farm Twin provides contextual state and relationships.

The Quantum Advantage Gate does not maintain the farm twin.

For example:

~~~text
Digital Farm Twin
   |
   +-- Farm state
   +-- Crop state
   +-- Water state
   +-- Asset state
   +-- Inventory state
   +-- Workforce state
   +-- Market context
   +-- Relationships
   +-- Constraints
   |
   v
Problem Definition
   |
   v
Quantum Advantage Gate
   |
   v
Execution Selection
~~~

The Digital Twin answers:

> **What is the current contextual state of the farm?**

The QAI intelligence layer asks:

> **What should we predict, analyse, simulate or optimise?**

The Quantum Advantage Gate asks:

> **Which execution approach is justified for this workload?**

This distinction prevents the Digital Twin, QAI intelligence and execution infrastructure from becoming architecturally conflated.

---

## 2. Gate Inputs and Decision Factors

The Quantum Advantage Gate evaluates a workload using multiple dimensions rather than a single "quantum suitability" score.

### 2.1 Problem Definition

The workload should first be expressed in a technology-neutral problem representation.

Examples include:

- optimisation
- scheduling
- allocation
- routing
- classification
- prediction
- sampling
- simulation
- constraint solving
- resource planning
- portfolio-style allocation
- multi-objective optimisation

For Digital Farm workloads, examples include:

~~~text
Water allocation
Crop planning
Irrigation scheduling
Machinery scheduling
Workforce allocation
Harvest scheduling
Inventory optimisation
Logistics routing
Resource allocation
Multi-objective farm optimisation
~~~

The problem should be defined independently of the eventual execution technology.

---

### 2.2 Representation

The gate evaluates whether the problem can be represented in a form suitable for the candidate execution paths.

Representation may include:

- vectors
- matrices
- graphs
- tensors
- higher-order representations
- constrained optimisation models
- probabilistic representations
- decomposed sub-problems
- reduced-dimensional representations

QAI preprocessing may be used before the gate to reduce unnecessary computational burden.

For example:

~~~text
Raw Farm Data
     |
     v
Preprocessing
     |
     v
Feature Selection / Reduction
     |
     v
Problem Representation
     |
     v
Quantum Advantage Gate
~~~

The objective is not to force the original problem into a quantum representation.

The objective is to identify the representation that provides the best overall execution strategy.

---

### 2.3 Resource Estimation

The gate evaluates the resources required by candidate execution paths.

Relevant resources may include:

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
- edge resources
- execution time
- queue time
- energy
- cost
- quantum shots
- circuit depth
- qubit requirements
- fidelity
- error characteristics
- classical preprocessing/postprocessing requirements

Conceptually:

~~~text
                    Workload
                       |
          +------------+------------+
          |            |            |
          v            v            v
       Classical     Hybrid       Quantum
       Resources     Resources    Resources
          |            |            |
          +------------+------------+
                       |
                       v
              Resource Comparison
~~~

Resource estimation should consider the complete workflow, not only the QPU portion.

For a hybrid workload:

~~~text
Preprocessing
     +
Classical Optimisation
     +
Quantum Execution
     +
Measurement
     +
Postprocessing
     +
Iteration
~~~

should be considered as one execution path.

---

## 3. Advantage Assessment Flow

The Quantum Advantage Gate evaluates whether a quantum or hybrid route is justified relative to credible alternatives.

### 3.1 Core Gate Flow

~~~text
+----------------------+
| Problem Ingestion    |
+----------+-----------+
           |
           v
+----------------------+
| Problem              |
| Characterisation     |
+----------+-----------+
           |
           v
+----------------------+
| Representation       |
| Selection            |
+----------+-----------+
           |
           v
+----------------------+
| Resource Estimation  |
+----------+-----------+
           |
           v
+----------------------+
| Classical Baseline   |
+----------+-----------+
           |
           v
+----------------------+
| Quantum / Hybrid     |
| Candidate Assessment |
+----------+-----------+
           |
           v
+----------------------+
| Advantage Assessment  |
+----------+-----------+
           |
           +-------------------+
           |                   |
           v                   v
       Advantage            No Sufficient
       Supported            Advantage Evidence
           |                   |
           v                   v
    Quantum / Hybrid      Classical / HPC
       Execution              Execution
~~~

The gate should establish a credible classical baseline before making a quantum-advantage claim.

---

### 3.2 Advantage Dimensions

Advantage should be evaluated across multiple dimensions.

#### Computational Advantage

Can the candidate quantum or hybrid approach provide a meaningful computational improvement?

Possible measures include:

- runtime
- scalability
- convergence
- solution quality
- complexity
- throughput

---

#### Resource Advantage

Can the candidate approach achieve the required result with a favourable resource profile?

Consider:

- compute consumption
- memory
- QPU time
- classical compute
- shots
- network transfer
- energy
- infrastructure requirements

---

#### Economic Advantage

Does the candidate execution path provide measurable economic value?

Consider:

- execution cost
- infrastructure cost
- operational cost
- expected value
- avoided cost
- productivity improvement
- resource savings

Technical improvement without meaningful value does not automatically constitute useful advantage.

---

#### Quality Advantage

Does the candidate produce a sufficiently better result?

Examples:

- better optimisation objective
- improved prediction quality
- reduced error
- better allocation
- improved scheduling
- improved resource utilisation

Quality must be evaluated against the requirements of the actual use case.

---

#### Latency Advantage

For operational workloads, the execution time must be appropriate to the decision window.

A theoretically superior solution may not be useful if it arrives after the operational decision is required.

---

#### Confidence and Risk

The gate should consider:

- confidence
- uncertainty
- reproducibility
- noise
- error
- model validity
- operational risk
- data quality

A candidate execution path should not be selected solely because it produces a numerically attractive result.

---

### 3.3 Gate Decision Principle

The fundamental decision is:

~~~text
Does the quantum or hybrid path provide
sufficient demonstrated benefit relative to
credible classical alternatives, within the
required resource, risk, quality, latency and
economic constraints?
~~~

If **yes**, the workload may be routed to quantum or hybrid execution.

If **no**, the workload should remain on the most appropriate classical or HPC path.

If evidence is insufficient, the workload should remain in an **evaluation/research state** rather than being presented as having achieved quantum advantage.

---

### 3.4 No-Advantage Path

A negative gate result is a valid architectural outcome.

~~~text
Advantage Assessment
       |
       v
No sufficient advantage
       |
       +--> Classical execution
       |
       +--> HPC execution
       |
       +--> Further decomposition
       |
       +--> Further QAI preprocessing
       |
       +--> Research / evaluation
~~~

The gate therefore prevents unnecessary quantum execution while preserving the ability to reassess the workload later.

---

### 3.5 Adaptive Reassessment

The decision is not necessarily permanent.

A workload may become a better quantum candidate as:

- problem size increases
- algorithms improve
- representations improve
- QPU capabilities improve
- error rates decrease
- hybrid methods improve
- classical baselines change
- execution costs change
- business requirements change

Therefore:

~~~text
Workload
   |
   v
Advantage Gate
   |
   +--> Classical / HPC
   |
   +--> Hybrid
   |
   +--> Quantum
   |
   v
Evidence + Performance + Value
   |
   v
Reassessment
   |
   +------> Advantage Gate
~~~

The gate is consequently an **adaptive architectural control point**, not a one-time declaration.
---
## 4. Gate Decision Model

The Quantum Advantage Gate should evaluate candidate execution paths using a structured decision model.

The objective is not to produce a universal numerical score for every workload.

Instead, the gate establishes whether sufficient evidence exists to justify a particular execution route.

### 4.1 Candidate Execution Paths

Every workload should have one or more candidate execution paths.

~~~text
                    WORKLOAD
                       |
        +--------------+--------------+
        |              |              |
        v              v              v
    Classical        Hybrid         Quantum
        |              |              |
        +--------------+--------------+
                       |
                       v
                 HPC Candidate
                       |
                       v
               Comparative Review
~~~

The candidate paths may include:

1. Classical
2. Classical HPC
3. Hybrid classical–quantum
4. Quantum

The actual candidates depend on the workload.

Not every workload needs to be evaluated against every possible technology.

---

### 4.2 Decision Dimensions

The gate should consider at least the following dimensions:

| Dimension | Primary Question |
|---|---|
| Problem suitability | Is the problem structurally suitable for the candidate method? |
| Representation | Can the problem be represented effectively? |
| Problem scale | Is the problem large/complex enough to justify the candidate approach? |
| Solution quality | Can the candidate produce an acceptable or improved solution? |
| Runtime | Is the execution time appropriate? |
| Resource requirement | What classical and quantum resources are required? |
| Cost | What is the total execution cost? |
| Energy | What is the relevant energy/resource burden? |
| Latency | Can the result arrive within the operational decision window? |
| Noise/error | Are error characteristics acceptable? |
| Confidence | Is the result sufficiently reliable? |
| Reproducibility | Can the result be reproduced consistently? |
| Data quality | Is the input data sufficiently trustworthy? |
| Risk | What technical, operational or business risks exist? |
| Expected value | Does the result create measurable value? |

These dimensions should be evaluated together.

A single attractive metric should not override significant weaknesses in other dimensions.

---

## 5. Execution Routing

The Quantum Advantage Gate produces an execution recommendation.

The recommendation is then handed to the appropriate execution infrastructure.

### 5.1 High-Level Routing

~~~text
                    Problem
                       |
                       v
             Problem Characterisation
                       |
                       v
                 Representation
                       |
                       v
              Resource Estimation
                       |
                       v
              Classical Baseline
                       |
                       v
             Candidate Assessment
                       |
                       v
          +-------------------------+
          | Quantum Advantage Gate  |
          +-------------------------+
                       |
          +------------+-------------+
          |            |             |
          v            v             v
      Classical      Hybrid       Quantum
          |            |             |
          +------------+-------------+
                       |
                       v
                Execution Layer
                       |
                       v
                    Results
~~~

The gate does not execute the workload itself.

It determines the preferred execution route.

---

### 5.2 Classical Execution

Classical execution should be selected when it provides the required combination of:

- solution quality
- performance
- cost
- latency
- reliability
- resource efficiency

without sufficient evidence that quantum or hybrid execution provides additional value.

~~~text
Problem
   |
   v
QAI Advantage Gate
   |
   v
Classical Route
   |
   +--> CPU
   +--> GPU
   +--> NPU
   +--> TPU
   +--> FPGA
   |
   v
Results
~~~

Classical execution is therefore a valid QAI outcome, not a fallback caused by failure.

---

### 5.3 HPC Execution

HPC should be considered when:

- the problem is computationally intensive
- the problem scales beyond normal compute resources
- large simulation workloads are required
- high-performance classical optimisation is appropriate
- a strong classical baseline is required for comparison

~~~text
Problem
   |
   v
Advantage Gate
   |
   v
HPC Route
   |
   +--> Parallel Compute
   +--> Large-Scale Simulation
   +--> Classical Optimisation
   +--> High-Performance Analytics
   |
   v
Results
~~~

HPC is particularly important for establishing credible baselines against which hybrid or quantum approaches can be evaluated.

---

### 5.4 Hybrid Execution

Hybrid execution combines classical and quantum resources.

~~~text
             Problem
                |
                v
          Classical Layer
                |
       +--------+--------+
       |                 |
       v                 v
   Preprocess       Classical Optimisation
       |                 |
       +--------+--------+
                |
                v
          Quantum Subproblem
                |
                v
               QPU
                |
                v
        Measurement Results
                |
                v
        Classical Processing
                |
                v
             Result
~~~

Hybrid execution may be appropriate where:

- only part of the problem is suitable for quantum processing
- classical preprocessing significantly reduces problem size
- quantum processing can address a computationally difficult subproblem
- iterative classical/quantum optimisation is justified
- measured benefit exists relative to a credible classical baseline

The hybrid route is especially important for QAI because it avoids treating the quantum processor as a replacement for the complete computational stack.

---

### 5.5 Quantum Execution

Quantum execution should be selected only when the gate determines that the workload has sufficient technical justification and supporting evidence.

~~~text
Problem
   |
   v
Representation
   |
   v
Resource Estimation
   |
   v
Advantage Assessment
   |
   v
Quantum Candidate
   |
   v
QPU / Quantum Execution
   |
   v
Measurement
   |
   v
Classical Postprocessing
   |
   v
Evidence / Value Assessment
~~~

Quantum execution may be used for:

- validated quantum algorithms
- quantum optimisation experiments
- quantum simulation
- quantum sampling
- selected QML workloads
- research workloads
- hybrid quantum-classical workflows

The gate must distinguish between:

**quantum execution**

and

**demonstrated quantum advantage**.

Running a workload on a QPU does not by itself establish quantum advantage.

---

## 6. Farm-Specific Advantage Gate Use Cases

The Digital Farm provides multiple candidate workloads for evaluation.

The gate should remain workload-specific rather than declaring the entire farm "quantum enabled."

### 6.1 Irrigation Optimisation

Potential inputs:

- soil moisture
- crop state
- weather
- water availability
- irrigation capacity
- field constraints
- energy cost
- crop requirements

Conceptual problem:

~~~text
Soil + Crop + Weather + Water
             |
             v
      Irrigation Model
             |
             v
       Optimisation
             |
             v
     Candidate Schedules
             |
             v
      Advantage Gate
~~~

Possible execution paths:

- classical optimisation
- HPC optimisation
- hybrid quantum-classical optimisation
- quantum optimisation experiment

The gate determines whether the additional quantum path provides measurable benefit.

---

### 6.2 Crop Planning

Potential inputs:

- soil conditions
- crop rotation
- historical yield
- weather
- water availability
- market demand
- labour availability
- expected value

Possible optimisation objectives:

- yield
- resource efficiency
- risk
- sustainability
- economic value

The gate evaluates whether the complexity and structure of the planning problem justify hybrid or quantum investigation.

---

### 6.3 Workforce Allocation

Potential inputs:

- available workers
- skills
- task requirements
- seasonal demand
- working hours
- labour cost
- safety constraints
- productivity requirements

Conceptual problem:

~~~text
Workers + Skills + Tasks + Time
               |
               v
        Allocation Model
               |
               v
          Optimisation
               |
               v
        Advantage Gate
~~~

Because workforce decisions can affect people directly, the gate does not override human governance or employment decision controls.

A technically efficient optimisation result does not automatically constitute an authorised workforce decision.

---

### 6.4 Machinery Scheduling

Potential inputs:

- machinery availability
- operating hours
- maintenance state
- fuel/energy
- field requirements
- task priority
- weather windows
- operator availability

Candidate objective:

~~~text
Maximise:
    Utilisation
    + Productivity
    + Timeliness

Subject to:
    Maintenance
    Safety
    Availability
    Weather
    Workforce
    Energy
    Budget
~~~

The gate evaluates whether the optimisation complexity justifies a quantum or hybrid approach.

---

### 6.5 Inventory Optimisation

Potential inputs:

- seed inventory
- fertiliser
- feed
- spare parts
- harvested products
- storage capacity
- expected demand
- spoilage risk
- procurement lead time

The candidate problem may involve:

- allocation
- replenishment
- scheduling
- demand matching
- storage optimisation

Again, classical and HPC baselines should remain first-class candidates.

---

### 6.6 Logistics and Routing

Potential inputs:

- harvest quantity
- storage locations
- destinations
- transport capacity
- route constraints
- delivery windows
- fuel/energy
- market timing

Potential optimisation:

~~~text
Harvest
   |
   v
Storage
   |
   v
Transport
   |
   v
Destination
   |
   v
Market
~~~

The gate may evaluate quantum or hybrid optimisation where the routing problem is sufficiently complex and measurable benefits can be demonstrated.

---

## 7. Evidence Gate

The Quantum Advantage Gate should not terminate at execution.

The result must be evaluated against evidence.

### 7.1 Evidence Loop

~~~text
Candidate
   |
   v
Baseline
   |
   v
Quantum / Hybrid Experiment
   |
   v
Measure
   |
   v
Compare
   |
   v
Evidence
   |
   v
Advantage Assessment
~~~

Evidence may include:

- runtime
- solution quality
- convergence
- resource utilisation
- cost
- energy
- latency
- repeatability
- error rate
- confidence
- scalability
- operational usefulness

---

### 7.2 Baseline Requirement

A quantum or hybrid result should normally be compared against an appropriate classical baseline.

~~~text
                 Same Problem
                      |
          +-----------+-----------+
          |                       |
          v                       v
   Classical Baseline       QAI Candidate
          |                       |
          v                       v
      Results A               Results B
          |                       |
          +-----------+-----------+
                      |
                      v
                Compare Results
                      |
                      v
              Evidence Assessment
~~~

The baseline should be sufficiently credible for the problem and decision context.

A weak baseline should not be used to manufacture an apparent quantum advantage.

---

### 7.3 Evidence Categories

Evidence can be classified as:

#### Level 0 — Conceptual

The workload appears theoretically suitable.

No execution evidence exists.

---

#### Level 1 — Experimental

A prototype or simulation has been executed.

Results are exploratory.

---

#### Level 2 — Comparative

Quantum/hybrid execution has been compared with a credible classical baseline.

---

#### Level 3 — Measured Advantage

The candidate demonstrates measurable improvement under defined conditions.

---

#### Level 4 — Operationally Relevant Advantage

The improvement remains meaningful under realistic operational constraints including:

- data
- latency
- cost
- reliability
- resource availability
- workflow integration
- governance

The evidence level should be recorded with the workload.

---

## 8. Value Gate

Technical advantage is not sufficient by itself.

The QAI Digital Farm architecture ultimately evaluates measurable value.

### 8.1 Technical-to-Value Flow

~~~text
Technical Result
      |
      v
Performance Evidence
      |
      v
Operational Impact
      |
      v
Economic / Sustainability Impact
      |
      v
Value Assessment
~~~

Potential value measures include:

- water savings
- energy savings
- labour productivity
- machinery utilisation
- reduced waste
- improved yield
- improved quality
- reduced risk
- improved resilience
- reduced operational cost
- improved market timing
- increased economic value

---

### 8.2 Value Realization Principle

The gate should distinguish:

~~~text
Quantum Improvement
        ≠
Operational Improvement
        ≠
Economic Value
~~~

A workload may demonstrate a computational improvement without producing meaningful farm value.

Conversely, a classical solution may create greater practical value than a theoretically superior quantum solution.

The preferred execution route is therefore the route that provides the best **validated value within the applicable constraints**.

---

## 9. Confidence and Tolerance

Advantage decisions should operate within the broader QAI True Economy tolerance model.

The gate should consider whether the candidate remains within acceptable operating bands for:

- cost
- latency
- quality
- resource consumption
- confidence
- risk
- expected value

Conceptually:

~~~text
                 VALUE
                   ^
                   |
        +----------------------+
        | OPTIMAL / ACCEPTABLE |
        |  Validated operation |
        +----------------------+
        |       WARNING        |
        | Monitor / reassess   |
        +----------------------+
        |       CRITICAL       |
        | Stop / restructure   |
        +----------------------+
                   |
                   +------------------> RISK
~~~

A technically interesting quantum result outside the acceptable operational tolerance band should not automatically be promoted into production.

---

## 10. Decision Outcomes

The Quantum Advantage Gate should produce an explicit decision outcome.

### Outcome A — Classical

~~~text
Use Classical
Reason:
Required performance/value achieved
without sufficient quantum benefit.
~~~

### Outcome B — HPC

~~~text
Use HPC
Reason:
Workload requires large-scale classical
compute and no sufficient quantum benefit
has been demonstrated.
~~~

### Outcome C — Hybrid

~~~text
Use Hybrid
Reason:
A quantum subproblem or quantum component
provides sufficient demonstrated benefit
within the complete workflow.
~~~

### Outcome D — Quantum

~~~text
Use Quantum
Reason:
The workload satisfies the applicable
technical, resource, evidence and value
requirements for quantum execution.
~~~

### Outcome E — Research / Reassess

~~~text
Research / Reassess
Reason:
Potential exists, but evidence is currently
insufficient for operational routing.
~~~

This fifth outcome is important because uncertainty should not be forced into either "quantum" or "classical."

---

## 11. Advantage Gate and Continuous Reassessment

The execution decision should remain subject to reassessment.

The underlying conditions may change:

- QPU capability
- algorithm maturity
- error characteristics
- hardware availability
- execution cost
- problem size
- classical baseline performance
- data quality
- business requirements
- operational constraints

Therefore:

~~~text
                     Workload
                        |
                        v
                 Advantage Gate
                        |
          +-------------+-------------+
          |             |             |
       Classical      Hybrid       Quantum
          |             |             |
          +-------------+-------------+
                        |
                        v
                 Execute / Measure
                        |
                        v
                  Evidence / Value
                        |
                        v
                   Reassess
                        |
                        +---------> Advantage Gate
~~~

The architecture therefore supports **adaptive execution selection** rather than permanent attachment of a workload to a particular technology.

---

## 12. Architectural Boundary

The Quantum Advantage Gate is responsible for:

- problem suitability assessment
- candidate execution comparison
- resource-aware evaluation
- classical baseline consideration
- quantum/hybrid suitability
- evidence assessment
- value-oriented routing
- reassessment criteria

The Quantum Advantage Gate is **not** responsible for:

- operating QPUs
- controlling quantum hardware
- scheduling all infrastructure
- managing users
- managing service incidents
- maintaining Digital Twin state
- performing farm operations
- authorising physical actions
- replacing human governance
- replacing QAI Runtime

The separation is:

~~~text
Problem
   |
   v
Quantum Advantage Gate
   |
   |  "Which execution path is justified?"
   |
   v
QAI Runtime / Execution Infrastructure
   |
   |  "Execute the selected workload."
   |
   v
Results
   |
   v
QAI Intelligence / Management / Human
   |
   v
Decision and Action
~~~

This boundary keeps the Quantum Advantage Gate reusable across Agriculture and other HoldCo industry verticals.

---

## 13. Design Principle

The central design principle is:

> **Do not use quantum because quantum is available. Use quantum when evidence shows that it is the appropriate execution technology for the problem, within the required resource, risk, performance and value constraints.**

The gate therefore supports a broader QAI principle:

> **Intelligence selects the method; the method does not define the intelligence.**
---

## 14. Quantum Advantage Gate Operational Architecture

The Quantum Advantage Gate operates as a reusable decision service within the QAI architecture.

It receives a technology-neutral workload description, evaluates candidate execution strategies, records the assessment and routes the workload to the selected execution path.

~~~text
+-----------------------------+
| Digital Farm / QAI Workload |
+-------------+---------------+
              |
              v
+-----------------------------+
| Problem Ingestion           |
| - Problem definition        |
| - Objectives                |
| - Constraints               |
| - Data requirements         |
+-------------+---------------+
              |
              v
+-----------------------------+
| Representation             |
| - Reduction                |
| - Decomposition            |
| - Encoding                 |
| - Candidate formulations   |
+-------------+---------------+
              |
              v
+-----------------------------+
| Resource Estimation         |
| - Classical resources       |
| - HPC resources             |
| - Quantum resources         |
| - Cost / latency / energy   |
+-------------+---------------+
              |
              v
+-----------------------------+
| Classical Baseline          |
+-------------+---------------+
              |
              v
+-----------------------------+
| Quantum Advantage Gate      |
| - Suitability               |
| - Evidence                  |
| - Risk                      |
| - Value                     |
+-------------+---------------+
              |
       +------+------+------+
       |             |      |
       v             v      v
   Classical       Hybrid  Quantum
       |             |      |
       +-------------+------+
                     |
                     v
              Execution Layer
                     |
                     v
              Results / Evidence
                     |
                     v
              Value Assessment
                     |
                     v
                 Reassess
~~~

---

## 15. Gate Request Model

A Quantum Advantage Gate request should contain enough information to evaluate the workload without binding the request to a specific vendor or hardware platform.

### 15.1 Conceptual Request

~~~text
Gate Request
 |
 +-- Workload Identity
 |
 +-- Problem Definition
 |
 +-- Objective Function
 |
 +-- Constraints
 |
 +-- Input Data Characteristics
 |
 +-- Problem Size
 |
 +-- Representation
 |
 +-- Required Output
 |
 +-- Quality Requirement
 |
 +-- Latency Requirement
 |
 +-- Resource Constraints
 |
 +-- Cost Constraints
 |
 +-- Risk Classification
 |
 +-- Value Target
 |
 +-- Existing Baseline
~~~

The request should identify the problem and its requirements rather than simply specifying:

> "Run this on a QPU."

The execution technology is an output of the assessment, not the defining input.

---

## 16. Problem Characterisation

Before assessing quantum suitability, the workload should be characterised.

Relevant characteristics include:

- problem class
- number of variables
- number of constraints
- objective structure
- sparsity
- graph structure
- dimensionality
- decomposition opportunities
- stochasticity
- temporal requirements
- optimisation complexity
- data volume
- expected scaling behaviour

Example:

~~~text
Irrigation Scheduling

Variables:
    Field × Time × Water Allocation

Constraints:
    Water availability
    Soil moisture
    Crop requirements
    Pump capacity
    Energy availability
    Weather
    Operational windows

Objective:
    Maximise crop benefit
    while minimising water / energy / cost
~~~

This representation gives the gate a problem-level basis for evaluating candidate execution strategies.

---

## 17. Representation Assessment

Representation is a critical part of the gate because an execution technology may become attractive only after the problem has been transformed appropriately.

Possible transformations include:

~~~text
Raw Problem
    |
    +--> Feature Selection
    |
    +--> Dimensionality Reduction
    |
    +--> Decomposition
    |
    +--> Constraint Reduction
    |
    +--> Graph Construction
    |
    +--> Tensor / Higher-Order Representation
    |
    +--> Mathematical Reformulation
    |
    v
Candidate Representations
~~~

The gate may therefore evaluate multiple representations.

~~~text
                 Problem
                    |
          +---------+---------+
          |         |         |
          v         v         v
       Form A    Form B    Form C
          |         |         |
          v         v         v
      Classical  Hybrid    Quantum
      Candidate  Candidate Candidate
~~~

A poor representation should not be interpreted as evidence that the underlying problem is unsuitable for QAI.

Likewise, a favourable representation should not by itself be interpreted as evidence of quantum advantage.

---

## 18. Resource Estimation Architecture

The gate should evaluate the complete resource envelope.

### 18.1 Classical Resources

Potential resources:

- CPU
- GPU
- NPU
- TPU
- FPGA
- memory
- storage
- network
- HPC

### 18.2 Quantum Resources

Potential resources:

- logical qubits
- physical qubits
- virtual qubits
- circuit depth
- gate count
- shots
- measurement overhead
- error characteristics
- calibration requirements
- queue time
- QPU execution time

### 18.3 Operational Resources

Potential resources:

- energy
- budget
- operator time
- orchestration overhead
- data movement
- cooling/infrastructure dependencies
- execution windows

The complete comparison is therefore:

~~~text
                 Workload
                    |
        +-----------+-----------+
        |                       |
        v                       v
 Classical Workflow       Quantum / Hybrid Workflow
        |                       |
        +-- Compute             +-- Classical preprocessing
        +-- Memory              +-- Representation
        +-- Storage             +-- QPU
        +-- Network             +-- Shots
        +-- Energy              +-- Measurement
        +-- Cost                +-- Postprocessing
        |                       +-- Iterations
        |                       +-- Network
        |                       +-- Cost
        |                       +-- Energy
        +-----------+-----------+
                    |
                    v
            Total Resource Model
~~~

The gate should evaluate the complete workflow rather than comparing QPU runtime with CPU runtime in isolation.

---

## 19. Classical Baseline Architecture

A credible baseline is a fundamental component of the Quantum Advantage Gate.

The baseline may use:

- deterministic algorithms
- heuristic optimisation
- mathematical programming
- machine learning
- graph algorithms
- classical simulation
- HPC
- existing operational methods

The appropriate baseline depends on the workload.

~~~text
                    Problem
                       |
             +---------+---------+
             |                   |
             v                   v
      Classical Baseline     QAI Candidate
             |                   |
             v                   v
         Baseline B          Candidate Q
             |                   |
             +---------+---------+
                       |
                       v
                 Comparative
                   Analysis
~~~

The baseline should be:

- relevant
- reproducible
- sufficiently strong
- documented
- evaluated under comparable conditions

The gate should avoid creating artificial advantage through an unnecessarily weak baseline.

---

## 20. Comparative Evaluation

The candidate execution path should be compared using a defined evaluation context.

### 20.1 Comparative Dimensions

~~~text
                 Comparison
                     |
       +-------------+-------------+
       |             |             |
       v             v             v
   Performance      Quality       Resources
       |             |             |
       +-------------+-------------+
                     |
       +-------------+-------------+
       |             |             |
       v             v             v
      Cost         Latency         Risk
       |             |             |
       +-------------+-------------+
                     |
                     v
                   Value
~~~

Possible measurements include:

| Category | Example Measures |
|---|---|
| Performance | Runtime, throughput, convergence |
| Solution | Objective value, feasibility, quality |
| Resource | CPU/GPU/QPU time, memory, shots |
| Cost | Execution and infrastructure cost |
| Latency | End-to-end decision time |
| Reliability | Failure rate, variance, repeatability |
| Quality | Error, accuracy, constraint satisfaction |
| Risk | Operational and technical risk |
| Value | Savings, productivity, yield, resilience |

Not every metric applies to every workload.

The assessment should use the measures relevant to the actual decision.

---

## 21. Evidence Record

Every completed gate assessment should produce an evidence record.

### 21.1 Conceptual Evidence Record

~~~text
Advantage Assessment Record
 |
 +-- Workload ID
 +-- Problem Definition
 +-- Representation
 +-- Dataset / Data Version
 +-- Baseline Definition
 +-- Candidate Algorithm
 +-- Execution Environment
 +-- Resource Estimate
 +-- Actual Resource Usage
 +-- Performance Results
 +-- Quality Results
 +-- Cost
 +-- Latency
 +-- Confidence / Uncertainty
 +-- Risk Assessment
 +-- Value Assessment
 +-- Decision
 +-- Evidence Level
 +-- Assumptions
 +-- Limitations
 +-- Approval / Review
 +-- Timestamp / Version
~~~

This record provides provenance for the gate decision.

It should allow another authorised reviewer to understand:

- what was evaluated
- under which conditions
- against which baseline
- using which representation
- with which resources
- what the result was
- why the routing decision was made

---

## 22. Reproducibility

Quantum and hybrid experiments should be reproducible to the extent practical.

The experiment record should capture:

- workload version
- input data version
- model version
- algorithm version
- configuration
- execution parameters
- random seeds where applicable
- number of runs
- number of shots
- hardware/execution class
- software/runtime version
- baseline configuration
- measured outputs

Conceptually:

~~~text
Configuration
     +
Data
     +
Algorithm
     +
Execution Environment
     |
     v
Experiment
     |
     v
Results
     |
     v
Evidence Record
~~~

Reproducibility is particularly important when a claimed improvement is small relative to measurement variability.

---

## 23. Uncertainty and Imperfect Data

The gate must not assume perfect information.

Digital Farm workloads may contain:

- missing telemetry
- noisy measurements
- delayed observations
- conflicting observations
- incomplete historical records
- uncertain weather
- sensor failure
- machinery failure
- uncertain demand
- uncertain market conditions

Therefore:

~~~text
Input Data
    |
    v
Data Quality Assessment
    |
    +--> Complete / Reliable
    |
    +--> Uncertain
    |
    +--> Incomplete
    |
    +--> Conflicting
    |
    v
Advantage Assessment
~~~

A workload should not be declared advantageous merely because a model performs well under unrealistic perfect-data assumptions.

Where practical, sensitivity and uncertainty analysis should be included.

---

## 24. Gate Decision States

The gate should maintain explicit decision states.

### State 1 — Not Evaluated

The workload has not yet undergone advantage assessment.

### State 2 — Candidate

The workload appears potentially suitable for quantum/hybrid evaluation.

### State 3 — Experimental

A quantum or hybrid implementation is being evaluated.

### State 4 — Comparative

The candidate has been compared against a credible baseline.

### State 5 — Evidence Supported

Measured evidence supports the selected execution path under defined conditions.

### State 6 — Operationally Approved

The execution path has passed the applicable technical, value, governance and operational checks.

### State 7 — Reassessment Required

Conditions have changed or evidence has deteriorated.

~~~text
Not Evaluated
      |
      v
 Candidate
      |
      v
 Experimental
      |
      v
 Comparative
      |
      v
 Evidence Supported
      |
      v
 Operationally Approved
      |
      v
 Reassessment Required
      |
      +-----------> Advantage Gate
~~~

Not every research workload will progress to operational approval.

---

## 25. Gate Failure and Rejection States

A gate rejection should be explicit and explainable.

Possible reasons include:

- insufficient quantum suitability
- insufficient measured benefit
- excessive resource requirement
- excessive cost
- unacceptable latency
- insufficient reliability
- inadequate data quality
- insufficient evidence
- operational risk
- governance restrictions
- no credible value case

Example:

~~~text
Quantum Candidate
      |
      v
Advantage Assessment
      |
      v
Insufficient Evidence
      |
      +--> Classical / HPC
      |
      +--> Research
      |
      +--> Improve Representation
      |
      +--> Improve Algorithm
      |
      +--> Reassess Later
~~~

A rejection is therefore an informative architectural outcome.

---

## 26. Research-to-Production Boundary

Experimental quantum workloads should remain separated from operational workloads until sufficient evidence exists.

~~~text
Research
   |
   v
Experimental
   |
   v
Comparative Evidence
   |
   v
Technical Validation
   |
   v
Value Assessment
   |
   v
Governance / Approval
   |
   v
Operational Candidate
   |
   v
Production / Post-Pilot
~~~

Research workloads must not silently become production dependencies.

This is especially important for emerging quantum technologies where:

- hardware changes rapidly
- algorithms are evolving
- resource requirements may change
- reproducibility may be limited
- operational evidence may be incomplete

---

## 27. Pilot Lifecycle Integration

The Quantum Advantage Gate participates differently across Pilot, Post-Pilot and Research profiles.

### Pilot

The objective is to establish whether a candidate workload is worth further investigation.

~~~text
Pilot
  |
  v
Problem
  |
  v
Baseline
  |
  v
QAI Candidate
  |
  v
Advantage Gate
  |
  v
Demonstration Evidence
~~~

The pilot should avoid unnecessary quantum complexity when a simpler demonstration can establish the business value.

---

### Post-Pilot

The gate becomes part of the continuous operational optimisation process.

~~~text
Post-Pilot
    |
    v
Operational Workload
    |
    v
Advantage Gate
    |
    +--> Classical
    +--> HPC
    +--> Hybrid
    +--> Quantum
    |
    v
Measure
    |
    v
Monitor
    |
    v
Reassess
~~~

The gate may therefore be invoked repeatedly as workload characteristics and execution technologies change.

---

### Research

Research uses the gate to identify and evaluate emerging opportunities.

~~~text
Research Problem
      |
      v
Representation
      |
      v
Candidate Quantum Method
      |
      v
Experiment
      |
      v
Evidence
      |
      +--> Continue Research
      |
      +--> Comparative Validation
      |
      +--> Pilot Candidate
~~~

Research evidence should not automatically imply production readiness.

---

## 28. Digital Farm Integration

The Quantum Advantage Gate can be invoked by Digital Farm services when a computational problem requires optimisation or other advanced processing.

Examples:

~~~text
QAI-CROP
   |
   +--> Crop planning optimisation
   |
   v
Advantage Gate

QAI-WATER
   |
   +--> Irrigation optimisation
   |
   v
Advantage Gate

QAI-ASSET
   |
   +--> Machinery scheduling
   |
   v
Advantage Gate

QAI-INVENTORY
   |
   +--> Inventory optimisation
   |
   v
Advantage Gate

QAI-WORKFORCE
   |
   +--> Workforce allocation
   |
   v
Advantage Gate

QAI-ECONOMY
   |
   +--> Resource/value optimisation
   |
   v
Advantage Gate
~~~

The same gate architecture can therefore serve multiple QAI domain services.

---

## 29. Relationship to QAI Resource Management

The Quantum Advantage Gate and QAI Resource Management have different responsibilities.

### Quantum Advantage Gate

Determines:

> **Which execution strategy is justified?**

### Resource Management

Determines:

> **How should available resources be allocated to execute it?**

~~~text
                 Workload
                    |
                    v
          Quantum Advantage Gate
                    |
             Selected Path
                    |
                    v
          Resource Management
                    |
       +------------+------------+
       |            |            |
       v            v            v
     CPU/GPU       HPC          QPU
                    |
                    v
                Execution
~~~

The gate should consume resource estimates and constraints, but should not become the complete infrastructure resource scheduler.

---

## 30. Relationship to QAI Runtime

The QAI Runtime is responsible for executing workloads.

The Quantum Advantage Gate determines the preferred execution route.

~~~text
+------------------------+
| Quantum Advantage Gate |
|                        |
| Select / Recommend     |
| Execution Path         |
+-----------+------------+
            |
            v
+------------------------+
| QAI Runtime            |
|                        |
| Execute / Orchestrate  |
+-----------+------------+
            |
            v
+------------------------+
| Compute Resources      |
| CPU / GPU / NPU / HPC  |
| QPU / Hybrid           |
+------------------------+
~~~

The gate therefore remains independent of the implementation details of the runtime.

---

## 31. Relationship to Management

Management governs the operational lifecycle surrounding the gate.

Management may coordinate:

- approvals
- configuration
- operational policies
- monitoring
- incidents
- changes
- releases
- lifecycle
- audit
- service status

The separation is:

~~~text
Quantum Advantage Gate
        |
        | Select execution strategy
        v
QAI Runtime
        |
        | Execute
        v
Results
        |
        v
Management / Governance
        |
        +--> Monitor
        +--> Validate
        +--> Approve
        +--> Release
        +--> Operate
~~~

Management should not be embedded inside the mathematical or algorithmic advantage assessment.

---

## 32. Governance Boundary

The Quantum Advantage Gate operates within the broader governance architecture.

Relevant controls may include:

- identity
- access control
- data sovereignty
- security
- privacy
- auditability
- responsible AI
- safety
- compliance
- financial authority
- human approval

The gate may recommend:

> Hybrid execution is technically advantageous.

It does not automatically imply:

> The system is authorised to perform the resulting physical action.

The complete chain remains:

~~~text
Technical Assessment
       |
       v
Execution
       |
       v
Result
       |
       v
Decision Support
       |
       v
Policy / Safety / Governance
       |
       v
Human / Authorised Decision
       |
       v
Action
~~~

This is particularly important for farm operations affecting:

- water allocation
- machinery
- chemicals
- workforce
- financial commitments
- physical safety
- environmental controls

---

## 33. Value and Economic Governance

The Quantum Advantage Gate should ultimately connect to the QAI True Economy model.

~~~text
Resource
   |
   v
Capability
   |
   v
Activity
   |
   v
Output
   |
   v
Outcome
   |
   v
Economic Value
~~~

A candidate quantum workload should therefore be evaluated not only by computational performance but by whether it contributes to the intended operational and economic outcome.

For example:

~~~text
Quantum Optimisation
       |
       v
Better Irrigation Schedule
       |
       v
Reduced Water Consumption
       |
       v
Maintained / Improved Crop Outcome
       |
       v
Lower Cost / Better Resilience
       |
       v
Economic Value
~~~

If the chain breaks before measurable value, quantum execution may not be justified even if the computational experiment is technically interesting.

---

## 34. Design Guardrails

The Quantum Advantage Gate shall follow these guardrails:

1. **Do not assume quantum advantage.**
2. **Maintain credible classical and HPC alternatives.**
3. **Establish an appropriate baseline before comparison.**
4. **Evaluate the complete hybrid workflow, not QPU time alone.**
5. **Separate technical improvement from operational value.**
6. **Record assumptions, data quality and uncertainty.**
7. **Keep experimental and operational workloads separated.**
8. **Do not claim production advantage from simulation-only evidence.**
9. **Do not make autonomous high-impact decisions solely from gate output.**
10. **Keep the gate independent of a specific QPU vendor.**
11. **Allow workloads to return to classical/HPC execution.**
12. **Allow previously rejected workloads to be reassessed when conditions change.**
13. **Keep resource allocation responsibility within Resource Management.**
14. **Keep execution responsibility within the QAI Runtime.**
15. **Keep operational governance within Management and Governance.**

---

## 35. Core Architectural Principle

The Quantum Advantage Gate exists to ensure that QAI remains **adaptive, evidence-driven and value-oriented**.

The fundamental architecture is:

~~~text
                    PROBLEM
                       |
                       v
                REPRESENTATION
                       |
                       v
              RESOURCE ESTIMATION
                       |
                       v
              CLASSICAL BASELINE
                       |
                       v
          +-------------------------+
          | QUANTUM ADVANTAGE GATE  |
          +-------------------------+
                       |
          +------------+------------+
          |            |            |
          v            v            v
      Classical      Hybrid       Quantum
          |            |            |
          +------------+------------+
                       |
                       v
                   EXECUTE
                       |
                       v
                MEASURE EVIDENCE
                       |
                       v
                  ASSESS VALUE
                       |
                       v
                  DECISION
                       |
                       v
                  FEEDBACK
                       |
                       v
                 REASSESS
~~~

The resulting architectural principle is:

> **QAI does not optimize for quantum usage. QAI optimizes for the best validated outcome under the applicable technical, resource, risk, operational and economic constraints.**

Quantum computation is one possible execution capability within that broader intelligence architecture.

---

## 36. Summary

The Quantum Advantage Gate provides a reusable architectural mechanism for selecting the appropriate execution strategy for QAI workloads.

It:

- characterises problems
- evaluates representations
- estimates resources
- establishes classical baselines
- evaluates quantum and hybrid candidates
- compares evidence
- evaluates operational and economic value
- routes workloads
- records decisions
- supports governance
- separates research from production
- supports continuous reassessment

The resulting architecture remains:

**Quantum-capable without being quantum-dependent.**

This allows the Digital Farm to use the most appropriate computational technology for each workload while preserving the broader QAI principles of adaptability, evidence, resilience, human oversight and measurable value.
---
## 37. Implementation Architecture

The Quantum Advantage Gate should be implemented as a modular, technology-neutral capability.

A conceptual implementation may be structured as:

~~~text
advantage_gate/
|
+-- problem_ingestion/
|     +-- problem_definition
|     +-- constraints
|     +-- objectives
|     +-- workload_metadata
|
+-- representation/
|     +-- preprocessing
|     +-- reduction
|     +-- decomposition
|     +-- encoding
|     +-- problem_formulation
|
+-- resource_estimation/
|     +-- classical
|     +-- hpc
|     +-- hybrid
|     +-- quantum
|     +-- cost
|     +-- latency
|     +-- energy
|
+-- advantage_assessment/
|     +-- suitability
|     +-- baseline_comparison
|     +-- performance
|     +-- quality
|     +-- reliability
|     +-- risk
|     +-- value
|
+-- quantum_execution/
|     +-- candidate_execution
|     +-- experiment_control
|     +-- measurement
|     +-- evidence
|
+-- classical_hpc_fallback/
|     +-- classical_execution
|     +-- hpc_execution
|     +-- alternative_methods
|
+-- evidence/
|     +-- experiment_records
|     +-- comparison_results
|     +-- provenance
|     +-- reproducibility
|
+-- interfaces/
|     +-- runtime
|     +-- resource_management
|     +-- intelligence
|     +-- simulation
|     +-- management
|
+-- tests/
      +-- decision_tests
      +-- baseline_tests
      +-- routing_tests
      +-- evidence_tests
~~~

This structure is conceptual.

The actual implementation may use a different technology or repository organization provided that the architectural responsibilities remain clear.

---

## 38. Conceptual Service Interfaces

The Quantum Advantage Gate should expose stable interfaces rather than coupling downstream services to internal implementation details.

### 38.1 Gate Evaluation

Conceptually:

~~~text
evaluate(problem, requirements, constraints)
                    |
                    v
          Advantage Assessment
                    |
                    v
             Gate Decision
~~~

The result should contain sufficient information to explain the decision.

Conceptual output:

~~~text
Gate Decision
 |
 +-- Recommended Execution Path
 |     Classical / HPC / Hybrid / Quantum
 |
 +-- Alternative Paths
 |
 +-- Confidence
 |
 +-- Evidence Level
 |
 +-- Resource Estimate
 |
 +-- Performance Expectation
 |
 +-- Risk Assessment
 |
 +-- Value Assessment
 |
 +-- Decision Rationale
 |
 +-- Reassessment Conditions
~~~

### 38.2 Resource Interface

The gate should consume resource information through a defined resource interface.

~~~text
Quantum Advantage Gate
          |
          v
Resource Information
          |
          +-- CPU
          +-- GPU
          +-- NPU
          +-- TPU
          +-- FPGA
          +-- HPC
          +-- QPU
          +-- Storage
          +-- Network
          +-- Energy
          +-- Cost
~~~

The gate should not own the complete resource inventory.

Resource Management remains responsible for resource allocation and scheduling.

### 38.3 Runtime Interface

The gate should return an execution recommendation to the QAI Runtime.

~~~text
Gate
 |
 | execution recommendation
 v
QAI Runtime
 |
 | execution
 v
Compute / QPU / HPC
 |
 v
Results
~~~

The runtime remains responsible for actual execution.

### 38.4 Evidence Interface

Execution results should return to the evidence and assessment layer.

~~~text
Execution
    |
    v
Results
    |
    v
Evidence Record
    |
    v
Advantage Assessment
    |
    v
Value Assessment
~~~

This creates a measurable feedback loop rather than a one-way routing decision.

---

## 39. Example Gate Assessment Record

A Digital Farm implementation may maintain a conceptual record similar to the following:

~~~text
------------------------------------------------------------
QAI QUANTUM ADVANTAGE GATE ASSESSMENT
------------------------------------------------------------

Workload:
    Irrigation Scheduling

Workload ID:
    DF-WATER-OPT-001

Domain:
    Digital Farm / QAI-WATER

Objective:
    Optimise irrigation allocation

Constraints:
    Water availability
    Soil moisture
    Crop requirements
    Pump capacity
    Energy
    Weather
    Operational windows

Representation:
    Constrained optimisation model

Classical Baseline:
    Documented classical optimisation method

Candidate Paths:
    Classical
    HPC
    Hybrid Quantum-Classical
    Quantum

Resource Assessment:
    Classical:     Estimated
    HPC:           Estimated
    Hybrid:        Estimated
    Quantum:       Estimated

Evidence:
    Experimental / Comparative / Operational

Performance:
    Recorded

Solution Quality:
    Recorded

Cost:
    Recorded

Latency:
    Recorded

Reliability:
    Recorded

Confidence:
    Recorded

Risk:
    Recorded

Expected Value:
    Recorded

Decision:
    Classical / HPC / Hybrid / Quantum / Research

Decision Rationale:
    Recorded

Reassessment Trigger:
    Recorded

Evidence Version:
    Recorded

Approval:
    Recorded
------------------------------------------------------------
~~~

The exact schema should be defined during implementation.

The architectural requirement is that the decision remains explainable and auditable.

---

## 40. Minimum Implementation Vertical Slice

The first implementation should remain deliberately small.

A suitable Digital Farm vertical slice could be:

~~~text
Synthetic Farm Data
        |
        v
QAI-WATER
        |
        v
Irrigation Optimisation Problem
        |
        v
Problem Representation
        |
        v
Classical Baseline
        |
        v
Quantum / Hybrid Candidate
        |
        v
Quantum Advantage Gate
        |
        +----------------+
        |                |
        v                v
   Classical          Hybrid /
   Baseline           Quantum
        |                |
        +-------+--------+
                |
                v
            Comparison
                |
                v
        Evidence + Value
                |
                v
          Gate Decision
~~~

The first implementation does not need to represent the entire agricultural ecosystem.

It should demonstrate that:

1. A real problem can be defined.
2. The problem can be represented.
3. A classical baseline can be established.
4. A QAI candidate can be evaluated.
5. Resources can be estimated.
6. Execution paths can be compared.
7. Results can be measured.
8. Evidence can be recorded.
9. Value can be assessed.
10. A routing decision can be produced.

---

## 41. Implementation Readiness Checklist

Before considering the Quantum Advantage Gate implementation ready for a pilot, verify:

### Problem

- [ ] Problem definition is explicit.
- [ ] Objectives are defined.
- [ ] Constraints are documented.
- [ ] Problem size is recorded.
- [ ] Required decision latency is known.

### Representation

- [ ] Representation is documented.
- [ ] Preprocessing assumptions are recorded.
- [ ] Reduction/decomposition is reproducible.
- [ ] Representation is independent of a specific QPU vendor.

### Baseline

- [ ] Classical baseline exists.
- [ ] Baseline is credible for the workload.
- [ ] Baseline configuration is recorded.
- [ ] Baseline results are reproducible.

### Resource Assessment

- [ ] Classical resources are estimated.
- [ ] HPC resources are considered where appropriate.
- [ ] Quantum resources are estimated where applicable.
- [ ] Hybrid overhead is considered.
- [ ] Cost is considered.
- [ ] Latency is considered.
- [ ] Energy/resource impact is considered where relevant.

### Advantage Assessment

- [ ] Quantum suitability is assessed.
- [ ] Hybrid suitability is assessed.
- [ ] Performance is measured.
- [ ] Solution quality is measured.
- [ ] Reliability is evaluated.
- [ ] Uncertainty is documented.
- [ ] Risk is evaluated.

### Evidence

- [ ] Experiment configuration is recorded.
- [ ] Input data version is recorded.
- [ ] Algorithm/model version is recorded.
- [ ] Execution environment is recorded.
- [ ] Results are recorded.
- [ ] Baseline comparison is recorded.
- [ ] Evidence level is assigned.

### Value

- [ ] Operational impact is measured.
- [ ] Economic impact is considered.
- [ ] Resource impact is considered.
- [ ] Sustainability impact is considered where relevant.
- [ ] Expected value is documented.
- [ ] MVV/value threshold is considered where applicable.

### Governance

- [ ] Data boundaries are defined.
- [ ] Synthetic and real data are distinguishable.
- [ ] Security requirements are identified.
- [ ] Auditability is supported.
- [ ] Human approval requirements are defined.
- [ ] Physical-action authorization remains outside the gate.

### Routing

- [ ] Classical routing works.
- [ ] HPC routing works where applicable.
- [ ] Hybrid routing is supported.
- [ ] Quantum routing is supported where justified.
- [ ] Research/reassessment state is supported.
- [ ] Fallback is explicit.

### Lifecycle

- [ ] Pilot usage is defined.
- [ ] Post-Pilot reassessment is defined.
- [ ] Research isolation is defined.
- [ ] Reassessment triggers are defined.
- [ ] Evidence can be updated over time.

---

## 42. Pilot-to-Post-Pilot Evolution

The Quantum Advantage Gate should evolve with the Digital Farm rather than being implemented as a one-time experiment.

### Pilot

~~~text
One Problem
    |
    v
Baseline
    |
    v
QAI Candidate
    |
    v
Advantage Gate
    |
    v
Evidence
~~~

The pilot objective is to demonstrate the mechanism and establish credible evidence.

### Post-Pilot

~~~text
Multiple Workloads
       |
       v
Continuous Assessment
       |
       v
Execution Selection
       |
       v
Measurement
       |
       v
Value Monitoring
       |
       v
Reassessment
       |
       +---------> Advantage Gate
~~~

The post-pilot environment can evaluate multiple workloads across:

- crop
- water
- assets
- inventory
- workforce
- logistics
- economy
- value chain

The gate becomes a reusable enterprise capability rather than a single quantum experiment.

---

## 43. Reuse Beyond Agriculture

The Quantum Advantage Gate is intentionally designed as a horizontal QAI capability.

The same architecture can be reused for:

- manufacturing
- logistics
- energy
- healthcare
- finance
- smart cities
- mobility
- supply chains
- space operations
- enterprise optimisation

The domain-specific problem changes.

The gate mechanism remains:

~~~text
Problem
   |
Representation
   |
Resource Estimation
   |
Classical Baseline
   |
Advantage Assessment
   |
Execution Selection
   |
Evidence
   |
Value
   |
Reassessment
~~~

Agriculture is therefore a demonstrator and validation domain rather than a hard-coded boundary.

---

## 44. Relationship to HoldCo Factory

Once sufficiently validated, the Quantum Advantage Gate can become a reusable HoldCo capability.

~~~text
                 HoldCo
                    |
             HoldCo Factory
                    |
        +-----------+-----------+
        |                       |
        v                       v
  QAI Base Platform      Enterprise Fabrics
        |
        v
Quantum Advantage Gate
        |
   +----+----+----+
   |         |    |
   v         v    v
Agriculture Manufacturing Other
~~~

The Agriculture implementation should consume the common capability rather than creating an Agriculture-specific quantum decision mechanism.

Potential reusable components include:

- problem characterisation
- representation services
- resource estimation
- baseline management
- comparative evaluation
- evidence recording
- execution routing
- value assessment
- reassessment

Domain-specific logic remains with the relevant industry capability.

---

## 45. Architecture Completion Criteria

The `advantage_gate/README.md` architecture can be considered complete when the implementation team can answer the following questions without ambiguity:

1. **What is the Quantum Advantage Gate?**
2. **Where does it sit in the QAI architecture?**
3. **What enters the gate?**
4. **What does the gate evaluate?**
5. **What constitutes evidence?**
6. **How is the classical baseline established?**
7. **How are classical, HPC, hybrid and quantum paths compared?**
8. **What causes a workload to be routed to each path?**
9. **How is value evaluated?**
10. **How are uncertainty and risk handled?**
11. **How are decisions recorded?**
12. **Who executes the selected workload?**
13. **Who manages the resources?**
14. **Who governs operational use?**
15. **How is human authority preserved?**
16. **How does the gate behave during Pilot?**
17. **How does it behave during Post-Pilot?**
18. **How are Research workloads isolated?**
19. **How can a previous decision be reassessed?**
20. **How can the capability be reused outside Agriculture?**

If these questions can be answered through the architecture and implementation contracts, the gate has achieved its intended architectural purpose.

---

## 46. Final Architecture

The complete Quantum Advantage Gate architecture can be summarized as:

~~~text
                         DIGITAL FARM / QAI
                                |
                                v
                       Problem / Scenario
                                |
                                v
                       Problem Ingestion
                                |
                                v
                         Representation
                                |
                                v
                       Resource Estimation
                                |
                                v
                       Classical Baseline
                                |
                                v
                 +---------------------------+
                 |   QUANTUM ADVANTAGE GATE  |
                 |                           |
                 | Suitability               |
                 | Resources                 |
                 | Performance               |
                 | Quality                   |
                 | Latency                   |
                 | Reliability               |
                 | Risk                      |
                 | Evidence                  |
                 | Value                     |
                 +-------------+-------------+
                               |
             +-----------------+------------------+
             |                 |                  |
             v                 v                  v
        CLASSICAL             HPC              HYBRID
             |                 |                  |
             |                 |                  v
             |                 |             Quantum
             |                 |             Subproblem
             |                 |                  |
             +-----------------+------------------+
                               |
                               v
                           EXECUTION
                               |
                               v
                         Results / Evidence
                               |
                               v
                         Value Assessment
                               |
                               v
                         Decision / Action
                               |
                               v
                           Feedback
                               |
                               v
                          Reassessment
                               |
                               +---------> GATE
~~~

The Quantum Advantage Gate therefore forms a controlled bridge between **QAI intelligence and heterogeneous execution resources**.

Its purpose is not to maximize quantum utilization.

Its purpose is to maximize **validated outcome and value** while selecting the most appropriate execution technology for each workload.

---

## 47. Final Design Principle

The Quantum Advantage Gate establishes the following architectural principle for the QAI Digital Farm and the wider QAI platform:

> **Use the most appropriate computational path for the problem, not the most advanced technology available.**

And more specifically:

> **Quantum execution should occur when evidence demonstrates that it provides sufficient technical, operational or economic benefit within the applicable resource, risk, quality, latency and governance constraints.**

Therefore:

~~~text
Quantum Availability
        ≠
Quantum Suitability
        ≠
Quantum Advantage
        ≠
Business Value
~~~

The QAI architecture connects these progressively:

~~~text
Availability
     |
     v
Suitability
     |
     v
Execution
     |
     v
Evidence
     |
     v
Advantage
     |
     v
Operational Impact
     |
     v
Economic / Sustainable Value
~~~

This keeps the QAI Digital Farm architecture:

- **technology-agnostic**
- **evidence-driven**
- **resource-aware**
- **value-oriented**
- **human-governed**
- **reversible**
- **vendor-neutral**
- **reusable across industries**

The Quantum Advantage Gate is therefore not simply a quantum decision mechanism.

It is a **QAI execution-selection and evidence boundary** that allows classical, HPC, hybrid and quantum capabilities to coexist within one adaptive architecture.
---
