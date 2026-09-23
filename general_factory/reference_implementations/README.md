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
