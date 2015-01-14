"========================================================================================================================
"=======    ShowVimColors.vim
"========================================================================================================================
"=======    作者：Jacky Liu
"=======    bluegene8210@gmail.com
"========================================================================================================================

" 网上找到的 Vim 里的预定义颜色
let s:VimColors=[
\   'Snow',         'GhostWhite',       'WhiteSmoke',       'Gainsboro',        'FloralWhite',      'OldLace',      'Linen',
\   'AntiqueWhite',     'PapayaWhip',       'BlanchedAlmond',   'Bisque',       'PeachPuff',        'NavajoWhite',      'Azure',
\   'Moccasin',     'Cornsilk',     'Ivory',        'LemonChiffon',     'Seashell',     'Honeydew',     'MintCream',
\   'AliceBlue',        'Lavender',     'LavenderBlush',    'MistyRose',        'White',        'Black',        'DarkSlateGray',
\   'DimGray',      'SlateGray',        'LightSlateGray',   'Gray',         'LightGray',        'MidnightBlue',     'Navy',
\   'NavyBlue',     'CornflowerBlue',   'DarkSlateBlue',    'SlateBlue',        'MediumSlateBlue',
\   'LightSlateBlue',   'MediumBlue',       'RoyalBlue',        'Blue',         'DodgerBlue',       'DeepSkyBlue',
\   'SkyBlue',      'LightSkyBlue',     'SteelBlue',        'LightSteelBlue',   'LightBlue',        'PowderBlue',
\   'PaleTurquoise',    'DarkTurquoise',    'MediumTurquoise',  'Turquoise',        'Cyan',         'LightCyan',
\   'CadetBlue',        'MediumAquamarine', 'Aquamarine',       'DarkGreen',        'DarkOliveGreen',
\   'DarkSeaGreen',     'SeaGreen',     'MediumSeaGreen',   'LightSeaGreen',    'PaleGreen',
\   'SpringGreen',      'LawnGreen',        'Green',        'Chartreuse',       'MediumSpringGreen',    'GreenYellow',
\   'LimeGreen',        'YellowGreen',      'ForestGreen',      'OliveDrab',        'DarkKhaki',        'Khaki',
\   'PaleGoldenrod',    'LightGoldenrodYellow', 'LightYellow',      'Yellow',       'Gold',
\   'LightGoldenrod',   'Goldenrod',        'DarkGoldenrod',    'RosyBrown',        'IndianRed',        'SaddleBrown',
\   'Sienna',       'Peru',         'Burlywood',        'Beige',        'Wheat',        'SandyBrown',       'Tan',          'Chocolate',        'Firebrick',
\   'Brown',        'DarkSalmon',       'Salmon',       'LightSalmon',      'Orange',       'DarkOrange',       'Coral',        'LightCoral',
\   'Tomato',       'OrangeRed',        'Red',          'HotPink',      'DeepPink',     'Pink',         'LightPink',        'PaleVioletRed',
\   'Maroon',       'MediumVioletRed',  'VioletRed',        'Magenta',      'Violet',       'Plum',         'Orchid',
\   'MediumOrchid',     'DarkOrchid',       'DarkViolet',       'BlueViolet',       'Purple',       'MediumPurple',
\   'Thistle',      'Snow1',        'Snow2',        'Snow3',        'Snow4',        'Seashell1',        'Seashell2',        'Seashell3',
\   'Seashell4',        'AntiqueWhite1',    'AntiqueWhite2',    'AntiqueWhite3',    'AntiqueWhite4',
\   'Bisque1',      'Bisque2',      'Bisque3',      'Bisque4',      'PeachPuff1',       'PeachPuff2',       'PeachPuff3',
\   'PeachPuff4',       'NavajoWhite1',     'NavajoWhite2',     'NavajoWhite3',     'NavajoWhite4',
\   'LemonChiffon1',    'LemonChiffon2',    'LemonChiffon3',    'LemonChiffon4',    'Cornsilk1',
\   'Cornsilk2',        'Cornsilk3',        'Cornsilk4',        'Ivory1',       'Ivory2',       'Ivory3',       'Ivory4',       'Honeydew1',
\   'Honeydew2',        'Honeydew3',        'Honeydew4',        'LavenderBlush1',   'LavenderBlush2',
\   'LavenderBlush3',   'LavenderBlush4',   'MistyRose1',       'MistyRose2',       'MistyRose3',
\   'MistyRose4',       'Azure1',       'Azure2',       'Azure3',       'Azure4',       'SlateBlue1',       'SlateBlue2',
\   'SlateBlue3',       'SlateBlue4',       'RoyalBlue1',       'RoyalBlue2',       'RoyalBlue3',       'RoyalBlue4',
\   'Blue1',        'Blue2',        'Blue3',        'Blue4',        'DodgerBlue1',      'DodgerBlue2',      'DodgerBlue3',
\   'DodgerBlue4',      'SteelBlue1',       'SteelBlue2',       'SteelBlue3',       'SteelBlue4',       'DeepSkyBlue1',
\   'DeepSkyBlue2',     'DeepSkyBlue3',     'DeepSkyBlue4',     'SkyBlue1',     'SkyBlue2',     'SkyBlue3',
\   'SkyBlue4',     'LightSkyBlue1',    'LightSkyBlue2',    'LightSkyBlue3',    'LightSkyBlue4',
\   'SlateGray1',       'SlateGray2',       'SlateGray3',       'SlateGray4',       'LightSteelBlue1',
\   'LightSteelBlue2',  'LightSteelBlue3',  'LightSteelBlue4',  'LightBlue1',       'LightBlue2',
\   'LightBlue3',       'LightBlue4',       'LightCyan1',       'LightCyan2',       'LightCyan3',       'LightCyan4',
\   'PaleTurquoise1',   'PaleTurquoise2',   'PaleTurquoise3',   'PaleTurquoise4',   'CadetBlue1',
\   'CadetBlue2',       'CadetBlue3',       'CadetBlue4',       'Turquoise1',       'Turquoise2',       'Turquoise3',
\   'Turquoise4',       'Cyan1',        'Cyan2',        'Cyan3',        'Cyan4',        'DarkSlateGray1',   'DarkSlateGray2',
\   'DarkSlateGray3',   'DarkSlateGray4',   'Aquamarine1',      'Aquamarine2',      'Aquamarine3',
\   'Aquamarine4',      'DarkSeaGreen1',    'DarkSeaGreen2',    'DarkSeaGreen3',    'DarkSeaGreen4',
\   'SeaGreen1',        'SeaGreen2',        'SeaGreen3',        'SeaGreen4',        'PaleGreen1',       'PaleGreen2',
\   'PaleGreen3',       'PaleGreen4',       'SpringGreen1',     'SpringGreen2',     'SpringGreen3',
\   'SpringGreen4',     'Green1',       'Green2',       'Green3',       'Green4',       'Chartreuse1',      'Chartreuse2',
\   'Chartreuse3',      'Chartreuse4',      'OliveDrab1',       'OliveDrab2',       'OliveDrab3',       'OliveDrab4',
\   'DarkOliveGreen1',  'DarkOliveGreen2',  'DarkOliveGreen3',  'DarkOliveGreen4',  'Khaki1',
\   'Khaki2',       'Khaki3',       'Khaki4',       'LightGoldenrod1',  'LightGoldenrod2',  'LightGoldenrod3',
\   'LightGoldenrod4',  'LightYellow1',     'LightYellow2',     'LightYellow3',     'LightYellow4',
\   'Yellow1',      'Yellow2',      'Yellow3',      'Yellow4',      'Gold1',        'Gold2',        'Gold3',        'Gold4',        'Goldenrod1',
\   'Goldenrod2',       'Goldenrod3',       'Goldenrod4',       'DarkGoldenrod1',   'DarkGoldenrod2',
\   'DarkGoldenrod3',   'DarkGoldenrod4',   'RosyBrown1',       'RosyBrown2',       'RosyBrown3',
\   'RosyBrown4',       'IndianRed1',       'IndianRed2',       'IndianRed3',       'IndianRed4',       'Sienna1',      'Sienna2',
\   'Sienna3',      'Sienna4',      'Burlywood1',       'Burlywood2',       'Burlywood3',       'Burlywood4',       'Wheat1',
\   'Wheat2',       'Wheat3',       'Wheat4',       'Tan1',         'Tan2',         'Tan3',         'Tan4',         'Chocolate1',       'Chocolate2',
\   'Chocolate3',       'Chocolate4',       'Firebrick1',       'Firebrick2',       'Firebrick3',       'Firebrick4',
\   'Brown1',       'Brown2',       'Brown3',       'Brown4',       'Salmon1',      'Salmon2',      'Salmon3',      'Salmon4',
\   'LightSalmon1',     'LightSalmon2',     'LightSalmon3',     'LightSalmon4',     'Orange1',      'Orange2',
\   'Orange3',      'Orange4',      'DarkOrange1',      'DarkOrange2',      'DarkOrange3',      'DarkOrange4',      'Coral1',
\   'Coral2',       'Coral3',       'Coral4',       'Tomato1',      'Tomato2',      'Tomato3',      'Tomato4',      'OrangeRed1',
\   'OrangeRed2',       'OrangeRed3',       'OrangeRed4',       'Red1',         'Red2',         'Red3',         'Red4',         'DeepPink1',
\   'DeepPink2',        'DeepPink3',        'DeepPink4',        'HotPink1',     'HotPink2',     'HotPink3',     'HotPink4',
\   'Pink1',        'Pink2',        'Pink3',        'Pink4',        'LightPink1',       'LightPink2',       'LightPink3',       'LightPink4',
\   'PaleVioletRed1',   'PaleVioletRed2',   'PaleVioletRed3',   'PaleVioletRed4',   'Maroon1',
\   'Maroon2',      'Maroon3',      'Maroon4',      'VioletRed1',       'VioletRed2',       'VioletRed3',       'VioletRed4',
\   'Magenta1',     'Magenta2',     'Magenta3',     'Magenta4',     'Orchid1',      'Orchid2',      'Orchid3',      'Orchid4',
\   'Plum1',        'Plum2',        'Plum3',        'Plum4',        'MediumOrchid1',    'MediumOrchid2',    'MediumOrchid3',
\   'MediumOrchid4',    'DarkOrchid1',      'DarkOrchid2',      'DarkOrchid3',      'DarkOrchid4',      'Purple1',
\   'Purple2',      'Purple3',      'Purple4',      'MediumPurple1',    'MediumPurple2',    'MediumPurple3',
\   'MediumPurple4',    'Thistle1',     'Thistle2',     'Thistle3',     'Thistle4',
\   'DarkCyan',     'DarkMagenta',      'DarkRed',      'LightGreen',
\   '#132b4a',      '#233b5a',      '#005c70',      '#031b4a',      '#d0d0e0',
\   'NONE']



let s:statements= []    " 用来定义 syntax group 以及调用 matchadd() 的 VimScript 语句。
let s:filelines= [] " 加到临时 buffer 内的内容

call add(s:filelines, '输出的第一部分，展示颜色本身')
call add(s:filelines, '')

for vcolor in s:VimColors
    call add(s:filelines, vcolor . repeat(' ', 160-len(vcolor)))

    if vcolor =~ '^#' | let vcname= vcolor[1:] | else | let vcname= vcolor | endif

    "   syntax group container
    "======================================================================================================================
    let sgcontname= vcname . '_cont'
    call add(s:statements, 'syntax match ' . sgcontname . ' /^' . vcolor . '\> *$/')

    "   指定主体，默认背景
    "======================================================================================================================
    let fghigrpname= '_' . vcname . '_' . 'NONE'            " hi group name (as frontground)
    call add(s:statements, 'hi ' . fghigrpname . ' guifg=' . vcolor . ' guibg=' . 'NONE')   " 定义 hi group
    let fgsyngrpname= 'sgrp_' . fghigrpname             " syntax group name (as frontground)
    call add(s:statements, 'syntax match ' . fgsyngrpname . ' /^' . vcolor . '\>/ containedin=' . sgcontname . ' contained') " 定义 syntax group
    call add(s:statements, 'hi link '. fgsyngrpname . ' ' . fghigrpname)    " syntax group 与 hi group 联系起来

    "   默认主体，指定背景
    "======================================================================================================================
    let bghigrpname= '_' . 'NONE' . '_' . vcname            " hi group name (as background)
    call add(s:statements, 'hi ' . bghigrpname . ' guifg=' . 'NONE' . ' guibg=' . vcolor)   " 定义 hi group
    let bgsyngrpname= 'sgrp_' . bghigrpname             " syntax group name (as background)
    call add(s:statements, 'syntax match ' . bgsyngrpname . ' / \+/' . ' containedin=' . sgcontname . ' contained') " 同上
    call add(s:statements, 'hi link '. bgsyngrpname . ' ' . bghigrpname)    " 同上

endfor

call add(s:filelines, '')
call add(s:filelines, '输出的第二部分，展示作为主体色或作为背景色与黑白两色的搭配效果')
call add(s:filelines, '')

for vcolor in s:VimColors

    if vcolor =~ '^#' | let vcname= vcolor[1:] | else | let vcname= vcolor | endif

    "   指定主体，黑色背景
    "======================================================================================================================
    let gname_1= '_' . vcname . '_' . 'Black'                       " syntax group name
    call add(s:statements, 'hi  ' . gname_1 . ' guifg=' . vcolor . '    guibg=' . 'Black')  " 定义语句

    let skwname= 'skw_' . gname_1
    call add(s:statements, 'syntax keyword ' . skwname . ' ' . gname_1)
    call add(s:statements, 'hi link ' . skwname . ' ' . gname_1)

    "   黑色主体，指定背景
    "======================================================================================================================
    let gname_2= '_' . 'Black' . '_' . vcname                       " syntax group name
    call add(s:statements, 'hi  ' . gname_2 . ' guifg=' . 'Black' . '   guibg=' . vcolor)   " 定义语句

    let skwname= 'skw_' . gname_2
    call add(s:statements, 'syntax keyword ' . skwname . ' ' . gname_2)
    call add(s:statements, 'hi link ' . skwname . ' ' . gname_2)

    "   指定主体，白色背景
    "======================================================================================================================
    let gname_3= '_' . vcname . '_' . 'White'                       " syntax group name
    call add(s:statements, 'hi  ' . gname_3 . ' guifg=' . vcolor . '    guibg=' . 'White')  " 定义语句

    let skwname= 'skw_' . gname_3
    call add(s:statements, 'syntax keyword ' . skwname . ' ' . gname_3)
    call add(s:statements, 'hi link ' . skwname . ' ' . gname_3)

    "   白色主体，指定背景
    "======================================================================================================================
    let gname_4= '_' . 'White' . '_' . vcname                       " syntax group name
    call add(s:statements, 'hi  ' . gname_4 . ' guifg=' . 'White' . '   guibg=' . vcolor)   " 定义语句

    let skwname= 'skw_' . gname_4
    call add(s:statements, 'syntax keyword ' . skwname . ' ' . gname_4)
    call add(s:statements, 'hi link ' . skwname . ' ' . gname_4)

    "   buffer 新加入一行
    "======================================================================================================================
    let newline=    gname_1 . repeat(' ', 30-len(gname_1)) .
    \       gname_2 . repeat(' ', 30-len(gname_2)) .
    \       gname_3 . repeat(' ', 30-len(gname_3)) . gname_4
    call add(s:filelines, newline)

endfor



tabedit ShowVimColors.tmp   " 开启临时 buffer
setlocal buftype=nofile     " 设置 buffer 属性
call append(0, s:filelines) " 加入内容

for stat in s:statements    " “上色”
    exe stat
endfor

"   autocmd BufWinLeave ShowVimColors.tmp   call clearmatches() " 走之前清掉。不然 Vim 会一直很慢
