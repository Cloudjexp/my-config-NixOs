local M = {}

function M.setup()
  local colors = {
    bg = "#171522",
    fg = "#e8d7f5",

    pink = "#e84b8a",
    purple = "#c678dd",
    blue = "#8ab4f8",
    cyan = "#7dcfff",
    green = "#a6d189",
    yellow = "#e5c07b",

    bright_pink = "#ff5c8a",
    bright_purple = "#d98cff",
    bright_blue = "#91b8ff",
  }

  vim.cmd("highlight clear")
  vim.cmd("set background=dark")

  local highlights = {
    -- Interfaz
    Normal = {
      fg = colors.fg,
      bg = colors.bg,
    },

    NormalFloat = {
      fg = colors.fg,
      bg = colors.bg,
    },

    Cursor = {
      fg = colors.bg,
      bg = colors.pink,
    },

    CursorLine = {
      bg = "#211d30",
    },

    LineNr = {
      fg = "#62566f",
    },

    CursorLineNr = {
      fg = colors.pink,
      bold = true,
    },

    Visual = {
      fg = colors.bg,
      bg = "#d8a8e8",
    },

    Comment = {
      fg = "#8f7aa3",
      italic = true,
    },

    -- Código
    Constant = {
      fg = colors.cyan,
    },

    String = {
      fg = colors.green,
    },

    Character = {
      fg = colors.green,
    },

    Number = {
      fg = colors.yellow,
    },

    Boolean = {
      fg = colors.yellow,
    },

    Identifier = {
      fg = colors.blue,
    },

    Function = {
      fg = colors.bright_blue,
      bold = true,
    },

    Statement = {
      fg = colors.purple,
    },

    Keyword = {
      fg = colors.pink,
    },

    Type = {
      fg = colors.cyan,
    },

    Special = {
      fg = colors.bright_purple,
    },

    Operator = {
      fg = colors.pink,
    },

    -- Autocompletado
    Pmenu = {
      fg = colors.fg,
      bg = "#211d30",
    },

    PmenuSel = {
      fg = colors.bg,
      bg = colors.pink,
    },

    -- Búsqueda
    Search = {
      fg = colors.bg,
      bg = colors.yellow,
    },

    IncSearch = {
      fg = colors.bg,
      bg = colors.pink,
    },

    -- Barra de estado
    StatusLine = {
      fg = colors.fg,
      bg = "#211d30",
    },

    StatusLineNC = {
      fg = "#8f7aa3",
      bg = colors.bg,
    },

    -- Separadores
    VertSplit = {
      fg = "#62566f",
      bg = colors.bg,
    },

    -- Mensajes
    ErrorMsg = {
      fg = colors.pink,
    },

    WarningMsg = {
      fg = colors.yellow,
    },

    -- Git / diferencias
    DiffAdd = {
      fg = colors.green,
      bg = "#1d291f",
    },

    DiffChange = {
      fg = colors.yellow,
      bg = "#29251b",
    },

    DiffDelete = {
      fg = colors.pink,
      bg = "#2b1822",
    },
  }

  -- Aplicar colores
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
