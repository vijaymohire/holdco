# General Factory Post-Pilot SaaS

## Purpose

The General Factory post-pilot SaaS provides the controlled client-facing
consumption and productization layer for validated platform capabilities.

SaaS should expose selected products and use cases without requiring clients
to manage Factory implementation details or infrastructure configuration.

## Typical Flow

Client
    ->
Product
    ->
Use Case
    ->
Guided Parameters
    ->
Approved Workflow
    ->
General Factory
    ->
IaaS / Fabric / Backend
    ->
Results
    ->
Evidence / Report

## Product and Use-Case Model

SaaS products may be organized by:

- country
- sector
- industry
- product topic
- use case
- client-specific problem

Example:

Country
    ->
Product Topic
    ->
Use Case
    ->
Client Use Case
    ->
SaaS Workflow
    ->
Factory / Fabric Calls
    ->
Result

## Thin SaaS Principle

SaaS should remain a controlled product experience rather than duplicating
Factory execution logic.

SaaS should reuse validated:

- workflows
- Factory capabilities
- Fabric calls
- resource configurations
- validation mechanisms
- evidence mechanisms

## Relationship to PaaS

PaaS
    ->
Develop
    ->
Test
    ->
Validate
    ->
Standardize / Package
    ->
SaaS

SaaS is therefore the final consumption layer in the initial
post-pilot development sequence.

## Current Status

Initial post-pilot structure established.

Detailed SaaS implementation will follow PaaS and IaaS development.
