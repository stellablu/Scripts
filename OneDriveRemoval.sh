#!/bin/bash

# Check if OneDrive is installed
if [ -d "/Applications/OneDrive.app" ]; then
  echo "Microsoft OneDrive is installed."

  # Uninstall Microsoft OneDrive
  echo "Uninstalling Microsoft OneDrive..."
  sudo rm -rf "/Applications/OneDrive.app"
  sudo rm -rf "$HOME/Library/Application Support/OneDrive"
  sudo rm -rf "$HOME/Library/Application Support/com.microsoft.OneDrive"
  sudo rm -rf "$HOME/Library/Caches/com.microsoft.OneDrive"
  sudo rm -rf "$HOME/Library/Caches/com.microsoft.OneDriveStandaloneUpdater"
  sudo rm -rf "$HOME/Library/Caches/com.microsoft.OneDriveUpdater"
  sudo rm -rf "$HOME/Library/Preferences/com.microsoft.OneDrive-mac.plist"
  sudo rm -rf "$HOME/Library/Group Containers/UBF8T346G9.OneDriveStandaloneSuite"
  echo "Microsoft OneDrive has been successfully uninstalled."
else
  echo "Microsoft OneDrive is not installed."
fi