return {
  -- lazy.nvim
  { "folke/lazy.nvim", version = "*"},

  -- Colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  "nvim-lua/plenary.nvim",
  "ryanoasis/vim-devicons",

  -- TeX
  "lervag/vimtex",
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build   = "make install_jsregexp",
    config  = function()
      require("luasnip.loaders.from_lua").lazy_load {
        paths = vim.fn.stdpath("config") .. "/LuaSnip"
      }
    end,
  },

  -- Haskell
  {
    "mrcjkb/haskell-tools.nvim",
    branch = "1.x.x",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- LSP
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "lua_ls", "pyright" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup {
        settings = { Lua = {diagnostics = { globals = { "vim" } } } },
      }

      lspconfig.clangd.setup {}

      lspconfig.pyright.setup {}
    end
  },

  {
    "hrsh7th/nvim-cmp",
    version = false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"]      = cmp.mapping.confirm({ select = true }),
          ["<C-n>"]     = cmp.mapping.select_next_item(),
          ["<C-p>"]     = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },

  "rust-lang/rust.vim",
  "ocaml/merlin",
}

