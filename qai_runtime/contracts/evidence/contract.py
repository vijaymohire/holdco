from typing import Protocol

from qai_runtime.models.evidence.models import EvidenceRecord


class EvidenceContract(Protocol):
    def record(
        self,
        evidence: EvidenceRecord,
    ) -> None:
        ...
