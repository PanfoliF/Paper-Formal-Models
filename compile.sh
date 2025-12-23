#!/bin/bash

# Percorsi
PROJECT_PATH="/Users/filippo/Documents/Lab/Formal Models/Paper Formal Models"
MAIN_TEX="$PROJECT_PATH/Tex/main.tex"
BUILD_DIR="$PROJECT_PATH/build"
PDF="$BUILD_DIR/main.pdf"

echo "📄 Compilazione del paper in corso..."

# Compilazione
latexmk -xelatex -output-directory="$BUILD_DIR" "$MAIN_TEX"

# Verifica che il PDF sia stato generato
if [ -f "$PDF" ]; then
  echo "✅ PDF generato correttamente."

  # Apri il PDF in una tab a destra in VS Code
  # code --reuse-window --diff "$PDF" "$PDF"
else
  echo "❌ Errore: PDF non trovato. Controlla la compilazione."
fi