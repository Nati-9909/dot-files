return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-mini/mini.icons",
		},
	},

	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"j-hui/fidget.nvim",
		version = "*", -- alternatively, pin this to a specific version, e.g., "1.6.1"
		opts = {
			-- options
		},
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			vim.api.nvim_set_hl(0, "IblIndent", { fg = "#32CD32" })
			vim.api.nvim_set_hl(0, "IblScope", { fg = "#C084FC" })

			require("ibl").setup({
				indent = {

					highlight = "comment",
				},
				scope = {
					enabled = true,
					highlight = "IblScope",
				},
			})
		end,
	},

	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					diagnostics = "nvim_lsp",
					numbers = "ordinal",
					sort_by = "insert_after_current",
					color_icons = true,
					show_buffer_icons = true,
					show_buffer_close_icons = true,
					show_close_icon = true,
					always_show_bufferline = false,
				},
			})
		end,
	},
}
