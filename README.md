# Kick Ass NeoVim

## Plugins

| Plugin | Description |
|--------|-------------|
| **lazy.nvim** | Plugin manager for Neovim |
| **plenary.nvim** | Lua utility library required by many plugins |
| **telescope.nvim** | Fuzzy finder for files, text, buffers, LSP, and more |
| **nvim-lspconfig** | Configuration for Neovim's built-in LSP client |
| **mason.nvim** | Package manager for LSP servers, linters, and formatters |
| **mason-lspconfig.nvim** | Bridges mason.nvim and nvim-lspconfig |
| **nvim-cmp** | Auto-completion engine |
| **cmp-nvim-lsp** | LSP completion source for nvim-cmp |
| **cmp-buffer** | Buffer word completion source for nvim-cmp |
| **cmp-path** | File path completion source for nvim-cmp |
| **LuaSnip** | Snippet engine |
| **cmp_luasnip** | Snippet completion source for nvim-cmp |
| **tokyonight.nvim** | Tokyo Night color scheme |
| **nvim-lint** | Asynchronous linter plugin (configured with ESLint) |
| **nvim-treesitter** | Syntax highlighting and code parsing using Tree-sitter |
| **lualine.nvim** | Status line with git, LSP, and file info |
| **nvim-web-devicons** | File type icons for plugins |
| **neo-tree.nvim** | File explorer sidebar |
| **nui.nvim** | UI component library required by Neo-tree |
| **nvim-autopairs** | Auto-close brackets, quotes, and parentheses |
| **gitsigns.nvim** | Git status in sign column (added, changed, deleted lines) |
| **Comment.nvim** | Toggle comments with gcc/gbc |
| **nvim-surround** | Add/change/delete surrounding quotes, brackets, tags |
| **which-key.nvim** | Popup showing available keybindings |
| **bufferline.nvim** | Buffer tabs at top of screen |
| **indent-blankline.nvim** | Visual indent guide lines |
| **trouble.nvim** | Pretty diagnostics list |
| **toggleterm.nvim** | Floating terminal toggle |
| **conform.nvim** | Auto-format on save (Prettier, stylua) |
| **flash.nvim** | Quick cursor navigation anywhere on screen |
| **todo-comments.nvim** | Highlight and navigate TODO/FIXME/HACK comments |
| **lazygit.nvim** | Full lazygit interface inside Neovim |
| **markdown-preview.nvim** | Live markdown preview in browser |

## Dependencies

The following external tools are required for full functionality:

| Tool | Install | Used by |
|------|---------|---------|
| ripgrep | `brew install ripgrep` | Telescope live grep |
| node | `brew install node` | markdown-preview.nvim |
| prettier | `npm install -g prettier` | conform.nvim (JS/TS/CSS/HTML/JSON/MD formatting) |
| stylua | `brew install stylua` | conform.nvim (Lua formatting) |
| eslint | `npm install -g eslint` or project-local | nvim-lint (JS/TS linting) |
| lazygit | `brew install lazygit` | lazygit.nvim |

### ESLint Setup

nvim-lint will automatically find ESLint from:
1. **Project-local** (recommended): `node_modules/.bin/eslint` in your project
2. **Global**: `npm install -g eslint`

For project-local ESLint, just ensure your project has ESLint in its `package.json` dependencies.

## Key Mappings

### File Explorer

| Key | Description |
|-----|-------------|
| `<leader>e` | Toggle Neo-tree file explorer |

### Telescope

| Key | Description |
|-----|-------------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search text in files) |
| `<leader>fb` | List open buffers |
| `<leader>fh` | Search help tags |
| `<leader>fo` | Recent files |

### LSP Navigation (via Telescope)

| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gr` | Find references |
| `gi` | Go to implementation |
| `<leader>ds` | Document symbols |
| `<leader>ws` | Workspace symbols |

### LSP Actions

| Key | Description |
|-----|-------------|
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |

### Completion (nvim-cmp)

| Key | Description |
|-----|-------------|
| `<C-Space>` | Trigger completion |
| `<CR>` | Confirm selection |
| `<C-e>` | Close completion menu |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |

### Comments

| Key | Description |
|-----|-------------|
| `<leader>/` | Toggle line comment |
| `gcc` | Toggle line comment (default) |
| `gbc` | Toggle block comment |

### Bufferline

| Key | Description |
|-----|-------------|
| `Shift+h` | Previous buffer |
| `Shift+l` | Next buffer |
| `<leader>bp` | Pin buffer |
| `<leader>bc` | Pick buffer to close |

### Trouble (Diagnostics)

| Key | Description |
|-----|-------------|
| `<leader>xx` | Toggle all diagnostics |
| `<leader>xd` | Toggle buffer diagnostics |

### Terminal

| Key | Description |
|-----|-------------|
| `<leader>tf` | Toggle floating terminal |
| `<leader>th` | Toggle horizontal terminal |
| `<leader>tv` | Toggle vertical terminal |

### Surround

| Key | Description |
|-----|-------------|
| `ys{motion}{char}` | Add surround (e.g., `ysiw"` surrounds word with quotes) |
| `cs{old}{new}` | Change surround (e.g., `cs"'` changes " to ') |
| `ds{char}` | Delete surround (e.g., `ds"` removes quotes) |

### Flash (Navigation)

| Key | Description |
|-----|-------------|
| `s` | Flash jump (type chars to jump to location) |
| `S` | Flash Treesitter (select by syntax node) |

### Todo Comments

| Key | Description |
|-----|-------------|
| `<leader>xt` | Toggle todo list in Trouble |
| `]t` | Jump to next todo comment |
| `[t` | Jump to previous todo comment |

### Git

| Key | Description |
|-----|-------------|
| `<leader>gg` | Open LazyGit |

### Markdown Preview

| Key | Description |
|-----|-------------|
| `<leader>mp` | Toggle markdown preview in browser |
