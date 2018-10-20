@echo off
if exist autogen.sh (
  echo "%0: autogen.sh is not supported yet"
  exit /b 1
) else if exist CMakeLists.txt (
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
) else (
  echo "%0: don't know how to build this repository"
  exit /b 1
)
