from qai_runtime.os.core.runtime import QAIRuntime
from qai_runtime.models.lifecycle.models import RuntimeState


def test_runtime_lifecycle():
    runtime = QAIRuntime()

    assert runtime.state == RuntimeState.CREATED

    runtime.initialize()

    assert runtime.state == RuntimeState.READY

    runtime.shutdown()

    assert runtime.state == RuntimeState.STOPPED
