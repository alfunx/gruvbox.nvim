local vim = vim
local utils = require('gruvbox.utils')
local colors = require('gruvbox.colors')
local colorscheme = require('gruvbox.colorscheme')

vim.api.nvim_command('hi clear')
if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'gruvbox'

colorscheme.set_terminal_colors(colors[vim.o.background])
colorscheme.set_colors(colors[vim.o.background], utils.styles)
