# justfile-template

A template for creating [`justfiles`](https://github.com/casey/just).

## Install

```shell
curl -sO https://raw.githubusercontent.com/hendrikmaus/justfile-template/main/justfile
```

_Feel free to replace `main` with the latest release tag._

### Shell Function

I keep this function in my `.zshrc`:

```shell
# Create a new justfile in the current working directory from remote template
#
# Optional first argument: tag
# Usage:
#   create_justfile
#   create_justfile 1.0.2
function create_justfile() {
  if [[ -f justfile ]]; then
    echo "[WARNING] found justfile in the current directory; creating backup ..."
    mv -v justfile justfile.backup
  fi

  local tag="${1:-"main"}"
  curl -sO "https://raw.githubusercontent.com/hendrikmaus/justfile-template/${tag}/justfile"
  echo "created justfile"
}
```
