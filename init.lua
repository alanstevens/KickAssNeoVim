-- Leader key
vim.g.mapleader = ","

-- Sensible defaults
vim.opt.number = true           -- line numbers
vim.opt.relativenumber = true   -- relative line numbers
vim.opt.ignorecase = true       -- case insensitive search
vim.opt.smartcase = true        -- unless uppercase used
vim.opt.splitbelow = true       -- horizontal splits below
vim.opt.splitright = true       -- vertical splits right
vim.opt.termguicolors = true    -- true color support
vim.opt.undofile = true         -- persistent undo
vim.opt.updatetime = 250        -- faster updates
vim.opt.signcolumn = "yes"      -- always show sign column
vim.opt.clipboard = "unnamedplus" -- use system clipboard

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup({
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "neovim/nvim-lspconfig",

  -- Mason (LSP installer)
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
  },

  -- Colorscheme
  {
    "folke/tokyonight.nvim",
    priority = 1000,
  },

  -- Linting
  "mfussenegger/nvim-lint",

  -- Tree-sitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile", "VeryLazy" },
    config = function()
      local ok, configs = pcall(require, "nvim-treesitter.configs")
      if ok then
        configs.setup({
          ensure_installed = {
            "lua", "javascript", "typescript", "c_sharp",
            "markdown", "markdown_inline", "html", "css", "json",
          },
          highlight = { enable = true },
          indent = { enable = true },
        })
      end
    end,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
          section_separators = { left = "\u{e0b4}", right = "\u{e0b6}" },
          component_separators = { left = "\u{e0b5}", right = "\u{e0b7}" },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = {
            { "branch", icon = "" },
            { "diff", colored = true },
            { "diagnostics", sources = { "nvim_lsp" } },
          },
          lualine_c = { { "filename", path = 1 } },
          lualine_x = {
            {
              function()
                local clients = vim.lsp.get_clients({ bufnr = 0 })
                if #clients > 0 then return " " .. clients[1].name end
                return ""
              end,
            },
            "encoding",
            "filetype",
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Git signs
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  -- Comment toggle
  {
    "numToStr/Comment.nvim",
    config = true,
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = true,
  },

  -- Which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = true,
  },

  -- Buffer line
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
          offsets = {
            { filetype = "neo-tree", text = "File Explorer", text_align = "center" },
          },
        },
      })
    end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = true,
  },

  -- Diagnostics list
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
  },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
    keys = {
      {
        "<leader>tf",
        function() require("toggleterm").toggle(1, nil, nil, "float") end,
        desc = "Terminal (float)",
      },
      {
        "<leader>th",
        function() require("toggleterm").toggle(2, 15, nil, "horizontal") end,
        desc = "Terminal (horizontal)",
      },
      {
        "<leader>tv",
        function() require("toggleterm").toggle(3, math.floor(vim.o.columns * 0.4), nil, "vertical") end,
        desc = "Terminal (vertical)",
      },
    },
  },

  -- Flash (quick navigation)
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    config = true,
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  },

  -- Todo comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
  },

  -- Lazygit integration
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<CR>", desc = "LazyGit" },
    },
  },

  -- Markdown preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", desc = "Toggle Markdown Preview" },
    },
  },

  -- Formatting
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          css = { "prettier" },
          html = { "prettier" },
          json = { "prettier" },
          markdown = { "prettier" },
          lua = { "stylua" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end,
  },

  -- Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = false,
            hide_dotfiles = true,
            hide_gitignored = true,
          },
        },
        window = {
          mappings = {
            ["."] = "toggle_hidden",
          },
        },
      })
    end,
  },
})

-- Font settings
vim.o.guifont = "Hack Nerd Font Mono:h14"

-- Colorscheme
require("tokyonight").setup({ style = "night" })
vim.cmd.colorscheme("tokyonight")

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "lua_ls", "omnisharp" },
})

-- LSP setup with capabilities (using Neovim 0.11+ native API)
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configure LSP servers using vim.lsp.config
vim.lsp.config("ts_ls", { capabilities = capabilities })
vim.lsp.config("lua_ls", { capabilities = capabilities })
vim.lsp.config("omnisharp", { capabilities = capabilities })

-- Enable the configured servers
vim.lsp.enable({ "ts_ls", "lua_ls", "omnisharp" })

-- Completion setup
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
})

-- Linting setup
local lint = require("lint")
lint.linters_by_ft = {
  javascript = { "eslint" },
  typescript = { "eslint" },
  javascriptreact = { "eslint" },
  typescriptreact = { "eslint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
  callback = function()
    lint.try_lint()
  end,
})

-- Lua file indentation (2 spaces)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end,
})

-- Key bindings
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>/", function() require("Comment.api").toggle.linewise.current() end)

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>")

-- LSP (via Telescope)
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>")
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>")
vim.keymap.set("n", "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>")
vim.keymap.set("n", "<leader>ws", "<cmd>Telescope lsp_workspace_symbols<CR>")

-- LSP (direct)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

-- Bufferline
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>BufferLinePickClose<CR>")

-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>")

-- Todo comments
vim.keymap.set("n", "<leader>xt", "<cmd>Trouble todo toggle<CR>")
vim.keymap.set("n", "]t", function() require("todo-comments").jump_next() end)
vim.keymap.set("n", "[t", function() require("todo-comments").jump_prev() end)
