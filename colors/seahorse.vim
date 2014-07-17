"|
"| Setup
"|
set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "seahorse"


"|
"| AddHighlight function
"|
function! AddHighlight(name, fg, bg, options)
  let hi = "hi! ".a:name
  if strlen(a:fg)
    let hi = hi." ".s:type."fg=".a:fg
  endif
  if strlen(a:bg)
    let hi = hi." ".s:type."bg=".a:bg
  endif
  if strlen(a:options)
    let hi = hi." ".s:type."=".a:options
  endif
  exec hi
endfunction


"|
"| Color values
"|
let s:none = ""
if has('gui_running')
  let s:type       = "gui"
  let s:white      = "#dedede"
  let s:black      = "#333333"

  let s:grey       = "#777777"
  let s:dark_grey  = "#555555"
  let s:light_grey = "#cccccc"

  let s:blue       = "#2575be"
  let s:red        = "#c03228"
  let s:green      = "#499773"
  let s:bg_purple  = "#bf9efe"
  let s:fg_purple  = "#9578ce"
  let s:yellow     = "#c3aa00"
else
  let s:type       = "cterm"
  let s:white      = "254"
  let s:black      = "235"

  let s:grey       = "241" " 241-2
  let s:dark_grey  = "238"
  let s:light_grey = "251"

  let s:blue       = "25" " 25
  let s:red        = "124" " 124 / 88 ?
  let s:green      = "29" " 23 / 29
  let s:bg_purple  = "141" " 141 / 147
  let s:fg_purple  = "93" " 93
  let s:yellow     = "136" " 136
endif



"|
"| Base highlights
"|
call AddHighlight("Blue",   s:blue,      s:white, s:none)
call AddHighlight("Red",    s:red,       s:white, s:none)
call AddHighlight("Green",  s:green,     s:white, s:none)
call AddHighlight("Purple", s:fg_purple, s:white, s:none)
call AddHighlight("Yellow", s:yellow,    s:white, s:none)

call AddHighlight("Grey",      s:grey,       s:white, s:none)
call AddHighlight("DarkGrey",  s:dark_grey,  s:white, s:none)
call AddHighlight("LightGrey", s:light_grey, s:white, s:none)

call AddHighlight("Normal", s:black, s:white, s:none)



"|
"| Backgrounds
"|
" exec 'hi! BlueBg   guibg=' .s:blue
" exec 'hi! RedBg'
"       \.' guifg=' .s:white
"       \.' guibg=' .s:red
" exec 'hi! GreenBg  guibg=' .s:green
call AddHighlight("PurpleBg", s:black, s:bg_purple, s:none)
" exec 'hi! YellowBg guibg=' .s:yellow

call AddHighlight("GreyBg", s:none, s:grey, s:none)
call AddHighlight("DarkGreyBg", s:none, s:dark_grey, s:none)
call AddHighlight("LightGreyBg", s:none, s:light_grey, s:none)


"|
"| Highlights
"|
call AddHighlight("LineNr", s:grey, s:light_grey, s:none)
call AddHighlight("CursorLineNr", s:green, s:white, s:none)

call AddHighlight("Visual", s:white, s:blue, s:none)


hi! link Search PurpleBg
hi! link IncSearch Search

call AddHighlight("VertSplit", s:light_grey, s:grey, s:none)

" ListChars
hi! link SpecialKey RedBg

call AddHighlight("Error", s:red, s:light_grey, s:none)

call AddHighlight("Todo", s:black, s:yellow, s:none)

call AddHighlight("StatusLine",   s:grey,       s:white, s:none)
call AddHighlight("StatusLineNC", s:light_grey, s:grey,  s:none)

" " PMenu
" exec 'hi! PMenu'
"       \.' guifg=' .s:grey
"       \.' guibg=' .s:light_grey
call AddHighlight("PMenu", s:grey, s:light_grey, s:none)



hi! link ColorColumn LightGreyBg
hi! link CursorColumn LightGreyBg
hi! link CursorLine LightGreyBg


hi! link Comment Grey
hi! link Noise Grey
hi! link NonText Grey
hi! link String  Green

hi! link diffAdded Green
hi! link diffRemoved Red

call AddHighlight("gitCommitOverflow", s:red, s:none, "undercurl")

call AddHighlight("Title", s:black, s:none, "bold")


" Link lots of things to Normal.
hi! link Statement  Normal
hi! link Identifier Normal
hi! link Type       Normal
hi! link Constant   Normal
hi! link PreProc    Normal
hi! link Special    Normal
hi! link MatchParen Normal

call AddHighlight("Folded", s:dark_grey, s:light_grey, s:none)
