return {
	{
		"catppuccin/nvim",
		priority = 1000,

		config = function()
			require("catppuccin").setup({
				transparent_background = false,
			})

			--vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"0xstepit/flow.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			require("flow").setup({
				dark_theme = true, -- Set the theme with dark background.
				high_contrast = false, -- Make the dark background darker or the light background lighter.
				transparent = true, -- Set transparent background.
				fluo_color = "orange", -- Color used as fluo. Available values are pink, yellow, orange, or green.
				mode = "base", -- Mode of the colors. Available values are: dark, bright, desaturate, or base.
				aggressive_spell = false, -- Use colors for spell check.
			})
			-- vim.cmd.colorscheme("flow")
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				transparent = true,
				italic_comments = true,

				-- Modern borderless telescope theme - also applies to fzf-lua
				borderless_telescope = true,

				terminal_colors = true,

				theme = {
					variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
				},

				-- Disable or enable colorscheme extensions
				extensions = {
					telescope = true,
					notify = true,
					mini = true,
				},
			})
			require("lualine").setup({
				options = {
					theme = "auto", -- "auto" will set the theme dynamically based on the colorscheme
				},
			})
			--vim.cmd.colorscheme("cyberdream")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			require("tokyonight").setup({
				style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
				light_style = "day", -- The theme is used when the background is set to light
				transparent = false, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
				day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
				dim_inactive = false, -- dims inactive windows
				lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

				--- You can override specific color groups to use other groups or a hex color
				--- function will be called with a ColorScheme table
				---@param colors ColorScheme
				on_colors = function(colors) end,

				--- You can override specific highlights to use other groups or a hex color
				--- function will be called with a Highlights and ColorScheme table
				---@param highlights tokyonight.Highlights
				---@param colors ColorScheme
				on_highlights = function(highlights, colors) end,

				cache = true, -- When set to true, the theme will be cached for better performance

				---@type table<string, boolean|{enabled:boolean}>
				plugins = {
					-- enable all plugins when not using lazy.nvim
					-- set to false to manually enable/disable plugins
					all = package.loaded.lazy == nil,
					-- uses your plugin manager to automatically enable needed plugins
					-- currently only lazy.nvim is supported
					auto = true,
					-- add any plugins here that you want to enable
					-- for all possible plugins, see:
					--   * https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
					-- telescope = true,
				},
			})
			--vim.cmd.colorscheme("tokyonight")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup()
			-- vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"morhetz/gruvbox",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_underline = 0
			vim.g.gruvbox_undercurl = 0
			vim.g.gruvbox_transparent_bg = 0
			vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme("gruvbox")
		end,
	},
}
