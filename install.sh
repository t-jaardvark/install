#!/bin/bash
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
script_dir=$(dirname "$(readlink -f "$0")")


# Check if $HOME/.local/bin is in the PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  echo -e "${YELLOW}Warning: $HOME/.local/bin is not in your PATH${NC}"
fi



for bin in "ls-md5" ; do
  [ -f "$HOME/.local/bin/$bin" ] && rm "$HOME/.local/bin/$bin"
  ln "$script_dir/$bin" "$HOME/.local/bin/$bin"
done


