# VirtualQubit Allocation Roles

VirtualQubit resources may be allocated according to workload role.

Initial experimental roles:

- Computational
- Communication
- Memory
- Ancilla
- Syndrome
- Control/Support

Role allocation is separate from physical mapping.

A physical resource may potentially serve different roles in different
execution phases where the hardware and workload permit safe reuse.
