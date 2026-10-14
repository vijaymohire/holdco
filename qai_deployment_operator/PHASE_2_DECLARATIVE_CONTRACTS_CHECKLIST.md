# QAI Deployment Operator — Phase 2 Declarative Contracts

**Status:** Planning
**Phase:** 2 — Declarative Contracts
**Implementation status:** Not started

## 1. Objective

Define product-agnostic contracts for deployment, environment, resource, storage, execution, policy, lifecycle, and status.

Contracts describe intent and requirements. They must not imply that deployment, provisioning, reconciliation, or runtime execution is implemented.

## 2. Contract Work Items

### 2.1 Deployment Contract
- [ ] Define deployment identity and target references.
- [ ] Represent requested operations and configuration references.
- [ ] Distinguish planning from execution.
- [ ] Acceptance: represent a deployment request without executing it.

### 2.2 Environment Contract
- [x] Define environment identity and environment type.
- [ ] Represent configuration references and execution constraints.
- [x] Distinguish development, test, production, and other target environments.
- [ ] Acceptance: describe an environment without embedding provider-specific behavior.

### 2.3 Resource Contract
- [ ] Define logical resource identity and resource type.
- [ ] Represent capabilities, ownership, and lifecycle information.
- [ ] Distinguish discovered, registered, and QAI-managed resources.
- [ ] Acceptance: describe an existing resource without implying QAI ownership.

### 2.4 Storage Contract
- [ ] Represent logical storage requirements and capability constraints.
- [ ] Record backend-specific differences through declared capabilities or adapter metadata.
- [ ] Avoid assuming that all storage backends have identical semantics.
- [ ] Acceptance: express storage requirements independently of a specific provider.

### 2.5 Execution Contract
- [ ] Represent workload and execution requirements.
- [ ] Identify execution mode, runtime requirements, and relevant constraints.
- [ ] Keep vendor-specific implementations behind adapters.
- [ ] Acceptance: describe execution intent without requiring a specific vendor or orchestrator.

### 2.6 Policy Contract
- [ ] Represent permitted and prohibited operations.
- [ ] Define authorization and approval requirements for mutation.
- [ ] Keep secrets outside source control.
- [ ] Acceptance: evaluate declared actions against policy before mutation is enabled.

### 2.7 Lifecycle Contract
- [ ] Represent requested lifecycle operations.
- [ ] Define permitted transitions and relevant preconditions.
- [ ] Account for recovery, rollback, disconnect, and release where applicable.
- [ ] Acceptance: describe a lifecycle request without executing it.

### 2.8 Status Contract
- [ ] Distinguish desired state from observed state.
- [ ] Represent validation outcomes and operation status.
- [ ] Provide explicit outcomes for unsupported capabilities and failures.
- [ ] Acceptance: represent desired and observed state separately.

## 3. Cross-Contract Guardrails

- [ ] Keep contracts product- and orchestrator-neutral.
- [ ] Separate declarative intent from implementation logic.
- [ ] Keep discovery, planning, approval, mutation, and validation distinguishable.
- [ ] Do not assume registration establishes ownership.
- [ ] Do not modify client assets without explicit authorization and applicable policy.
- [ ] Do not silently simulate unsupported capabilities.
- [ ] Define validation rules and examples before implementation.
- [ ] Keep credentials and secret values outside Git.

## 4. Phase 2 Completion Gate

Phase 2 is complete only when:

- [ ] All eight contract definitions are documented.
- [ ] Required fields, optional fields, and validation rules are specified.
- [ ] Cross-contract references and dependencies are documented.
- [ ] Valid and invalid examples exist for each contract.
- [ ] Contract tests validate the declared rules.
- [ ] No provisioning or mutation is enabled merely by the existence of the contracts.
- [ ] The results are reviewed against the QAI Deployment Operator development plan.

## 5. Source and Scope

Primary source: `Bhadale_IT_QAI_Deployment_Operator_VSCode_Development_Plan.docx`

This file tracks Phase 2 planning and acceptance criteria. It does not claim that contracts or implementation are already complete.
