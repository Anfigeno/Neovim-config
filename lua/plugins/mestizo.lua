return {
	dir = "~/Código/Mestizo/mestizo.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		local mestizo = require("mestizo")

		mestizo.establecer({
			integraciones = mestizo.integraciones,
			extras = mestizo.extras,
		})
	end,
}
