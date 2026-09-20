# General Framework - Common Web Platform

## Purpose

The Common Web Platform defines the technology-neutral
architecture and contracts through which users and external
systems interact with the General Framework and General Factory.

This Web Platform is common infrastructure.

It is intentionally located outside:

- pilot_assets
- post_pilot_assets

Pilot and post-pilot applications may consume this architecture
without duplicating it.

## Architectural Role

The Web Platform is the experience and access architecture.

It provides the logical structure for:

- Web Shell
- Micro-frontends
- API Gateway
- Services
- SaaS
- PaaS
- Access Model
- Roles
- Workspaces
- Tenancy
- Security
- Deployment

## SaaS

SaaS provides controlled consumption of platform capabilities.

Concept:

User
  |
  v
Web Shell
  |
  v
SaaS Experience
  |
  v
API Gateway
  |
  v
Platform Services
  |
  v
General Factory

SaaS is primarily oriented toward consuming existing
capabilities.

## PaaS

PaaS provides a controlled project environment in which
technical users can build new capabilities.

Concept:

User
  |
  v
Web Shell
  |
  v
PaaS Experience
  |
  v
Project Workspace
  |
  +-- Browser IDE
  +-- Source / Code
  +-- Workflow
  +-- Custom Functions
  +-- Interfaces
  +-- Virtual Assets
  +-- Data
  +-- Models
  +-- Simulation
  +-- Emulation
  +-- GPU
  +-- HPC
  +-- Quantum Simulator
  +-- QPU Connections

## Lifecycle Boundary

The Web Platform architecture is common.

Implementations using this architecture may be classified as:

- Pilot
- Post-Pilot

The lifecycle classification belongs to the consuming asset,
application or implementation, not to the common Web Platform
architecture itself.

## Framework Boundary

This directory defines:

- logical architecture
- contracts
- access models
- role models
- workspace models
- tenant models
- SaaS/PaaS concepts
- interface boundaries
- security requirements
- deployment concepts

Vendor-specific implementation belongs in the General Factory.

## Architectural Principle

Common Web Platform Architecture
        |
        +-- Pilot implementations
        |
        +-- Post-Pilot implementations

Do not duplicate the Web Platform architecture under
pilot_assets or post_pilot_assets.
