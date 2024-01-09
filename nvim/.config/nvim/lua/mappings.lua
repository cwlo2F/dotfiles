
vim.keymap.set('n', '<Leader>ev', ':vsplit $MYVIMRC<CR>')
vim.keymap.set('n', '<Leader>sv', ':source $MYVIMRC<CR>')

vim.keymap.set('i', '<C-J>',
  'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<C-J>" : coc#refresh()',
  { noremap = true, silent = true, expr = true })
vim.keymap.set('i', '<C-K>',
  'coc#pum#visible() ? coc#pum#prev(1) : "<C-K>"',
  { noremap = true, silent = true, expr = true })
vim.keymap.set('i', '<CR>',
  [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<C-R>=coc#on_enter()\<CR>"]],
  { noremap = true, silent = true, expr = true })

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
