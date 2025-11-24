local keymap = vim.keymap.set

keymap("i", "jk", "<ESC>", { desc = "Enter into normal mode" })

keymap("n", "<leader>ww", ":write<CR>", { desc = "Save current file" })
keymap("n", "<leader>wq", ":wq<CR>", { desc = "Save and Quit" })
keymap("n", "<leader>qq", ":q!<CR>", { desc = "Quit without saving" })

keymap("n", "<C-j>", "<C-w>j", { desc = "Move up in multiwindows" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move down in multiwindows" })
keymap("n", "<C-h>", "<C-w>h", { desc = "Move left in multiwindows" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move right in multiwindows" })

keymap("n", "<leader>nh", ":noh<CR>", { desc = "Quit without saving" })

keymap("i", "<C-o>", "<ESC>O", { desc = "Insert a newline above" })

keymap("n", "<leader>wh", "<cmd>wincmd K<CR>", { desc = "Change to horizontal split" })
keymap("n", "<leader>wv", "<cmd>wincmd H<CR>", { desc = "Change to verticale split" })

-- Nvim-tree
local nvt_api = require("nvim-tree.api")
keymap("n", "<leader>ee", nvt_api.tree.toggle, { desc = "Insert a newline above" })

-- Telescope
local tb = require("telescope.builtin")
local utils = require("telescope.utils")

keymap("n", "<leader>fs", function()
	tb.live_grep({
		cwd = utils.buffer_dir(),
	})
end, { desc = "Searches for a string from cwd" })

keymap("n", "<leader>fg", function()
	tb.grep_string({
		cwd = utils.buffer_dir(),
	})
end, { desc = "Searches for a string under the cursor from cwd" })

keymap("n", "<leader>ff", function()
	tb.find_files({
		cwd = utils.buffer_dir(),
	})
end, { desc = "Searches for a file" })

keymap("n", "<leader>fb", tb.current_buffer_fuzzy_find, { desc = "Searches for a string only in the current buffer" })
keymap("n", "<leader>fc", tb.colorscheme, { desc = "Lists available colorschemes" })

keymap("n", "<leader>hh", tb.help_tags, { desc = "Lists available help tags" })

-- Formatter
keymap("n", "<leader>fo", function()
	require("Conform").format()
end, { desc = "Searches for a file" })

-- Bufferline
keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to the next buffer" })
keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to the previous buffer" })
keymap("n", "<leader>bp", "<cmd>BufferLinePick<CR>", { desc = "Pick a buffer to open" })
keymap("n", "<leader>bc", "<cmd>BufferLinePickClose<CR>", { desc = "Pick a buffer to close" })

-- Terminal
keymap("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toogle terminal" })
keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Toogle terminal in vertical mode" })
keymap("t", "<ESC>", "<C-\\><C-n>", { desc = "Switch to normal mode in terminal" })
keymap("t", "jk", "<C-\\><C-n>", { desc = "Switch to normal mode in terminal" })
keymap("t", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Move left in terminal mode" })
keymap("t", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Move right in terminal mode" })
keymap("t", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Move up in terminal mode" })
keymap("t", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Move down in terminal mode" })
