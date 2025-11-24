return {
	{
		"goolord/alpha-nvim",
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = "Nvim"

			dashboard.section.buttons.val = {
				dashboard.button("e", "New File", ":ene | startinsert<CR>"),
				dashboard.button("f", "Find File", ":Telescope find_files<CR>"),
				dashboard.button("s", "Search for a string", ":Telescope live_grep<CR>"),
				dashboard.button("l", "Lazy", ":Lazy<CR>"),
				dashboard.button("q", "Quit", ":q<CR>"),
			}

			dashboard.config.layout = {
				{ type = "padding", val = 2 },
				dashboard.section.header,
				{ type = "padding", val = 7 },
				{
					type = "group",
					val = {
						{ type = "text", val = "Shortcuts", opts = { hl = "Comment", position = "center" } },
						{ type = "padding", val = 2 },
						dashboard.section.buttons,
						{ type = "padding", val = 2 },
						{ type = "text", val = "Recent", opts = { hl = "Comment", position = "center" } },
						{
							type = "group",
							val = function()
								local recent_files = {}

								for _, file in ipairs(vim.v.oldfiles) do
									if vim.fn.filereadable(file) == 1 then
										local short_path = vim.fn.fnamemodify(file, ":~:.")
										table.insert(recent_files, {
											type = "button",
											value = short_path,
											on_press = function()
												vim.cmd("e " .. fnameescape(file))
											end,
											opts = {
												hl = "AlphaRecentFile",
												position = "center",
											},
										})
										if #recent_files >= 5 then
											break
										end
									end
									if #recent_files == 0 then
										return {
											type = "text",
											value = "No recent file",
											opts = {
												hl = "Comment",
												position = "center",
											},
										}
									end
									print(recent_files)
									return recent_files
								end
							end,
						},
					},
				},
			}

			alpha.setup(dashboard.config)
		end,
	},
}
