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
hi Normal       ctermfg=LightGray   ctermbg=Black       guifg=White             guibg=grey20
hi Cursor       guibg=khaki         guifg=slategrey
hi lCursor      guifg=NONE          guibg=Cyan


" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd      cterm=NONE      ctermfg=White           ctermbg=Blue            gui=NONE    guifg=White         guibg=slateblue
hi DiffChange   cterm=NONE      ctermfg=NONE            ctermbg=LightMagenta    gui=NONE    guifg=NONE          guibg=darkmagenta
hi DiffDelete   cterm=NONE      ctermfg=White           ctermbg=LightGreen      gui=NONE    guifg=White         guibg=darkcyan
hi DiffText     cterm=bold      ctermfg=White           ctermbg=Red             gui=bold    guifg=White         guibg=olivedrab
hi Directory    cterm=NONE      ctermfg=DarkBlue        ctermbg=NONE            gui=NONE    guifg=palegreen     guibg=NONE
hi ErrorMsg     cterm=NONE      ctermfg=White           ctermbg=DarkRed         gui=NONE    guifg=White         guibg=DarkRed
hi FoldColumn   cterm=NONE      ctermfg=darkgrey        ctermbg=NONE            gui=NONE    guifg=tan           guibg=grey30
hi Folded       cterm=NONE      ctermfg=darkgrey        ctermbg=NONE            gui=NONE    guifg=gold          guibg=grey30
hi IncSearch    cterm=NONE      ctermfg=yellow          ctermbg=green           gui=NONE    guifg=slategrey     guibg=khaki
hi Ignore       cterm=bold      ctermfg=darkgrey                                gui=NONE    guifg=grey40
hi LineNr       cterm=NONE      ctermfg=3               ctermbg=NONE            gui=NONE    guifg=grey50        guibg=NONE
hi ModeMsg      cterm=NONE      ctermfg=brown                                   gui=bold    guifg=goldenrod
hi MoreMsg      cterm=NONE      ctermfg=DarkGreen                               gui=bold    guifg=SeaGreen
hi NonText      cterm=bold      ctermfg=darkblue                                gui=bold    guifg=LightBlue     guibg=grey30
hi Pmenu        cterm=NONE                                                      gui=NONE    guifg=grey30        guibg=lightmagenta
hi PmenuSel     cterm=NONE      ctermfg=White           ctermbg=DarkBlue        gui=NONE    guifg=grey20        guibg=lightblue
hi Question     cterm=NONE      ctermfg=Green                                   gui=bold    guifg=springgreen
hi SpecialKey   cterm=NONE      ctermfg=darkgreen                               gui=NONE    guifg=yellowgreen
hi StatusLine   cterm=reverse,bold                                              gui=NONE    guibg=#c2bfa5       guifg=black
hi StatusLineNC cterm=reverse                                                   gui=NONE    guibg=#c2bfa5       guifg=grey50
hi Title        cterm=NONE      ctermfg=5                                       gui=bold    guifg=indianred
hi VertSplit    cterm=reverse                                                   gui=NONE    guifg=grey50        guibg=#c2bfa5
hi Visual       cterm=reverse   ctermbg=NONE                                    gui=NONE    guifg=khaki         guibg=olivedrab
hi VisualNOS    cterm=underline,bold                                            gui=underline,bold
hi WarningMsg   cterm=NONE      ctermfg=1                                       gui=NONE    guifg=salmon
hi WildMenu     cterm=NONE      ctermfg=Black           ctermbg=Yellow          gui=NONE    guibg=Yellow        guifg=Black
if &background == "light"
    hi Search                   ctermfg=NONE            ctermbg=Yellow                      guibg=Yellow        guifg=NONE
else
    "hi Search                   ctermfg=Black          ctermbg=Yellow                      guibg=Yellow        guifg=Black
    hi Search                   ctermfg=grey            ctermbg=blue                        guibg=peru          guifg=wheat
endif

" syntax highlighting
hi String       cterm=NONE      ctermfg=darkcyan                                gui=NONE    guifg=SkyBlue
hi Comment      cterm=NONE      ctermfg=DarkGreen                               gui=NONE    guifg=LightBlue
hi Constant     cterm=NONE      ctermfg=DarkRed                                 gui=NONE    guifg=coral
hi Special      cterm=NONE      ctermfg=DarkYellow                              gui=NONE    guifg=navajowhite
hi Identifier   cterm=NONE      ctermfg=DarkCyan                                gui=NONE    guifg=palegreen
hi Include      cterm=NONE      ctermfg=red                                     gui=NONE    guifg=lightred
hi PreProc      cterm=NONE      ctermfg=Yellow                                  gui=NONE    guifg=indianred
hi Operator     cterm=NONE      ctermfg=Red                                     gui=NONE    guifg=Red
hi Define       cterm=NONE      ctermfg=yellow                                  gui=bold    guifg=gold
hi Statement    cterm=bold      ctermfg=LightBlue                               gui=bold    guifg=khaki
hi Type         cterm=NONE      ctermfg=LightGreen                              gui=bold    guifg=darkkhaki
hi Function     cterm=NONE      ctermfg=brown                                   gui=bold    guifg=navajowhite
hi Structure    cterm=NONE      ctermfg=green                                   gui=NONE    guifg=lightgreen
hi Todo                                                                         gui=NONE    guifg=orangered     guibg=yellow2

"vim: sw=4
