vim.g.mapleader = ","

vim.g.python3_host_prog = '/opt/homebrew/bin/python3'

vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = true

vim.opt.ruler = true

vim.opt.conceallevel = 1

vim.cmd.colorscheme('tokyonight')

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4


-- LuaSnip

require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true, 

  -- Use Tab to trigger visual selelection
  store_selection_keys = "<Tab>",
})

-- Load LuaSnip snippets
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip"})

-- Reload LuaSnip keymap
vim.keymap.set("n", "<Leader>L", 
  function() require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"}) end,
--  "<CMD>lua require(\"luasnip.loaders.from_lua\").load({paths = \"~/.config/nvim/LuaSnip/\"})<Return>",
  { noremap = true })
