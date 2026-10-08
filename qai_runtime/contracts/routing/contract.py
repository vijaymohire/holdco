from typing import Protocol, Sequence

from qai_runtime.models.routing.models import (
    BackendDescriptor,
    Route,
)


class RoutingContract(Protocol):
    def route(
        self,
        backends: Sequence[BackendDescriptor],
    ) -> Route:
        ...
