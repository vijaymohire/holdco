# Profile Selection

Profiles describe approved environment, resource, storage, database, and
deployment choices.

## Intended flow

1. Read configuration from an approved source.
2. Validate required values and allowed selections.
3. Resolve profile references.
4. Check compatibility with available implementations and policies.
5. Prepare a deployment plan for review.
6. Record relevant validation and provenance evidence.

This flow is a proposed design boundary, not an implemented runtime workflow.
The General Factory and QAI DevOps responsibilities should be reused where
appropriate rather than duplicated in LabaaS.
