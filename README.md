# Neovim Config

My personal Neovim configuration with lazy.nvim, focused on web development and productivity.

## Features

### Visual Interface

- **Nord Theme**: Dark and pleasant colors
- **Alpha-nvim**: Custom welcome screen
- **Lualine**: Elegant status bar with Nord theme
- **Indent Blankline**: Vertical indentation lines (│)
- **Relative Numbers**: Relative line numbering
- **Mouse Support**: Full mouse support

### Navigation and Search

- **Telescope**: File and text search
- **Neo-tree**: Side file explorer (right side)
- **Inlay Hints**: Inline type hints for TypeScript and Lua

### Development

- **LSP (Language Server Protocol)**: Full support for:
  - TypeScript/JavaScript (`ts_ls`)
  - Lua (`lua_ls`)
  - Tailwind CSS (`tailwindcss`)
  - Go (`gopls`)
- **Treesitter**: Advanced syntax highlighting
- **Autocompletions**: nvim-cmp with vsnip snippets
- **GitHub Copilot**: AI code assistant
- **None-ls**: Formatting and linting

### Settings

- **Indentation**: 2 spaces, expandtab
- **Clipboard**: System clipboard integration
- **Leader Key**: Space (`<Space>`)
- **Wrap**: Line wrap enabled

## Keybindings

### Navigation

- `<Space>e` - Toggle Neo-tree (file explorer)
- `<Space>f` - Find files with Telescope
- `<Space>fg` - Live text search (live grep)

### LSP (Language Server)

- `K` - Show documentation/hover
- `gd` - Go to definition
- `<C-.>` - Show code actions

### Autocomplete

- `<C-Space>` - Complete code
- `<C-b>` - Scroll documentation up
- `<C-f>` - Scroll documentation down
- `<C-e>` - Cancel completions
- `<CR>` - Confirm selection

### GitHub Copilot

- `<C-j>` (insert mode) - Accept Copilot suggestion

### Movement

- `jj` (insert mode) - Exit insert mode (like ESC)

### Useful Commands

- `:Copilot auth` - Authenticate with GitHub
- `:Copilot enable/disable` - Enable/disable Copilot
- `:Copilot status` - Check Copilot status
- `:Mason` - Manage LSP servers
- `:Lazy` - Manage plugins

## Main Plugins

### Management

- `lazy.nvim` - Plugin manager
- `mason.nvim` - LSP manager

### Interface

- `alpha-nvim` - Start screen
- `lualine.nvim` - Status bar
- `nord.nvim` - Color theme
- `indent-blankline.nvim` - Indentation lines
- `neo-tree.nvim` - File explorer

### Development

- `nvim-treesitter` - Syntax highlighting
- `nvim-lspconfig` - LSP configuration
- `nvim-cmp` - Autocompletions
- `github/copilot.vim` - AI assistant
- `none-ls.nvim` - Formatting/linting

### Utilities

- `telescope.nvim` - Search and navigation
- `nvim-web-devicons` - File icons
- `vim-vsnip` - Snippets

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/davi1985/nvim-config.git ~/.config/nvim
   ```

2. Start Neovim (it will install plugins automatically):

   ```bash
   nvim
   ```

3. Authenticate GitHub Copilot:
   ```vim
   :Copilot auth
   ```

## Supported Languages

- **TypeScript/JavaScript** - Completions, formatting, inlay hints
- **Lua** - Completions, formatting, inlay hints
- **Go** - Completions, formatting
- **Tailwind CSS** - Completions, linting
- **HTML/CSS** - Syntax highlighting
- **JSON/YAML** - Syntax highlighting
- And many more via Treesitter

## Notes

- Configuration optimized for web development
- Focus on productivity and user experience
- Consistent Nord theme throughout interface
- Default 2-space indentation
- Full mouse and clipboard support

---

Made with ❤️ for efficient development!
