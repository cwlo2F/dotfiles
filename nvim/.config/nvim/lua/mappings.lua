
vim.keymap.set('n', '<Leader>ev', ':vsplit $MYVIMRC<CR>')
vim.keymap.set('n', '<Leader>sv', ':source $MYVIMRC<CR>')

local ls = require("luasnip")

vim.keymap.set('i', '<Tab>', function()
  if ls.expandable() then return "<Plug>luasnip-expand-snippet" else return "<Tab>" end end,
  { noremap = false, expr = true, silent = true })

-- Jump forward in through tabstops in insert and visual mode with Control-f
vim.keymap.set({'i', 's'}, '<C-F>',
  function() ls.jump(1)  end,
  { silent = true })

-- Use Shift-Tab to jump backwards through snippets
vim.keymap.set({'i', 's'}, '<S-Tab>',
  function() ls.jump(-1) end,
  { silent = true })
