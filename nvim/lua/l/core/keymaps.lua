-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>l", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":noh<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>qw", "<cmd>wqall<CR>", { desc = "Save and Quit" })
keymap.set("n", "<leader>qq", "<cmd>q!<CR>", { desc = "Quit without Saving" })
keymap.set("n", "<leader>qa", "<cmd>qall!<CR>", { desc = "Quit All Windows without Saving" })

keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "Save current file" })

keymap.set("i", "<C-o>", "<ESC>O", { desc = "Newline above while in insert mode" })

keymap.set("i", "<C-s>", "<CMD>:w<CR>", { desc = "Save file while in insert mode" })

keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move half a screen up" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move half a screen down" })

keymap.set("n", "<leader>p", "<cmd>bp <CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>n", "<cmd>bn <CR>", { desc = "Next buffer" })

-- Terminal
keymap.set(
	"n",
	"<leader>tt",
	"<cmd>:ToggleTerm size=80 direction=vertical name=desktop<CR>",
	{ desc = "Open Terminal" }
)
keymap.set("t", "jk", [[<C-\><C-n>]], { desc = "Normal mode in terminal" })
keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Move to left in terminal mode" })
keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Move to right in terminal mode" })
keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Move to up in terminal mode" })
keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Move to down in terminal mode" })

-- Text
keymap.set("n", "<leader>**", "bi**<ESC>ea**<ESC>", { desc = "Enclose with **" })
keymap.set("n", "<leader>_", "bi_<ESC>ea_<ESC>", { desc = "Enclose with _" })
