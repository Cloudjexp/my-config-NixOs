-- ==========================================
-- Mi configuración de Neovim
-- ==========================================

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Opciones
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

-- ==========================================
-- DIAGNOSTICO LSP
-- ==========================================

vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		prefix = "●",
	},

	signs = true,
	underline = true,
	update_in_insert = false,

	severity_sort = true,

	float = {
		border = "rounded",
		source = "if_many",
	},
})

require("config.theme").setup()
-- ==========================================
-- lazy.nvim
-- ==========================================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
})

require("config.keymaps")

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		if vim.fn.argc() == 0 and vim.fn.line2byte("$") == -1 then
			require("alpha").start()
		end
	end,
})
