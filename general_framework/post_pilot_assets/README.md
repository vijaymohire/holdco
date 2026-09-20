# General Framework - Post-Pilot Assets

## Purpose

This area contains the architectural and logical definitions
required to engineer, productize and operationalize validated
pilot capabilities.

## Role

The General Framework defines WHAT the system is:

- Architecture
- Models
- Capabilities
- Interfaces
- Workflows
- Deployment definitions
- Deployment profiles
- Industry structures
- Client structures
- Problem-domain structures
- Package definitions
- Registries
- Governance and engineering contracts

The Framework does not contain vendor-specific implementation
logic. Implementation belongs in the General Factory.

## Pilot vs Post-Pilot

Pilot assets support:

- Discovery
- Experimentation
- Validation
- Proof of value

Post-pilot assets support:

- Engineering
- Productization
- Operationalization
- Client deployment
- Reuse and scaling

## Bootstrapper Boundary

The Framework defines the logical structure, contracts,
configuration models, profiles, package structures and
deployment definitions required by the General Factory
Bootstrapper.

The executable Bootstrapper implementation belongs in the
General Factory.

## Architectural Principle

Framework = WHAT

Factory = HOW

Bootstrapper = transforms deployment definitions into
deployable structures using Framework definitions and
Factory implementations.
