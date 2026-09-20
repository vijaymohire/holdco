# General Factory - Post-Pilot Assets

## Purpose

This area contains the implementation assets required to
engineer, productize, operationalize and deploy solutions
defined by the General Framework.

## Role

The General Factory defines HOW Framework definitions are
realized.

It may contain:

- Runtime components
- Resolvers
- Provisioners
- Generators
- Templates
- Deployment mechanisms
- Validation mechanisms
- Connectors
- Adapters
- Implementation bindings
- Generated deployment structures

## Bootstrapper

The General Factory Bootstrapper converts a deployment request
and Framework definitions into a concrete deployment structure.

Conceptual flow:

Deployment Request
        |
        v
Bootstrap Configuration
        |
        v
Profile Resolution
        |
        v
Framework Registry
        |
        v
Factory Registry
        |
        v
Package Resolution
        |
        v
Template / Asset Resolution
        |
        v
Generate Deployment Structure
        |
        v
Configure
        |
        v
Validate
        |
        v
Ready for Deployment

## Architectural Principle

Framework = WHAT

Factory = HOW

Bootstrapper = orchestrates HOW using WHAT.
