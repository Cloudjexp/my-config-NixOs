-- ==========================================
-- KEYMAPS
-- ==========================================

local map = vim.keymap.set

-- Navegación básica
map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
	desc = "Quitar resaltado de búsqueda",
})

-- Guardar
map("n", "<leader>w", "<cmd>w<CR>", {
	desc = "Guardar archivo",
})

-- Salir
map("n", "<leader>q", "<cmd>q<CR>", {
	desc = "Salir",
})

-- ==========================================
-- TABS / BUFFERS
-- ==========================================

map("n", "<leader>bn", "<cmd>bnext<CR>", {
	desc = "Siguiente buffer",
})

map("n", "<leader>bp", "<cmd>bprevious<CR>", {
	desc = "Buffer anterior",
})

map("n", "<leader>bd", "<cmd>bdelete<CR>", {
	desc = "Cerrar buffer",
})

-- ==========================================
-- VENTANAS
-- ==========================================

map("n", "<leader>sv", "<cmd>vsplit<CR>", {
	desc = "Dividir vertical",
})

map("n", "<leader>sh", "<cmd>split<CR>", {
	desc = "Dividir horizontal",
})

map("n", "<leader>sx", "<cmd>close<CR>", {
	desc = "Cerrar ventana",
})

-- ==========================================
-- LSP
-- ==========================================

map("n", "gd", vim.lsp.buf.definition, {
	desc = "Ir a definición",
})

map("n", "gr", vim.lsp.buf.references, {
	desc = "Ver referencias",
})

map("n", "K", vim.lsp.buf.hover, {
	desc = "Mostrar documentación",
})

map("n", "<leader>rn", vim.lsp.buf.rename, {
	desc = "Renombrar símbolo",
})

map("n", "<leader>ca", vim.lsp.buf.code_action, {
	desc = "Acción de código",
})

map("n", "<leader>d", vim.diagnostic.open_float, {
	desc = "Mostrar diagnóstico",
})

map("n", "[d", vim.diagnostic.goto_prev, {
	desc = "Diagnóstico anterior",
})

map("n", "]d", vim.diagnostic.goto_next, {
	desc = "Siguiente diagnóstico",
})

-- ==========================================
-- TELESCOPE
-- ==========================================

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
	desc = "Buscar archivos",
})

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
	desc = "Buscar texto",
})

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
	desc = "Buscar buffers",
})

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
	desc = "Buscar ayuda",
})

-- ==========================================
-- NEO-TREE
-- ==========================================

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", {
	desc = "Explorador",
})

-- ==========================================
-- FORMATEAR
-- ==========================================

map("n", "<leader>f", function()
	require("conform").format({
		async = true,
		lsp_fallback = true,
	})
end, {
	desc = "Formatear archivo",
})

-- ==========================================
-- GIT / GITSIGNS
-- ==========================================

map("n", "]c", function()
	require("gitsigns").next_hunk()
end, {
	desc = "Siguiente cambio Git",
})

map("n", "[c", function()
	require("gitsigns").prev_hunk()
end, {
	desc = "Cambio Git anterior",
})

map("n", "<leader>hs", function()
	require("gitsigns").stage_hunk()
end, {
	desc = "Stage cambio",
})

map("n", "<leader>hr", function()
	require("gitsigns").reset_hunk()
end, {
	desc = "Reset cambio",
})

map("n", "<leader>hp", function()
	require("gitsigns").preview_hunk()
end, {
	desc = "Ver cambio",
})

map("n", "<leader>hb", function()
	require("gitsigns").blame_line()
end, {
	desc = "Git blame",
})
