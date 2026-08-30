return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",

		opts = {
			preset = "modern",

			win = {
				border = "rounded",
			},

			layout = {
				width = {
					min = 20,
					max = 50,
				},
			},

			icons = {
				mappings = true,
			},
		},

		config = function(_, opts)
			local wk = require("which-key")

			wk.setup(opts)

			wk.add({
				{
					"<leader>f",
					group = "Buscar",
				},

				{
					"<leader>ff",
					desc = "Buscar archivos",
				},
				{
					"<leader>fg",
					desc = "Buscar texto",
				},

				{
					"<leader>fb",
					desc = "Buscar buffers",
				},

				{
					"<leader>fh",
					desc = "Buscar ayuda",
				},

				-- ====================================
				-- BUFFERS
				-- ====================================

				{
					"<leader>b",
					group = "buffers",
				},

				{
					"<leader>bp",
					desc = "Buffer anterior",
				},

				{
					"<leader>bd",
					desc = "cerrar buffer",
				},

				--- ===================================
				--- SPLITS
				--- ===================================

				{
					"<leader>s",
					group = "Splits",
				},

				{
					"<leader>sv",
					desc = "Dividir vertical",
				},

				{
					"<leader>sh",
					desc = "Dividir horizontal",
				},

				{
					"<leader>sx",
					desc = "Cerrar ventana",
				},

				--- ===============================
				--- CODIGO / LSP
				--- ===============================

				{
					"<leader>c",
					group = "Código",
				},

				{
					"<leader>ca",
					desc = "Acción de código",
				},

				{
					"<leader>cf",
					desc = "Formatear archivo",
				},

				{
					"<leader>rn",
					desc = "Renombrar símbolo",
				},

				{
					"<leader>d",
					desc = "Mostrar diagnóstico",
				},

				--- ================================
				--- GIT
				--- ================================

				{
					"<leader>h",
					group = "Git / Hunk",
				},

				{
					"<leader>hs",
					desc = "Stage cambio",
				},

				{
					"<leader>hr",
					desc = "Reset cambio",
				},

				{
					"<leader>hp",
					desc = "Ver cambio",
				},

				{
					"<leader>hb",
					desc = "Git blame",
				},

				--- =====================================
				--- GENERAL
				--- =====================================

				{
					"<leader>e",
					desc = "Explorador",
				},

				{
					"<leader>w",
					desc = "Guardar",
				},

				{
					"<leader>q",
					desc = "Salir",
				},
			})
		end,
	},
}
