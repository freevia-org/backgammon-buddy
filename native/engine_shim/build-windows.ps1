# Builds the Windows x64 engine DLL and stages it where engine_bindings looks.
$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
cargo build --release
if ($LASTEXITCODE -ne 0) { throw 'Rust engine build failed' }
$cargoMetadata = cargo metadata --format-version 1 --no-deps | ConvertFrom-Json
if ($LASTEXITCODE -ne 0) { throw 'Cargo metadata lookup failed' }
$targetDirectory = $cargoMetadata.target_directory
$out = Join-Path $PSScriptRoot '..\..\packages\engine_bindings\native\windows'
New-Item -ItemType Directory -Force $out | Out-Null
Copy-Item (Join-Path $targetDirectory 'release\aigammon_engine.dll') $out -Force
Pop-Location
Write-Host "Staged aigammon_engine.dll -> packages/engine_bindings/native/windows/"
