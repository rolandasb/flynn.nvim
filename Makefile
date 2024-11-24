all:
	nvim --clean ./lua/flynn/highlight.lua +"set rtp+=." +"lua require('flynn').setup({ transparent = false, transparent_column = false, comment_italic = true })" +":colorscheme flynn"
