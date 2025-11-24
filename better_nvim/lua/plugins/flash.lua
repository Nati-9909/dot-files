return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		multi_window = false,
	},
	keys = {
		{
			"s",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash jump",
		},
		{
			"S",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({ search = { forward = false } })
			end,
			desc = "Flash jump reverse",
		},
		{
			"L",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({ mode = "line" })
			end,
			desc = "Flash line",
		},
		{
			"<M-s>",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash treesitter",
		},
	},
}
