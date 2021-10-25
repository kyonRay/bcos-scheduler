hunter_config(bcos-framework VERSION 3.0.0-local
    URL https://${URL_BASE}/FISCO-BCOS/bcos-framework/archive/0a747e0c7d7ddf7b7b68b09a1877ecc06a5ce5df.tar.gz
    SHA1 caa9c617a415a4c437b546f44a6544a4d32f4357
    CMAKE_ARGS HUNTER_PACKAGE_LOG_BUILD=ON HUNTER_PACKAGE_LOG_INSTALL=ON #DEBUG=ON
)

hunter_config(bcos-tars-protocol
    VERSION 3.0.0-local
    URL https://${URL_BASE}/FISCO-BCOS/bcos-tars-protocol/archive/d6ef97d286ec88de3f9ac874730f9b98916bc2fc.tar.gz
    SHA1 29b4c5fdca7fd3d0b3ec95a1015f12b099eb2af2
    CMAKE_ARGS URL_BASE=${URL_BASE}
)

hunter_config(ZLIB VERSION ${HUNTER_ZLIB_VERSION} CMAKE_ARGS CMAKE_POSITION_INDEPENDENT_CODE=TRUE)
hunter_config(c-ares VERSION 1.14.0-p0 CMAKE_ARGS CMAKE_POSITION_INDEPENDENT_CODE=TRUE CARES_BUILD_TOOLS=OFF)
hunter_config(re2 VERSION ${HUNTER_re2_VERSION} CMAKE_ARGS CMAKE_POSITION_INDEPENDENT_CODE=TRUE RE2_BUILD_TESTING=OFF)
hunter_config(abseil VERSION ${HUNTER_abseil_VERSION} CMAKE_ARGS CMAKE_CXX_FLAGS=-std=c++11 CMAKE_POSITION_INDEPENDENT_CODE=TRUE ABSL_ENABLE_INSTALL=ON ABSL_RUN_TESTS=OFF)
hunter_config(gRPC VERSION ${HUNTER_gRPC_VERSION} CMAKE_ARGS CMAKE_CXX_FLAGS=-std=c++17 CMAKE_POSITION_INDEPENDENT_CODE=TRUE)