#!/bin/sh

set -euo pipefail

stacksmith build | tee image_spec.json
