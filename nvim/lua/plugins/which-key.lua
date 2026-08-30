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
					"<leader>e",
					desc = "Explorador",
				},

				{
					"<leader>h",
					group = "Git / Hunk",
				},
			})
		end,
	},
}
