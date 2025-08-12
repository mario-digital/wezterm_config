# WezTerm Configuration

A clean and functional WezTerm terminal configuration with Dracula theme, custom key bindings for pane management, and optimized window settings.

## Features

- 🎨 **Dracula color scheme** for comfortable viewing
- 🔤 **MesloLGS Nerd Font** for proper icon and powerline support
- 🪟 **Pane management** with intuitive keyboard shortcuts
- 🚫 **Minimal UI** with tab bar disabled for cleaner appearance
- ⌨️ **macOS-optimized** key bindings

## Prerequisites

### 1. Install WezTerm

Download and install WezTerm from the official website:
- **macOS**: `brew install --cask wezterm` or download from [wezfurlong.org/wezterm](https://wezfurlong.org/wezterm/)
- **Linux**: Follow instructions at [wezfurlong.org/wezterm/install/linux.html](https://wezfurlong.org/wezterm/install/linux.html)
- **Windows**: Download installer from [wezfurlong.org/wezterm/install/windows.html](https://wezfurlong.org/wezterm/install/windows.html)

### 2. Install MesloLGS Nerd Font

The configuration uses MesloLGS NF (Nerd Font) for proper icon rendering:

#### macOS (using Homebrew):
```bash
brew tap homebrew/cask-fonts
brew install --cask font-meslo-lg-nerd-font
```

#### Manual Installation:
1. Download from [Nerd Fonts GitHub](https://github.com/ryanoasis/nerd-fonts/releases)
2. Look for "Meslo.zip" in the assets
3. Extract and install the font files

#### Linux:
```bash
# Create fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Download and extract Meslo Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip
unzip Meslo.zip -d ~/.local/share/fonts/
fc-cache -fv
```

## Installation

### Location

Place the `wezterm.lua` file in your home directory:

```bash
# Clone this repository
git clone https://github.com/mario-digital/wezterm_config.git

# Copy the configuration file to the correct location
cp wezterm_config/wezterm.lua ~/.wezterm.lua
```

### Alternative Locations

WezTerm looks for configuration in these locations (in order):
1. `$HOME/.wezterm.lua` (recommended)
2. `$HOME/.config/wezterm/wezterm.lua`
3. `$XDG_CONFIG_HOME/wezterm/wezterm.lua` (Linux/Unix)

## Key Bindings

This configuration includes custom key bindings optimized for macOS:

| Key Combination | Action |
|----------------|--------|
| `Cmd + D` | Split pane horizontally (side by side) |
| `Cmd + Shift + D` | Split pane vertically (top/bottom) |
| `Cmd + W` | Close current pane (with confirmation) |
| `Cmd + [` | Navigate to previous pane |
| `Cmd + ]` | Navigate to next pane |
| `Cmd + N` | Create new window |

## Configuration Details

### Visual Settings
- **Font**: MesloLGS NF at 14pt
- **Color Scheme**: Dracula
- **Tab Bar**: Disabled for minimal UI
- **Window Padding**: 20px top padding
- **Window Decorations**: Resize-only (no title bar buttons on macOS)

### Behavior
- New instances spawn in new windows (not tabs)
- Pane closing requires confirmation to prevent accidental closures

## Customization

To customize this configuration:

1. Open `~/.wezterm.lua` in your favorite editor
2. Modify the settings as needed
3. Save the file - WezTerm will automatically reload the configuration

### Common Customizations

#### Change Font Size:
```lua
config.font_size = 16.0  -- Increase font size
```

#### Enable Transparency:
```lua
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
```

#### Change Color Scheme:
```lua
config.color_scheme = "Tokyo Night"  -- Or any other built-in scheme
```

View available color schemes with:
```bash
wezterm ls-color-schemes
```

## Shell Integration (Optional)

For enhanced shell integration with zsh, add this to your `~/.zshrc`:

```bash
# WezTerm shell integration (optional)
if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
  # Enable WezTerm shell integration if available
  [[ -f ~/.config/wezterm/shell-integration.sh ]] && source ~/.config/wezterm/shell-integration.sh
fi
```

## Troubleshooting

### Font Not Found
If you see an error about MesloLGS NF not being found:
1. Verify the font is installed: `fc-list | grep -i meslo` (Linux/macOS)
2. Try using the full font name: `config.font = wezterm.font("MesloLGS Nerd Font")`
3. Restart WezTerm after installing fonts

### Configuration Not Loading
1. Check file location: `ls -la ~/.wezterm.lua`
2. Verify syntax with: `wezterm --config-file ~/.wezterm.lua --check-config`
3. Check WezTerm logs: `wezterm ls-fonts --list-system` to see available fonts

## Resources

- [WezTerm Documentation](https://wezfurlong.org/wezterm/)
- [WezTerm Configuration Reference](https://wezfurlong.org/wezterm/config/files.html)
- [Dracula Theme](https://draculatheme.com/)
- [Nerd Fonts](https://www.nerdfonts.com/)

## License

This configuration is provided as-is for public use. Feel free to fork and customize for your needs.

## Contributing

This is a personal configuration repository. While suggestions are welcome via issues, please fork the repository for your own customizations rather than submitting PRs.