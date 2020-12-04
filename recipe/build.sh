make all
if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" ]]; then
make check test-xxhsum-c namespaceTest
fi
make install
