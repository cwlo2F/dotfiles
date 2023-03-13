" Load plugins.
" The list of plugins are in `lua/plugins.lua`.
lua require('plugins')

colorscheme tokyonight 

set number
set relativenumber
set ruler
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ 

let mapleader=","

noremap <Leader>- ddp
noremap <Leader>_ dd<Up>P

inoremap <Leader><c-u> <esc>viwUi
nnoremap <Leader><c-u> viwU

nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" My email iabbrev
iabbrev @@ cwlo2F@gmail.com

" Ignore cursor key input in insert mode.
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

filetype plugin indent on

syntax enable
 

let g:tex_flavor='latex'

" LaTeX concealment
set conceallevel=1
let g:tex_conceal='abdmg'

let g:vimtex_view_method = 'skim'
let g:vimtex_view_skim_sync = 1
let g:vimtex_view_skim_activate = 1
let g:vimtex_quickfix_mode = 0

let g:vimtex_compiler_method = 'latexmk'

" Expand snippets in insert mode with Tab
imap <silent><expr> <Tab> luasnip#expandable() ? '<Plug>luasnip-expand-snippet' : '<Tab>'

" Jump forward in through tabstops in insert and visual mode with Control-f
" imap <silent><expr> <C-f> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-f>' 
" smap <silent><expr> <C-f> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-f>'

" Jump forward in through tabstops in insert and visual mode with jk
imap <silent><expr> jk luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : 'jk' 
smap <silent><expr> jk luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : 'jk'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

" Cycle forward through choice nodes with Control-f
imap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'
smap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'

" Configure LuaSnip
lua require("luasnip").config.set_config({enable_autosnippets = true, store_selection_keys = "<Tab>",})

" Load LuaSnip snippets
lua require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})

" Reload LuaSnip keymap
nnoremap <leader>L <Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip"})<Return>
