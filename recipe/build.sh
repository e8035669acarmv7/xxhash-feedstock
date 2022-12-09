#!/bin/bash

set -euxo pipefail

export CFLAGS="${CFLAGS} -std=c99"

make all
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-0}" != "1" ]]; then
  make check test-xxhsum-c namespaceTest
fi
make install
