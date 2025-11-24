return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "hrsh7th/cmp-nvim-lsp", "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("LspGroup", { clear = true }),
				callback = function(ev)
					local bufnr = ev.buf
					local client = vim.lsp.get_client_by_id(ev.data.client_id)
					local opts = { buffer = bufnr, silent = true }
					local set = vim.keymap.set

					set("n", "gd", vim.lsp.buf.definition, opts)
					set("n", "gD", vim.lsp.buf.declaration, opts)
					set("n", "K", vim.lsp.buf.hover, opts)
					set("n", "<leader>rr", vim.lsp.buf.rename, opts)
					set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
					set("n", "<leader>bf", vim.lsp.buf.format, opts)

					vim.keymap.set("n", "<leader>td", function()
						local current = vim.diagnostic.is_disabled(bufnr)
						vim.diagnostic.enable(not current, bufnr)
					end, { buffer = bufnr })

					set("n", "[d", vim.diagnostic.get_prev, opts)
					set("n", "]d", vim.diagnostic.get_next, opts)
				end,
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", {
				cmd = { "lua-language-server" },
				capabilities = capabilities,
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						diagnostics = { globals = { "vim" } },
					},
				},
			})
			vim.lsp.enable("lua_ls")
		end,
	},
}
