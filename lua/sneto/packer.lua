j- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
      }
     
  
  
  
  
  -- use 'folke/tokyonight.nvim'

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground') 

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        call(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
}
}
  use({ 'rose-pine/neovim', as = 'rose-pine', vim.cmd('colorscheme rose-pine') })
  --

-- use ({ 'embark-theme/vim', as = 'embark', config = function() 
--     vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
--     vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
--
--    vim.cmd('colorscheme embark')
--
-- end})
--
use 'luisiacc/gruvbox-baby'

-- use {
--     'nvim-lualine/lualine.nvim',
--     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
-- }
--
use ('ThePrimeagen/harpoon')

use "fatih/vim-go"

use ('windwp/nvim-ts-autotag')

use "terrortylor/nvim-comment"


end)

