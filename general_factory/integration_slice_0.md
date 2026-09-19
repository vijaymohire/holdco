# Integration Slice 0

## Objective

Prove that the General Framework and General Factory can reference
and invoke existing implementation assets without copying their
architecture or source code.

## Candidate 1

Microsoft Fabric Dataflows Gen2

Capability:
FABRIC_DATAFLOW_EXECUTION

Expected:
Framework contract
  ->
Factory binding
  ->
Connector
  ->
Adapter
  ->
Fabric implementation
  ->
Result
  ->
Evidence

## Candidate 2

QAI Lab / GitLab Runner / GitHub Notebook

Capability:
QAI_EXPERIMENT_EXECUTION

Expected:
Framework contract
  ->
Factory binding
  ->
GitLab connector
  ->
Runner
  ->
Notebook
  ->
Experiment result
  ->
Evidence

## Success Condition

The General Factory can identify an existing implementation,
bind to it through a defined contract and retrieve a result.

## Non-Goals

- repository migration
- repository duplication
- redesign of existing projects
- full Factory implementation
- production deployment
- physical QAI hardware
