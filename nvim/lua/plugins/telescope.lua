return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    config = function()
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          prompt_prefix = "   ",
          selection_caret = "❯ ",

          layout_config = {
            horizontal = {
              preview_width = 0.55,
            },
          },

          borderchars = {
            "─",
            "│",
            "─",
            "│",
            "╭",
            "╮",
            "╯",
            "╰",
          },
        },
      })

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {
        desc = "Buscar archivos",
      })

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
        desc = "Buscar texto",
      })

      vim.keymap.set("n", "<leader>fb", builtin.buffers, {
        desc = "Buscar buffers",
      })

      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
        desc = "Buscar ayuda",
      })
    end,
  },
}
