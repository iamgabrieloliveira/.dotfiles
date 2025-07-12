#!/bin/bash

WINDOWS_USER="olive"
DOTFILES_DIR="/root/.dotfiles"

KOMOREBI_CONFIG_WINDOWS_PATH="/mnt/c/Users/$WINDOWS_USER/komorebi.json"
KOMOREBI_BAR_CONFIG_WINDOWS_PATH="/mnt/c/Users/$WINDOWS_USER/komorebi.bar.json"

KOMOREBI_CONFIG_LOCAL_PATH="$DOTFILES_DIR/komorebi/komorebi.json"
KOMOREBI_BAR_CONFIG_LOCAL_PATH="$DOTFILES_DIR/komorebi/komorebi.bar.json"

WHKDRC_WINDOWS_PATH="/mnt/c/Users/$WINDOWS_USER/.config/whkdrc"
WHKDRC_LOCAL_PATH="$DOTFILES_DIR/komorebi/whkdrc"

# update komorebi windows files
if [ -f "$KOMOREBI_CONFIG_WINDOWS_PATH" ]; then
	echo "Updating komorebi config on Windows..."
	cp "$KOMOREBI_CONFIG_LOCAL_PATH" "$KOMOREBI_CONFIG_WINDOWS_PATH"
else
	echo "Komorebi config file not found on Windows."
fi

# update komorebi bar windows files
if [ -f "$KOMOREBI_BAR_CONFIG_WINDOWS_PATH" ]; then
	echo "Updating komorebi bar config on Windows..."
	cp "$KOMOREBI_BAR_CONFIG_LOCAL_PATH" "$KOMOREBI_BAR_CONFIG_WINDOWS_PATH"
else
	echo "Komorebi bar config file not found on Windows."
fi

# update whkdrc windows files
if [ -f "$WHKDRC_WINDOWS_PATH" ]; then
	echo "Updating whkdrc config on Windows..."
	cp "$WHKDRC_LOCAL_PATH" "$WHKDRC_WINDOWS_PATH"
else
	echo "Whkdrc config file not found on Windows."
fi

