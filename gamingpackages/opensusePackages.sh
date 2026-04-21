#!/bin/bash
# Set system to use bash for script

# Sets script to stop at any errors
set -e

# list of packages to be installed in an array form
packages=(
  steam
  heroic-games-launcher
  mangohud
  mangohud-32bit
  goverlay
  mesa
  mesa-32bit
  vulkan
  vulkan-32bit
  steam-devices
  inputplumber
  sdl2
  sdl2-32bit
  pipewire
  pipewire-alsa
  pipewire-pulse
  wireplumber
  alsa-utils
  discord
)

# Prints the list of packages that will be installed
echo "Packages to install:"
printf '  - %s\n' "${packages[@]}"

# Does a dry run of the packages to install to check for any errors
echo "Performing dry run (no changes will be made)..."
sudo zypper install --dry-run "${packages[@]}"
echo

# Prompts user to confirm or deny for installation to go ahead
read -p "Proceed with installation? [y/N] " answer
[[ "$answer" == "y" ]] || exit 0

# Performs install of packages
sudo zypper install "${packages[@]}"

# Prints after installation has finished
echo "Installation complete"