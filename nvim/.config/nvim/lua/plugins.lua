vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'folke/tokyonight.nvim'
  use 'ryanoasis/vim-devicons'
  use 'lervag/vimtex'
  use ({"L3MON4D3/LuaSnip", tag = "v1.*"})
end)
