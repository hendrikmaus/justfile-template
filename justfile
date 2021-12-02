# docs: https://github.com/casey/just

set export
set dotenv-load := false

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
