vim.g.tex_flavor = 'latex'
vim.g.tex_conceal = 'abdmg'

vim.g.vimtex_log_enabled = 1
vim.g.vimtex_log_verbose = 1

vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1
vim.g.vimtex_quickfix_mode = 0

vim.g.vimtex_compiler_method = 'latexmk'

vim.g.vimtex_compiler_latexmk = {
  options = {
    "-pdf",
    "-interaction=nonstopmode",
    "-synctex=1",
  },
}
