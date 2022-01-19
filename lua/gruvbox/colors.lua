local vim = vim

local M = {}

M.palette = {

    dark0_hard     = { '#1d2021', 234 },     -- RGB( 29,  32,  33)
    dark0          = { '#282828', 235 },     -- RGB( 40,  40,  40)
    dark0_soft     = { '#32302f', 236 },     -- RGB( 50,  48,  47)
    dark1          = { '#3c3836', 237 },     -- RGB( 60,  56,  54)
    dark2          = { '#504945', 239 },     -- RGB( 80,  73,  69)
    dark3          = { '#665c54', 241 },     -- RGB(102,  92,  84)
    dark4          = { '#7c6f64', 243 },     -- RGB(124, 111, 100)
    dark4_256      = { '#7c6f64', 243 },     -- RGB(124, 111, 100)

    gray_245       = { '#928374', 245 },     -- RGB(146, 131, 116)
    gray_244       = { '#928374', 244 },     -- RGB(146, 131, 116)

    light0_hard    = { '#f9f5d7', 230 },     -- RGB(249, 245, 215)
    light0         = { '#fbf1c7', 229 },     -- RGB(253, 244, 193)
    light0_soft    = { '#f2e5bc', 228 },     -- RGB(242, 229, 188)
    light1         = { '#ebdbb2', 223 },     -- RGB(235, 219, 178)
    light2         = { '#d5c4a1', 250 },     -- RGB(213, 196, 161)
    light3         = { '#bdae93', 248 },     -- RGB(189, 174, 147)
    light4         = { '#a89984', 246 },     -- RGB(168, 153, 132)
    light4_256     = { '#a89984', 246 },     -- RGB(168, 153, 132)

    bright_red     = { '#fb4934', 167 },     -- RGB(251,  73,  52)
    bright_green   = { '#b8bb26', 142 },     -- RGB(184, 187,  38)
    bright_yellow  = { '#fabd2f', 214 },     -- RGB(250, 189,  47)
    bright_blue    = { '#83a598', 109 },     -- RGB(131, 165, 152)
    bright_purple  = { '#d3869b', 175 },     -- RGB(211, 134, 155)
    bright_aqua    = { '#8ec07c', 108 },     -- RGB(142, 192, 124)
    bright_orange  = { '#fe8019', 208 },     -- RGB(254, 128,  25)

    neutral_red    = { '#cc241d', 124 },     -- RGB(204,  36,  29)
    neutral_green  = { '#98971a', 106 },     -- RGB(152, 151,  26)
    neutral_yellow = { '#d79921', 172 },     -- RGB(215, 153,  33)
    neutral_blue   = { '#458588',  66 },     -- RGB( 69, 133, 136)
    neutral_purple = { '#b16286', 132 },     -- RGB(177,  98, 134)
    neutral_aqua   = { '#689d6a',  72 },     -- RGB(104, 157, 106)
    neutral_orange = { '#d65d0e', 166 },     -- RGB(214,  93,  14)

    faded_red      = { '#9d0006',  88 },     -- RGB(157,   0,   6)
    faded_green    = { '#79740e', 100 },     -- RGB(121, 116,  14)
    faded_yellow   = { '#b57614', 136 },     -- RGB(181, 118,  20)
    faded_blue     = { '#076678',  24 },     -- RGB(  7, 102, 120)
    faded_purple   = { '#8f3f71',  96 },     -- RGB(143,  63, 113)
    faded_aqua     = { '#427b58',  66 },     -- RGB( 66, 123,  88)
    faded_orange   = { '#af3a03', 130 },     -- RGB(175,  58,   3)

    none           = { 'NONE',  'NONE'},

}

M.dark = {

    bg0_hard     = M.palette.dark0_hard,
    bg0          = M.palette.dark0,
    bg0_soft     = M.palette.dark0_soft,
    bg1          = M.palette.dark1,
    bg2          = M.palette.dark2,
    bg3          = M.palette.dark3,
    bg4          = M.palette.dark4,

    gray         = M.palette.gray_245,

    fg0          = M.palette.light0,
    fg1          = M.palette.light1,
    fg2          = M.palette.light2,
    fg3          = M.palette.light3,
    fg4          = M.palette.light4,

    fg4_256      = M.palette.light4_256,

    red          = M.palette.bright_red,
    green        = M.palette.bright_green,
    yellow       = M.palette.bright_yellow,
    blue         = M.palette.bright_blue,
    purple       = M.palette.bright_purple,
    aqua         = M.palette.bright_aqua,
    orange       = M.palette.bright_orange,

    alt_red      = M.palette.neutral_red,
    alt_green    = M.palette.neutral_green,
    alt_yellow   = M.palette.neutral_yellow,
    alt_blue     = M.palette.neutral_blue,
    alt_purple   = M.palette.neutral_purple,
    alt_aqua     = M.palette.neutral_aqua,
    alt_orange   = M.palette.neutral_orange,

    none         = M.palette.none,

}

M.light = {

    bg0_hard     = M.palette.light0_hard,
    bg0          = M.palette.light0,
    bg0_soft     = M.palette.light0_soft,
    bg1          = M.palette.light1,
    bg2          = M.palette.light2,
    bg3          = M.palette.light3,
    bg4          = M.palette.light4,

    gray         = M.palette.gray_244,

    fg0          = M.palette.dark0,
    fg1          = M.palette.dark1,
    fg2          = M.palette.dark2,
    fg3          = M.palette.dark3,
    fg4          = M.palette.dark4,

    fg4_256      = M.palette.dark4_256,

    red          = M.palette.faded_red,
    green        = M.palette.faded_green,
    yellow       = M.palette.faded_yellow,
    blue         = M.palette.faded_blue,
    purple       = M.palette.faded_purple,
    aqua         = M.palette.faded_aqua,
    orange       = M.palette.faded_orange,

    alt_red      = M.palette.neutral_red,
    alt_green    = M.palette.neutral_green,
    alt_yellow   = M.palette.neutral_yellow,
    alt_blue     = M.palette.neutral_blue,
    alt_purple   = M.palette.neutral_purple,
    alt_aqua     = M.palette.neutral_aqua,
    alt_orange   = M.palette.neutral_orange,

    none         = M.palette.none,

}

return M
