# General Factory Post-Pilot IaaS

## Purpose

The General Factory post-pilot IaaS provides the logical resource and backend
access layer required by PaaS projects and other Factory-controlled workloads.

IaaS represents resources through capability and resource abstractions rather
than binding projects directly to infrastructure providers.

## Resource Examples

Resources may include:

- CPU
- GPU
- HPC
- storage
- network
- high-speed interconnects
- quantum simulators
- quantum emulators
- external QPU resources
- AI / GenAI models
- partner services
- local or remote infrastructure

## Resource Resolution

Logical Resource Requirement
    ->
Resource Fabric
    ->
Available Resource
    ->
Implementation Binding
    ->
Execution

PaaS should request logical resource capabilities.

The Factory resolves those requirements to available resources.

## Architectural Boundary

IaaS is a resource and backend access layer.

It does not define the logical architecture of the platform.

General Framework defines the resource requirements and contracts.

General Factory implements resource resolution and backend integration.

## Development Principle

IaaS implementation should initially be derived from actual PaaS requirements.

The platform should avoid building a large infrastructure layer before concrete
resource requirements are established.

## Current Status

Initial post-pilot structure established.

Detailed implementation will be developed incrementally.
