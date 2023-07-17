local ih = require("inlay-hints")

ih.setup({
	only_current_line = true,

	eol = {
		right_align = true,
	}
})

local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
	on_attach = function(c, b)
		ih.on_attach(c, b)
	end,
	settings = {
		gopls = {
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
		},
	},
})
