from typing import Protocol

from qai_runtime.models.result.models import ExecutionResult


class ResultContract(Protocol):
    def normalize(
        self,
        result: ExecutionResult,
    ) -> ExecutionResult:
        ...
