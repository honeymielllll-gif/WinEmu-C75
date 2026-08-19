#!/bin/bash
set -e

echo "Clonando repositorio base de Winlator..."
rm -rf /tmp/winlator_src
git clone --depth 1 https://github.com/brunodev85/winlator.git /tmp/winlator_src

echo "Copiando proyecto a la raíz..."
cp -a /tmp/winlator_src/. .
rm -rf /tmp/winlator_src

echo "Instalando Gradle y generando ejecutable gradlew..."
sudo apt-get update -y && sudo apt-get install -y gradle
gradle wrapper

echo "Asignando permisos de ejecución..."
chmod +x gradlew

echo "¡Proyecto preparado con éxito!"
