return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",

		opts = {
			direction = "horizontal",
			size = 12,

			start_in_insert = true,
			close_on_exit = true,
		},

		config = function(_, opts)
			require("toggleterm").setup(opts)

			vim.keymap.set("n", "<leader>t", function()
				local dir = vim.fn.expand("%:p:h")

				if dir == "" then
					dir = vim.fn.getcwd()
				end

				vim.cmd("ToggleTerm direction=horizontal dir=" .. vim.fn.fnameescape(dir))
			end, {
				desc = "Terminal inferior",
			})
		end,
	},
}
