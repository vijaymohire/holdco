# Pilot Delivery Entry

## Purpose

This folder is the pilot-level entry point for client delivery.

It provides a simple way to identify and request deliverables from any
completed phase or client realization stage.

---

## Canonical Delivery Boundary

The canonical delivery registry and package-builder are maintained in:

pilot/phase_12/

Specifically:

- `delivery_registry/`
- `delivery_packages/`
- `delivery_selection/`
- `handover/`
- `evidence/`
- `provenance/`

This folder does not duplicate those capabilities.

---

## Standard Full-Pilot Delivery

For a client completing the recommended 12-phase lifecycle:

Phase 0 → Phase 1 → ... → Phase 12

→ Phase 12 Delivery Registry

→ Package Selection

→ Client Delivery

→ Optional Post-Pilot Path

---

## Arbitrary Phase Delivery

A client does not have to complete all 12 phases before receiving an agreed
delivery package.

Examples:

- Phase 3 — Workflow / Architecture Package
- Phase 6 — Evaluation / Advantage Package
- Phase 7 — Validation Package
- Phase 10 — Fabric / Slice Integration Package
- Phase 11 — Benchmark / Advantage Gate Package
- Phase 12 — Complete Pilot Package

---

## Stage-Based Delivery

Delivery may also be associated with the five client realization stages:

- Stage 1 — See It
- Stage 2 — Run It
- Stage 3 — Validate It
- Stage 4 — Deploy It
- Stage 5 — Scale It

A client may receive the appropriate package for the stage reached.

---

## Custom Delivery

A client may also select a custom combination of:

- experiments
- results
- datasets
- models
- notebooks
- configurations
- documents
- images
- architecture
- evidence
- other validated assets

The selected package is recorded through the Phase 12 Delivery Registry.

---

## Delivery Flow

Pilot Delivery Entry

→ Phase / Stage Selection

→ Phase 12 Delivery Registry

→ Package Catalogue

→ Package Selection

→ Package Manifest

→ Client Destination

→ Optional Post-Pilot Path

---

## Entry Layer Principle

This folder is a navigation and entry layer.

It identifies where client delivery begins and points to the appropriate
phase/stage deliverables.

It does not maintain a second:

- asset registry
- package catalogue
- package builder
- handover system
- Post-Pilot system

---

## Client Choice Principle

Clients may choose:

- what to see
- what to validate
- what to receive
- what to deploy
- what to postpone
- what to continue

Delivery therefore remains flexible rather than being tied exclusively to
the complete 12-phase lifecycle.

---

## Delivery Status

Typical package states may include:

- Draft
- Selected
- Prepared
- Delivered
- Accepted
- Archived

The authoritative package status is maintained through the Phase 12
delivery records.

---

## Important Boundary

Prepared does not necessarily mean transferred.

Transferred does not necessarily mean operationally accepted.

Operational acceptance remains a separate client / engagement activity.

---

## Post-Pilot

Post-Pilot capabilities are recorded through Phase 12.

Examples:

- SaaS / managed service
- turnkey deployment
- Product Foundry
- IP / Patent
- TTO
- further research
- additional engineering
- scale-up

Recording a Post-Pilot item does not commit immediate implementation.

---

## Final Principle

`pilot/delivery/` is the lightweight entry point.

`pilot/phase_12/` is the canonical delivery registry and package-builder.

The pilot therefore supports both:

**Phase-12 full delivery**

and

**Arbitrary phase/stage delivery**

without creating duplicate delivery infrastructure.
---
