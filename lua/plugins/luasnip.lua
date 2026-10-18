return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
-- If on windows, use LLVM or MSYS2 to get make
    build = "make install_jsregexp",
    config = function()
	local ls = require("luasnip")

	ls.config.set_config({
	    enable_autosnippets = true,
	})
    end,
}
