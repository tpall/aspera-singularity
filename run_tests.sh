#!/usr/bin/env bash

export SINGULARITY_IMAGE="${SINGULARITY_IMAGE:-aspera-singularity.simg}"
echo "Using Singularity image: ${SINGULARITY_IMAGE}"

version () {
  singularity inspect "${SINGULARITY_IMAGE}" | \
    grep "ASCP_VERSION" | \
    awk -F'"' '{print $4}'
}

set -e
set -x

# Verify Aspera Connect version
if [[$(singularity exec ascp --version | awk '/^Aspera/ {print $4}' -)  == $(version)]];
then
  echo "All tests passed!"
else
  echo "No Match"
fi

{ set +x; } 2>/dev/null
echo 
