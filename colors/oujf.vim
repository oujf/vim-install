" Vim color file
" Maintainer:	oujf <oujf@outlook.com>
" Last Change:	2014 Aug 29
"
" Optional color:
" White		Brown	Grey	Blue	Green	Black	Yellow	SeaGreen
" Magenta	Cyan	


" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "oujf"

" Normal should come first
hi Normal     guifg=Black			guibg=White
hi Cursor	  guifg=bg		  	    guibg=fg
hi lCursor	  guifg=NONE			guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    ctermfg=White			ctermbg=DarkBlue		guibg=LightBlue
hi DiffChange						ctermbg=LightMagenta	guibg=LightMagenta
hi DiffDelete ctermfg=White 	    ctermbg=LightGreen		gui=bold			guifg=Blue	guibg=LightCyan
hi DiffText	  ctermfg=DarkRed		ctermbg=Grey			cterm=bold			gui=bold	guibg=Red
hi Directory  ctermfg=DarkBlue								guifg=Blue
hi ErrorMsg   ctermfg=White			ctermbg=DarkRed			guibg=Red			guifg=White
hi FoldColumn ctermfg=DarkBlue		ctermbg=Grey			guibg=Grey			guifg=DarkBlue
hi Folded     ctermbg=Grey			ctermfg=DarkBlue		guibg=LightGrey		guifg=DarkBlue
hi IncSearch  cterm=reverse			gui=reverse
hi LineNr     ctermfg=Brown			guifg=Brown
hi ModeMsg    cterm=bold			gui=bold
hi MoreMsg    ctermfg=DarkGreen		gui=bold				guifg=SeaGreen
hi NonText    ctermfg=Blue			gui=bold				guifg=gray			guibg=white
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White			ctermbg=DarkBlue		guifg=White			guibg=DarkBlue
hi Question   ctermfg=DarkGreen		gui=bold				guifg=SeaGreen
hi Search     ctermfg=Black			ctermbg=Yellow			guibg=Yellow		guifg=NONE
hi SpecialKey ctermfg=DarkBlue		guifg=Blue
hi StatusLine	term=reverse,bold	cterm=reverse,bold		gui=reverse,bold
hi StatusLineNC term=reverse		cterm=reverse			gui=reverse
hi Title      ctermfg=DarkMagenta	gui=bold				guifg=Magenta
hi VertSplit  cterm=reverse			gui=reverse
hi Visual     ctermbg=NONE			cterm=reverse			gui=reverse			guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold	gui=underline,bold
hi WarningMsg ctermfg=DarkRed		guifg=Red
hi WildMenu   ctermfg=Black			ctermbg=Yellow			guibg=Yellow		guifg=Black

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=red2
hi Constant   cterm=NONE ctermfg=DarkRed	 gui=NONE guifg=green3
hi Identifier cterm=NONE ctermfg=DarkCyan    gui=NONE guifg=cyan4
hi PreProc    cterm=NONE ctermfg=DarkMagenta gui=NONE guifg=magenta3
hi Special    cterm=NONE ctermfg=DarkYellow	 gui=NONE guifg=deeppink
hi Statement  cterm=bold ctermfg=Blue	     gui=bold guifg=blue
hi Type	      cterm=NONE ctermfg=DarkBlue	 gui=bold guifg=blue

" vim: sw=2
