# Web Platform Architecture

## Logical Architecture

The Common Web Platform provides the external interaction
boundary for the General Framework and General Factory.

Conceptual structure:

                        WEB PLATFORM
                              |
              +---------------+---------------+
              |                               |
             SaaS                            PaaS
              |                               |
       Use the Platform              Build on the Platform
              |                               |
       API-driven Experience          Project Workspace
              |                               |
              +---------------+---------------+
                              |
                         API Gateway
                              |
                         Services
                              |
                       General Factory
                              |
                       General Framework

## Major Architectural Components

### Web Shell

Common entry point and navigation environment.

### Micro-frontends

Composable user experiences for independent platform
capabilities.

### API Gateway

Controlled service access boundary.

### Services

Business and platform services exposed through APIs.

### SaaS

Controlled consumption of platform capabilities.

### PaaS

Controlled engineering and development environment.

### Workspace

Logical project environment containing code, data, workflows,
models, virtual assets and execution resources.

### Tenant

Logical isolation boundary for organizations and clients.

### Roles

Defines access according to user responsibility.

### Security

Authentication, authorization, policy and security controls.

### Deployment

Logical deployment requirements and realization models.
