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
          -- Izquierda
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

            {
              "diff",
              symbols = {
                added = " ",
                modified = " ",
                removed = " ",
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

          -- Derecha
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
