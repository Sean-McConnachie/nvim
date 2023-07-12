local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local packer = require("packer")

return packer.startup(function(use)
      ---- Packer
	use 'wbthomason/packer.nvim'

      ---- Colorscheme
      -- use 'LunarVim/Colorschemes'
      use 'B4mbus/oxocarbon-lua.nvim'

      ---- Treesitter
      use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
      }

      ---- File explorer
      use 'nvim-tree/nvim-tree.lua'


      ---- Telescope
      use {
            'nvim-telescope/telescope.nvim',
            requires = { { 'nvim-lua/plenary.nvim' } }
      }

      ---- LSPs
      use 'neovim/nvim-lspconfig'

      ---- Debuggers
      use 'mfussenegger/nvim-dap'
      use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }
      use 'leoluz/nvim-dap-go'

      ---- Completions
      use 'hrsh7th/cmp-nvim-lsp'
      use 'hrsh7th/cmp-buffer'
      use 'hrsh7th/cmp-path'
      use 'hrsh7th/nvim-cmp'
      use 'saadparwaiz1/cmp_luasnip'

      ---- Snippets
      use 'L3MON4D3/LuaSnip'
      use 'rafamadriz/friendly-snippets'


      ---- UI
      use 'nvim-tree/nvim-web-devicons'
      use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
      }

      use {
	      'windwp/nvim-autopairs',
	      config = function() require("nvim-autopairs").setup {} end
      }
      ---- LATER
      -- use 'voldikss/vim-floaterm'
      -- use 'preservim/nerdcommenter'
      -- use {
end)
