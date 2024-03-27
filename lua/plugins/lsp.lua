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

			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
				local opts = {buffer = ev.buf}
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
				vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
				vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
				vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
				vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
			end,
			})
	end,
}
}
