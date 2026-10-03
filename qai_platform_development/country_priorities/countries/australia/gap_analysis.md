
# Australia — Product / Capability Gap Analysis

Assess existing QAI assets against country-specific priority-driven product requirements.

---

## Release Update — 3 October 2026: Pilot-First Capability Gap Analysis

### 1. Purpose

This document assesses QAI and FAEP capabilities against Australian industry priorities, using the current Digital Farm pilot as the initial demonstrator.

The assessment follows a staged approach:

1. Demonstrate available features and existing evidence.
2. Complete the minimum required current-pilot capabilities.
3. Validate the pilot against defined acceptance criteria and measurable outcomes.
4. Identify and implement essential gaps.
5. Extend the validated foundation into post-pilot use cases.
6. Introduce more complex GUI workflows and broader industry configurations when justified.

The objective is not to build every proposed QAI capability before the first demonstration. It is to show a bounded, understandable and verifiable solution, then use the evidence to determine the next investment.

### 2. Assessment Principles

- **Demonstrate before expanding:** prioritize features that can be shown with existing code, notebooks, scripts, models, data and supporting documentation.
- **Evidence before claims:** distinguish implemented features from documented designs, planned work and research concepts.
- **Pilot scope remains bounded:** complete the representative Digital Farm use case before generalizing the platform.
- **Reuse before duplication:** reuse existing QAI, FAEP, CPS, Digital Twin and engineering assets wherever appropriate.
- **Classical baseline first:** establish a reproducible conventional baseline before claiming that a QAI or hybrid approach provides additional value.
- **Simulation before physical deployment:** use controlled datasets, virtualization, emulation and simulation as appropriate before introducing additional physical infrastructure.
- **Human oversight:** keep operational decisions, safety boundaries and approval responsibilities explicit.
- **Separate current and future scope:** post-pilot features must not be presented as current-pilot deliverables unless they have actually been implemented and verified.
- **GUI complexity follows validated workflows:** graphical interfaces should expose proven operations rather than become a prerequisite for demonstrating the underlying capabilities.

### 3. Capability Readiness Classification

Use the following classifications consistently throughout this file.

| Classification | Meaning | Evidence required |
|---|---|---|
| Demonstrable | The feature runs or can be shown using a reproducible procedure. | Working implementation, inputs, outputs and demonstration evidence. |
| Implemented — verification pending | An implementation exists, but its demonstration or acceptance evidence is incomplete. | Code, notebook, script or other implementation artifact. |
| Partially implemented | Some required behavior exists, but a defined gap remains. | Working portion and documented limitations. |
| Documented / designed | Architecture, requirements or workflow documentation exists, but implementation has not been verified. | Design, specification, README or workflow description. |
| Planned | The capability has been identified but is not yet implemented. | Roadmap entry or approved scope. |
| Research / experimental | The capability requires further investigation or experimental validation. | Research plan, experiment design or supporting evidence. |
| Not assessed | Available evidence is insufficient to determine readiness. | Assessment action required. |
| Not applicable to pilot | The feature is outside the agreed current-pilot scope. | Scope decision and rationale. |

**Important:** classify each capability from repository evidence and a repeatable test. Do not infer implementation readiness from a directory name, product name, architecture diagram or README alone.

### 4. Current Pilot — Digital Farm Capability Baseline

The current pilot is a bounded Digital Farm CPS and Digital Twin demonstrator. It establishes the foundation for future industry applications without requiring the full industrial ecosystem to be built first.

The pilot capability path is:

**Farm Assets → Virtualization → Emulation → CPS Workflow → Open-Loop Simulation → Closed-Loop Simulation → Classical Baseline vs QAI → Measured Value → Lab Evidence**

The following matrix defines the assessment areas. Readiness must be recorded after inspecting and testing the corresponding assets.

| Capability area | Pilot demonstration objective | Evidence to collect |
|---|---|---|
| Farm asset inventory | Represent the selected farm assets and their relevant attributes. | Asset inventory, identifiers, parameters and sample data. |
| Asset virtualization | Represent selected physical or logical assets in a usable virtual form. | Virtual asset definitions, instantiation procedure and output. |
| Data and inputs | Supply repeatable sample, synthetic or available sensor data. | Dataset, schema, units, assumptions and input validation. |
| CPS workflow | Connect the selected assets, data and processing stages into one bounded workflow. | Executable workflow, configuration and execution trace. |
| Emulation | Reproduce selected asset or device behavior where required. | Emulation configuration, inputs, outputs and known limitations. |
| Open-loop simulation | Run a scenario without feeding decisions back into the simulated system. | Scenario configuration, execution output and results. |
| Closed-loop simulation | Demonstrate feedback between system state, decision logic and simulated action. | State transitions, action records and repeatable results. |
| AI/ML or decision support | Demonstrate the available inference, prediction or decision-support function. | Model or algorithm reference, input/output examples and evaluation. |
| Classical baseline | Establish the conventional result against which alternatives can be compared. | Baseline algorithm, assumptions, runtime and outcome metrics. |
| QAI / hybrid evaluation | Exercise only those QAI or hybrid capabilities actually available in the environment. | Implementation evidence, experiment records and limitations. |
| Digital Twin state | Connect the virtual representation to scenario state and observed or simulated changes. | State model, updates, scenario traces and validation results. |
| Networking and interfaces | Demonstrate the interfaces necessary for the selected pilot workflow. | API contracts, interface tests and data-flow records. |
| Resource and execution management | Record the execution profile and relevant compute or resource constraints. | Configuration, logs, resource measurements and fallback behavior. |
| Value and KPI measurement | Evaluate the selected technical and economic success criteria. | KPI definitions, baseline measurements, results and calculations. |
| Evidence and reproducibility | Enable another person to repeat and inspect the demonstration. | Run instructions, version information, test data and evidence package. |
| Lifecycle and operations | Demonstrate the minimum configuration, observability and recovery functions needed for the pilot. | Logs, configuration, failure handling, fallback and operating instructions. |

### 5. First Demonstration — Available Features Only

The first demonstration should use the smallest coherent set of existing capabilities that proves the pilot workflow.

#### 5.1 Demonstration sequence

1. Introduce the selected Digital Farm use case and the problem being addressed.
2. Show the relevant farm asset inventory and virtual asset representation.
3. Load or generate the controlled input dataset.
4. Execute the available CPS workflow or notebook.
5. Run the supported scenario through the implemented processing stages.
6. Display the resulting state, decisions, outputs or simulated actions.
7. Show the classical baseline and any verified AI/QAI comparison that is available.
8. Present the selected KPIs, measured results and known limitations.
9. Show how the execution can be repeated and its evidence inspected.

Skip a step if its implementation is not yet available. Record it as a gap rather than simulating a capability that the implementation does not provide.

#### 5.2 Initial evidence package

Prepare the minimum evidence needed to make the demonstration independently verifiable:

- Demonstration scope and use-case description.
- Asset and function inventories relevant to the selected scenario.
- Input dataset and data schema.
- Execution instructions and configuration.
- Expected outputs and actual results.
- Classical baseline and comparison method, where applicable.
- KPI definitions and measured values.
- Execution logs, test results and screenshots where useful.
- Known limitations, assumptions and unresolved gaps.
- Version or commit references for the demonstrated implementation.

A polished GUI is not required for the first demonstration if a notebook, script, API, command-line procedure or existing interface can demonstrate the behavior reliably.

### 6. Gap Prioritization for the Current Pilot

Prioritize gaps according to their effect on completing and verifying the agreed pilot.

| Priority | Gap category | Decision rule |
|---|---|---|
| P0 — Demonstration blocker | Prevents a core workflow from running or makes its results unverifiable. | Address before the pilot demonstration or acceptance review. |
| P1 — Pilot completion | Required by an agreed pilot acceptance criterion but does not block the initial walkthrough. | Address before declaring the pilot complete. |
| P2 — Evidence and usability | Improves reproducibility, clarity, observability or ease of demonstration. | Complete where necessary for validation and handover. |
| P3 — Post-pilot extension | Supports additional farms, domains, partners or deployment profiles. | Defer until the pilot baseline is validated. |
| P4 — Advanced research or GUI | Requires substantial new interfaces, orchestration, integration or experimental work. | Investigate separately and justify through a defined use case. |

Priority should reflect actual acceptance criteria and observed failures, not the perceived sophistication of a feature.

### 7. Post-Pilot Capability Roadmap

Post-pilot work can reuse the validated pilot foundation while extending its scale, integration and commercial applicability.

| Extension area | Potential post-pilot capability | Entry condition |
|---|---|---|
| Multi-asset and multi-farm | Aggregate multiple assets, fields or farms into a broader Digital Twin. | Current asset model and workflow are repeatable. |
| Regional Digital Twin | Coordinate information and scenarios across a farm cluster or regional ecosystem. | Multi-asset integration requirements are defined. |
| Twin City demonstrator | Reuse the logical architecture in a second representative domain. | Pilot architecture and reusable components are sufficiently validated. |
| Agency and business integration | Connect validated workflows with external organizations and business processes. | Partner needs, interfaces and data-sharing conditions are agreed. |
| Economic ecosystem | Assess supply, fulfillment, value flows, resilience and sustainability across connected participants. | Relevant data, boundaries and economic assumptions are defined. |
| Advanced sensing | Evaluate additional sensing methods and specialized hardware. | A specific use case and measurable benefit justify the work. |
| Advanced QAI execution | Extend hybrid execution, resource management, specialized runtimes or quantum-related experiments. | Technical feasibility and comparison criteria are established. |
| Expanded deployment | Evaluate edge, regional, private-cloud and public-cloud execution profiles. | Security, connectivity, operational and cost requirements are defined. |
| Industry framework | Extract reusable CPS and Digital Twin patterns for other industry applications. | Pilot lessons and common components have been documented. |
| Commercial deployment | Develop a partner-specific deployment, support and licensing model. | Stakeholder validation, delivery scope and commercial assumptions are established. |

These are roadmap candidates, not commitments that all capabilities will be developed. Each extension should have its own scope, evidence requirements and investment decision.

### 8. Complex GUI Workflows — Deliberately Deferred

Complex GUI workflows should be considered after the pilot's underlying operations and data contracts are stable.

Potential future GUI functions include:

- Visual workflow composition and editing.
- Asset and scenario configuration screens.
- Experiment management and comparison dashboards.
- Multi-step approval and governance workflows.
- Resource allocation and execution orchestration.
- Cross-farm or cross-domain operational dashboards.
- Role-based views for operators, engineers, administrators and reviewers.
- Integration with enterprise systems and partner portals.

These capabilities may require significant frontend, backend, identity, authorization, state-management, audit and integration work.

Before implementing them, establish:

1. Which user task the GUI must support.
2. Whether the task is already achievable through an existing notebook, script, API or interface.
3. The minimum interface needed to improve usability or operational safety.
4. The underlying API, data model and workflow contract.
5. User roles, permissions, validation and audit requirements.
6. Acceptance criteria and measurable usability benefits.

A GUI should be introduced when it reduces a demonstrated operational burden or enables a required user interaction—not simply because the platform may eventually become a product.

### 9. Australian Priority Alignment

Use the pilot and post-pilot roadmap to evaluate potential contributions to Australian industry needs.

| Priority area | Current-pilot relevance | Post-pilot opportunity |
|---|---|---|
| Agriculture and food systems | Demonstrate a bounded Digital Farm workflow using controlled data and measurable outputs. | Extend to multiple farms, regional coordination, resource management and supply-chain integration. |
| AI-enabled productivity | Show a reproducible decision-support workflow where implemented. | Extend validated workflows to additional operational and business processes. |
| Digital infrastructure | Demonstrate the execution profile and interfaces actually used by the pilot. | Evaluate multi-site, edge and cloud deployment profiles. |
| Quantum and critical technologies | Record the actual QAI/hybrid implementation and compare it with a classical baseline where feasible. | Investigate more advanced execution, sensing and optimization use cases. |
| Advanced manufacturing and CPS | Validate reusable asset, workflow and Digital Twin patterns. | Adapt validated patterns to selected industrial assets and production processes. |
| Sustainability and resilience | Measure only the environmental, resource or resilience indicators supported by the pilot data. | Extend assessment across multiple assets or regional systems. |
| Research commercialisation | Produce reproducible technical evidence and document IP boundaries. | Develop partner-led demonstrations, licensing and commercialization pathways. |

This mapping indicates potential relevance, not confirmed customer demand, government endorsement or eligibility for an Australian funding program.

### 10. Gap Register Template

Create one entry for each material capability gap.

| Field | Required information |
|---|---|
| Gap ID | Unique identifier. |
| Capability | Asset, workflow, interface, model, metric or operational function. |
| Pilot relevance | Current pilot, pilot completion, post-pilot or future research. |
| Existing asset | Repository path, file, API, notebook, script or product reference. |
| Readiness classification | Use the classifications in Section 3. |
| Evidence reviewed | Test result, execution record, output or other verification. |
| Missing behavior | Specific behavior or evidence not yet available. |
| Impact | Effect on demonstration, acceptance, usability, safety or value. |
| Priority | P0, P1, P2, P3 or P4, with rationale. |
| Proposed action | Reuse, configure, integrate, implement, validate, defer or remove. |
| Dependencies | Required data, interfaces, components, access or approvals. |
| Acceptance criteria | Observable condition that closes the gap. |
| Owner and status | Responsible party and current progress. |
| Target milestone | Demonstration, pilot completion, post-pilot or later release. |

### 11. Assessment Workflow

For each candidate capability:

1. Locate the relevant repository artifact.
2. Inspect the implementation and its dependencies.
3. Execute a minimal repeatable test where possible.
4. Record actual inputs, outputs and limitations.
5. Assign a readiness classification.
6. Compare the result with the pilot acceptance criteria.
7. Record and prioritize the gap, if any.
8. Decide whether to reuse, integrate, implement, defer or exclude it.
9. Update the evidence package after verification.

Do not implement a new feature until the gap has been stated in observable terms and its relevance to the current milestone is clear.

### 12. Relationship to Other Country Files

- `README.md` — Australia country profile, industrial vision and ecosystem alignment.
- `national_priorities.md` — official policy themes and their relationship to potential capability areas.
- `gap_analysis.md` — readiness, missing capabilities, evidence and staged priorities.
- Product, service, modernization and research catalogues — detailed QAI offer definitions and supporting assets.
- Digital Farm pilot files — implementation scope, inventories, scenarios, baselines, KPIs, acceptance criteria and execution evidence.

Keep the gap analysis linked to implementation evidence. Avoid duplicating complete product catalogues or treating roadmap concepts as verified product features.

### 13. Completion Criteria

The current-pilot gap analysis is ready for review when:

- The demonstrable feature set has been verified against actual repository artifacts.
- The selected pilot workflow has a repeatable execution procedure.
- Essential gaps have been recorded with clear acceptance criteria.
- The classical baseline and KPI approach are documented where applicable.
- Limitations and unverified capabilities are explicitly stated.
- Post-pilot extensions are separated from current-pilot commitments.
- Complex GUI workflows remain deferred unless a specific pilot requirement justifies them.
- A clear transition from pilot completion to post-pilot planning has been recorded.

### Release Summary

This release establishes a pilot-first approach to Australian product and capability gap analysis. It prioritizes verifiable Digital Farm features, completion of the bounded CPS/Digital Twin workflow, measurable outcomes and reusable engineering assets. More complex GUI workflows, multi-domain integration and advanced QAI capabilities remain staged extensions subject to evidence, requirements and validation.

**Prepared by:** @vijaymohire
**Release date:** 3 October 2026
---
