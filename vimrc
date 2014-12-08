
"==============================================================================
" File: ~/.vim/vimrc
" Description: Vim configuration file
" History:
"   2014-12-02
"   +init
"==============================================================================

"------------------------------------------------------------------------------
" HotKey
" Fn:
" <F2>      pastetoggle
" <F3>      Grep
" <F4>      TagBar
" <F5>      Lookup File
" <F6>      NERDTree
" <F8>      Taglist
" <F9>      Quickfix
" <F12>     .c --> .h
" Other:
" \lk \ll \lw   Lookup
" <Ctrl-a>      nohl
" \ja           JavaBrowser
" \be           BufferExplorer
" \t            TagBar
" n\cc			Comments out the current line or text selected in visual mode.
" n\cu			Uncomments the selected line(s).
" n\cm			/* Comments */
"------------------------------------------------------------------------------


" ================================== Vundle ===================================
let g:USE#bundle = 1    "default enable bundle
if g:USE#bundle         "{{{

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

set nocompatible              " be iMproved, required
filetype off                  " necessary to make ftdetect work on Linux

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Lokaltog/vim-powerline'
Plugin 'The-NERD-tree'
"Plugin 'The-NERD-Commenter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tagbar'
Plugin 'taglist.vim'
Plugin 'bufexplorer.zip'
Plugin 'a.vim'
Plugin 'c.vim'
Plugin 'cpp.vim'
Plugin 'DrawIt'
Plugin 'JavaBrowser'
Plugin 'snipMate'
Plugin 'genutils'
Plugin 'lookupfile'
Plugin 'echofunc.vim'
Plugin 'Mark'
Plugin 'scrooloose/syntastic'
Plugin 'grep.vim'
Plugin 'hari-rangarajan/CCTree'
Plugin 'cecutil'
Plugin 'BlockComment.vim'
Plugin 'comments.vim'
Plugin 'neocomplcache'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'sudo.vim'
Plugin 'oujf/cscope_map.vim'
"Plugin 'Lokaltog/powerline'
"Plugin 'honza/vim-snippets'        "snipMate & UltiSnip Snippets
"Plugin 'CCTree'
"Plugin 'mru.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

endif       "}}}g:USE#bundle


" =========================== Environment variable ============================
if has("win32") || has("win32unix")
    let g:OS#name = "win"
    let g:OS#win = 1
    let g:OS#mac = 0
    let g:OS#unix = 0
elseif has("mac")
    let g:OS#name = "mac"
    let g:OS#win = 0
    let g:OS#mac = 1
    let g:OS#unix = 0
elseif has("unix")
    let g:OS#name = "unix"
    let g:OS#win = 0
    let g:OS#mac = 0
    let g:OS#unix = 1
endif

if has("gui_running")
    let g:OS#gui = 1
else
    let g:OS#gui = 0
endif

if g:OS#win
    let VIM_HOME = $VIM . "\\"
    let TMP_POSTFIX = "_"
else
    let VIM_HOME = "~/.vim/"
    let TMP_POSTFIX = "."
endif


" ================================= General ===================================
" quick startup mode.
set shortmess=atI

" encoding
set encoding=utf-8     " Necessary to show unicode glyphs
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,gbk,big5,euc-jp,euc-kr,latin1
set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.UTF-8


syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins


" 文件格式，默认 ffs=dos,unix
set fileformat=unix
set fileformats=unix,dos,mac


" theme, skin, color
" terminal color settings
if g:OS#gui
    colo manuscript
else
    colo oujf
endif


" @see :help mbyte-IME
if has('multi_byte_ime')
    highlight Cursor guibg=#F0E68C guifg=#708090
    highlight CursorIM guibg=Purple guifg=NONE
endif


" fonts
" @see http://support.microsoft.com/kb/306527/zh-cn
" @see http://www.gracecode.com/archives/1545/
" @see http://blog.xianyun.org/2009/09/14/vim-fonts.html
if g:OS#win
    set guifont=Courier_New:h12:cANSI
elseif g:OS#mac
    "set guifont=Courier_New:h16
    "set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14
    set guifont=Sauce\ Code\ Powerline:h14

    let g:airline_powerline_fonts = 1
endif


" set max window size.
if g:OS#win && g:OS#gui
    au GUIEnter * simalt ~x
elseif g:OS#mac
    set transparency=5
    set columns=999
    set lines=99
elseif g:OS#unix
    " for Gnome.
    " $ sudo apt-get install wmctrl
    " http://fluxbox.sourceforge.net/docbook/zh_cn/html/ch03s05.html
    autocmd GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
else
    set columns=999
    set lines=99
endif


" Tabs
set noexpandtab
set tabstop=4                " 设定 tab 长度为 4 个空格
set shiftwidth=4             " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4            " 使得按退格键时可以一次删掉 4 个空格,不足 4 个时删掉所有剩下的空格
                             " “逢[tabstop]空格进1制表符”

au FileType c,cpp,java,php setl expandtab | setl shiftwidth=4 | setl tabstop=4
au FileType html,javascript setl shiftwidth=2
au FileType html,javascript setl tabstop=2
"autocmd FileType html,xhtml,velocity setl softtabstop=2 | setl tabstop=2 | setl shiftwidth=2


" ignore these files while expanding wild chars
" @see http://man.lupaworld.com/content/manage/vi/doc/quickref.html
set wildchar=<TAB>          " start wild expansion in the command line using <TAB>
set wildmenu                " wild char completion menu
set wildignore=*.o,*.class,*.pyc
set showcmd                 " 在状态栏显示目前所执行的指令，未完成的指令片段亦会显示出来
set history=50              " keep 50 lines of command line history

set number                  " show linenumber
set cindent                 " 以C/C++的模式缩进
set autoindent              " new line indent same this line.
set copyindent              " copy the previous indentation on autoindenting
set smartindent
set smarttab                " insert tabs on the start of a line according to context

set incsearch               " incremental search //输入搜索模式时高亮匹配部分
set hlsearch                " search highlighting
set ignorecase              " ignore case when searching
"set noignorecase           " case-sensitive
set smartcase               " ignore case if search pattern is all lowercase,case-sensitive otherwise
set wrapscan                " 在搜索时如到达文件尾则绕回文件头继续搜索

set wrap                    " 长行显示自动折行
set linebreak               " break full word.
set scrolloff=3             " 设定光标离窗口上下边界 5 行时窗口自动滚动

set warn                    " 对文本进行了新的修改后，离开shell时系统给出显示(缺省)
set autowrite               " auto writefile when sth happened such as :make or :last or others.See the help
set autoread                " auto read when file is changed from outside
"set autochdir              " auto change directory

set showmatch               " Cursor shows matching ) and }
set showfulltag
set matchpairs=(:),{:},[:],<:>
set matchtime=5             " Show matchtime in 0.5s
set showmode                " Show current mode

set ruler                   " show the cursor position all the time
"set listchars=tab:>>,trail:-   " tab 以 >> 显示  空格以 --显示
set listchars=tab:>>,trail:¶    " tab 以 >> 显示  空格以 ¶ 显示
"set list
set backspace=indent,eol,start  " 解决backspace无法删除的问题

set splitright                  " 新窗口在当前窗口之右
"set splitbelow                 " 分割窗口时新窗口在当前窗口之下


" Folds.
set foldmethod=syntax           " 按照语法区域折叠
set foldlevel=6
set foldcolumn=0


" column.
"highlight colorcolumn ctermbg=235
"set colorcolumn=81
"let &colorcolumn=join(range(81,999),",")


" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" swap file, auto backup.
if g:OS#win
    set directory=$VIM\_swap
else
    set directory=~/.vim/.swap
endif

if has("persistent_undo")
    set undofile
    set undolevels=1000

    if g:OS#win
        set undodir=$VIM\_undodir
        au BufWritePre _undodir/* setlocal noundofile
    else
        set undodir=~/.vim/.undodir
        au BufWritePre ~/.vim/.undodir/* setlocal noundofile
    endif
endif

set nobackup				" no *~ backup files

" ================================== Keymap ===================================

" Normal Mode, Visual Mode, and Select Mode,
" use <Tab> and <Shift-Tab> to indent
" @see http://c9s.blogspot.com/2007/10/vim-tips.html
"nmap <tab> v>                  " :h ctrl-i :h <tab>
"nmap <s-tab> v<
vmap <tab>   >gv
vmap <s-tab> <gv

" Fast saving
map <leader>w :w!<cr>
map <c-s> <Esc>:w !sudo tee %
" Copypath
map <leader>file :echo expand("%:p")<cr>
" Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F2>


" 选中一段文字并全文搜索这段文字
vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

" @see http://blog.hotoo.me/post/vim-autocomplete-pairs
inoremap ( <c-r>=OpenPair('(')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { <c-r>=OpenPair('{')<CR>
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ <c-r>=OpenPair('[')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
" just for xml document, but need not for now.
"inoremap < <c-r>=OpenPair('<')<CR>
"inoremap > <c-r>=ClosePair('>')<CR>
function! OpenPair(char)
    let PAIRs = {
                \ '{' : '}',
                \ '[' : ']',
                \ '(' : ')',
                \ '<' : '>'
                \}
    if line('$')>2000
        let line = getline('.')

        let txt = strpart(line, col('.')-1)
    else
        let lines = getline(1,line('$'))
        let line=""
        for str in lines
            let line = line . str . "\n"
        endfor

        let blines = getline(line('.')-1, line("$"))
        let txt = strpart(getline("."), col('.')-1)
        for str in blines
            let txt = txt . str . "\n"
        endfor
    endif
    let oL = len(split(line, a:char, 1))-1
    let cL = len(split(line, PAIRs[a:char], 1))-1

    let ol = len(split(txt, a:char, 1))-1
    let cl = len(split(txt, PAIRs[a:char], 1))-1

    if oL>=cL || (oL<cL && ol>=cl)
        return a:char . PAIRs[a:char] . "\<Left>"
    else
        return a:char
    endif
endfunction
function! ClosePair(char)
    if getline('.')[col('.')-1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

inoremap ' <c-r>=CompleteQuote("'")<CR>
inoremap " <c-r>=CompleteQuote('"')<CR>
function! CompleteQuote(quote)
    let ql = len(split(getline('.'), a:quote, 1))-1
    let slen = len(split(strpart(getline("."), 0, col(".")-1), a:quote, 1))-1
    let elen = len(split(strpart(getline("."), col(".")-1), a:quote, 1))-1
    let isBefreQuote = getline('.')[col('.') - 1] == a:quote

    if '"'==a:quote && "vim"==&ft && 0==match(strpart(getline('.'), 0, col('.')-1), "^[\t ]*$")
        " for vim comment.
        return a:quote
    elseif "'"==a:quote && 0==match(getline('.')[col('.')-2], "[a-zA-Z0-9]")
        " for Name's Blog.
        return a:quote
    elseif (ql%2)==1
        " a:quote length is odd.
        return a:quote
    elseif ((slen%2)==1 && (elen%2)==1 && !isBefreQuote) || ((slen%2)==0 && (elen%2)==0)
        return a:quote . a:quote . "\<Left>"
    elseif isBefreQuote
        return "\<Right>"
    else
        return a:quote . a:quote . "\<Left>"
    endif
endfunction


" [count]<Space> key in normal model.
nmap <space> :<C-U>call NormalSpace()<cr>
function! NormalSpace()
    let col=col(".")-1
    let text=getline(".")
    call setline(line("."), strpart(text,0,col).repeat(" ", v:count1).strpart(text,col))
    exec "normal ".v:count1."l"
endfunction


" use Meta key(Windows:Alt) to move cursor in insert mode.
" Note: if system install "Lingoes Translator",
"   you will need change/disabled hot key.
if g:OS#mac
    noremap! <D-j> <Down>
    noremap! <D-k> <Up>
    "noremap! <D-h> <left>
    "noremap! <D-l> <Right>
    noremap! <A-j> <Down>
    noremap! <A-k> <Up>
    noremap! <A-h> <left>
    noremap! <A-l> <Right>
else
    noremap! <M-j> <Down>
    noremap! <M-k> <Up>
    noremap! <M-h> <left>
    noremap! <M-l> <Right>
endif

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

map <C-kPlus> <C-w>+
map <C-kMinus> <C-w>-
map <C-S-kPlus> <C-w>_
map <C-S-kMinus> <C-w>_


" Windows: Explorer.exe
" Linux:   nautilus $PWD
"          nautilus .
" Mac:     open .
" @see http://www.zhuoqun.net/html/y2010/1516.html
function! FileExplorer(path)
    if a:path == ""
        if has("win32")
            let p = expand("%:p")
        elseif has("mac")
            let p = expand("%:p:h")
        else
            echomsg "Not support."
            return
        endif
    else
        let p = a:path
    endif
    if g:OS#win && exists("+shellslash") && &shellslash
        let p = substitute(p, "/", "\\", "g")
    endif

    if executable("chcp")
        let code_page = 'cp' . matchstr(system("chcp"), "\\d\\+")
    else
        " If chcp doesn't work, set its value manually here.
        let code_page = 'cp936'
    endif
    if g:OS#win && !has('win32unix') && (&enc!=code_page)
        let p = iconv(p, &enc, code_page)
    endif

    if g:OS#win
        exec ":!start explorer /select, " . p
        " Open Explorer Tree.
        "exec ":!start explorer /e,/select, " . p
    elseif has("mac")
        exec ':!open "' . p . '"'
    endif
endfunction

" Open Windows Explorer and Fouse current file.
" or open Mac Finder.
"                                      %:p:h     " Just Fold Name.
command -nargs=0 FileExplorer :silent call FileExplorer("")
if g:OS#mac
    command -nargs=0 Finder :silent call FileExplorer("")
endif



" tab navigation & operation like tabs browser
" @see http://vimcdoc.sourceforge.net/doc/tabpage.html
" Note: cannot map <C-number> for gvim on window 7.
imap <C-t> <Esc>:tabnew<cr>
nmap <C-t> :tabnew<cr>
"imap <C-w> <Esc>:tabclose<cr> " window shortcut key.
"nmap <C-w> :tabclose<cr>
"imap <C-S-w> <Esc>:tabonly<cr>
"nmap <C-S-w> :tabonly<cr>
"imap <S-h> :tabnext<cr>
nmap <S-l> :tabnext<cr>
"imap <S-l> :tabprevious<cr>
nmap <S-h> :tabprevious<cr>
if g:OS#mac
    imap <D-1> <Esc>:tabfirst<cr>
    nmap <D-1> :tabfirst<cr>
    imap <D-2> <Esc>2gt
    nmap <D-2> 2gt
    imap <D-3> <Esc>3gt
    nmap <D-3> 3gt
    imap <D-4> <Esc>4gt
    nmap <D-4> 4gt
    imap <D-5> <Esc>5gt
    nmap <D-5> 5gt
    imap <D-6> <Esc>6gt
    nmap <D-6> 6gt
    imap <D-7> <Esc>7gt
    nmap <D-7> 7gt
    imap <D-8> <Esc>8gt
    nmap <D-8> 8gt
    imap <D-9> <Esc>9gt
    nmap <D-9> 9gt
    imap <D-0> <Esc>:tablast<cr>
    nmap <D-0> :tablast<cr>
else
    imap <M-1> <Esc>:tabfirst<cr>
    nmap <M-1> :tabfirst<cr>
    imap <M-2> <Esc>2gt
    nmap <M-2> 2gt
    imap <M-3> <Esc>3gt
    nmap <M-3> 3gt
    imap <M-4> <Esc>4gt
    nmap <M-4> 4gt
    imap <M-5> <Esc>5gt
    nmap <M-5> 5gt
    imap <M-6> <Esc>6gt
    nmap <M-6> 6gt
    imap <M-7> <Esc>7gt
    nmap <M-7> 7gt
    imap <M-8> <Esc>8gt
    nmap <M-8> 8gt
    imap <M-9> <Esc>9gt
    nmap <M-9> 9gt
    imap <M-0> <Esc>:tablast<cr>
    nmap <M-0> :tablast<cr>
endif


" ================================== Plugins ==================================

" MRU.vim
" try for Terminal.
try
    let MRU_File=~/.vim/.vim_mru_files
catch /.*/
endtry
let MRU_Max_Entries = 1000
let MRU_Max_Menu_Entries = 20
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height = 8


" autocomplpop.vim, acp.vim
"let g:loaded_acp = 0
" Auto Complete Pop Menu
" autocomplpop.vim
" @see http://www.vim.org/scripts/script.php?script_id=1879
" @see http://hi.baidu.com/timeless/blog/item/cb4478f09a1563ca7931aa5d.html
" Note: functions and key maps invalid.
"
"let g:acp_behaviorSnipmateLength = 1        " AutoComplete snippets for snipMate.
let g:acp_behaviorHtmlOmniLength = -1
let g:AutoComplPop_MappingDriven = 1         " Don't popup when move cursor.
let g:AutoComplPop_IgnoreCaseOption = 1
" @see http://d.hatena.ne.jp/cooldaemon/20071114/1195029893
autocmd FileType * let g:AutoComplPop_CompleteOption = '.,w,b,u,t,i'
if g:OS#win
    autocmd FileType javascript let g:AutoComplPop_CompleteOption = '.,w,b,u,t,i,k$VIM/vimfiles/dict/javascript.dict'
else
    autocmd FileType javascript let g:AutoComplPop_CompleteOption = '.,w,b,u,t,i,k$VIM/vimfiles/dict/javascript.dict'
endif


" NERDTree
" @see http://www.vim.org/scripts/script.php?script_id=2801
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=20
imap <F6> <Esc>:ToggleNERDTree<cr>
nmap <F6> :ToggleNERDTree<cr>


" Powerline.vim
set laststatus=2   " Always show the statusline
set t_Co=256	   " Explicitly tell vim that the terminal supports 256 colors
let g:Powerline_symbols = 'unicode'
let g:Powerline_cache_enabled = 0	" Disable cache file create
call Pl#Theme#InsertSegment('pwd', 'after', 'mode_indicator')


" Syntastic 语法检查
if &diff
  let g:loaded_syntastic_plugin = 1
else
  let g:syntastic_javascript_checkers = ["jshint", "gjslint", "closurecompiler", "jsl"]
  "let g:syntastic_javascript_jshint_args = '--config'
  let g:syntastic_always_populate_loc_list=1
  let g:syntastic_check_on_open=1
  let g:syntastic_check_on_wq=0
  let g:syntastic_enable_signs=1
  let g:syntastic_error_symbol='✗'
  let g:syntastic_warning_symbol='⚠'

  highlight SyntasticErrorSign guifg=red guibg=#555555
  highlight SyntasticWarningSign guifg=yellow guibg=#555555
  highlight SignColumn guibg=#555555
endif



" ctags, TagList, Tagbar.
" @see http://easwy.com/blog/archives/advanced-vim-skills-taglist-plugin/
set tags=.tags;
"set tags+=./.tags
"set tags+=./**/.tags
"set tags+=./../.tags

if g:OS#win
    let g:ctags_path=$VIM.'\vimfiles\plugin\ctags.exe'
    let Tlist_Ctags_Cmd=$VIM.'\vimfiles\plugin\ctags.exe'
	let g:tagbar_ctags_bin=$VIM.'\vimfiles\plugin\ctags.exe'
else
    let g:ctags_path='/usr/local/bin/ctags'
    let Tlist_Ctags_Cmd= '/usr/local/bin/ctags'
	let g:tagbar_ctags_bin='/usr/local/bin/ctags'
endif

let g:tagbar_type_markdown = {
	\ 'ctagstype' : 'markdown',
	\ 'kinds' : [
		\ 'h:header',
		\ 'i:header',
		\ 'k:header'
	\ ],
    \ 'sort': 0
\ }

let g:ctags_statusline=1
let g:ctags_args=1
let g:Tlist_Use_Right_Window=1
let g:Tlist_Show_One_File = 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_WinWidth=25
nnoremap <F8> :TlistToggle<CR>

let g:tagbar_left = 1               "窗口显示在左边
let g:tagbar_width = 30             "窗口宽度
let g:tagbar_autofocus = 1          "启动后光标focus到窗口
let g:tagbar_sort = 0               "启动时不自动按name排序，以出现的先后顺序排列，s<CR>可以手动按name排序
"let g:tagbar_autoshowtag = 1
"nmap <F4> :TagbarToggle<CR>
nmap <leader>t :TagbarToggle<CR>


" --- cscope
"use oujf/cscope_map.vim


" --- A
nnoremap <silent> <F12> :A<CR>


" --- Grep
"nnoremap <silent> <F3> :Grep<CR>
nnoremap <silent> <F3> :Rgrep
            \ --include="*.h"
            \ --include="*.c"
            \ --include="*.cc"
            \ --include="*.cpp"
            \ --include="*.java"<CR>


" --- lookupfile
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_RecentFileListSize = 30
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./.filenametags")              "设置tag文件的名字
    let g:LookupFile_TagExpr = '"./.filenametags"'
endif
" Don't display binary files
let g:LookupFile_FileFilter = '\.class$\|\.o$\|\.obj$\|\.exe$\|\.jar$\|\.zip$\|\.war$\|\.ear$'
"映射LookupFile为,\lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,\ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,\lw
nmap <silent> <leader>lw :LUWalk<cr>


" --- NERDTree
nnoremap <silent> <F6> :NERDTreeToggle<CR>


" --- nohl
nnoremap <silent> <C-a> :nohl<cr>


" --- JavaBrowser
let javabrowser_ctags_cmd = '/usr/local/bin/ctags'
let JavaBrowser_Inc_Winwidth = 0
nmap <silent> <leader>ja :JavaBrowser<cr>

let tlist_vimwiki_settings = 'wiki;h:Headers'
let tlist_confluencewiki_settings = 'confluencewiki;h:Headers'
let tlist_markdown_settings = 'markdown;h:Headers'
let tlist_textile_settings = 'textile;h:Headers'
let tlist_html_settings = 'html;h:Headers;o:Objects(ID);c:Classes'
let tlist_xhtml_settings = 'html;h:Headers;o:Objects(ID);c:Classes'
let tlist_velocity_settings = 'html;h:Headers;o:Objects(ID);c:Classes'
let tlist_css_settings = 'css;c:Classes;o:Objects(ID);t:Tags(Elements)'
let tlist_javascript_settings = 'javascript;f:Functions;c:Classes;o:Objects'


" =========================== Macros & Functions ==============================
" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function! RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//              " Remove spaces and tabs from end of every line
        silent! %s/\n\{5,\}/\r\r/       " Merge blank lines, than 3 line.
        "silent! g/^\s*$/d               " Remove blank line
        "silent! %s/\(\s*\n\)\+\%$//    " Remove last blank line
        call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()

highlight TabSpace ctermbg=green guibg=green
syntax match TabSpace /\t/
" 显示行尾的空格
highlight WhitespaceEOL ctermbg=yellow guibg=yellow
syntax match WhitespaceEOL /\s\+$/


" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

