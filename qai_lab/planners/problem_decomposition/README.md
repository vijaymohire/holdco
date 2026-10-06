# QAI Problem Decomposition

Problem decomposition is a first-class QAI planning capability.

The working flow is:

Hard Problem
    ->
Complexity Analysis
    ->
Classical Reduction / Transformation
    ->
Partition / Decompose
    ->
Select Computational Modes
    ->
Execute
    ->
Assemble
    ->
Measure Quality
    ->
Adapt or Stop

Problem size is not defined only by qubit count.

Candidate dimensions include:

- problem size
- computational complexity
- dependency structure
- parameter count
- data volume
- connectivity
- time constraint
- quality requirement
- available classical resources
- available quantum resources

No universal decomposition advantage is assumed.
