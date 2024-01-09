vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "nvim-lua/plenary.nvim"
  use 'folke/tokyonight.nvim'
  use 'ryanoasis/vim-devicons'

  use 'lervag/vimtex'
  use ({"L3MON4D3/LuaSnip", tag = "v2.*"})

  use {
    'mrcjkb/haskell-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    branch = '1.x.x',
  }
  use { 'neoclide/coc.nvim', branch = 'release', }

  use 'rust-lang/rust.vim'

  use 'ocaml/merlin'
end)
