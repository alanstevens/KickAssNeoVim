# Default Plugin Keybindings

This document lists the default keybindings provided by each plugin, separate from our custom mappings.

## Telescope

| Key | Mode | Description |
|-----|------|-------------|
| `<C-n>` / `<Down>` | Insert | Next item |
| `<C-p>` / `<Up>` | Insert | Previous item |
| `<C-c>` | Insert | Close telescope |
| `<Esc>` | Normal | Close telescope |
| `<CR>` | Insert/Normal | Confirm selection |
| `<C-x>` | Insert | Open in horizontal split |
| `<C-v>` | Insert | Open in vertical split |
| `<C-t>` | Insert | Open in new tab |
| `<C-u>` | Insert | Scroll preview up |
| `<C-d>` | Insert | Scroll preview down |
| `j` / `k` | Normal | Move up/down |
| `gg` / `G` | Normal | Go to top/bottom |
| `?` | Normal | Show keybindings help |

## Neo-tree

| Key | Mode | Description |
|-----|------|-------------|
| `<CR>` / `o` | Normal | Open file/toggle folder |
| `<2-LeftMouse>` | Normal | Open file/toggle folder |
| `s` | Normal | Open in vertical split |
| `S` | Normal | Open in horizontal split |
| `t` | Normal | Open in new tab |
| `a` | Normal | Add file/directory |
| `d` | Normal | Delete |
| `r` | Normal | Rename |
| `y` | Normal | Copy to clipboard |
| `x` | Normal | Cut to clipboard |
| `p` | Normal | Paste from clipboard |
| `c` | Normal | Copy (within tree) |
| `m` | Normal | Move (within tree) |
| `R` | Normal | Refresh |
| `?` | Normal | Show help |
| `<` | Normal | Navigate up a directory |
| `.` | Normal | Toggle hidden files (custom) |
| `/` | Normal | Filter |
| `q` | Normal | Close |

## nvim-cmp (Completion)

| Key | Mode | Description |
|-----|------|-------------|
| `<C-n>` | Insert | Next item |
| `<C-p>` | Insert | Previous item |
| `<C-y>` | Insert | Confirm selection |
| `<C-e>` | Insert | Abort/close |
| `<C-d>` | Insert | Scroll docs down |
| `<C-f>` | Insert | Scroll docs down |
| `<C-u>` | Insert | Scroll docs up |
| `<C-b>` | Insert | Scroll docs up |

## Comment.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `gcc` | Normal | Toggle line comment |
| `gbc` | Normal | Toggle block comment |
| `gc` + motion | Normal | Comment with motion (e.g., `gc3j`, `gcap`) |
| `gb` + motion | Normal | Block comment with motion |
| `gc` | Visual | Toggle line comment on selection |
| `gb` | Visual | Toggle block comment on selection |
| `gcO` | Normal | Add comment above |
| `gco` | Normal | Add comment below |
| `gcA` | Normal | Add comment at end of line |

## nvim-surround

| Key | Mode | Description |
|-----|------|-------------|
| `ys{motion}{char}` | Normal | Add surround |
| `yss{char}` | Normal | Surround entire line |
| `yS{motion}{char}` | Normal | Add surround on new lines |
| `ySS{char}` | Normal | Surround line on new lines |
| `ds{char}` | Normal | Delete surround |
| `cs{old}{new}` | Normal | Change surround |
| `S{char}` | Visual | Surround selection |
| `gS{char}` | Visual | Surround selection on new lines |

### Surround Characters

| Char | Opening | Closing |
|------|---------|---------|
| `b` or `)` | `(` | `)` |
| `B` or `}` | `{` | `}` |
| `r` or `]` | `[` | `]` |
| `>` | `<` | `>` |
| `'` | `'` | `'` |
| `"` | `"` | `"` |
| `` ` `` | `` ` `` | `` ` `` |
| `t` | `<tag>` | `</tag>` |
| `f` | `func(` | `)` |

## gitsigns.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `]c` | Normal | Next hunk |
| `[c` | Normal | Previous hunk |
| `<leader>hs` | Normal | Stage hunk |
| `<leader>hr` | Normal | Reset hunk |
| `<leader>hS` | Normal | Stage buffer |
| `<leader>hu` | Normal | Undo stage hunk |
| `<leader>hR` | Normal | Reset buffer |
| `<leader>hp` | Normal | Preview hunk |
| `<leader>hb` | Normal | Blame line |
| `<leader>tb` | Normal | Toggle line blame |
| `<leader>hd` | Normal | Diff this |
| `<leader>hD` | Normal | Diff this ~ |
| `<leader>td` | Normal | Toggle deleted |
| `ih` | Visual/Operator | Select hunk (text object) |

## which-key.nvim

| Key | Mode | Description |
|-----|------|-------------|
| (any prefix) | Normal | Wait to see available keys |
| `<BS>` | Popup | Go back one level |
| `<Esc>` | Popup | Close popup |

## bufferline.nvim

| Key | Mode | Description |
|-----|------|-------------|
| Mouse click | Normal | Switch to buffer |
| Middle click | Normal | Close buffer |

## trouble.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `q` | Normal | Close trouble |
| `<Esc>` | Normal | Close trouble |
| `r` | Normal | Refresh |
| `R` | Normal | Toggle auto-refresh |
| `<CR>` | Normal | Jump to diagnostic |
| `o` | Normal | Jump and close |
| `<Tab>` | Normal | Fold open/close |
| `j` / `k` | Normal | Move up/down |
| `gg` / `G` | Normal | First/last item |
| `P` | Normal | Toggle preview |

## toggleterm.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>tf` | Normal | Toggle floating terminal (custom) |
| `<leader>th` | Normal | Toggle horizontal terminal (custom) |
| `<leader>tv` | Normal | Toggle vertical terminal (custom) |
| `<Esc>` or `<C-\><C-n>` | Terminal | Exit terminal mode |
| `i` | Normal (in term) | Enter terminal mode |

## LuaSnip

| Key | Mode | Description |
|-----|------|-------------|
| `<Tab>` | Insert | Expand or jump forward (if configured) |
| `<S-Tab>` | Insert | Jump backward (if configured) |
| `<C-l>` | Insert | Change choice in choice node |

## indent-blankline.nvim

No keybindings - visual only.

## nvim-autopairs

No keybindings - automatic pairing on insert.

## nvim-web-devicons

No keybindings - provides icons only.

## tokyonight.nvim

No keybindings - colorscheme only.

## lualine.nvim

No keybindings - status line only.

## flash.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `s` | Normal/Visual/Operator | Start Flash jump |
| `S` | Normal/Visual/Operator | Flash Treesitter (select by syntax) |
| `r` | Operator | Remote Flash (operator-pending) |
| `R` | Visual/Operator | Treesitter search |
| `<C-s>` | Command | Toggle Flash search |

### During Flash:

| Key | Description |
|-----|-------------|
| `<CR>` | Jump to match |
| `<Esc>` | Cancel |
| Any char | Continue narrowing search |
| `;` | Next match |
| `,` | Previous match |

## todo-comments.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `]t` | Normal | Jump to next TODO |
| `[t` | Normal | Jump to previous TODO |

### Supported Keywords:

- `TODO` - things to do
- `HACK` - hacky workarounds
- `WARN` / `WARNING` / `XXX` - warnings
- `PERF` / `OPTIM` / `PERFORMANCE` / `OPTIMIZE` - performance notes
- `NOTE` / `INFO` - informational notes
- `TEST` / `TESTING` / `PASSED` / `FAILED` - test-related
- `FIX` / `FIXME` / `BUG` / `FIXIT` / `ISSUE` - bugs and fixes

## lazygit.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>gg` | Normal | Open LazyGit (custom) |

### Inside LazyGit:

Uses standard lazygit keybindings. Press `?` inside lazygit for help.

## markdown-preview.nvim

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>mp` | Normal | Toggle markdown preview (custom) |

### Commands:

| Command | Description |
|---------|-------------|
| `:MarkdownPreview` | Start preview |
| `:MarkdownPreviewStop` | Stop preview |
| `:MarkdownPreviewToggle` | Toggle preview |

### Features:

- Synchronized scrolling between editor and browser
- Auto-refresh on save
- Works with GitHub-flavored markdown
- Supports mermaid diagrams, KaTeX math, and more
