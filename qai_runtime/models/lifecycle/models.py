from enum import Enum


class RuntimeState(str, Enum):
    CREATED = "created"
    INITIALIZING = "initializing"
    READY = "ready"
    EXECUTING = "executing"
    DEGRADED = "degraded"
    STOPPING = "stopping"
    STOPPED = "stopped"
    FAILED = "failed"
