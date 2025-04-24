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
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("lspconfig").lua_ls.setup {}
    end
  },

  "rust-lang/rust.vim",
  "ocaml/merlin",
}

