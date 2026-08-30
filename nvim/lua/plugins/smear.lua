return {
	{
		"sphamba/smear-cursor.nvim",

		opts = {
			smear_between_buffers = true,
			smear_between_neighbor_lines = true,
			scroll_buffer_space = true,
			smear_insert_mode = true,

			cursor_color = "#e84b8a",

			stiffness = 0.8,
			trailing_stiffness = 0.6,

			stiffness_insert_mode = 0.7,
			trailing_stiffness_insert_mode = 0.7,

			damping = 0.95,
			damping_insert_mode = 0.95,

			time_interval = 12,
		},
	},
}
