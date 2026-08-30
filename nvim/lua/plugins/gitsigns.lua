return {
	{
		"lewis6991/gitsigns.nvim",

		opts = {
			signs = {
				add = {
					text = "│",
				},
				change = {
					text = "│",
				},
				delete = {
					text = "_",
				},
				topdelete = {
					text = "‾",
				},
				changedelete = {
					text = "~",
				},
				untracked = {
					text = "┆",
				},
			},

			current_line_blame = false,

			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function map(mode, l, r, desc)
					vim.keymap.set(mode, l, r, {
						buffer = bufnr,
						desc = desc,
					})
				end

				map("n", "]c", gs.next_hunk, "Siguiente cambio")
				map("n", "[c", gs.prev_hunk, "Cambio anterior")
				map("n", "<leader>hs", gs.stage_hunk, "Stage cambio")
				map("n", "<leader>hr", gs.reset_hunk, "Reset cambio")
				map("n", "<leader>hp", gs.preview_hunk, "Ver cambio")
				map("n", "<leader>hb", gs.blame_line, "Git blame")
			end,
		},
	},
}
