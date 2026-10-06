# HPC–FPGA Integration

Defines the experimental boundary between HPC/GPU workloads and
FPGA-assisted low-latency control.

Potential separation:

HPC/GPU
    |
    | preparation / computation / analysis
    v
FPGA
    |
    | deterministic control / events / timing
    v
Quantum Runtime / Emulator / Backend

The boundary is experimental and should be validated against actual
hardware and workload requirements.
