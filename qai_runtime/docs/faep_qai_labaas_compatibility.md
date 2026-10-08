# FAEP and QAI LabaaS Compatibility

QAI Runtime is intended to remain underneath future FAEP and QAI LabaaS layers.

Conceptual direction:

FAEP
  |
QAI LabaaS
  |
Client / Project Workspace
  |
Deployment Operator
  |
QAI DevOps
  |
QAI Runtime
  |
Resource Fabric
  |
Physical / Virtual Resources

QAI Runtime should expose stable contracts for workload submission, execution, resource requirements, routing, results, evidence and lifecycle.

Client-facing tenancy, ecosystem governance and higher-level orchestration are outside Phase 1B.
