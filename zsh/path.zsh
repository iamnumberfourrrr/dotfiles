export BUN_INSTALL="$HOME/.bun"
export GOPRIVATE='github.com/Persefoni-AI/*'

typeset -U path PATH
path=(
  "$HOME/.local/bin"
  "$BUN_INSTALL/bin"
  "/opt/homebrew/opt/go@1.24/bin"
  "$HOME/.antigravity/antigravity/bin"
  "$HOME/.opencode/bin"
  $path
)
export PATH

if command -v go >/dev/null 2>&1; then
  path+=("$(go env GOPATH)/bin")
fi

if [[ -f "$HOME/.vite-plus/env" ]]; then
  . "$HOME/.vite-plus/env"
fi
