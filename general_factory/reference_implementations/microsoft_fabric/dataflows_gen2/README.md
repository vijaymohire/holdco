# Microsoft Fabric Dataflows Gen2 Reference

## Purpose

Working Microsoft Fabric example used as the first Factory
integration candidate for data/control implementation.

## Demonstrated Pattern

Source
  ->
Dataflow Gen2
  ->
Transformation
  ->
Lakehouse
  ->
Pipeline
  ->
Execution
  ->
Verification

## Factory Test

Framework capability:
FABRIC_DATAFLOW_EXECUTION

Factory integration:
connector -> adapter -> implementation

## Important Boundary

This sample is an implementation reference.

It does not define the complete QAI Fabric architecture,
metadata model, viewpoints, governance model, authorization
or approval model.

Those belong to the General Framework and Fabric Runtime design.
