# General Factory Post-Pilot PaaS

## Purpose

The General Factory post-pilot PaaS provides the engineering and development
access layer for building, configuring, testing and validating QAI platform
projects and workflows.

PaaS is the first active post-pilot development surface.

The PaaS may provide:

- project workspaces
- notebooks
- IDE-based development
- workflow authoring
- configurable parameters
- virtual asset selection
- resource requirements
- simulation and emulation
- Factory execution
- Fabric integration
- results
- validation
- evidence and provenance

## Workflow Authoring

The PaaS should support both:

- visual / drag-and-drop workflow authoring
- code-based workflow authoring

Both authoring approaches should converge on a common logical workflow
representation.

Visual Workflow
    ->
Logical Workflow Model
    <-
Code Workflow

The General Factory remains the execution authority.

## Architectural Boundary

General Framework
    ->
PaaS Definition
    ->
General Factory
    ->
Execution / Fabric / Backend

The PaaS provides engineering access; it does not replace the General Factory.

## Post-Pilot Principle

PaaS is developed first.

IaaS capabilities are derived from the resources required by PaaS projects.

Validated PaaS capabilities may subsequently be packaged into SaaS.

## Current Status

Initial post-pilot structure established.

Detailed implementation will be developed incrementally.
