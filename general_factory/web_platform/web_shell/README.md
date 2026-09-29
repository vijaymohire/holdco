# Web Shell - Factory Implementation

Implementation area for the common Web Shell.

The Web Shell provides:

- Navigation
- Identity context
- Tenant context
- Project context
- Role context
- Micro-frontend composition
- Common session management

Technology selection belongs to the Factory implementation.
---
# Web Shell - Factory Implementation

## Overview

The **Web Shell** is the common composition and application-hosting boundary for the Web Platform.

It provides the shared client-side environment within which individual micro-frontends are loaded, composed, navigated and operated.

The Web Shell is responsible for common user-experience and session-context concerns, including:

- navigation;
- identity context;
- tenant context;
- project context;
- role context;
- micro-frontend composition;
- common session management.

The Web Shell is a **presentation and composition implementation**. It is not the semantic authority for workflows, resources, projects, experiments or domain models, and it is not the security authority for authorization decisions.

The intended architecture is:

    User
      │
      ▼
    Web Shell
      │
      ├── Navigation
      ├── Identity Context
      ├── Tenant Context
      ├── Project Context
      ├── Role Context
      ├── Session Context
      └── Micro-Frontend Composition
              │
              ▼
        Micro-Frontends
              │
              ▼
          API Gateway
              │
              ▼
        Platform Services
              │
              ▼
        General Factory
              │
              ▼
        Resource Fabric
              │
              ▼
        Execution Resources

---

## Purpose

The Web Shell provides a common host environment for the Web Platform.

Its purposes are to:

- establish a consistent application experience;
- provide common navigation;
- establish and expose client-side identity context;
- establish tenant context;
- establish project context;
- expose applicable role/context information;
- compose micro-frontends;
- manage common session state;
- provide common application lifecycle behavior;
- provide shared UI infrastructure;
- coordinate transitions between platform views;
- provide a stable host for independently evolving micro-frontends.

The Web Shell should minimize business logic so that individual platform capabilities remain within their appropriate services and implementation boundaries.

---

# Architectural Position

The Web Shell sits at the top of the Web Platform presentation architecture.

A conceptual structure is:

    Web Platform
    │
    ├── Web Shell
    │     ├── Navigation
    │     ├── Session
    │     ├── Identity Context
    │     ├── Tenant Context
    │     ├── Project Context
    │     └── Role Context
    │
    ├── Micro-Frontends
    │     ├── Client Views
    │     ├── Workflow Views
    │     ├── Resource Views
    │     ├── Project Views
    │     ├── Experiment Views
    │     ├── Results Views
    │     └── Administration Views
    │
    ├── API Gateway
    ├── Authentication
    ├── Authorization
    └── Platform Services

The Web Shell composes the experience but does not become the implementation authority for all underlying capabilities.

---

# Web Shell Responsibilities

The Web Shell should provide common functionality that is shared across multiple micro-frontends.

Primary responsibilities include:

1. Application bootstrapping
2. Navigation
3. Identity context
4. Tenant context
5. Project context
6. Role/context presentation
7. Session management
8. Micro-frontend composition
9. Common layout
10. Common notifications
11. Common error handling
12. Application-level loading states
13. Common client configuration
14. Client-side telemetry hooks
15. Application lifecycle management

The exact implementation may evolve as the platform matures.

---

# Navigation

The Web Shell provides the common navigation structure.

Navigation may include:

- Home;
- Dashboard;
- Projects;
- Workflows;
- Virtual Assets;
- Experiments;
- Notebooks;
- Resources;
- Simulation;
- Quantum;
- Results;
- Evidence;
- Deployments;
- Administration.

The actual navigation exposed to a user may depend on:

- tenant;
- project;
- role;
- enabled services;
- environment;
- authorization.

Navigation visibility is a user-experience concern.

It is **not an authorization mechanism**.

A hidden navigation item must not be treated as proof that an operation is inaccessible.

---

# Application Context

The Web Shell maintains the client-side representation of the current application context.

A conceptual context is:

    Application Context
    │
    ├── Identity
    ├── Tenant
    ├── Project
    ├── Role / Context
    ├── Environment
    ├── Session
    └── Application Configuration

This context can be consumed by micro-frontends.

The authoritative server-side state remains with the relevant platform services.

---

# Identity Context

The Web Shell provides the authenticated identity context required by the application experience.

Potential information includes:

- authenticated user;
- display information;
- identity identifier;
- authentication state;
- session state;
- available tenant memberships;
- applicable role/context information.

The Web Shell does not authenticate the user itself.

Authentication remains the responsibility of the Authentication boundary.

The Web Shell consumes the resulting authenticated session/context.

---

# Authentication Relationship

The relationship is:

    User
      │
      ▼
    Authentication
      │
      ▼
    Authenticated Identity
      │
      ▼
    Web Shell
      │
      ▼
    Identity Context

The Web Shell may initiate authentication flows or redirect users to the appropriate authentication mechanism, but the underlying identity verification remains outside the shell.

---

# Tenant Context

The Web Shell provides the current tenant context to the application experience.

For example:

    User
      │
      ├── Tenant A
      ├── Tenant B
      └── Tenant C
              │
              ▼
        Selected Tenant
              │
              ▼
          Web Shell
              │
              ▼
        Tenant Context

The Tenant Manager remains responsible for tenant lifecycle and tenant management.

The Web Shell should not independently invent or modify tenant membership.

---

# Tenant Selection

Where a user belongs to multiple tenants, the Web Shell may provide a tenant selector.

A conceptual flow is:

    Authentication
         │
         ▼
    Available Tenants
         │
         ▼
    Tenant Selection
         │
         ▼
    Tenant Context
         │
         ▼
    Project Selection

The selected tenant must be validated by the server-side platform.

Changing a tenant identifier in client-side state must never be sufficient to gain access to another tenant.

---

# Project Context

The Web Shell may maintain the current project context.

Example:

    Tenant
      │
      ▼
    Project Selection
      │
      ▼
    Current Project
      │
      ├── Workflow
      ├── Experiments
      ├── Virtual Assets
      ├── Notebooks
      ├── Results
      └── Evidence

Project lifecycle and project data remain the responsibility of the Project Management Service.

The Web Shell provides the common client context used to navigate between project-related views.

---

# Role Context

The Web Shell may expose role information to the user interface.

Potential role/context examples include:

- Client;
- Business Analyst;
- Domain Expert;
- Workflow Designer;
- Developer;
- Data Scientist;
- QAI Engineer;
- Systems Engineer;
- Operations;
- Administrator.

These are presentation and interaction contexts.

They should not be treated as the complete authorization model.

Authorization remains a server-side responsibility.

---

# Role-Based User Experience

Different users may see different navigation and micro-frontends based on their applicable role and permissions.

For example:

    User Context
         │
         ▼
    Web Shell
         │
         ├── Client View
         ├── Business View
         ├── Engineering View
         ├── Data Science View
         └── Operations View

The same underlying platform services may support several user experiences.

This allows the platform to separate:

- capability;
- implementation;
- presentation;
- authorization.

---

# Micro-Frontend Composition

One of the primary responsibilities of the Web Shell is composing micro-frontends into a common application.

Conceptually:

    Web Shell
      │
      ├── Client Micro-Frontend
      ├── Project Micro-Frontend
      ├── Workflow Micro-Frontend
      ├── Resource Micro-Frontend
      ├── Experiment Micro-Frontend
      ├── Notebook Micro-Frontend
      ├── Results Micro-Frontend
      ├── Evidence Micro-Frontend
      └── Administration Micro-Frontend

The Web Shell provides the host environment.

Individual micro-frontends provide focused user experiences.

---

# Micro-Frontend Independence

Micro-frontends should remain independently evolvable where practical.

The Web Shell should avoid:

- embedding business logic from every micro-frontend;
- directly manipulating internal micro-frontend state;
- creating tight compile-time coupling;
- duplicating service logic;
- becoming a monolithic UI controller.

Instead, the shell should provide shared infrastructure and application context.

---

# Micro-Frontend Lifecycle

A conceptual lifecycle is:

    Discover
      │
      ▼
    Load
      │
      ▼
    Initialize
      │
      ▼
    Mount
      │
      ▼
    Operate
      │
      ▼
    Update
      │
      ▼
    Unmount
      │
      ▼
    Release

The implementation may vary depending on the selected micro-frontend technology.

---

# Micro-Frontend Registry

A future implementation may maintain a registry describing available micro-frontends.

A conceptual registry entry may include:

    Micro-Frontend
    ├── ID
    ├── Name
    ├── Version
    ├── Route
    ├── Capability
    ├── Required Context
    ├── Dependencies
    ├── Entry Point
    └── Status

The registry may be static, dynamically resolved, or integrated with the broader Factory Registry depending on implementation requirements.

---

# Capability-Based Composition

Micro-frontends should preferably be composed according to platform capabilities rather than hard-coded business assumptions.

For example:

    Capability
       │
       ├── Workflow
       │      └── Workflow View
       │
       ├── Resource Management
       │      └── Resource View
       │
       ├── Experiment Management
       │      └── Experiment View
       │
       └── Evidence
              └── Evidence View

This allows capabilities to evolve without requiring the entire Web Shell to be redesigned.

---

# Shared Layout

The Web Shell may provide common layout elements such as:

- application header;
- navigation menu;
- tenant selector;
- project selector;
- user/session menu;
- notifications;
- breadcrumbs;
- page container;
- status area;
- common footer;
- loading indicators.

The exact layout should remain independent of the underlying platform services.

---

# Common Session Management

The Web Shell provides common session-state handling for the application.

Potential responsibilities include:

- session initialization;
- session state;
- session expiration detection;
- authentication-state changes;
- logout;
- tenant-context reset;
- project-context reset;
- session recovery;
- client-side cleanup.

The Web Shell should not store sensitive credentials unnecessarily.

Authentication tokens and session credentials should be handled according to the selected authentication architecture.

---

# Session Lifecycle

A conceptual application session is:

    Application Start
          │
          ▼
    Session Check
          │
          ├── Not Authenticated
          │       │
          │       ▼
          │    Authenticate
          │
          ▼
    Identity Context
          │
          ▼
    Tenant Context
          │
          ▼
    Project Context
          │
          ▼
    Application Ready
          │
          ▼
    Session Active
          │
          ├── Refresh
          ├── Context Change
          └── Expiration
                  │
                  ▼
                Logout

---

# Context Changes

Changing application context should be explicit.

Examples include:

- switching tenant;
- switching project;
- changing environment;
- changing user role/context where applicable.

A context change may require:

- clearing stale client state;
- refreshing data;
- remounting micro-frontends;
- revalidating authorization;
- updating navigation;
- refreshing resource views.

For example:

    Tenant A
       │
       ▼
    Project A1
       │
       ▼
    Switch Tenant
       │
       ▼
    Tenant B
       │
       ├── Clear A1 state
       ├── Refresh authorization
       ├── Load B projects
       └── Select B project

---

# Authorization Boundary

The Web Shell may consume authorization information to determine:

- which navigation options to display;
- which micro-frontends are available;
- which actions should be enabled;
- which routes should be accessible.

However, authorization must also be enforced server-side.

The correct separation is:

    Web Shell
       │
       └── User Experience
                │
                ▼
          Authorization Service
                │
                └── Server-Side Decision

The Web Shell is therefore **not** the authorization authority.

---

# API Gateway Relationship

Micro-frontends should generally access backend services through the API Gateway.

A typical flow is:

    Micro-Frontend
         │
         ▼
      Web Shell
         │
         ▼
     API Gateway
         │
         ├── Authentication
         ├── Authorization
         └── Routing
                │
                ▼
            Services

The Web Shell should not create a parallel backend-access architecture.

---

# Services Relationship

The Web Shell consumes platform capabilities through the Services layer.

Examples include:

- Project Management;
- Workflow;
- Experiment Management;
- Virtual Assets;
- Resource Management;
- Simulation;
- Quantum Resources;
- Evidence;
- Deployment;
- Administration.

The Web Shell presents these capabilities but does not implement them as client-side business logic.

---

# General Factory Relationship

The Web Shell does not directly determine concrete implementation bindings.

The relationship is:

    Web Shell
       │
       ▼
    API / Service Layer
       │
       ▼
    General Factory
       │
       ├── Registry
       ├── Connectors
       ├── Adapters
       └── Runtime Services
       │
       ▼
    Concrete Implementation

This preserves the distinction between:

- presentation;
- service capability;
- implementation resolution;
- execution.

---

# Resource Fabric Relationship

The Web Shell may present resource information through Resource Views.

However:

**Resource Views are not the Resource Fabric.**

The flow is:

    Web Shell
       │
       ▼
    Resource Micro-Frontend
       │
       ▼
    Resource Management Service
       │
       ▼
    Resource Fabric
       │
       ▼
    Available Resources

The Web Shell therefore presents resource information but does not become the authoritative resource-resolution layer.

---

# Workflow Integration

The Web Shell may host:

- Workflow View;
- Visual Workflow Designer;
- Workflow monitoring;
- Workflow results;
- workflow-related administration.

A typical flow is:

    Web Shell
       │
       ▼
    Workflow Micro-Frontend
       │
       ▼
    Workflow Service
       │
       ▼
    Workflow Engine
       │
       ▼
    General Factory
       │
       ▼
    Execution

The Web Shell is not the workflow semantic authority and is not the Workflow Engine.

---

# Visual Workflow Integration

The Web Shell may host a visual workflow designer based on an implementation such as:

- React Flow;
- Eclipse GLSP;
- BPMN-oriented tooling;
- another compatible graphical editor.

The visual editor remains a presentation/construction implementation.

The logical workflow model remains authoritative.

The Web Shell provides the host environment in which the editor is loaded.

---

# Notebook and IDE Integration

The Web Shell may provide navigation to:

- Jupyter;
- experiment notebooks;
- browser IDE;
- Eclipse Theia;
- VS Code-based environments;
- Eclipse Che;
- other supported engineering workspaces.

These environments may operate as micro-frontends, embedded applications, external workspace integrations, or separate application surfaces depending on deployment architecture.

The Web Shell should not attempt to reproduce the complete functionality of an IDE or notebook runtime.

---

# PaaS Integration

The QAI PaaS may use the Web Shell as its common application host.

A conceptual structure is:

    QAI PaaS
       │
       ▼
    Web Shell
       │
       ├── Project
       ├── Code / IDE
       ├── Notebook
       ├── Workflow
       ├── Virtual Assets
       ├── Experiments
       ├── Resources
       ├── Simulation
       ├── Quantum
       ├── Results
       └── Evidence
              │
              ▼
        Platform Services

This allows the PaaS to provide a coherent engineering environment while retaining modular micro-frontends.

---

# SaaS Integration

The future SaaS layer may use the Web Shell for controlled application composition.

SaaS may expose a more limited experience:

    SaaS Web Shell
       │
       ├── Dashboard
       ├── Projects
       ├── Workflow Consumption
       ├── Results
       ├── Reports
       └── Evidence

PaaS and SaaS may share common shell capabilities while exposing different micro-frontends and service capabilities.

---

# Tenant Integration

The Web Shell consumes tenant context from the Tenant Manager and associated platform services.

Conceptually:

    Authentication
         │
         ▼
    Identity
         │
         ▼
    Tenant Manager
         │
         ▼
    Tenant Context
         │
         ▼
    Web Shell
         │
         ▼
    Tenant-Aware Micro-Frontends

The shell should not independently implement tenant lifecycle operations.

---

# Project Integration

The Web Shell may provide project selection and project-aware navigation.

The Project Management Service remains responsible for:

- project creation;
- project configuration;
- project membership;
- project lifecycle;
- project metadata.

The shell consumes the project context required for navigation and composition.

---

# Role-Aware Composition

The Web Shell may determine which micro-frontends should be loaded based on available capabilities and role context.

For example:

    Role Context
       │
       ├── Client
       │      └── Client View
       │
       ├── Developer
       │      ├── IDE
       │      ├── Workflow
       │      └── Deployment
       │
       ├── Data Scientist
       │      ├── Notebook
       │      └── Experiment
       │
       └── Operations
              ├── Resources
              ├── Deployments
              └── Evidence

This is a presentation strategy.

Server-side authorization remains authoritative.

---

# Notifications

The Web Shell may provide a common notification mechanism.

Potential notification types include:

- workflow completed;
- experiment completed;
- deployment completed;
- simulation completed;
- quantum job completed;
- resource unavailable;
- service unavailable;
- session expiration;
- administrative events.

Notifications should reference service/backend state rather than becoming an independent source of truth.

---

# Error Handling

The Web Shell may provide common handling for:

- authentication failures;
- authorization failures;
- tenant-context errors;
- project-context errors;
- service errors;
- network failures;
- unavailable micro-frontends;
- expired sessions;
- invalid routes.

A conceptual error flow is:

    Backend Error
         │
         ▼
    API Gateway / Service
         │
         ▼
    Web Shell
         │
         ├── Recover
         ├── Retry
         ├── Redirect
         └── Display Error

Sensitive implementation details should not be exposed unnecessarily to end users.

---

# Loading and Availability States

The Web Shell may manage application-level loading states.

Examples include:

- loading identity;
- loading tenant context;
- loading project context;
- loading micro-frontends;
- loading configuration;
- recovering session.

Individual micro-frontends remain responsible for their own detailed loading states.

---

# Common Configuration

The Web Shell may consume common client configuration such as:

- API endpoint;
- environment;
- application version;
- enabled modules;
- feature configuration;
- micro-frontend registry;
- telemetry configuration.

Secrets should not be embedded into publicly delivered client configuration.

---

# Configuration by Environment

The same shell implementation may operate in:

- local;
- development;
- test;
- staging;
- production.

Example:

    Web Shell
       │
       ├── Local
       ├── Development
       ├── Test
       ├── Staging
       └── Production

Environment-specific values should be supplied through appropriate configuration mechanisms rather than hard-coded into the application.

---

# Technology Selection

Technology selection belongs to the Factory implementation.

The architecture does not mandate a specific Web Shell framework.

Potential implementation approaches may include:

- React;
- Angular;
- Vue;
- Web Components;
- module federation;
- single-spa;
- custom composition mechanisms;
- other compatible web application frameworks.

The selected technology should support the required:

- navigation;
- session handling;
- context propagation;
- micro-frontend composition;
- versioning;
- observability;
- security;
- deployment model.

Technology selection should not redefine the logical Web Platform architecture.

---

# Micro-Frontend Composition Technologies

Possible implementation approaches include:

### Module Federation

Provides runtime-oriented composition of independently built frontend modules.

### Single-SPA

Provides a framework for composing multiple frontend applications.

### Web Components

Provides technology-neutral browser components that can be hosted by different frontend frameworks.

### Custom Composition

May be appropriate where the platform requires a controlled internal composition mechanism.

These are implementation choices rather than architectural requirements.

---

# Performance

The Web Shell should minimize common startup overhead.

Potential concerns include:

- initial bundle size;
- micro-frontend loading;
- lazy loading;
- caching;
- route-level loading;
- shared dependencies;
- rendering performance;
- network requests.

Large engineering components such as IDEs and notebooks may be loaded only when required.

---

# Accessibility

The Web Shell should support accessible navigation and common application behavior.

Potential considerations include:

- keyboard navigation;
- focus management;
- semantic navigation;
- screen-reader compatibility;
- accessible dialogs;
- accessible notifications;
- sufficient interaction feedback.

Individual micro-frontends remain responsible for their own accessibility within the shared shell.

---

# Internationalization

If required by the platform, common shell services may support:

- locale selection;
- language configuration;
- date/time formatting;
- number formatting;
- translation resources.

Domain-specific micro-frontends may provide additional localized content.

---

# Observability

The Web Shell may expose client-side observability hooks for:

- page navigation;
- micro-frontend loading;
- application errors;
- session events;
- tenant context changes;
- project context changes;
- performance;
- frontend availability.

Observability data should be handled according to privacy and security requirements.

---

# Audit Relationship

The Web Shell may generate client-side events, but authoritative audit records should be generated by appropriate backend services.

For example:

    User clicks "Delete Project"
          │
          ▼
    Web Shell Event
          │
          ▼
    API Request
          │
          ▼
    Project Service
          │
          ▼
    Authorization
          │
          ▼
    Authoritative Audit Record

This avoids treating client telemetry as authoritative business audit evidence.

---

# Security

The Web Shell should follow secure application principles.

Important considerations include:

- secure session handling;
- secure authentication integration;
- safe token handling;
- protection against cross-site scripting;
- protection against cross-site request forgery where applicable;
- secure route handling;
- tenant-context validation;
- project-context validation;
- dependency management;
- micro-frontend trust boundaries;
- secure configuration;
- content security policy where appropriate.

Client-side controls should never replace server-side authorization.

---

# Micro-Frontend Trust

Not every micro-frontend should automatically be considered fully trusted.

Where independently developed modules are supported, the architecture should consider:

- origin;
- version;
- dependency;
- permission scope;
- communication mechanism;
- data exposure;
- deployment source.

The Web Shell should avoid granting broad privileges to a micro-frontend simply because it is loaded into the shell.

---

# Session and Tenant Reset

When the session ends, the Web Shell should clear tenant/project-scoped client state.

For example:

    Logout
      │
      ▼
    Clear Session
      │
      ├── Clear Identity Context
      ├── Clear Tenant Context
      ├── Clear Project Context
      ├── Unmount Protected Micro-Frontends
      └── Clear Sensitive Client State
      │
      ▼
    Public / Authentication View

This reduces the possibility of stale tenant data remaining visible after logout.

---

# Deployment

The Web Shell may be deployed using:

- static web hosting;
- containerized web server;
- VPS;
- public cloud;
- private cloud;
- enterprise infrastructure;
- hybrid deployment.

Deployment choice is independent of the logical shell architecture.

---

# Versioning

The Web Shell should support controlled versioning.

Version compatibility may involve:

- shell version;
- micro-frontend version;
- API version;
- service version;
- shared component version;
- configuration version.

Compatibility contracts should be established where independently deployed micro-frontends are used.

---

# Backward Compatibility

The shell should avoid breaking independently deployed micro-frontends unnecessarily.

Potential mechanisms include:

- stable shared interfaces;
- versioned contracts;
- compatibility adapters;
- deprecation periods;
- capability detection;
- controlled rollout.

---

# Post-Pilot Demonstrator

A useful post-pilot Web Shell demonstrator should prove the common application experience.

Example:

    1. Authenticate
    2. Load Web Shell
    3. Establish tenant context
    4. Select project
    5. Load role/context
    6. Display navigation
    7. Load Project View
    8. Load Workflow View
    9. Load Resource View
    10. Execute a workflow
    11. Display execution status
    12. Display results
    13. Display evidence
    14. Switch project
    15. Refresh project-scoped views
    16. Logout
    17. Clear protected context

This demonstrates the shell as a common host rather than as a business-logic monolith.

---

# Example End-to-End Flow

A representative post-pilot flow is:

    User
      │
      ▼
    Authentication
      │
      ▼
    Web Shell
      │
      ├── Identity Context
      ├── Tenant Context
      ├── Project Context
      └── Role Context
      │
      ▼
    Micro-Frontend
      │
      ▼
    API Gateway
      │
      ▼
    Authorization
      │
      ▼
    Platform Service
      │
      ▼
    General Factory
      │
      ▼
    Resource Fabric
      │
      ▼
    Execution Backend
      │
      ▼
    Results / Evidence
      │
      ▼
    Micro-Frontend
      │
      ▼
    Web Shell

This preserves the separation between presentation, access, services, factory resolution, resources and execution.

---

# Relationship to the Agriculture Digital Farm Pilot

The Agriculture Digital Farm pilot provides implementation evidence for the need to present different operational views over a common platform.

Potential reusable presentation concepts include:

- project context;
- asset context;
- workflow context;
- execution status;
- results;
- evidence;
- resource information.

The post-pilot Web Shell should generalize these concepts rather than embedding agriculture-specific navigation or domain logic.

Agriculture-specific views should remain in the appropriate industry/application implementation.

---

# Relationship to Virtual-First

The Web Shell may provide common navigation across execution modes:

    Virtual-First
       │
       ├── Simulation
       ├── Emulation
       ├── AI/ML
       ├── Quantum Simulation
       ├── Quantum Emulation
       └── Physical Execution
              │
              ▼
          Results / Evidence

The shell presents the available experience.

Execution-mode resolution remains a service/factory concern.

---

# Relationship to General Factory Reference Implementations

The Web Shell can host or navigate to reference implementations under:

- `reference_implementations/micro_frontends/`
- `reference_implementations/workflow/`
- `reference_implementations/workflow_designer/`
- `reference_implementations/ide/`
- `reference_implementations/notebooks/`
- `reference_implementations/qai_platform/`
- `reference_implementations/virtual_first/`

The Web Shell itself remains the common host/composition layer.

---

# Suggested Directory Structure

A future implementation may organize this directory as:

    web_shell/
    ├── README.md
    ├── app/
    ├── navigation/
    ├── context/
    │   ├── identity/
    │   ├── tenant/
    │   ├── project/
    │   └── role/
    ├── session/
    ├── composition/
    ├── registry/
    ├── routing/
    ├── notifications/
    ├── configuration/
    ├── observability/
    ├── security/
    ├── shared/
    ├── tests/
    └── examples/

The exact implementation structure may evolve with the selected technology.

---

# Non-Goals

The Web Shell does not define:

- authentication itself;
- authorization policy enforcement;
- tenant lifecycle management;
- project lifecycle management;
- workflow semantics;
- workflow execution;
- resource resolution;
- General Framework semantics;
- General Factory implementation resolution;
- infrastructure provisioning;
- domain-specific business logic;
- complete micro-frontend business functionality.

---

# Scope

The Web Shell covers:

- common application hosting;
- navigation;
- application context;
- identity context;
- tenant context;
- project context;
- role/context presentation;
- common session management;
- micro-frontend composition;
- shared layout;
- common notifications;
- application lifecycle;
- common client configuration;
- frontend observability;
- integration with authentication;
- integration with authorization;
- integration with Tenant Manager;
- integration with platform services.

---

# Current Status

**Status:** Post-pilot architecture / reference implementation definition.

The Web Shell establishes the common presentation and composition boundary required for the General Factory Web Platform, QAI PaaS and future SaaS experiences.

The architecture defines the intended implementation responsibility; it does not imply that a production-grade Web Shell has already been implemented.

---

# Guiding Principles

The central principles are:

> **The Web Shell composes the application; it does not become the application architecture.**

> **Identity context comes from authentication.**

> **Tenant context comes from the Tenant Manager and platform services.**

> **Authorization remains server-side.**

> **Projects and services remain owned by their respective services.**

> **Micro-frontends remain focused and independently evolvable.**

> **The General Factory remains the implementation-resolution authority.**

> **The Resource Fabric remains the resource-resolution authority.**

> **Technology selection belongs to the Factory implementation.**

These boundaries allow the Web Platform to provide a consistent user experience without coupling presentation, service logic, factory resolution and infrastructure into a single monolithic application.

---

# Future Evolution

Future development may include:

- Web Shell reference implementation;
- micro-frontend registry;
- dynamic micro-frontend loading;
- tenant/project context providers;
- role-aware navigation;
- common session manager;
- shared component library;
- application routing;
- frontend error boundaries;
- notification framework;
- frontend observability;
- secure context propagation;
- PaaS shell implementation;
- SaaS shell implementation;
- independent micro-frontend deployment;
- version compatibility management;
- progressive micro-frontend loading;
- accessibility validation;
- automated shell conformance tests.

The Web Shell is therefore intended to become the reusable **common application host and composition boundary** for the General Factory Web Platform while preserving clear separation between user experience, identity, tenant management, authorization, services, factory resolution and resource resolution.
---


