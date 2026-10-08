from typing import Protocol
from qai_runtime.models.execution.models import (
    ExecutionRequest,
    ExecutionPlan,
    ExecutionContext,
)


class ExecutionContract(Protocol):
    def plan(
        self,
        request: ExecutionRequest,
    ) -> ExecutionPlan:
        ...

    def execute(
        self,
        context: ExecutionContext,
    ):
        ...
