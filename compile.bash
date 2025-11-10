#!/usr/bin/env bash

set -e

echo "compiling spanish"
sed -i '' 's/language =.".."/language = "es"/' ./info.toml
typst compile cv.typ CV_Cristian_Rodríguez_ES.pdf

echo "compiling english"
sed -i '' 's/language =.".."/language = "en"/' ./info.toml
typst compile cv.typ CV_Cristian_Rodríguez_EN.pdf

echo "compiled"
