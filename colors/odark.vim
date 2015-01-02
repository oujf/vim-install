" Vim color file
" Maintainer:   oujf <oujf@outlook.com>
" Last Change:  $Date: 2015/01/01 11:11:11 $

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="odark"

" Normal should come first
hi Normal       guifg=White         guibg=grey20
hi Cursor       guibg=khaki         guifg=slategrey
hi lCursor      guifg=NONE          guibg=Cyan


" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd      cterm=NONE      ctermfg=White           ctermbg=Blue            gui=NONE    guifg=White         guibg=Blue
hi DiffChange   cterm=NONE      ctermfg=NONE            ctermbg=LightMagenta    gui=NONE    guifg=NONE          guibg=LightMagenta
hi DiffDelete   cterm=NONE      ctermfg=White           ctermbg=LightGreen      gui=bold    guifg=White         guibg=LightGreen
hi DiffText     cterm=bold      ctermfg=White           ctermbg=Red             gui=bold    guifg=White         guibg=Red
hi Directory    cterm=NONE      ctermfg=DarkBlue        ctermbg=NONE            gui=NONE    guifg=DarkBlue      guibg=NONE
hi ErrorMsg     cterm=NONE      ctermfg=White           ctermbg=DarkRed         gui=NONE    guifg=White         guibg=DarkRed
hi FoldColumn   cterm=NONE      ctermfg=darkgrey        ctermbg=NONE            gui=NONE    guifg=tan           guibg=grey30
hi Folded       cterm=NONE      ctermfg=darkgrey        ctermbg=NONE            gui=NONE    guifg=gold          guibg=grey30
hi IncSearch    cterm=NONE      ctermfg=yellow          ctermbg=green           gui=NONE    guifg=slategrey     guibg=khaki
hi Ignore       cterm=bold      ctermfg=darkgrey                                gui=NONE    guifg=grey40
hi LineNr       cterm=NONE      ctermfg=Brown           ctermbg=NONE            gui=NONE    guifg=Brown         guibg=NONE
hi ModeMsg      cterm=NONE      ctermfg=brown                                   gui=bold    guifg=goldenrod
hi MoreMsg      cterm=NONE      ctermfg=DarkGreen                               gui=bold    guifg=SeaGreen
hi NonText      cterm=bold      ctermfg=darkblue                                gui=bold    guifg=LightBlue     guibg=grey30
hi Pmenu        cterm=NONE                                                      gui=NONE                        guibg=LightBlue
hi PmenuSel     cterm=NONE      ctermfg=White           ctermbg=DarkBlue        gui=NONE    guifg=White         guibg=DarkBlue
hi Question     cterm=NONE      ctermfg=Green                                   gui=bold    guifg=springgreen
hi Search       cterm=NONE      ctermfg=grey           ctermbg=blue             gui=NONE    guibg=peru          guifg=wheat
hi SpecialKey   cterm=NONE      ctermfg=darkgreen                               gui=NONE    guifg=yellowgreen
hi StatusLine   cterm=reverse,bold                                              gui=NONE    guibg=#c2bfa5 guifg=black
hi StatusLineNC cterm=reverse                                                   gui=NONE    guibg=#c2bfa5 guifg=grey50
hi Title        cterm=NONE      ctermfg=5                                       gui=bold    guifg=indianred
hi VertSplit    cterm=reverse                                                   gui=NONE    guifg=grey50        guibg=#c2bfa5
hi Visual       cterm=reverse   ctermbg=NONE                                    gui=NONE    guifg=khaki         guibg=olivedrab
hi VisualNOS    cterm=underline,bold                                            gui=underline,bold
hi WarningMsg   cterm=NONE      ctermfg=1                                       gui=NONE    guifg=salmon
hi WildMenu     cterm=NONE      ctermfg=Black           ctermbg=Yellow          gui=NONE    guibg=Yellow        guifg=Black

" syntax highlighting
hi Comment      cterm=NONE      ctermfg=DarkGreen                               gui=NONE    guifg=SkyBlue
hi Constant     cterm=NONE      ctermfg=DarkRed                                 gui=NONE    guifg=#ffa0a0
hi Identifier   cterm=NONE      ctermfg=DarkCyan                                gui=NONE    guifg=palegreen
hi PreProc      cterm=NONE      ctermfg=DarkMagenta                             gui=NONE    guifg=indianred
hi Special      cterm=NONE      ctermfg=DarkYellow                              gui=NONE    guifg=navajowhite
hi Statement    cterm=bold      ctermfg=Blue                                    gui=bold    guifg=khaki
hi Type         cterm=NONE      ctermfg=DarkBlue                                gui=NONE    guifg=darkkhaki
hi Todo                                                                                     guifg=orangered     guibg=yellow2

"vim: sw=4
