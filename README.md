# Personal Neovim Configuration

A modular Neovim configuration built with Lua and lazy.nvim, originally forked from kickstart.nvim and customized for personal use.

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── config/           # Core configuration (options, keymaps, autocmds)
│   ├── plugins/          # Plugin configurations (auto-loaded by lazy.nvim)
│   └── health.lua        # Health check (`:checkhealth`)
└── README.md
```

## Requirements

- Neovim >= 0.9
- Git
- A C compiler for Treesitter
- [ripgrep](https://github.com/BurntSushi/ripgrep) for Telescope
- [A Nerd Font](https://www.nerdfonts.com/) (optional, for icons)

## Installation

1. **Backup existing configuration:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```

2. **Clone this repository:**
   ```bash
   git clone git@github.com:rdainton/config.nvim.git ~/.config/nvim
   ```

3. **Start Neovim:**
   ```bash
   nvim
   ```

Lazy.nvim will automatically install all plugins on first launch.

## Useful Commands

**Plugins:**
- `:Lazy` - Plugin manager UI
- `:Lazy update` - Update all plugins

**LSP:**
- `:Mason` - LSP/tool installer
- `:LspInfo` - LSP status
- `:checkhealth` - Diagnostic health check

## Customization

**Add a plugin:** Create a new file in `lua/plugins/` that returns a lazy.nvim plugin spec.

**Modify core config:**
- Options: `lua/config/options.lua`
- Keymaps: `lua/config/keymaps.lua`
- Autocommands: `lua/config/autocmds.lua`

**Troubleshooting:** Run `:checkhealth` to diagnose issues.

## Credits

Originally based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) and heavily customized.

## License

MIT
