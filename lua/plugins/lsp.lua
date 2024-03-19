return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			ensure_installed = { "lua_ls", "gopls", "solc", "pylsp" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({capabilities = capabilities})
			lspconfig.gopls.setup({capabilities = capabilities})
			lspconfig.solc.setup({capabilities = capabilities})
			lspconfig.pylsp.setup({capabilities = capabilities})
			lspconfig.jsonls.setup({capabilities = capabilities})
			lspconfig.dockerls.setup({capabilities = capabilities})
			lspconfig.clojure_lsp.setup({capabilities = capabilities})
			lspconfig.bashls.setup({capabilities = capabilities})
			lspconfig.svelte.setup({capabilities = capabilities})
			lspconfig.ast_grep.setup({capabilities = capabilities})
			lspconfig.clangd.setup({capabilities = capabilities})
			lspconfig.elixirls.setup({capabilities = capabilities})
			lspconfig.html.setup({capabilities = capabilities})

			
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
