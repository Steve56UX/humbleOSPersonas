#!/bin/bash

# humbleOS Personas Installer
# Install developer personas for humbleOS

set -e

PERSONAS_JSON="personas.json"

if [ ! -f "$PERSONAS_JSON" ]; then
    echo "Error: personas.json not found!"
    echo "Make sure you're in the humbleOSPersonas directory."
    exit 1
fi

if [ $# -eq 0 ]; then
    echo "Usage: $0 <persona-id> [persona-id...]"
    echo ""
    echo "Available personas:"
    grep '"id":' "$PERSONAS_JSON" | sed 's/.*"id": "\(.*\)".*/  - \1/'
    exit 1
fi

echo "humbleOS Personas Installer"
echo "============================"
echo ""

# Check for yay (AUR helper)
if ! command -v yay &> /dev/null; then
    echo "Installing yay (AUR helper)..."
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si --noconfirm
    cd -
fi

# Function to install packages for a persona
install_persona() {
    local persona_id="$1"
    
    echo "Installing persona: $persona_id"
    
    # Extract packages from JSON
    local packages=$(grep -A 20 "\"id\": \"$persona_id\"" "$PERSONAS_JSON" | \
                     grep -A 10 '"packages":' | \
                     grep -o '"[^"]*"' | \
                     tr -d '"' | \
                     grep -v 'packages' | \
                     grep -v '^$')
    
    local aur_packages=$(grep -A 20 "\"id\": \"$persona_id\"" "$PERSONAS_JSON" | \
                         grep -A 10 '"aur_packages":' | \
                         grep -o '"[^"]*"' | \
                         tr -d '"' | \
                         grep -v 'aur_packages' | \
                         grep -v '^$')
    
    # Install official packages
    if [ -n "$packages" ]; then
        echo "Installing official packages..."
        sudo pacman -S --needed --noconfirm $packages
    fi
    
    # Install AUR packages
    if [ -n "$aur_packages" ]; then
        echo "Installing AUR packages..."
        yay -S --needed --noconfirm $aur_packages
    fi
    
    echo "✓ $persona_id installed successfully!"
    echo ""
}

# Install each requested persona
for persona in "$@"; do
    install_persona "$persona"
done

echo "============================"
echo "All personas installed!"
echo "Enjoy your humbleOS setup! 🚀"
