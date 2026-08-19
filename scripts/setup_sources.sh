#!/bin/bash
set -e
echo "Descargando y preparando fuentes de Box64 y Wine..."
mkdir -p build_deps
git clone --depth 1 https://github.com/ptitSeb/box64.git build_deps/box64
echo "Preparación de fuentes completada."
