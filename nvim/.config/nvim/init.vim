call plug#begin("~/.vim/plugged")
" Plugin Section
Plug 'dracula/vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
" Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'L3MON4D3/LuaSnip', {'tag': 'v1.*'}
call plug#end()

colorscheme tokyonight 

set number
set relativenumber

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
 
set ruler
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ 

let g:tex_flavor='latex'

let g:vimtex_view_method='skim'
let g:vimtex_view_skim_sync = 1
let g:vimtex_view_skim_activate = 1
let g:vimtex_quickfix_mode=0

" let g:vimtex_compiler_latexmk_engines = 'lualatex'

set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

" Configure LuaSnip
lua require("luasnip").config.set_config({enable_autosnippets = true, store_selection_keys = "<Tab>",})

" Load LuaSnip snippets
lua require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})

