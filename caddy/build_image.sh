#!/bin/sh

set -euo pipefail

stacksmith build | tee image_spec.json

image=$(jq -r <image_spec.json '.result|.[]|select(.name=="image")|.value')

cat <<EOF
=====
Image name: ${image}

You can point your application's Stackerfiles to it.
EOF
