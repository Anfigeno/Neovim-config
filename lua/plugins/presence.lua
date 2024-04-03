return {
	"IogaMaster/neocord",
	event = "VeryLazy",
	config = function()
		require("neocord"):setup({
			enable_line_number = true,
			global_timer = true,

			editing_text = "Editando %s",
			file_explorer_text = "Buscando %s",
			git_commit_text = "Comprometiendo cambios",
			plugin_manager_text = "Configurando plugins",
			reading_text = "Leyendo %s",
			workspace_text = "Trabajando en %s",
			line_number_text = "Line %s out of %s",
		})
	end,
}
