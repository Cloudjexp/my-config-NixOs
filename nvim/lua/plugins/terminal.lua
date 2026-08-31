return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",

		opts = {
			direction = "float",

			float_opts = {
				border = "rounded",

				width = function()
					return math.floor(vim.o.columns * 0.70)
				end,

				height = function()
					return math.floor(vim.o.lines * 0.60)
				end,
			},

			start_in_insert = true,
			close_on_exit = false,
		},

		config = function(_, opts)
			require("toggleterm").setup(opts)

			local Terminal = require("toggleterm.terminal").Terminal

			vim.keymap.set("n", "<leader>t", function()
				local dir = vim.fn.expand("%:p:h")

				if dir == "" then
					dir = vim.fn.getcwd()
				end

				local terminal = Terminal:new({
					direction = "float",
					dir = dir,
					close_on_exit = false,
				})

				terminal:toggle()
			end, {
				desc = "Terminal flotante",
			})
		end,
	},
}
