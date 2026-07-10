return
{

    -- Installs lspconfig
    {
	{
	    "neovim/nvim-lspconfig",
	},

	-- Retrieves language servers (I installed them separately on Windows and Arch)
	vim.lsp.enable('pyright'),
	vim.lsp.enable('lua_ls'),
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
