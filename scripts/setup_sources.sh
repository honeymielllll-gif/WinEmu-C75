#!/bin/bash
set -e

echo "Clonando repositorio base de emulación..."
git clone --depth 1 https://github.com/brunodev85/winlator.git temp_winlator

echo "Copiando estructura del proyecto Android..."
shopt -s dotglob
cp -r temp_winlator/* .
shopt -u dotglob
rm -rf temp_winlator

if [ ! -f "gradlew" ]; then
    echo "Generando ejecutable Gradle..."
    gradle wrapper
fi

chmod +x gradlew
echo "Fuentes de Winlator listas para compilar."
