# docs: https://github.com/casey/just
# tmpl: https://github.com/hendrikmaus/justfile-template

set export := true
set dotenv-load := false
set shell := ["bash", "-euo", "pipefail", "-c"]

# call 'just' to get help
@_default:
  just --list --unsorted
  echo ""
  echo "Available variables:"
  just --evaluate | sed 's/^/    /'
  echo ""
  echo "Override variables using 'just key=value ...' (also ALL_UPPERCASE ones)"

# Variables
# ---------

# Recipes
# -------
