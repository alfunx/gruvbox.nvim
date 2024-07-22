" -----------------------------------------------------------------------------
" File: gruvbox.vim
" Description: Gruvbox colorscheme for Lightline (itchyny/lightline.vim)
" Author: gmoe <me@griffinmoe.com>
" Source: https://github.com/morhetz/gruvbox
" Last Modified: 20 Sep 2017
" -----------------------------------------------------------------------------

function! s:get_color(group)
  let gColor = synIDattr(hlID(a:group), "fg", "gui")
  "let tColor = synIDattr(hlID(a:group), "fg", "cterm")
  return [ gColor, 0 ]
endfunction

function! g:lightline#colorscheme#gruvbox#setup()
  if !exists('g:lightline') | return | endif

  let s:bg0  = s:get_color('GruvboxBg0')
  let s:bg1  = s:get_color('GruvboxBg1')
  let s:bg2  = s:get_color('GruvboxBg2')
  let s:bg3  = s:get_color('GruvboxBg3')
  let s:bg4  = s:get_color('GruvboxBg4')
  let s:fg0  = s:get_color('GruvboxFg0')
  let s:fg1  = s:get_color('GruvboxFg1')
  let s:fg2  = s:get_color('GruvboxFg2')
  let s:fg3  = s:get_color('GruvboxFg3')
  let s:fg4  = s:get_color('GruvboxFg4')

  let s:red    = s:get_color('GruvboxRed')
  let s:green  = s:get_color('GruvboxGreen')
  let s:yellow = s:get_color('GruvboxYellow')
  let s:blue   = s:get_color('GruvboxBlue')
  let s:purple = s:get_color('GruvboxPurple')
  let s:aqua   = s:get_color('GruvboxAqua')
  let s:orange = s:get_color('GruvboxOrange')

  let s:p = {'normal':   {},
           \ 'inactive': {},
           \ 'insert':   {},
           \ 'replace':  {},
           \ 'visual':   {},
           \ 'tabline':  {},
           \ 'terminal': {}}

  let s:p.inactive.right  = [ [ s:bg4, s:bg1 ], [ s:bg4, s:bg1 ] ]
  let s:p.inactive.left   = [ [ s:bg4, s:bg1 ], [ s:bg4, s:bg1 ] ]
  let s:p.inactive.middle = [ [ s:bg4, s:bg1 ]                   ]

  let s:p.normal.left     = [ [ s:bg0, s:fg4 ], [ s:fg2, s:bg3 ] ]
  let s:p.normal.right    = [ [ s:bg0, s:fg4 ], [ s:fg2, s:bg3 ] ]
  let s:p.normal.middle   = [ [ s:fg2, s:bg3 ]                   ]

  let s:p.tabline.left    = [ [ s:bg4, s:bg1 ]                   ]
  let s:p.tabline.right   = [ [ s:fg4, s:bg2 ], [ s:bg4, s:bg1 ] ]
  let s:p.tabline.middle  = [ [ s:bg0, s:bg1 ]                   ]
  let s:p.tabline.tabsel  = [ [ s:bg0, s:fg4 ]                   ]

  let s:p.normal.error    = [ [ s:bg0, s:red,    'bold' ]        ]
  let s:p.normal.warn     = [ [ s:bg0, s:yellow, 'bold' ]        ]
  let s:p.normal.info     = [ [ s:bg0, s:blue,   'bold' ]        ]
  let s:p.normal.hint     = [ [ s:bg0, s:purple, 'bold' ]        ]

  let g:lightline#colorscheme#gruvbox#palette = lightline#colorscheme#flatten(s:p)
endfunction

call g:lightline#colorscheme#gruvbox#setup()
