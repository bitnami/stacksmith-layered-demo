#!/bin/bash

set -euo pipefail

stacksmith auth login --access-token ${STACKSMITH_ACCESS_TOKEN}

for i in "$@"; do
  (
    cd ${i}
    
    stacksmith build | tee image_spec.json
    
    image=$(jq -r <image_spec.json '.result|.[]|select(.name=="image")|.value')
    
    cat <<EOF
    =====
    You can run the image with:
    
      docker run --rm -ti -p 8080:80 ${image}
EOF
  )

done
