#
//  regen.sh
//  TektonParsers
//
//  Created by Sinan Karasu on 10/31/25.
//

#!/bin/sh

# Fail fast on any error
set -e

export SANDBOX_DISABLE=1

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ANTLR binary (adjust if needed)
ANTLR="/opt/homebrew/bin/antlr"

# Full paths using nested JaySwiftly structure
GRAMMARDIR="${ROOT}/Grammar"
OUTDIR="${ROOT}/Sources/TektonParsers/Generated"

# Optional: print debug info
echo "Generating ANTLR Swift parsers..."
echo "Grammar directory: $GRAMMARDIR"
echo "Output directory:  $OUTDIR"

# Optional safety: if output folder doesn't exist, skip mkdir (Xcode hates it)
[ -d "$OUTDIR" ] || {
    echo "Output directory does not exist. Please create it manually."
    exit 1
}

# Ensure ANTLR is available
if ! command -v "$ANTLR" &> /dev/null; then
    echo "ERROR: antlr4 not found at $ANTLR"
    exit 1
fi

# Java grammar
"$ANTLR" -Dlanguage=Swift -visitor -o "$OUTDIR" \
  "$GRAMMARDIR/LaTeX.g4"

# Swift grammar (optional)
"$ANTLR" -Dlanguage=Swift -visitor -o "$OUTDIR" \
  "$GRAMMARDIR/LaTeXMath.g4"


OUT="$ROOT/Sources/TektonParsers/Generated"

# 1) Downgrade cross-module Sendable checks from Antlr4
LC_ALL=C find "$OUT" -name '*.swift' -print0 | xargs -0 \
  sed -i '' 's/^import Antlr4$/@preconcurrency import Antlr4/'

# 2) Mark shared statics as explicitly nonisolated
LC_ALL=C find "$OUT" -name '*.swift' -print0 | xargs -0 \
  sed -i '' 's/internal static var _decisionToDFA/internal static let _decisionToDFA/'


# LC_ALL=C find "$OUT" -name '*.swift' -print0 | xargs -0 \
#   sed -i '' \
#   -e 's/\binternal static var _decisionToDFA\b/internal static let _decisionToDFA/' \
#   -e 's/\binternal static let _sharedContextCache\b/internal nonisolated static let _sharedContextCache/' \
#   -e 's/\bpublic static let VOCABULARY\b/public nonisolated static let VOCABULARY/' \
#   -e 's/\bpublic static let _ATN\b/public nonisolated static let _ATN/'
# 
# 
# echo "Patching visitors."
# 
# for f in "$OUT"/*.swift; do
#   [ -f "$f" ] || continue
#   echo "Patch " "$f"
#   # only if not already patched
#     sed -i '' 's/internal static var _decisionToDFA/internal static let _decisionToDFA/' "$f"
# done


#echo "Patching visitors."
#
#for f in "$OUTDIR"/*Visitor.swift "$OUTDIR"/*BaseVisitor.swift \
#         "$OUTDIR"/*Listener.swift "$OUTDIR"/*BaseListener.swift \
#         "$OUTDIR"/*Lexer.swift "$OUTDIR"/*Parser.swift; do
#  [ -f "$f" ] || continue
#  echo "Patch " "$f"
#  # only if not already patched
#  if ! grep -q "nonisolated open class" "$f"; then
#    echo "Unpatched " "$f"
#    /usr/bin/sed -i '' 's/^open class /nonisolated open class /' "$f"
#  fi
#done

echo "ANTLR Swift generation complete."
