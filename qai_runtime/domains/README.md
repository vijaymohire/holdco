# QAI Runtime Domains

The `domains` layer identifies the logical problem or workload domain
being addressed by a Runtime workload.

Domains are intentionally separated from:

- resources
- execution backends
- infrastructure providers
- deployment targets

A domain describes WHAT the workload represents.

Examples may include:

- artificial intelligence / machine learning
- quantum computing
- quantum communication
- classical computing
- high-performance computing
- data engineering
- edge / IoT
- client or industry-specific workloads

The domain taxonomy remains extensible and should not be treated as
an infrastructure taxonomy.

Runtime domain descriptors should be resolved through contracts rather
than hard-coded provider implementations.
