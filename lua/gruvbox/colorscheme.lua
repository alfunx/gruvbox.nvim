local vim = vim
local utils = require('gruvbox.utils')

local M = {}

function M.set_terminal_colors(c)

    vim.g.terminal_color_0          = c.bg0
    vim.g.terminal_color_8          = c.gray

    vim.g.terminal_color_1          = c.alt_red
    vim.g.terminal_color_9          = c.red

    vim.g.terminal_color_2          = c.alt_green
    vim.g.terminal_color_10         = c.green

    vim.g.terminal_color_3          = c.alt_yellow
    vim.g.terminal_color_11         = c.yellow

    vim.g.terminal_color_4          = c.alt_blue
    vim.g.terminal_color_12         = c.blue

    vim.g.terminal_color_5          = c.alt_purple
    vim.g.terminal_color_13         = c.purple

    vim.g.terminal_color_6          = c.alt_aqua
    vim.g.terminal_color_14         = c.aqua

    vim.g.terminal_color_7          = c.fg4
    vim.g.terminal_color_15         = c.fg1

    vim.g.terminal_color_background = c.bg0
    vim.g.terminal_color_foreground = c.fg1

end

function M.set_colors(c, s)

    local colorscheme_groups = {

        GruvboxBg0    = { fg = c.bg0    },
        GruvboxBg1    = { fg = c.bg1    },
        GruvboxBg2    = { fg = c.bg2    },
        GruvboxBg3    = { fg = c.bg3    },
        GruvboxBg4    = { fg = c.bg4    },

        GruvboxFg0    = { fg = c.fg0    },
        GruvboxFg1    = { fg = c.fg1    },
        GruvboxFg2    = { fg = c.fg2    },
        GruvboxFg3    = { fg = c.fg3    },
        GruvboxFg4    = { fg = c.fg4    },

        GruvboxRed    = { fg = c.red    },
        GruvboxGreen  = { fg = c.green  },
        GruvboxYellow = { fg = c.yellow },
        GruvboxBlue   = { fg = c.blue   },
        GruvboxPurple = { fg = c.purple },
        GruvboxAqua   = { fg = c.aqua   },
        GruvboxOrange = { fg = c.orange },

    }

    local editor_groups = {

        Normal                               = { fg = c.fg1, bg = c.bg0 },
        NormalFloat                          = { fg = c.fg1, bg = c.bg0 },
        FloatBorder                          = { fg = c.bg0, bg = c.fg4, s = { s.reverse } },

        Cursor                               = { fg = c.none, bg = c.none, s = { s.reverse } },
        CursorIM                             = { fg = c.none, bg = c.none, s = { s.reverse } },
        VertSplit                            = { fg = c.bg1,  bg = c.none },
        CursorLine                           = { fg = c.none, bg = c.bg0_soft },
        CursorColumn                         = { fg = c.none, bg = c.bg0_soft },

        LineNr                               = { fg = c.bg3, bg = c.none },
        CursorLineNr                         = { fg = c.bg4, bg = c.bg0_soft, s = { s.bold } },

        Directory                            = { fg = c.green, bg = c.none, s = { s.bold } },
        Title                                = { fg = c.green, bg = c.none, s = { s.bold } },

        DiffAdd                              = { fg = c.green,  bg = c.bg0, s = { s.reverse } },
        DiffDelete                           = { fg = c.red,    bg = c.bg0, s = { s.reverse } },
        DiffChange                           = { fg = c.aqua,   bg = c.bg0, s = { s.reverse } },
        DiffText                             = { fg = c.yellow, bg = c.bg0, s = { s.reverse } },

        EndOfBuffer                          = { fg = c.bg2,  bg = c.none },
        Conceal                              = { fg = c.gray, bg = c.none },

        ErrorMsg                             = { fg = c.red,    bg = c.none, s = { s.bold } },
        WarningMsg                           = { fg = c.yellow, bg = c.none, s = { s.bold } },
        ModeMsg                              = { fg = c.aqua,   bg = c.none, s = { s.bold } },
        MoreMsg                              = { fg = c.aqua,   bg = c.none, s = { s.bold } },
        Question                             = { fg = c.purple, bg = c.none, s = { s.bold } },

        qfLineNr                             = { fg = c.bg3,    bg = c.none },
        qfFileName                           = { fg = c.orange, bg = c.none },
        QuickFixLine                         = { fg = c.none,   bg = c.none, s = { s.bold } },

        Folded                               = { fg = c.bg3,  bg = c.bg0, s = { s.italic } },
        FoldColumn                           = { fg = c.bg3,  bg = c.bg0 },
        SignColumn                           = { fg = c.none, bg = c.bg0 },
        ColorColumn                          = { fg = c.none, bg = c.bg1 },

        Search                               = { fg = c.orange, bg = c.bg2, s = { s.bold } },
        IncSearch                            = { fg = c.red,    bg = c.bg2, s = { s.bold } },
        Substitute                           = { fg = c.none,   bg = c.bg2, s = { s.bold } },
        MatchParen                           = { fg = c.none,   bg = c.bg2, s = { s.bold } },

        WildMenu                             = { fg = c.bg0,  bg = c.fg3, s = { s.bold } },
        PmenuSel                             = { fg = c.bg0,  bg = c.fg3, s = { s.bold } },
        Pmenu                                = { fg = c.fg1,  bg = c.bg1 },
        PmenuSbar                            = { fg = c.none, bg = c.bg1 },
        PmenuThumb                           = { fg = c.none, bg = c.bg2 },

        NonText                              = { fg = c.bg2, bg = c.none },
        Whitespace                           = { fg = c.bg2, bg = c.none },
        SpecialKey                           = { fg = c.bg2, bg = c.none },

        SpellBad                             = { fg = c.none, bg = c.none, sp = c.red,    s = { s.underline } },
        SpellCap                             = { fg = c.none, bg = c.none, sp = c.yellow, s = { s.underline } },
        SpellLocal                           = { fg = c.none, bg = c.none, sp = c.blue,   s = { s.underline } },
        SpellRare                            = { fg = c.none, bg = c.none, sp = c.purple, s = { s.underline } },

        Visual                               = { fg = c.none, bg = c.bg2 },
        VisualNOS                            = { fg = c.none, bg = c.bg2 },

        NormalMode                           = { fg = c.bg0, bg = c.fg4, s = { s.reverse } },
        InsertMode                           = { fg = c.bg0, bg = c.fg4, s = { s.reverse } },
        ReplacelMode                         = { fg = c.bg0, bg = c.fg4, s = { s.reverse } },
        VisualMode                           = { fg = c.bg0, bg = c.fg4, s = { s.reverse } },
        CommandMode                          = { fg = c.bg0, bg = c.fg4, s = { s.reverse } },

        Warnings                             = { fg = c.yellow, bg = c.none },
        healthError                          = { fg = c.red,    bg = c.none },
        healthSuccess                        = { fg = c.green,  bg = c.none },
        healthWarning                        = { fg = c.yellow, bg = c.none },

        StatusLine                           = { fg = c.fg1, bg = c.bg1, s = { s.bold } },
        StatusLineNC                         = { fg = c.fg4, bg = c.bg1 },

        Tabline                              = { fg = c.bg4, bg = c.bg1 },
        TabLineFill                          = { fg = c.bg4, bg = c.bg1 },
        TablineSel                           = { fg = c.fg1, bg = c.bg1, s = { s.bold } },

        ToolbarLine                          = { fg = c.fg1,  bg = c.bg2, s = { s.bold } },
        ToolbarButton                        = { fg = c.none, bg = c.bg2 },

    }

    local code_groups = {

        Type                                 = { fg = c.yellow },
        Typedef                              = { fg = c.yellow },
        StorageClass                         = { fg = c.orange },
        Structure                            = { fg = c.orange },

        Identifier                           = { fg = c.fg1    },
        Constant                             = { fg = c.purple },
        Character                            = { fg = c.purple },
        Boolean                              = { fg = c.purple },
        Number                               = { fg = c.purple },
        Float                                = { fg = c.purple },
        String                               = { fg = c.green  },

        Statement                            = { fg = c.red    },
        Conditional                          = { fg = c.red    },
        Repeat                               = { fg = c.red    },
        Label                                = { fg = c.red    },
        Exception                            = { fg = c.red    },
        Keyword                              = { fg = c.red    },
        Operator                             = { fg = c.fg1    },

        Function                             = { fg = c.green,  s = { s.bold } },
        Include                              = { fg = c.aqua   },
        Define                               = { fg = c.aqua   },
        Macro                                = { fg = c.aqua   },
        PreProc                              = { fg = c.aqua   },
        PreCondit                            = { fg = c.aqua   },

        Comment                              = { fg = c.gray,   s = { s.italic }         },
        SpecialComment                       = { fg = c.gray,   s = { s.italic, s.bold } },
        Todo                                 = { fg = c.fg1,    s = { s.italic, s.bold } },

        Special                              = { fg = c.orange },
        SpecialChar                          = { fg = c.orange },
        Tag                                  = { fg = c.blue   },
        Delimiter                            = { fg = c.blue   },
        Debug                                = { fg = c.red    },
        Ignore                               = { fg = c.alt_gray },
        Underlined                           = { s = { s.underline } },

        Error                                = { fg = c.red,    s = { s.bold, s.reverse } },
        Warn                                 = { fg = c.yellow, s = { s.bold, s.reverse } },
        Info                                 = { fg = c.blue,   s = { s.bold, s.reverse } },
        Hint                                 = { fg = c.purple, s = { s.bold, s.reverse } },
        Note                                 = { fg = c.purple, s = { s.bold, s.reverse } },

        TextError                            = { fg = c.red,    s = { s.italic } },
        TextWarn                             = { fg = c.yellow, s = { s.italic } },
        TextInfo                             = { fg = c.blue,   s = { s.italic } },
        TextHint                             = { fg = c.purple, s = { s.italic } },
        TextNote                             = { fg = c.purple, s = { s.italic } },

        UnderlineError                       = { sp = c.red,    s = { s.undercurl } },
        UnderlineWarn                        = { sp = c.yellow, s = { s.undercurl } },
        UnderlineInfo                        = { sp = c.blue,   s = { s.undercurl } },
        UnderlineHint                        = { sp = c.purple, s = { s.undercurl } },
        UnderlineNote                        = { sp = c.purple, s = { s.undercurl } },

    }

    local builtin_plugins_groups = {

        -- TreeSitter

        TSType                               = { fg = c.yellow },
        TSTypeBuiltin                        = { fg = c.yellow },

        TSField                              = { fg = c.fg1    },
        TSProperty                           = { fg = c.fg1    },
        TSParameter                          = { fg = c.fg1    },
        TSVariable                           = { fg = c.fg1    },
        TSVariableBuiltin                    = { fg = c.blue   },
        TSAttribute                          = { fg = c.aqua   },

        TSConstant                           = { fg = c.purple },
        TSConstBuiltin                       = { fg = c.purple },
        TSConstMacro                         = { fg = c.purple },
        TSBoolean                            = { fg = c.purple },
        TSCharacter                          = { fg = c.purple },
        TSNumber                             = { fg = c.purple },
        TSFloat                              = { fg = c.purple },
        TSSymbol                             = { fg = c.orange },

        TSString                             = { fg = c.green  },
        TSStringRegex                        = { fg = c.aqua   },
        TSStringSpecial                      = { fg = c.orange },
        TSStringEscape                       = { fg = c.orange },

        TSKeyword                            = { fg = c.red    },
        TSKeywordFunction                    = { fg = c.red    },
        TSKeywordReturn                      = { fg = c.red    },
        TSConditional                        = { fg = c.red    },
        TSRepeat                             = { fg = c.red    },
        TSLabel                              = { fg = c.red    },
        TSException                          = { fg = c.red    },

        TSPunctDelimiter                     = { fg = c.fg1    },
        TSPunctBracket                       = { fg = c.fg1    },
        TSPunctSpecial                       = { fg = c.fg1    },
        TSOperator                           = { fg = c.fg1    },
        TSKeywordOperator                    = { fg = c.orange },

        TSFunction                           = { fg = c.green,  s = { s.bold } },
        TSMethod                             = { fg = c.green,  s = { s.bold } },
        TSFuncBuiltin                        = { fg = c.blue,   s = { s.bold } },
        TSFuncMacro                          = { fg = c.aqua,   s = { s.bold } },
        TSInclude                            = { fg = c.aqua   },
        TSNamespace                          = { fg = c.aqua   },
        TSConstructor                        = { fg = c.orange },

        TSTag                                = { fg = c.aqua,   s = { s.bold } },
        TSTagAttribute                       = { fg = c.aqua   },
        TSTagDelimiter                       = { fg = c.blue   },

        TSComment                            = { fg = c.gray,   s = { s.italic } },
        TSStrong                             = { s = { s.bold          } },
        TSEmphasis                           = { s = { s.italic        } },
        TSUnderline                          = { s = { s.underline     } },
        TSStrike                             = { s = { s.strikethrough } },

        TSTitle                              = { fg = c.fg1,    s = { s.bold } },
        TSText                               = { fg = c.fg1    },
        TSLiteral                            = { fg = c.fg1    },
        TSURI                                = { fg = c.blue,   s = { s.underline } },
        TSMath                               = { fg = c.fg0, bg = c.bg0_soft },
        TSTextReference                      = { fg = c.orange },
        TSParameterReference                 = { fg = c.orange },
        TSEnvironment                        = { fg = c.red    },
        TSEnvironmentName                    = { fg = c.blue   },

        TSError                              = { fg = c.bg3    },
        TSDanger                             = { fg = c.red,    s = { s.bold } },
        TSWarning                            = { fg = c.yellow, s = { s.bold } },
        TSNote                               = { fg = c.blue,   s = { s.bold } },

        -- Should not be modified
        --TSNone                               = { },

        -- Diagnostic

        DiagnosticError                     = { fg = c.red,    s = { s.italic } },
        DiagnosticWarn                      = { fg = c.yellow, s = { s.italic } },
        DiagnosticInfo                      = { fg = c.blue,   s = { s.italic } },
        DiagnosticHint                      = { fg = c.purple, s = { s.italic } },

        DiagnosticSignError                 = { fg = c.red    },
        DiagnosticSignWarn                  = { fg = c.yellow },
        DiagnosticSignInfo                  = { fg = c.blue   },
        DiagnosticSignHint                  = { fg = c.purple },

        DiagnosticUnderlineError            = { sp = c.red,    s = { s.undercurl } },
        DiagnosticUnderlineWarn             = { sp = c.yellow, s = { s.undercurl } },
        DiagnosticUnderlineInfo             = { sp = c.blue,   s = { s.undercurl } },
        DiagnosticUnderlineHint             = { sp = c.purple, s = { s.undercurl } },

        -- LSP

        LspCodeLens                          = { s = { s.bold } },
        LspCodeLensSeparator                 = { s = { s.bold } },

        LspReferenceText                     = { s = { s.bold } },
        LspReferenceRead                     = { s = { s.bold } },
        LspReferenceWrite                    = { s = { s.bold } },

        LspSignatureActiveParameter          = { sp = c.red,   s = { s.underline } }

    }

    local plugins_groups = {

        -- Sneak
        Sneak                                = { fg = c.orange, bg = c.bg2, s = { s.bold } },
        SneakScope                           = { fg = c.red,    bg = c.bg2, s = { s.bold } },
        SneakLabel                           = { fg = c.orange, bg = c.bg2, s = { s.bold } },

        -- EasyMotion
        EasyMotionTarget                     = { fg = c.red, bg = c.bg2, s = { s.bold } },
        EasyMotionTarget2First               = { fg = c.red, bg = c.bg2, s = { s.bold } },
        EasyMotionTarget2Second              = { fg = c.red, bg = c.bg2, s = { s.bold } },
        EasyMotionShade                      = { fg = c.gray },

        -- GitGutter
        GitGutterAdd                         = { fg = c.aqua   },
        GitGutterChange                      = { fg = c.yellow },
        GitGutterDelete                      = { fg = c.red    },
        GitGutterChangeDelete                = { fg = c.orange },

        -- vim-signify
        SignifySignAdd                       = { fg = c.aqua   },
        SignifySignChange                    = { fg = c.yellow },
        SignifySignDelete                    = { fg = c.red    },

        -- GitSigns
        GitSignsAdd                          = { fg = c.aqua   },
        GitSignsAddNr                        = { fg = c.aqua   },
        GitSignsAddLn                        = { fg = c.aqua   },
        GitSignsChange                       = { fg = c.yellow },
        GitSignsChangeNr                     = { fg = c.yellow },
        GitSignsChangeLn                     = { fg = c.yellow },
        GitSignsDelete                       = { fg = c.red    },
        GitSignsDeleteNr                     = { fg = c.red    },
        GitSignsDeleteLn                     = { fg = c.red    },

        -- Neogit
        NeogitBranch                         = { fg = c.aqua   },
        NeogitRemote                         = { fg = c.red    },
        NeogitHunkHeader                     = { fg = c.bg0, bg = c.blue },
        NeogitHunkHeaderHighlight            = { fg = c.blue   },
        NeogitDiffContextHighlight           = { fg = c.fg1    },
        NeogitDiffAddHighlight               = { fg = c.green  },
        NeogitDiffDeleteHighlight            = { fg = c.red    },

        -- GitCommit
        gitcommitSelectedFile                = { fg = c.green  },
        gitcommitDiscardedFile               = { fg = c.red    },

        -- Git-Messenger
        gitmessengerHeader                   = { fg = c.bg4    },
        gitmessengerHash                     = { fg = c.orange },
        gitmessengerHistory                  = { fg = c.red    },
        gitmessengerEmail                    = { fg = c.bg4    },

        -- Conflict-Marker
        ConflictMarkerBegin                  = { fg = c.bg0, bg = c.alt_purple },
        ConflictMarkerOurs                   = { fg = c.bg0, bg = c.purple     },
        ConflictMarkerTheirs                 = { fg = c.bg0, bg = c.blue       },
        ConflictMarkerEnd                    = { fg = c.bg0, bg = c.alt_blue   },
        ConflictMarkerCommonAncestors        = { fg = c.bg0, bg = c.green      },

        -- Syntastic
        SyntasticError                       = { sp = c.red,    s = { s.undercurl } },
        SyntasticWarning                     = { sp = c.yellow, s = { s.undercurl } },
        SyntasticErrorSign                   = { fg = c.red    },
        SyntasticWarningSign                 = { fg = c.yellow },

        -- Ale-vim
        ALEError                             = { sp = c.red,    s = { s.undercurl } },
        ALEWarning                           = { sp = c.yellow, s = { s.undercurl } },
        ALEInfo                              = { sp = c.blue,   s = { s.undercurl } },
        ALEHint                              = { sp = c.purple, s = { s.undercurl } },
        ALEVirtualTextError                  = { fg = c.red,    s = { s.italic } },
        ALEVirtualTextWarning                = { fg = c.yellow, s = { s.italic } },
        ALEVirtualTextInfo                   = { fg = c.blue,   s = { s.italic } },
        ALEVirtualTextHint                   = { fg = c.purple, s = { s.italic } },
        ALEErrorSign                         = { fg = c.red    },
        ALEWarningSign                       = { fg = c.yellow },
        ALEInfoSign                          = { fg = c.blue   },
        ALEHintSign                          = { fg = c.purple },

        -- CoC
        CocErrorHighlight                    = { sp = c.red,    s = { s.undercurl }},
        CocWarningHighlight                  = { sp = c.yellow, s = { s.undercurl }},
        CocInfoHighlight                     = { sp = c.blue,   s = { s.undercurl }},
        CocHintHighlight                     = { sp = c.purple, s = { s.undercurl }},
        CocDiagnosticsError                  = { fg = c.red,    s = { s.italic } },
        CocDiagnosticsWarning                = { fg = c.yellow, s = { s.italic } },
        CocDiagnosticsInfo                   = { fg = c.blue,   s = { s.italic } },
        CocDiagnosticsHint                   = { fg = c.purple, s = { s.italic } },
        CocErrorFloat                        = { fg = c.red,    s = { s.italic } },
        CocWarningFloat                      = { fg = c.yellow, s = { s.italic } },
        CocInfoFloat                         = { fg = c.blue,   s = { s.italic } },
        CocHintFloat                         = { fg = c.purple, s = { s.italic } },
        CocErrorSign                         = { fg = c.red    },
        CocWarningSign                       = { fg = c.yellow },
        CocInfoSign                          = { fg = c.blue   },
        CocHintSign                          = { fg = c.pruple },
        CocSelectedText                      = { fg = c.red    },
        CocCodeLens                          = { fg = c.gray   },
        CocExplorerIndentLine                = { fg = c.gray   },
        CocExplorerBufferRoot                = { fg = c.cyan   },
        CocExplorerFileRoot                  = { fg = c.cyan   },
        CocExplorerBufferFullPath            = { fg = c.gray   },
        CocExplorerFileFullPath              = { fg = c.gray   },
        CocExplorerBufferReadonly            = { fg = c.purple },
        CocExplorerBufferModified            = { fg = c.purple },
        CocExplorerBufferNameVisible         = { fg = c.orange },
        CocExplorerFileReadonly              = { fg = c.purple },
        CocExplorerFileModified              = { fg = c.purple },
        CocExplorerFileHidden                = { fg = c.gray   },
        CocExplorerHelpLine                  = { fg = c.purple },

        -- Dirvish
        DirvishPathHead                      = { fg = c.gray   },
        DirvishPathTail                      = { fg = c.aqua   },
        DirvishSuffix                        = { fg = c.fg1    },
        DirvishArg                           = { fg = c.yellow },

        -- Netrw
        netrwDir                             = { fg = c.aqua   },
        netrwClassify                        = { fg = c.aqua   },
        netrwLink                            = { fg = c.purple },
        netrwSymLink                         = { fg = c.purple },
        netrwExe                             = { fg = c.red    },
        netrwComment                         = { fg = c.gray   },
        netrwList                            = { fg = c.blue   },
        netrwHelpCmd                         = { fg = c.aqua   },
        netrwCmdSep                          = { fg = c.fg3    },
        netrwVersion                         = { fg = c.green  },

        -- Nerdtree
        NERDTreeDir                          = { fg = c.aqua   },
        NERDTreeDirSlash                     = { fg = c.aqua   },
        NERDTreeOpenable                     = { fg = c.orange },
        NERDTreeClosable                     = { fg = c.orange },
        NERDTreeFile                         = { fg = c.fg1    },
        NERDTreeExecFile                     = { fg = c.red    },
        NERDTreeUp                           = { fg = c.gray   },
        NERDTreeCWD                          = { fg = c.green  },
        NERDTreeHelp                         = { fg = c.gray   },
        NERDTreeToggleOn                     = { fg = c.green  },
        NERDTreeToggleOff                    = { fg = c.red    },

        -- Diff
        diffAdded                            = { fg = c.green  },
        diffRemoved                          = { fg = c.red    },
        diffChanged                          = { fg = c.aqua   },
        diffOldFile                          = { fg = c.yellow },
        diffNewFile                          = { fg = c.yellow },
        diffFile                             = { fg = c.orange },
        diffLine                             = { fg = c.blue   },
        diffIndexLine                        = { fg = c.blue   },

        -- Startify
        StartifyBracket                      = { fg = c.fg3    },
        StartifyFile                         = { fg = c.fg1    },
        StartifyNumber                       = { fg = c.blue   },
        StartifyPath                         = { fg = c.gray   },
        StartifySlash                        = { fg = c.gray   },
        StartifySection                      = { fg = c.yellow },
        StartifySpecial                      = { fg = c.bg2    },
        StartifyHeader                       = { fg = c.orange },
        StartifyFooter                       = { fg = c.bg2    },
        StartifySelect                       = { fg = c.green  },
        StartifyVar                          = { fg = c.aqua   },

        -- nvim-cmp
        CmpItemAbbrMatch                     = { fg = c.orange },
        CmpItemAbbrMatchFuzzy                = { fg = c.orange },
        CmpItemKind                          = { fg = c.yellow },
        CmpItemMenu                          = { fg = c.bg3    },

        -- luasnip
        LuasnipChoiceNodeActive              = { fg = c.red,    bg = c.bg1 },
        LuasnipChoiceNodePassive             = { fg = c.orange, bg = c.bg1 },
        LuasnipInsertNodeActive              = { fg = c.red,    bg = c.bg1 },
        LuasnipInsertNodePassive             = { fg = c.orange, bg = c.bg1 },


        -- -- LspTrouble
        -- LspTroubleText                       = { fg = c.bg4 },
        -- LspTroubleCount                      = { fg = c.purple, bg = c.bg3 },
        -- LspTroubleNormal                     = { fg = c.fg, bg = c.bg0 },
        --
        -- -- Telescope
        -- TelescopePromptBorder                = { fg = c.green },
        -- TelescopeResultsBorder               = { fg = c.blue },
        -- TelescopePreviewBorder               = { fg = c.purple },
        --
        -- -- NvimTree
        -- NvimTreeRootFolder                   = { fg = c.cyan, s = { s.italic } },
        -- NvimTreeNormal                       = { fg = c.fg, bg = c.bg0 },
        -- NvimTreeGitDirty                     = { fg = c.diff_yellow },
        -- NvimTreeGitNew                       = { fg = c.green },
        -- NvimTreeImageFile                    = { fg = c.purple },
        -- NvimTreeExecFile                     = { fg = c.green },
        -- NvimTreeSpecialFile                  = { fg = c.yellow, s = { s.underline } },
        -- NvimTreeFolderName                   = { fg = c.blue },
        -- NvimTreeEmptyFolderName              = { fg = c.gray },
        -- NvimTreeFolderIcon                   = { fg = c.gray },
        -- NvimTreeIndentMarker                 = { fg = c.disabled },
        --
        -- -- WhichKey
        -- WhichKey                             = { fg = c.purple, s = { s.bold } },
        -- WhichKeyGroup                        = { fg = c.violet, s = { s.italic } },
        -- WhichKeyDesc                         = { fg = c.blue, s = { s.bold } },
        -- WhichKeySeperator                    = { fg = c.green },
        -- WhichKeyFloating                     = { bg = c.bg1 },
        -- WhichKeyFloat                        = { bg = c.bg1 },
        --
        -- -- LspSaga
        -- DiagnosticError                      = { fg = c.red },
        -- DiagnosticWarning                    = { fg = c.orange },
        -- DiagnosticInfo                       = { fg = c.blue },
        -- DiagnosticHint                       = { fg = c.cyan },
        -- DiagnosticTruncateLine               = { fg = c.fg },
        -- LspFloatWinNormal                    = { bg = c.bg0 },
        -- LspFloatWinBorder                    = { fg = c.purple },
        -- LspSagaBorderTitle                   = { fg = c.cyan },
        -- LspSagaHoverBorder                   = { fg = c.gray_alt },
        -- LspSagaRenameBorder                  = { fg = c.green },
        -- LspSagaDefPreviewBorder              = { fg = c.green },
        -- LspSagaCodeActionBorder              = { fg = c.blue },
        -- LspSagaFinderSelection               = { fg = c.green },
        -- LspSagaCodeActionTitle               = { fg = c.gray_alt },
        -- LspSagaCodeActionContent             = { fg = c.purple },
        -- LspSagaSignatureHelpBorder           = { fg = c.purple },
        -- ReferencesCount                      = { fg = c.purple },
        -- DefinitionCount                      = { fg = c.purple },
        -- DefinitionIcon                       = { fg = c.blue },
        -- ReferencesIcon                       = { fg = c.blue },
        -- TargetWord                           = { fg = c.cyan },
        --
        -- -- BufferLine
        -- BufferLineIndicatorSelected          = { fg = c.green },
        -- BufferLineFill                       = { bg = c.bg3 },
        --
        -- -- Indent Blankline
        -- IndentBlanklineChar                  = { fg = c.disabled },
        -- IndentBlanklineContextChar           = { fg = c.cyan },
        --
        -- -- Nvim dap
        -- DapBreakpoint                        = { fg = c.red },
        -- DapStopped                           = { fg = c.green },

    }

    local syntax_groups = {

        -- HTML
        htmlTag                              = { fg = c.blue },
        htmlEndTag                           = { fg = c.blue },
        htmlArg                              = { fg = c.aqua },
        htmlTagN                             = { fg = c.aqua },
        htmlTagName                          = { fg = c.aqua, s = { s.bold } },
        htmlSpecialTagName                   = { fg = c.aque, s = { s.bold } },
        htmlSpecialChar                      = { fg = c.orange },
        htmlTitle                            = { fg = c.fg1,  s = { s.bold } },
        htmlBold                             = { s = { s.bold } },
        htmlItalic                           = { s = { s.italic } },
        htmlUnderline                        = { s = { s.underline } },
        htmlBoldItalic                       = { s = { s.bold, s.italic } },
        htmlBoldUnderline                    = { s = { s.bold, s.underline } },
        htmlUnderlineItalic                  = { s = { s.underline, s.italic } },
        htmlBoldUnderlineItalic              = { s = { s.bold, s.underline, s.italic } },
        htmlH1                               = { fg = c.blue, s = { s.bold } },
        htmlH2                               = { fg = c.blue, s = { s.bold } },
        htmlH3                               = { fg = c.blue, s = { s.bold } },
        htmlH4                               = { fg = c.blue, s = { s.bold } },
        htmlH5                               = { fg = c.blue, s = { s.bold } },
        htmlH6                               = { fg = c.blue, s = { s.bold } },

        -- Markdown
        markdownH1                           = { fg = c.yellow, s = { s.bold } },
        markdownH2                           = { fg = c.yellow, s = { s.bold } },
        markdownH3                           = { fg = c.yellow, s = { s.bold } },
        markdownH4                           = { fg = c.yellow, s = { s.bold } },
        markdownH5                           = { fg = c.yellow, s = { s.bold } },
        markdownH6                           = { fg = c.yellow, s = { s.bold } },
        markdownCode                         = { fg = c.green },
        markdownCodeBlock                    = { fg = c.bg4 },
        markdownCodeDelimiter                = { fg = c.bg4 },
        markdownBlockquote                   = { fg = c.gray },
        markdownListMarker                   = { fg = c.gray },
        markdownOrderedListMarker            = { fg = c.gray },
        markdownRule                         = { fg = c.gray },
        markdownHeadingRule                  = { fg = c.orange },
        markdownHeadingDelimiter             = { fg = c.orange },
        markdownLinkDelimiter                = { fg = c.fg3 },
        markdownLinkTextDelimiter            = { fg = c.fg3 },
        markdownLinkText                     = { fg = c.aqua },
        markdownUrl                          = { fg = c.blue,   s = { s.underline } },
        markdownId                           = { fg = c.purple, s = { s.underline } },
        markdownIdDeclaration                = { fg = c.purple, s = { s.underline } },
        markdownIdDelimiter                  = { fg = c.fg3 },
        markdownBold                         = { s = { s.bold } },
        markdownItalic                       = { s = { s.italic } },

        -- Vim
        vimCommentTitle                      = { fg = c.fg4_256, s = { s.bold } },
        vimNotation                          = { fg = c.orange },
        vimBracket                           = { fg = c.orange },
        vimMapModKey                         = { fg = c.orange },
        vimFuncSID                           = { fg = c.fg3    },
        vimSetSep                            = { fg = c.fg3    },
        vimSep                               = { fg = c.fg3    },
        vimContinue                          = { fg = c.fg3    },

        -- C
        cOperator                            = { fg = c.purple },
        cStructure                           = { fg = c.orange },

        -- Lua
        luaIn                                = { fg = c.red    },
        luaFunction                          = { fg = c.aqua   },
        luaTable                             = { fg = c.orange },

        -- Python
        pythonBuiltin                        = { fg = c.orange },
        pythonBuiltinObj                     = { fg = c.orange },
        pythonBuiltinFunc                    = { fg = c.orange },
        pythonFunction                       = { fg = c.green  },
        pythonDecorator                      = { fg = c.red    },
        pythonInclude                        = { fg = c.aqua   },
        pythonImport                         = { fg = c.aqua   },
        pythonRun                            = { fg = c.aqua   },
        pythonCoding                         = { fg = c.aqua   },
        pythonOperator                       = { fg = c.red    },
        pythonException                      = { fg = c.red    },
        pythonExceptions                     = { fg = c.purple },

        -- Json
        jsonKeyword                          = { fg = c.green  },
        jsonQuote                            = { fg = c.green  },
        jsonBraces                           = { fg = c.fg1    },
        jsonString                           = { fg = c.fg1    },

        -- JavaScript
        javaScriptBraces                     = { fg = c.fg1    },
        javaScriptParens                     = { fg = c.fg3    },
        javaScriptFunction                   = { fg = c.aqua   },
        javaScriptIdentifier                 = { fg = c.red    },
        javaScriptMember                     = { fg = c.blue   },
        javaScriptNull                       = { fg = c.purple },
        javaScriptNumber                     = { fg = c.purple },

        -- Ruby
        rubyStringDelimiter                  = { fg = c.green  },
        rubyInterpolationDelimiter           = { fg = c.aqua   },

        -- Go
        goDirective                          = { fg = c.aqua   },
        goConstants                          = { fg = c.purple },
        goDeclaration                        = { fg = c.red    },
        goDeclType                           = { fg = c.blue   },
        goBuiltins                           = { fg = c.orange },

    }

    utils.apply(colorscheme_groups)
    utils.apply(editor_groups)
    utils.apply(code_groups)
    utils.apply(builtin_plugins_groups)
    utils.apply(plugins_groups)
    utils.apply(syntax_groups)

    -- utils.apply(vim.g.gruvbox_overrides)

end

return M
