$ErrorActionPreference = 'Stop'
$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$buildDirectory = Join-Path $PSScriptRoot 'build\windows-mingw'
cmake -S $PSScriptRoot -B $buildDirectory -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++
if ($LASTEXITCODE -ne 0) { throw 'GNUbg CMake configuration failed' }
cmake --build $buildDirectory --parallel 4
if ($LASTEXITCODE -ne 0) { throw 'GNUbg native build failed' }
$outputDirectory = Join-Path $projectRoot 'packages\engine_bindings\native\windows'
New-Item -ItemType Directory -Force $outputDirectory | Out-Null
Copy-Item -LiteralPath (Join-Path $buildDirectory 'libbuddy_gnubg.dll') -Destination $outputDirectory -Force
