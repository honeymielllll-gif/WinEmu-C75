#!/bin/bash
set -e

echo "Clonando repositorio base de Winlator..."
git clone --depth 1 https://github.com/brunodev85/winlator.git temp_winlator

echo "Copiando todos los archivos del proyecto..."
cp -a temp_winlator/. .
rm -rf temp_winlator

echo "Verificando ejecutable de Gradle..."
if [ -f "gradlew" ]; then
    chmod +x gradlew
else
    echo "Generando ejecutable Gradle..."
    gradle wrapper
    chmod +x gradlew
fi

echo "Fuentes de Winlator listas para compilar."
