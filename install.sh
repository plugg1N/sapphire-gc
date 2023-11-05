#!/bin/bash

SOURCE_SCRIPT_PATH="sapphire.sh"
TARGET_BIN_PATH="/usr/local/bin/sapphire"

if [ ! -f "$SOURCE_SCRIPT_PATH" ]; then
    echo "Source script does not exist at the spec. path: $SOURCE_SCRIPT_PATH"
    exit 1

fi

sudo mv "$SOURCE_SCRIPT_PATH" "$TARGET_BIN_PATH"

if [ ! -f "$TARGET_BIN_PATH" ]; then
    echo "Failed to move script to $TARGET_BIN_PATH"
    exit 1
fi

sudo chmod +x "$TARGET_BIN_PATH"

echo -e "\nThe script was successfully installed!\nRun Sapphire using 'sapphire' in Git folder!"
