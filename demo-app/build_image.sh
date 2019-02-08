#!/bin/sh

set -euo pipefail

stacksmith build | tee image_spec.json

image=$(jq -r <image_spec.json '.result|.[]|select(.name=="image")|.value')

cat <<EOF
=====
You can run the image with:

  docker run -ti -p 8080:80 ${image}
EOF
