#!/Users/timothybryant/.local/bin/bash

# Path to your .envrc file
ENVRC_PATH="../.envrc"

# Check if .envrc file exists
if [ ! -f "$ENVRC_PATH" ]; then
  echo ".envrc file not found!"
  exit 1
fi

# Check if the word "AES256" is in the .envrc file
if ! grep -q "AES256_GCM" "$ENVRC_PATH"; then
  echo ".envrc file is encrypted."
  exit 0
else
  echo "Error: the .envrc file is NOT encrpyted!"
  exit 1
fi
