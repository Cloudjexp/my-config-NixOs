return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",

		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},

		opts = {
			cmdline = {
				enabled = true,
				view = "cmdline_popup",

				format = {
					cmdline = {
						pattern = "^:",
						icon = "",
						lang = "",
					},

					search_down = {
						kind = "search",
						pattern = "^/",
						icon = " ",
						lang = "",
					},

					search_up = {
						kind = "search",
						pattern = "^%?",
						icon = " ",
						lang = "",
					},

					filter = {
						pattern = "^:%s*!",
						icon = "$",
						lang = "",
					},

					lua = {
						pattern = {
							"^:%s*lua%s+",
							"^:%s*lua%s*=%s*",
							"^:%s*=%s*",
						},
						icon = "",
						lang = "",
					},

					help = {
						pattern = "^:%s*he?l?p?%s+",
						icon = "",
						lang = "",
					},
				},
			},

			popupmenu = {
				enabled = true,
			},

			presets = {
				bottom_search = false,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = true,
			},
		},
	},
}
