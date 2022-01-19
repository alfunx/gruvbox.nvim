local vim = vim

local M = {}

function M.apply(groups)
    if not groups then return end
    for group, parameters in pairs(groups) do
        M.highlight(group, parameters)
    end
end

function M.override(groups, overrides)
    if not overrides then return end
    if not groups then return end
    if overrides then
        vim.tbl_extend("force", groups, overrides)
    end
end

function M.highlight(group, style)
    local fg = style.fg or { "NONE", "NONE" }
    local bg = style.bg or { "NONE", "NONE" }
    local sp = style.sp or { "NONE", "NONE" }
    local s = style.s and table.concat(style.s, ',') or 'NONE'
    vim.api.nvim_command(string.format(
        'hi %s guifg=%s ctermfg=%s guibg=%s ctermbg=%s guisp=%s gui=%s cterm=%s',
        group, fg[1], fg[2], bg[1], bg[2], sp[1], s, s))
end

function M.highlight_debug(group, style)
    local fg = style.fg or { "NONE", "NONE" }
    local bg = style.bg or { "NONE", "NONE" }
    local sp = style.sp or { "NONE", "NONE" }
    local s = style.s and table.concat(style.s, ',') or 'NONE'
    print(string.format(
        'hi %s guifg=%s ctermfg=%s guibg=%s ctermbg=%s guisp=%s gui=%s cterm=%s',
        group, fg[1], fg[2], bg[1], bg[2], sp[1], s, s))
end

M.styles = {
    bold          = 'bold',
    underline     = 'underline',
    undercurl     = 'undercurl',
    strikethrough = 'strikethrough',
    reverse       = 'reverse',
    inverse       = 'inverse',  -- same as reverse
    italic        = 'italic',
    standout      = 'standout',
    nocombine     = 'nocombine',
    none          = 'NONE',
}

return M
