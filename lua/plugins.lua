local vim = vim

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use "nvim-treesitter/nvim-treesitter"

	-- Langs
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	use({
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/nvim-cmp",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
	})

	-- Formatter and linter
	use("jose-elias-alvarez/null-ls.nvim")

	-- Colour theme
	use("savq/melange-nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = { "nvim-lua/plenary.nvim" },
	})

	use({
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap" },
	})

	-- UI
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	use("HiPhish/rainbow-delimiters.nvim")

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use("preservim/nerdcommenter")

	use("miyakogi/conoline.vim")

	use("lukas-reineke/indent-blankline.nvim")
end)
