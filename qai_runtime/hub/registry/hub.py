class QAIHub:
    """Initial Runtime registry/discovery boundary."""

    def __init__(self) -> None:
        self._registries = {}

    def register(self, category: str, identifier: str, value) -> None:
        self._registries.setdefault(category, {})[identifier] = value

    def get(self, category: str, identifier: str):
        return self._registries.get(category, {}).get(identifier)
