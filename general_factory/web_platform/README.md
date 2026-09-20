# General Factory - Common Web Platform

## Purpose

Contains the implementation side of the Common Web Platform.

This directory is common infrastructure and is intentionally
outside:

- pilot_assets
- post_pilot_assets

Individual pilot and post-pilot applications may use these
services and components.

## Factory Responsibilities

The Factory realizes the Framework Web Platform definitions.

Potential implementation areas include:

- Web Shell
- Micro-frontends
- API Gateway
- Authentication
- Authorization
- Platform Services
- Workspace Management
- Tenant Management
- SaaS
- PaaS
- Deployment

## Boundary

Framework:

Defines WHAT the Web Platform is.

Factory:

Implements HOW the Web Platform works.

Pilot/Post-Pilot:

Classifies the applications, products or deployment assets
that consume the common Web Platform.
