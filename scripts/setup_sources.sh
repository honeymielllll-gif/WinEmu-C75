#!/bin/bash
set -e

echo "Clonando repositorio base de emulación..."
git clone --depth 1 https://github.com/brunodev85/winlator.git temp_winlator

echo "Copiando estructura del proyecto Android al repositorio..."
cp -r temp_winlator/* .
cp -r temp_winlator/.* . 2>/dev/null || true
rm -rf temp_winlator

chmod +x gradlew
echo "Fuentes de Winlator listas para compilar."
