@echo off
if exist CMakeLists.txt (
  if [%1] == [] (
    echo Usage: %0 "cmake-generator-name"
    exit /b 1
  )
  cmake "-G%~1"
  if %errorlevel% neq 0 exit /b %errorlevel%
  cmake --build . -- /nologo /property:Configuration=Release
  if %errorlevel% neq 0 exit /b %errorlevel%
  ctest --output-on-failure -C Release -a
  if %errorlevel% neq 0 exit /b %errorlevel%
)
