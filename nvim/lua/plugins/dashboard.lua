return {
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "",
        "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
        "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
        "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
        "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
        "",
      }

      dashboard.section.buttons.val = {
        dashboard.button(
          "f",
          " 󰱼  Buscar archivos",
          "<cmd>Telescope find_files<CR>"
        ),

        dashboard.button(
          "r",
          " 󰋚  Archivos recientes",
          "<cmd>Telescope oldfiles<CR>"
        ),

        dashboard.button(
          "n",
          " 󰈔  Nuevo archivo",
          "<cmd>enew<CR>"
        ),

        dashboard.button(
          "e",
          " 󰉋  Explorador",
          "<cmd>Neotree toggle<CR>"
        ),

        dashboard.button(
          "q",
          " 󰅚  Salir",
          "<cmd>qa<CR>"
        ),
      }

      dashboard.section.footer.val = {
        "",
        "❯  N E O V I M",
      }

      dashboard.section.header.opts.hl = "DashboardHeader"
      dashboard.section.buttons.opts.hl = "DashboardButtons"
      dashboard.section.footer.opts.hl = "DashboardFooter"

      vim.api.nvim_set_hl(0, "DashboardHeader", {
        fg = "#c678dd",
        bold = true,
      })

      vim.api.nvim_set_hl(0, "DashboardButtons", {
        fg = "#8ab4f8",
      })

      vim.api.nvim_set_hl(0, "DashboardFooter", {
        fg = "#7dcfff",
        italic = true,
      })

      dashboard.config.layout = {
        { type = "padding", val = 4 },
        dashboard.section.header,
        { type = "padding", val = 3 },
        dashboard.section.buttons,
        { type = "padding", val = 3 },
        dashboard.section.footer,
      }

      alpha.setup(dashboard.config)
    end,
  },
}
