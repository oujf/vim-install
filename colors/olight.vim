" Vim color file
" Maintainer:     oujf <oujf@outlook.com>
" Last Change:    2014 Aug 29
"
" Colors:
" black         darkred         darkgreen       brown           darkblue        darkmagenta     darkcyan
" lightgray     darkgray        red             yellow          blue            magenta         cyan
" white         grey            lightred        lightgreen      LightBlue       lightmagenta    lightcyan
"

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "olight"

" Normal should come first
hi Normal       guifg=Black         guibg=White
hi Cursor       guifg=bg            guibg=fg
hi lCursor      guifg=NONE          guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd      cterm=NONE      ctermfg=White           ctermbg=Blue            gui=NONE    guifg=White         guibg=Blue
hi DiffChange   cterm=NONE      ctermfg=NONE            ctermbg=LightMagenta    gui=NONE    guifg=NONE          guibg=LightMagenta
hi DiffDelete   cterm=NONE      ctermfg=White           ctermbg=LightGreen      gui=bold    guifg=White         guibg=LightGreen
hi DiffText     cterm=bold      ctermfg=White           ctermbg=Red             gui=bold    guifg=White         guibg=Red
hi Directory    cterm=NONE      ctermfg=DarkBlue        ctermbg=NONE            gui=NONE    guifg=DarkBlue      guibg=NONE
hi ErrorMsg     cterm=NONE      ctermfg=White           ctermbg=DarkRed         gui=NONE    guifg=White         guibg=DarkRed
hi FoldColumn   cterm=NONE      ctermfg=DarkBlue        ctermbg=Grey            gui=NONE    guifg=tan           guibg=grey30
hi Folded       cterm=NONE      ctermbg=Grey            ctermfg=DarkBlue        gui=NONE    guifg=gold          guibg=grey30
hi IncSearch    cterm=reverse                                                   gui=reverse
hi LineNr       cterm=NONE      ctermfg=Brown           ctermbg=NONE            gui=NONE    guifg=Brown         guibg=NONE
hi ModeMsg      cterm=bold                                                      gui=bold
hi MoreMsg      cterm=NONE      ctermfg=DarkGreen                               gui=bold    guifg=SeaGreen
hi NonText      cterm=NONE      ctermfg=Blue                                    gui=bold    guifg=gray          guibg=white
hi Pmenu        cterm=NONE                                                      gui=NONE                        guibg=LightBlue
hi PmenuSel     cterm=NONE      ctermfg=White           ctermbg=DarkBlue        gui=NONE    guifg=White         guibg=DarkBlue
hi Question     cterm=NONE      ctermfg=DarkGreen                               gui=bold    guifg=SeaGreen
hi Search       cterm=NONE      ctermfg=Black           ctermbg=Yellow          gui=NONE    guibg=Yellow        guifg=NONE
hi SpecialKey   cterm=NONE      ctermfg=DarkBlue                                gui=NONE    guifg=Blue
hi StatusLine   cterm=reverse,bold                                              gui=reverse,bold
hi StatusLineNC cterm=reverse                                                   gui=reverse
hi Title        cterm=NONE      ctermfg=DarkMagenta                             gui=bold    guifg=Magenta
hi VertSplit    cterm=reverse                                                   gui=reverse
hi Visual       cterm=reverse   ctermbg=NONE                                    gui=reverse guifg=Grey          guibg=fg
hi VisualNOS    cterm=underline,bold                                            gui=underline,bold
hi WarningMsg   cterm=NONE      ctermfg=DarkRed                                 gui=NONE    guifg=Red
hi WildMenu     cterm=NONE      ctermfg=Black           ctermbg=Yellow          gui=NONE    guibg=Yellow        guifg=Black

" syntax highlighting
hi Comment      cterm=NONE      ctermfg=DarkGreen                               gui=NONE    guifg=DarkGreen
hi Constant     cterm=NONE      ctermfg=DarkRed                                 gui=NONE    guifg=DarkRed
hi Identifier   cterm=NONE      ctermfg=DarkCyan                                gui=NONE    guifg=DarkCyan
hi PreProc      cterm=NONE      ctermfg=DarkMagenta                             gui=NONE    guifg=DarkMagenta
hi Special      cterm=NONE      ctermfg=DarkYellow                              gui=NONE    guifg=DarkYellow
hi Statement    cterm=bold      ctermfg=Blue                                    gui=bold    guifg=Blue
hi Type         cterm=NONE      ctermfg=DarkBlue                                gui=NONE    guifg=DarkBlue

"vim: sw=2
