#!/bin/bash
set -e

echo "Clonando repositorio base de Winlator en directorio temporal..."
rm -rf /tmp/winlator_src
git clone --depth 1 https://github.com/brunodev85/winlator.git /tmp/winlator_src

echo "Copiando fuentes al proyecto..."
cp -r /tmp/winlator_src/* .
cp -r /tmp/winlator_src/.* . 2>/dev/null || true
rm -rf /tmp/winlator_src

echo "Asignando permisos a gradlew..."
chmod +x gradlew

echo "Fuentes de Winlator preparadas con éxito."
