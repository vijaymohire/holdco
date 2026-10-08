from typing import Protocol

from qai_runtime.models.lifecycle.models import RuntimeState


class LifecycleContract(Protocol):
    @property
    def state(self) -> RuntimeState:
        ...

    def initialize(self) -> None:
        ...

    def shutdown(self) -> None:
        ...
