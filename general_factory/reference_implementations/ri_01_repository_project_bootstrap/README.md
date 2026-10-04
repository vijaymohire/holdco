# RI-01 — Repository and Project Bootstrap

## 1. Purpose

RI-01 defines a reusable reference model for converting an approved project or capability request into a structured, configured and verifiable working environment.

The bootstrap process establishes the initial project structure, documentation, configuration, workflow interfaces and validation checkpoints required to begin delivery in a consistent and repeatable manner.

It is intended to reduce repetitive setup effort, improve governance and traceability, and make successful project patterns reusable across HoldCo portfolios, programs, projects and specialist capability areas.

RI-01 is a technology-neutral reference specification. Individual implementations may use different programming languages, repository platforms, development environments, infrastructure services and automation tools.

## 2. Design Principles

- **Request-driven:** Bootstrap begins with a defined need and an authorised project or capability request.
- **Template-based:** Reuse approved templates and reference patterns wherever appropriate.
- **Configuration-driven:** Separate project-specific parameters from reusable bootstrap logic.
- **Governance-aware:** Respect applicable approval, security, privacy, intellectual property and resource-allocation requirements.
- **Reproducible:** Make project structure and configuration repeatable where the selected implementation supports it.
- **Verifiable:** Validate generated structures and required artefacts before declaring bootstrap completion.
- **Technology-neutral:** Define logical contracts independently of a particular toolchain.
- **Evidence-based:** Distinguish planned capabilities from implemented, tested and demonstrated capabilities.
- **Reuse-oriented:** Feed validated improvements back into the approved template and reference catalogue.

## 3. Reference Workflow

**Project Request → Project Definition → Governance Review → Template Selection → Configuration → Bootstrap Execution → Workspace Validation → Handover to Delivery**

### Stage 1 — Project Request

Capture the business, government, industry, research or internal capability need.

Identify the intended outcome, requesting party, initial scope and known constraints.

### Stage 2 — Project Definition

Define the project purpose, boundaries, deliverables, acceptance criteria, dependencies, accountable owner and initial resource requirements.

Record assumptions and unresolved decisions rather than treating them as confirmed facts.

### Stage 3 — Governance Review

Determine which approvals and controls are applicable before creating or provisioning resources.

Depending on the project, these may include access permissions, IP handling, security classification, data access, licensing, budget authority and resource approval.

### Stage 4 — Template Selection

Select an approved project template or reference implementation based on the project type, delivery lifecycle, required artefacts and applicable constraints.

If no suitable template exists, record the gap and establish an approved baseline rather than silently selecting an unsuitable template.

### Stage 5 — Configuration

Provide the parameters required to instantiate the project structure, including its identifier, purpose, owner, selected template, directory layout, documentation requirements and validation rules.

Sensitive values, credentials and secrets must not be embedded in templates or committed to source control.

### Stage 6 — Bootstrap Execution

Create the required workspace structure and initialise the selected artefacts.

Depending on implementation scope, this may include directories, README files, configuration examples, workflow definitions, manifests, test scaffolding and evidence registers.

### Stage 7 — Workspace Validation

Check that the expected directories and files exist, required configuration is present, naming conventions are followed and applicable validation checks pass.

Record failures, warnings, skipped checks and outstanding approvals.

### Stage 8 — Handover to Delivery

Present the resulting workspace, bootstrap summary, validation evidence and unresolved issues to the designated project owner.

Bootstrap completion does not, by itself, establish project approval, production readiness, security compliance or delivery acceptance.

## 4. Inputs

The reference workflow may consume the following inputs:

- Validated business, government, industry, research or internal project need.
- Project definition, scope and intended outcomes.
- Requirements, constraints, assumptions and acceptance criteria.
- Project identifier, owner and accountable stakeholders.
- Approved template or reference implementation.
- Required directory structure and documentation conventions.
- Applicable governance, security, privacy, IP and licensing requirements.
- Available capabilities, resources, dependencies and budget constraints.
- Validation rules and required evidence.

Not every input is mandatory for every project. Required inputs should be defined by the selected template and governance rules.

## 5. Outputs

Expected outputs may include:

- A defined project workspace and directory structure.
- Project metadata and configuration.
- Initial documentation and workflow interfaces.
- Template-specific configuration and sample artefacts.
- Validation results, execution logs and evidence records.
- A list of unresolved issues, missing inputs and pending approvals.
- A bootstrap completion summary and handover information.
- Reusable implementation improvements, where demonstrated and approved.

The actual outputs depend on the selected template and implementation.

## 6. Logical Interface Contract

RI-01 uses a simple logical interface between the project request, bootstrap process and resulting workspace.

| Interface | Expected content |
|---|---|
| Request → Bootstrap | Project identity, purpose, owner, requirements and constraints |
| Template → Bootstrap | Structure, artefact definitions, configuration schema and validation rules |
| Configuration → Bootstrap | Approved project-specific parameters |
| Bootstrap → Workspace | Generated directories, files and initial configuration |
| Validation → Project Owner | Results, warnings, failures and outstanding decisions |
| Workspace → Delivery Process | Initialised project environment and handover evidence |
| Validated Project → Reference Catalogue | Approved reusable patterns and documented lessons |

These are conceptual interfaces. Their implementation may use files, command-line arguments, APIs, repository metadata or other mechanisms.

## 7. Preconditions and Controls

Before bootstrap execution, establish which of the following conditions apply:

1. The project request has an identifiable owner.
2. The intended scope and expected outcome are documented.
3. The selected template is appropriate for the project.
4. Required approvals are obtained before controlled resources are provisioned.
5. Access permissions and repository boundaries are defined.
6. Sensitive information and IP are handled according to applicable controls.
7. Required configuration and validation rules are available.

Where a condition is not satisfied, the implementation should report the gap and follow its defined stop, defer or exception process.

## 8. Validation and Acceptance Criteria

A bootstrap run should be assessed against explicit, observable checks.

| Check | Acceptance evidence |
|---|---|
| Request traceability | Project identity and purpose are recorded |
| Template traceability | Selected template and version are identifiable |
| Structure validation | Required directories and files exist |
| Configuration validation | Required parameters are present and valid |
| Boundary validation | Generated artefacts remain within the intended workspace |
| Preservation | Existing user content is not unintentionally overwritten or deleted |
| Governance traceability | Applicable approvals and unresolved controls are recorded |
| Execution traceability | Outcome, errors and warnings are captured |
| Handover readiness | Outputs and outstanding issues are presented to the owner |
| Repeatability | Repeated execution behaves according to documented implementation rules |

Acceptance evidence must come from the relevant implementation, tests and execution records. A criterion listed here is not evidence that the criterion has already passed.

## 9. Relationship to HoldCo

RI-01 supports the HoldCo operating model by providing a repeatable starting point for approved projects and capability initiatives.

It is intended to support the progression:

**HoldCo Strategy → Portfolio → Program → Project Definition → Bootstrap → Delivery → Validation → Reusable Capability**

The bootstrap capability can help establish consistent project environments without requiring every project to recreate its initial structure independently.

RI-01 does not replace portfolio decisions, project sponsorship, financial authorisation, procurement, contractual obligations or delivery governance.

## 10. Source and Implementation Boundary

### Authoritative implementation reference

[IAFE Repository Bootstrap](https://github.com/vijaymohire/iafe-repository-bootstrap)

The linked repository is the designated engineering reference for this bootstrap area. Its actual implementation, documentation, tests and recorded results must be examined before specific implementation capabilities are attributed to it.

This HoldCo reference summarises the logical purpose, workflow and validation expectations. It does not duplicate the full engineering repository or assert that every capability described here already exists in executable form.

### Separation of responsibilities

- **HoldCo reference:** Defines the reusable conceptual model and expected interfaces.
- **General Factory reference implementation:** Provides a concise, reusable structure for examples, configuration, workflows and evidence.
- **Authoritative engineering repository:** Holds the detailed implementation and its associated technical evidence.

## 11. Evidence and Maturity

**Initial status: Designed / Documented — implementation and validation status to be assessed.**

Track maturity using evidence rather than assumptions:

- **Designed / Documented:** The workflow, interfaces and expectations are described.
- **Partially Implemented:** Some specified functions exist, with gaps recorded.
- **Implemented — Verification Pending:** Implementation exists but required verification is incomplete.
- **Demonstrated:** A defined execution has produced recorded results.
- **Validated:** Acceptance criteria have been evaluated against sufficient documented evidence.

These labels are proposed maturity categories for this reference. Assign a higher status only when supporting evidence is available.

Do not infer government adoption, procurement eligibility, funding approval, legal or regulatory compliance, commercial demand, production readiness or validated economic benefits from this reference alone.

## 12. Next Steps

1. Review the authoritative repository and identify the bootstrap capabilities that are actually implemented.
2. Map its existing workflow and artefacts to the logical stages defined in this reference.
3. Define a minimal, technology-neutral project request and configuration example.
4. Add a representative sample workspace or bootstrap manifest.
5. Document validation checks and expected outputs.
6. Record implementation gaps, assumptions and outstanding decisions.
7. Execute a controlled test and retain the resulting evidence.
8. Update the maturity status only after reviewing the evidence.
9. Capture suitable improvements for reuse across RI-02 to RI-06.

## 13. Change Control

Changes to this reference should preserve traceability between the conceptual workflow, its interfaces, the authoritative implementation and the available validation evidence.

When a material change is introduced, record the change, its rationale, affected interfaces, validation impact and any required updates to dependent references.

---

**Reference ID:** RI-01
**Reference name:** Repository and Project Bootstrap
**Category:** General Factory — Reference Implementations
**Initial maturity:** Designed / Documented
**Authoritative engineering reference:** [iafe-repository-bootstrap](https://github.com/vijaymohire/iafe-repository-bootstrap)
**Validation status:** To be assessed
---
