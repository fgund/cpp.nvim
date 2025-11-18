# Neovim Configuration for C++ Development

This repository contains a personal Neovim configuration optimized for C++ development. It is based on [NvChad/starter](https://github.com/NvChad/starter) and includes additional plugins and customizations for enhanced productivity.

## Features

- **Language Server Protocol (LSP)**: Support for C++ (clangd) and CMake with intelligent code completion, diagnostics, and navigation.
- **Debugging**: Integrated debugging with DAP (Debug Adapter Protocol) using codelldb for C++ projects.
- **CMake Integration**: Full CMake support with project generation, building, and running via cmake-tools.nvim.
- **LLM Integration**: AI-powered code generation and assistance using Ollama via gen.nvim plugin.
- **Code Formatting**: Automatic formatting with conform.nvim (stylua for Lua).
- **Syntax Highlighting**: Enhanced syntax highlighting for C++, CMake, Lua, and more using Tree-sitter.
- **Terminal Integration**: Built-in terminal support with toggleterm for seamless workflow.
- **Task Runner**: Overseer for managing and running tasks.
- **Theme**: Everforest color scheme for a pleasant coding experience.
- **Custom Mappings**: Optimized keybindings for debugging and CMake operations.

## Prerequisites

Before installing this configuration, ensure you have the following dependencies:

- Neovim (latest stable version)
- Nerd Fonts (for icons)
- Ripgrep (for fast searching)
- CMake
- Clangd (C++ LSP server)
- Ollama (for LLM integration, optional)

## Installation

1. **Install Neovim**:
   - Download from [Neovim releases](https://github.com/neovim/neovim/releases/tag/stable)

2. **Install Nerd Fonts**:
   - Visit [Nerd Fonts](https://www.nerdfonts.com/) and install a font like Monoid:
   ```bash
   curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Monoid.zip -o Monoid.zip && unzip Monoid.zip -d ~/.local/share/fonts && rm Monoid.zip
   ```

3. **Install Ripgrep**:
   - Follow instructions at [Ripgrep repository](https://github.com/BurntSushi/ripgrep)

4. **Install additional dependencies** (Linux example):
   ```bash
   # Ubuntu/Debian
   sudo apt install cmake clangd

   # Or for other distros, use your package manager
   ```

5. **Clone this configuration**:
   ```bash
   git clone https://github.com/fgund/cpp.nvim.git ~/.config/nvim
   ```

6. **Launch Neovim**:
   - Run `nvim` and wait for plugins to install automatically.

## Usage

### Key Mappings

- `;` - Enter command mode
- `jk` - Exit insert mode
- `<leader>db` - Toggle breakpoint (debug)
- `<leader>dr` - Continue debugging
- `<leader>di` - Step into
- `<leader>do` - Step out
- `<leader>dd` - Step over
- `<leader>cr` - Run CMake project

### LLM Integration

Set environment variables for Ollama:
```bash
export OLLAMA_MODEL="your-model-name"  # Default: gemma3n
export OLLAMA_SERVER="localhost"       # Default: localhost
```

Use the gen plugin for AI-assisted coding.

### CMake Projects

- Use `:CMakeGenerate` to generate build files
- Use `:CMakeBuild` to build the project
- Use `:CMakeRun` to run the executable
- DAP is configured for debugging C++ code

## Customization

- Edit `lua/chadrc.lua` to change the theme or UI settings.
- Modify `lua/plugins/init.lua` to add or remove plugins.
- Customize key mappings in `lua/mappings.lua`.
- Adjust LSP, DAP, and other configurations in `lua/configs/`.

## Uninstall

**Warning**: This will remove your Neovim configuration and data. Back up any important files first.

### Linux / macOS (Unix)
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

### Flatpak (Linux)
```bash
rm -rf ~/.var/app/io.neovim.nvim/config/nvim
rm -rf ~/.var/app/io.neovim.nvim/data/nvim
rm -rf ~/.var/app/io.neovim.nvim/.local/state/nvim
```

### Windows CMD
```cmd
rd -r %USERPROFILE%\AppData\Local\nvim
rd -r %USERPROFILE%\AppData\Local\nvim-data
```

### Windows PowerShell
```powershell
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
```

