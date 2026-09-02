# Lifecycle Profiles

## Pilot

Typical profile:

Provision
-> Configure
-> Deploy
-> Test
-> Observe
-> Validate
-> Iterate
-> Demonstrate
-> Assess

Pilot is normally bounded to one or two iterations.

## Post-Pilot

Typical profile:

Operate
-> Monitor
-> Detect
-> Diagnose
-> Maintain
-> Patch / Update
-> Validate
-> Release
-> Add / Extend
-> Reconfigure
-> Scale
-> Optimize
-> Govern

Post-Pilot is a continuing operational lifecycle.

## Research

Experimental capabilities are isolated and clearly identified as
research / under development until validated.
---
# Lifecycle Profiles ( New added)

The `profiles/` directory defines the lifecycle profiles through which
the QAI Digital Farm architecture can be developed, validated,
operated and evolved.

The three primary profiles are:

- Pilot
- Post-Pilot
- Research

These profiles do not represent separate architectures.

They represent different lifecycle states, operating contexts and
maturity levels of the same Digital Farm architecture.


## 1. Purpose

The purpose of lifecycle profiles is to distinguish:

- What is being validated
- What is being operated
- What is experimental
- What is production-ready
- What is under development
- What can be demonstrated publicly
- What requires continued operational management

This prevents experimental capabilities from being confused with
validated capabilities and prevents the Pilot from becoming an
uncontrolled permanent operating model.


## 2. Common Architecture

All profiles use the same underlying Digital Farm architecture.

~~~text
                    DIGITAL FARM ARCHITECTURE
                              |
             +----------------+----------------+
             |                |                |
             v                v                v
           PILOT          POST-PILOT        RESEARCH
             |                |                |
             |                |                |
             +----------------+----------------+
                              |
                              v
                    Shared Architecture
                              |
       +----------------------+----------------------+
       |                      |                      |
       v                      v                      v
 Digital Twin               CPS                    QAI
       |                      |                      |
       +----------------------+----------------------+
                              |
                              v
                       Physical Farm
~~~

The profiles therefore share:

- Architectural boundaries
- Interfaces
- Data concepts
- Digital Twin architecture
- CPS architecture
- QAI architecture
- Governance principles
- Security principles
- Resource-management principles
- Value-management principles


## 3. Lifecycle Relationship

The normal progression is:

~~~text
                    RESEARCH
                       |
                       | capability development
                       v
                    VALIDATE
                       |
                       v
                     PILOT
                       |
                       | evidence / validation
                       v
                  POST-PILOT
                       |
                       | continuous improvement
                       v
                    EVOLVE
                       |
              +--------+--------+
              |                 |
              v                 |
            RESEARCH <----------+
~~~

Not every research capability must become part of the Pilot.

Not every Pilot capability must immediately become a Post-Pilot
capability.

Promotion should depend on evidence, validation, value, safety,
governance and operational readiness.


# 4. Pilot Profile

The Pilot is a bounded implementation used to validate selected
capabilities of the Digital Farm architecture.

The Pilot is intentionally small.

Its purpose is not to implement the complete Digital Farm.


## 4.1 Pilot Objectives

A Pilot may be used to:

- Validate architectural assumptions
- Demonstrate selected capabilities
- Validate data flows
- Validate Digital Twin behavior
- Demonstrate QAI pipelines
- Test simulation
- Test human-AI interaction
- Validate selected interfaces
- Measure initial value
- Identify implementation gaps
- Generate evidence for Post-Pilot planning


## 4.2 Typical Pilot Lifecycle

The typical Pilot lifecycle is:

~~~text
Provision
    |
    v
Configure
    |
    v
Deploy
    |
    v
Test
    |
    v
Observe
    |
    v
Validate
    |
    v
Iterate
    |
    v
Demonstrate
    |
    v
Assess
~~~

Pilot execution is normally bounded to one or two iterations.


## 4.3 Pilot Scope

A Pilot should select a limited set of capabilities.

For example:

- Selected sensors
- Selected IoT data
- Selected farm assets
- Selected crops
- Selected Digital Twin entities
- Selected QAI functions
- Selected simulation scenarios
- Selected workforce workflows
- Selected value measurements


## 4.4 Pilot Data

The Pilot may use:

- Real farm data
- Synthetic data
- Dummy data
- Simulated data
- Historical data
- Controlled test data

The source and status of the data should be clearly identified.


## 4.5 Pilot Execution Modes

A Pilot may demonstrate one or more execution modes:

- Virtualization
- Emulation
- Simulation
- Physical execution

These modes should remain explicitly distinguished.


## 4.6 Pilot Intelligence

A Pilot may demonstrate the QAI intelligence pipeline:

~~~text
Sense
  |
  v
Process
  |
  v
Decide
  |
  v
Act
  |
  v
Learn
~~~

However, the Pilot does not need to implement a fully autonomous
closed-loop system.

Human-in-the-loop operation is preferred where automation confidence
is not yet established.


## 4.7 Pilot Validation

Pilot validation should consider:

- Functional correctness
- Data quality
- Model behavior
- Digital Twin synchronization
- Simulation behavior
- QAI results
- Performance
- Reliability
- Safety
- Human usability
- Economic value
- Governance requirements


## 4.8 Pilot Outputs

A successful Pilot should produce evidence such as:

- Validated capabilities
- Architecture observations
- Test results
- Data-flow evidence
- Model results
- Simulation results
- QAI results
- Human feedback
- Value measurements
- Identified limitations
- Post-Pilot recommendations


## 4.9 Pilot Boundary

The Pilot should have an explicit boundary.

~~~text
                 DIGITAL FARM
                       |
                 Pilot Scope
                       |
          +------------+------------+
          |            |            |
          v            v            v
       Selected     Selected     Selected
       Sensors      Models       Services
          |            |            |
          +------------+------------+
                       |
                       v
                   Validation
~~~

Capabilities outside the Pilot boundary should not automatically be
treated as validated.


# 5. Post-Pilot Profile

Post-Pilot represents the continuing operational lifecycle after the
core Pilot capabilities have been validated.

It is not simply a larger Pilot.

It is an operational lifecycle.


## 5.1 Post-Pilot Objectives

Post-Pilot supports:

- Continuous operation
- Monitoring
- Maintenance
- Reliability
- Expansion
- Scaling
- Optimization
- Governance
- Service management
- Lifecycle management
- Value realization


## 5.2 Typical Post-Pilot Lifecycle

The typical lifecycle is:

~~~text
Operate
   |
   v
Monitor
   |
   v
Detect
   |
   v
Diagnose
   |
   v
Maintain
   |
   v
Patch / Update
   |
   v
Validate
   |
   v
Release
   |
   v
Add / Extend
   |
   v
Reconfigure
   |
   v
Scale
   |
   v
Optimize
   |
   v
Govern
   |
   +---------------------> Operate
~~~

Post-Pilot is therefore continuous.


## 5.3 Post-Pilot Capabilities

Post-Pilot may progressively add:

- Advanced sensing
- Advanced Digital Twin capabilities
- Advanced simulation
- Climate intelligence
- Water intelligence
- Greenhouse intelligence
- Robotics
- Workforce intelligence
- Economic intelligence
- Advanced QAI
- Enterprise integration
- Value-chain integration
- Advanced communication
- Additional automation


## 5.4 Operations

Post-Pilot introduces operational responsibilities such as:

- Service operations
- Monitoring
- Alerting
- Incident handling
- Performance management
- Capacity management
- Availability management
- Configuration management
- Maintenance


## 5.5 Maintenance

Maintenance may include:

- Sensor maintenance
- CPS maintenance
- Edge infrastructure maintenance
- Network maintenance
- Software maintenance
- Model maintenance
- Digital Twin maintenance
- Data pipeline maintenance
- Security maintenance


## 5.6 Change and Release Management

Post-Pilot must support controlled change.

Typical flow:

~~~text
Change Request
      |
      v
Impact Assessment
      |
      v
Design / Configure
      |
      v
Test
      |
      v
Validate
      |
      v
Approve
      |
      v
Release
      |
      v
Monitor
~~~

Changes should not silently alter the architectural boundaries.


## 5.7 Add-ons and Extensions

Post-Pilot should support modular additions.

For example:

~~~text
              CORE DIGITAL FARM
                     |
       +-------------+-------------+
       |             |             |
       v             v             v
     Water       Greenhouse     Robotics
       |             |             |
       +-------------+-------------+
                     |
                     v
              Expanded Service
~~~

Each addition should have its own:

- Scope
- Interface
- Dependencies
- Validation
- Governance
- Operational requirements
- Value assessment


## 5.8 Scaling

Scaling may occur across:

- Farm size
- Number of sensors
- Number of assets
- Number of users
- Number of Digital Twin entities
- Number of scenarios
- Number of services
- Compute requirements
- Data volume
- Geographic locations


## 5.9 Optimization

Optimization may address:

- Productivity
- Resource utilization
- Water
- Energy
- Labor
- Cost
- Yield
- Quality
- Logistics
- Compute
- Quantum resource utilization


## 5.10 Post-Pilot Value

Post-Pilot should continuously measure whether the service is
producing meaningful value.

Possible measures include:

- Productivity
- Yield
- Cost reduction
- Resource efficiency
- Quality improvement
- Waste reduction
- Safety
- Sustainability
- Resilience
- Revenue
- ROI


# 6. Research Profile

The Research profile is used for experimental capabilities that are
not yet sufficiently validated for Pilot or Post-Pilot classification.


## 6.1 Research Purpose

Research provides a controlled environment for exploring:

- New technologies
- New algorithms
- New models
- New hardware
- New sensors
- New quantum capabilities
- New simulation methods
- New QAI approaches
- New automation techniques


## 6.2 Research Classification

Research capabilities should be clearly marked as:

- Research
- Experimental
- Prototype
- Proof of Concept
- Under Development
- Not Yet Validated

This prevents experimental results from being interpreted as
production guarantees.


## 6.3 Research Isolation

Research should be isolated from validated operational capabilities.

~~~text
                 DIGITAL FARM
                      |
              Research Interface
                      |
                      v
             +------------------+
             |     RESEARCH     |
             |   EXPERIMENTAL   |
             +------------------+
                      |
              Validate / Assess
                      |
             +--------+--------+
             |                 |
             v                 v
          Promote           Retire
             |
             v
           Pilot
~~~

Research may connect to the architecture through controlled
interfaces without becoming an implicit production dependency.


## 6.4 Examples of Research

Potential research areas include:

- Advanced quantum sensing
- QEMS / Q-NEMS
- Quantum communication
- Quantum networking
- Advanced QEC
- Real-time quantum control
- Advanced quantum optimization
- Quantum materials
- Nano-enabled agriculture
- Advanced physics-based simulation
- Advanced farm emulators
- Emerging robotics
- Advanced AI architectures


## 6.5 Research Evaluation

A research capability may be evaluated against:

- Technical feasibility
- Performance
- Accuracy
- Reliability
- Safety
- Scalability
- Cost
- Energy
- Integration complexity
- Governance
- Expected value


## 6.6 Research Promotion

A research capability may progress through:

~~~text
Research
   |
   v
Prototype
   |
   v
Experimental Validation
   |
   v
Capability Assessment
   |
   +--------+--------+
   |                 |
   v                 v
Pilot Candidate     Continue Research
   |
   v
Pilot
   |
   v
Validated Capability
   |
   v
Post-Pilot
~~~

Promotion should be evidence-based.


# 7. Profile Comparison

The three profiles have different primary purposes.

| Dimension | Pilot | Post-Pilot | Research |
|---|---|---|---|
| Primary purpose | Validate and demonstrate | Operate and evolve | Explore and develop |
| Scope | Bounded | Continuing | Experimental |
| Duration | Usually limited | Continuous | Variable |
| Iterations | Usually 1–2 | Continuous | Experimental |
| Architecture | Shared | Shared | Shared |
| Data | Controlled / real / synthetic | Operational | Experimental |
| Automation | Limited / supervised | Progressive | Experimental |
| Governance | Required | Operational | Appropriate to risk |
| Value | Initial evidence | Continuous realization | Potential future value |
| Output | Validation evidence | Operational capability | Research evidence |
| Maturity | Selected capabilities | Validated/operational | Under development |


# 8. Profile Transition

Transition between profiles should be controlled.

The general model is:

~~~text
                 RESEARCH
                     |
              Capability Evidence
                     |
                     v
              Research Review
                     |
                     v
              Pilot Candidate
                     |
                     v
                   PILOT
                     |
              Validation Evidence
                     |
                     v
              Pilot Assessment
                     |
                     v
                POST-PILOT
                     |
              Continuous Evolution
                     |
                     v
                  SCALE
                     |
                     v
                 OPTIMIZE
~~~

A capability can also return to Research when additional development
is required.


# 9. Profile Gates

Transitions should use appropriate decision gates.

Potential gates include:

### Research Gate

Questions include:

- Is the technology sufficiently mature for experimentation?
- Is the research objective defined?
- Are risks understood?
- Is the experiment isolated?


### Pilot Gate

Questions include:

- Is the capability sufficiently mature for controlled validation?
- Are interfaces defined?
- Is the test environment available?
- Are safety and governance requirements addressed?
- Can measurable value be demonstrated?


### Post-Pilot Gate

Questions include:

- Has the capability been validated?
- Is it operationally supportable?
- Is monitoring available?
- Is maintenance defined?
- Is security adequate?
- Is governance established?
- Is the expected value sufficient?


# 10. Profile Governance

Each profile should maintain appropriate governance.

Governance includes:

- Ownership
- Scope
- Status
- Version
- Dependencies
- Risks
- Validation
- Security
- Safety
- Compliance
- Data provenance
- Model provenance
- Value assessment


## 10.1 Status Classification

A capability should have an explicit status.

For example:

~~~text
RESEARCH
   |
   v
EXPERIMENTAL
   |
   v
PROTOTYPE
   |
   v
PILOT
   |
   v
VALIDATED
   |
   v
OPERATIONAL
   |
   v
SCALED
~~~

The status should be visible in documentation and service metadata.


# 11. Profile and Service Management

Lifecycle profiles connect directly to the Digital Farm management and
service-management layers.

~~~text
                 PROFILE
                    |
                    v
             Service Lifecycle
                    |
       +------------+------------+
       |            |            |
       v            v            v
   Operations   Maintenance   Governance
       |            |            |
       +------------+------------+
                    |
                    v
                 Value
~~~

Pilot emphasizes validation.

Post-Pilot emphasizes continuous service management.

Research emphasizes controlled experimentation and evidence.


# 12. Profile and Execution Modes

Lifecycle profile and execution mode are different concepts.

A Pilot may use:

- Virtualization
- Emulation
- Simulation
- Physical execution

Post-Pilot may use the same modes.

Research may use any of them depending on the experiment.


Therefore:

~~~text
Lifecycle Profile
       |
       +---- Pilot
       +---- Post-Pilot
       +---- Research
       |
       v
Execution Mode
       |
       +---- Virtualization
       +---- Emulation
       +---- Simulation
       +---- Physical
~~~

They should not be treated as interchangeable classifications.


# 13. Profile and Service Models

Lifecycle profiles are also independent of SaaS, PaaS and IaaS.

For example:

~~~text
                    DIGITAL FARM
                         |
              +----------+----------+
              |                     |
         Lifecycle                Service
          Profile                 Model
              |                     |
      +-------+-------+       +-----+-----+
      |       |       |       |     |     |
     Pilot Post   Research   SaaS  PaaS  IaaS
~~~

A Pilot may use SaaS, PaaS or IaaS.

A Post-Pilot service may use SaaS, PaaS or IaaS.

Research environments may also use any appropriate service model.


# 14. Profile and Value Management

Lifecycle decisions should consider value.

~~~text
Capability
    |
    v
Technical Validation
    |
    v
Operational Validation
    |
    v
Economic Assessment
    |
    v
Value Decision
    |
 +--+---------+---------+
 |            |         |
 v            v         v
Continue    Improve    Stop
~~~

The objective is not to advance every capability automatically.

A capability should continue when its technical, operational and
economic evidence supports continuation.


# 15. Profile Documentation

Each significant capability should document:

- Profile
- Current status
- Scope
- Objectives
- Dependencies
- Interfaces
- Execution mode
- Data sources
- Validation status
- Governance status
- Value status
- Next transition
- Known limitations


## 15.1 Example Profile Metadata

~~~text
Capability:
    QAI-WATER

Profile:
    Pilot

Status:
    Validation

Execution:
    Simulation + Physical

Data:
    Sensor + Historical + Synthetic

Automation:
    Human-in-the-loop

Validation:
    In Progress

Value:
    Under Assessment

Next Step:
    Pilot Assessment
~~~


# 16. Profile Design Rules

The following rules apply across all lifecycle profiles.

### Rule 1 — One Architecture

Pilot, Post-Pilot and Research must use the same architectural
foundation.


### Rule 2 — Explicit Status

Every capability should have a clear maturity/status classification.


### Rule 3 — No Hidden Production Dependencies

Research capabilities must not become accidental production
dependencies.


### Rule 4 — Evidence Before Promotion

Promotion between profiles should be supported by evidence.


### Rule 5 — Governance Throughout

Governance applies to every profile, with controls appropriate to
risk and maturity.


### Rule 6 — Human Oversight

Automation should increase progressively as confidence and safety
increase.


### Rule 7 — Value Matters

Technical success alone is insufficient for continued operational
investment.


### Rule 8 — Continuous Evolution

Post-Pilot is a lifecycle, not a final destination.


### Rule 9 — Reversible Decisions Where Practical

Early-stage decisions should avoid unnecessary architectural lock-in.


### Rule 10 — Research Remains Research Until Validated

Experimental capability should not be represented as production-ready
until sufficient evidence exists.


# 17. Relationship to Digital Farm Architecture

The profile architecture fits into Digital Farm as follows:

~~~text
                       DIGITAL FARM
                             |
          +------------------+------------------+
          |                  |                  |
          v                  v                  v
       SERVICES            FABRICS           MANAGEMENT
          |                  |                  |
          +------------------+------------------+
                             |
                          PROFILES
                             |
             +---------------+---------------+
             |               |               |
             v               v               v
           PILOT         POST-PILOT       RESEARCH
             |               |               |
             +---------------+---------------+
                             |
                      Shared Capabilities
                             |
       +---------------------+---------------------+
       |                     |                     |
       v                     v                     v
  Digital Twin              CPS                   QAI
       |                     |                     |
       +---------------------+---------------------+
                             |
                        Physical Farm
~~~


# 18. Final Profile Model

The complete lifecycle model is:

~~~text
                         RESEARCH
                            |
                            v
                      EXPERIMENTATION
                            |
                            v
                        VALIDATION
                            |
                            v
                      PILOT CANDIDATE
                            |
                            v
                          PILOT
                            |
                    1–2 bounded iterations
                            |
                            v
                    VALIDATED CAPABILITY
                            |
                            v
                       POST-PILOT
                            |
          +-----------------+-----------------+
          |                 |                 |
          v                 v                 v
       OPERATE           MONITOR           GOVERN
          |                 |                 |
          +-----------------+-----------------+
                            |
                            v
                         IMPROVE
                            |
                            v
                          SCALE
                            |
                            v
                        OPTIMIZE
                            |
                            v
                          EVOLVE
                            |
                  +---------+---------+
                  |                   |
                  v                   |
              NEW RESEARCH -----------+
~~~


# 19. Final Position

The `profiles/` architecture establishes a simple but important
principle:

> **Pilot, Post-Pilot and Research are lifecycle profiles of one
> Digital Farm architecture, not separate architectures.**

The Pilot provides a bounded environment for validating and
demonstrating selected capabilities.

Post-Pilot provides the continuous operational lifecycle through
which validated capabilities are operated, monitored, maintained,
expanded, governed and optimized.

Research provides a controlled environment for experimental
capabilities that may eventually become Pilot candidates.

Together they provide:

~~~text
Research
   |
   v
Experiment
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
Post-Pilot
   |
   v
Operate
   |
   v
Learn
   |
   v
Improve
   |
   v
Evolve
   |
   +--------> Research
~~~

This lifecycle allows the QAI Digital Farm to evolve continuously
without creating separate architectural branches for Pilot,
Post-Pilot or Research.

The architecture remains common.

The lifecycle profile changes according to the maturity, purpose and
operational state of the capability.
---

