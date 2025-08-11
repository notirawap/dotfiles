-- key binding
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=3")
vim.g.mapleader = " "

-- line numbers
vim.opt.number = true -- Show absolute number on current line
vim.opt.relativenumber = true -- Show relative numbers on other lines

-- cursor
vim.opt.guicursor = ""

-- tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.fillchars = { eob = " " }
vim.api.nvim_set_hl(0, "LineNr", { fg = "#5e5e5e" })  -- dim all line numbers
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true })  -- highlight current one

