from qai_runtime.models.routing.models import BackendDescriptor, Route


class QAIRouter:
    """Initial provider-neutral routing boundary."""

    def route(self, backend: BackendDescriptor) -> Route:
        return Route(
            route_id=f"route:{backend.backend_id}",
            backend_id=backend.backend_id,
            rationale="Initial contract-level route."
        )
