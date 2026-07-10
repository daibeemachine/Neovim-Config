return
{

    -- Installs lspconfig
    {
	{
	    "neovim/nvim-lspconfig",
	},

	-- Retrieves language servers (I installed them separately on Windows and Arch)

	-- Python
	vim.lsp.enable('pyright'),

	-- Lua
	vim.lsp.enable('lua_ls'),

	-- Typescript
	vim.lsp.enable('ts_ls'),

	-- SASS
	vim.lsp.enable('somesass_ls'),

	-- CSS
	vim.lsp.enable('cssls'),

	-- HTML
	vim.lsp.enable('html'),
	vim.lsp.inline_completion.enable()
    },
    {
    -- Installs a plugin shows inline diagnostics when hovering over text 
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
        require("tiny-inline-diagnostic").setup({
		options =
		{
		    multilines = {enabled = true}
		},
	})
        vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
    }
}
