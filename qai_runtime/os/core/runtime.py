from qai_runtime.models.lifecycle.models import RuntimeState


class QAIRuntime:
    """Initial native QAI Runtime lifecycle skeleton."""

    def __init__(self) -> None:
        self._state = RuntimeState.CREATED

    @property
    def state(self) -> RuntimeState:
        return self._state

    def initialize(self) -> None:
        self._state = RuntimeState.READY

    def shutdown(self) -> None:
        self._state = RuntimeState.STOPPED
