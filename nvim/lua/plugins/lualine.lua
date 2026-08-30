return {
	{
		"nvim-lualine/lualine.nvim",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			local colors = {
				bg = "#171522",
				fg = "#e8d7f5",

				pink = "#e84b8a",
				purple = "#c678dd",
				blue = "#8ab4f8",
				cyan = "#7dcfff",
				green = "#a6d189",
				yellow = "#e5c07b",

				dark = "#211d30",
				muted = "#62566f",
			}

			-- ==========================================
			-- TEMA SHADOWRAIN
			-- ==========================================

			local theme = {
				normal = {
					a = {
						fg = colors.bg,
						bg = colors.pink,
						gui = "bold",
					},

					b = {
						fg = colors.fg,
						bg = colors.dark,
					},

					c = {
						fg = colors.fg,
						bg = colors.bg,
					},

					x = {
						fg = colors.cyan,
						bg = colors.bg,
					},

					y = {
						fg = colors.yellow,
						bg = colors.bg,
					},

					z = {
						fg = colors.bg,
						bg = colors.blue,
						gui = "bold",
					},
				},

				insert = {
					a = {
						fg = colors.bg,
						bg = colors.green,
						gui = "bold",
					},
				},

				visual = {
					a = {
						fg = colors.bg,
						bg = colors.purple,
						gui = "bold",
					},
				},

				replace = {
					a = {
						fg = colors.bg,
						bg = colors.yellow,
						gui = "bold",
					},
				},

				command = {
					a = {
						fg = colors.bg,
						bg = colors.cyan,
						gui = "bold",
					},
				},

				inactive = {
					a = {
						fg = colors.muted,
						bg = colors.bg,
					},

					b = {
						fg = colors.muted,
						bg = colors.bg,
					},

					c = {
						fg = colors.muted,
						bg = colors.bg,
					},
				},
			}

			-- ==========================================
			-- LUALINE
			-- ==========================================

			require("lualine").setup({
				options = {
					theme = theme,
					globalstatus = true,

					component_separators = {
						left = "",
						right = "",
					},

					section_separators = {
						left = "",
						right = "",
					},

					disabled_filetypes = {
						"alpha",
						"dashboard",
						"neo-tree",
					},
				},

				sections = {
					-- ======================================
					-- IZQUIERDA
					-- ======================================

					lualine_a = {
						{
							"mode",

							fmt = function(str)
								return " " .. str .. " "
							end,
						},
					},

					lualine_b = {
						{
							"branch",
							icon = "",
						},

						-- Git: cambios del archivo actual
						{
							function()
								local signs = vim.b.gitsigns_status_dict

								if not signs then
									return ""
								end

								local result = {}

								if signs.added and signs.added > 0 then
									table.insert(result, " " .. signs.added)
								end

								if signs.changed and signs.changed > 0 then
									table.insert(result, " " .. signs.changed)
								end

								if signs.removed and signs.removed > 0 then
									table.insert(result, " " .. signs.removed)
								end

								return table.concat(result, " ")
							end,

							color = {
								fg = colors.fg,
							},
						},

						{
							"diagnostics",

							symbols = {
								error = " ",
								warn = " ",
								info = " ",
								hint = "󰌵 ",
							},
						},
					},

					-- ======================================
					-- CENTRO
					-- ======================================

					lualine_c = {
						{
							"filename",
							path = 1,

							symbols = {
								modified = " ●",
								readonly = " ",
								unnamed = "[Sin nombre]",
							},
						},
					},

					-- ======================================
					-- DERECHA
					-- ======================================

					lualine_x = {
						{
							"encoding",
						},

						{
							"fileformat",
						},

						{
							"filetype",
							icon_only = false,
						},
					},

					lualine_y = {
						{
							"progress",
						},
					},

					lualine_z = {
						{
							"location",
						},
					},
				},
			})
		end,
	},
}
