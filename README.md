**This repo contains personal nvim config for C++ development. It is based on NvChad config.**

Features:
- LSP
- Debug
- Gen for LLM integration

For LLM integration you can set environment variables OLLAMA_MODEL and OLLAMA_SERVER.

## Install
1. [Instal Neovim](https://github.com/neovim/neovim/releases/tag/stable)
2. [Install Nerd Fonts](https://www.nerdfonts.com/).
```bash
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Monoid.zip -o Monoid.zip && unzip Monoid.zip -d ~/.local/share/fonts && rm Monoid.zip
```
3. [Install Ripgrep](https://github.com/BurntSushi/ripgrep)

## Uninstall
### Linux / MacOS (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim

### Flatpak (linux)
rm -rf ~/.var/app/io.neovim.nvim/config/nvim
rm -rf ~/.var/app/io.neovim.nvim/data/nvim
rm -rf ~/.var/app/io.neovim.nvim/.local/state/nvim

### Windows CMD
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data

### Windows PowerShell
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
