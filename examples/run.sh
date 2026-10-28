#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_coverage_auditor info
PYTHONPATH=src python -m gbt_coverage_auditor check --payload '{}'
PYTHONPATH=src python -m gbt_coverage_auditor run   --payload '{}'
