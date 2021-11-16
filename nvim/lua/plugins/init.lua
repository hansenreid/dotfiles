-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("folke/tokyonight.nvim")
	use("sbdchd/neoformat")

	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lsp_config")
		end,
	})

	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin

	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("plugins.treesitter_config")
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight",
				},
			})
		end,
	})

	use({
		"tanvirtin/vgit.nvim",
		event = "BufWinEnter",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("vgit").setup({
				hls = require("vgit").themes.tokyonight,
			})
		end,
	})

	use({
		"pwntester/octo.nvim",
		config = function()
			require("octo").setup()
		end,
	})
end)
