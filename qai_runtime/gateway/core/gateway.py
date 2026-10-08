from typing import Protocol

from qai_runtime.models.execution.models import ExecutionContext


class GatewayInterface(Protocol):
    """Boundary between QAI Runtime and external execution environments."""

    def execute(
        self,
        context: ExecutionContext,
    ):
        ...
