cmake "-G%CMAKE_GENERATOR%" .
cmake --build . -- /nologo /property:Configuration=Release
ctest --output-on-failure -C Release -a
