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
"| Color values
"|
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



"|
"| Base highlights
"|
exec 'hi! Blue   guifg=' .s:blue
exec 'hi! Red    guifg=' .s:red
exec 'hi! Green  guifg=' .s:green
exec 'hi! Purple guifg=' .s:fg_purple
exec 'hi! Yellow guifg=' .s:yellow

exec 'hi! Grey      guifg=' .s:grey
exec 'hi! DarkGrey  guifg=' .s:dark_grey
exec 'hi! LightGrey guifg=' .s:light_grey

exec 'hi! Normal'
      \.' guifg=' .s:black
      \.' guibg=' .s:white



"|
"| Backgrounds
"|
exec 'hi! BlueBg   guibg=' .s:blue
exec 'hi! RedBg'
      \.' guifg=' .s:white
      \.' guibg=' .s:red
exec 'hi! GreenBg  guibg=' .s:green
exec 'hi! PurpleBg'
      \.' guifg=' .s:black
      \.' guibg=' .s:bg_purple
exec 'hi! YellowBg guibg=' .s:yellow

exec 'hi! GreyBg      guibg=' .s:grey
exec 'hi! DarkGreyBg  guibg=' .s:dark_grey
exec 'hi! LightGreyBg guibg=' .s:light_grey


"|
"| Highlights
"|
exec 'hi! LineNr'
      \.' guifg=' .s:grey
      \.' guibg=' .s:light_grey

exec 'hi! CursorLineNr'
      \.' guifg=' .s:green
      \.' guibg=' .s:white

exec 'hi! Visual'
      \.' guifg=' .s:white
      \.' guibg=' .s:blue

hi! link Search PurpleBg
hi! link IncSearch Search

exec 'hi! VertSplit'
      \.' guifg=' .s:light_grey
      \.' guibg=' .s:grey

" ListChars
hi! link SpecialKey RedBg

" Errors
exec 'hi! Error'
      \.' guifg=' .s:red
      \.' guibg=' .s:light_grey

" Todos
exec 'hi! Todo'
      \.' guifg=' .s:black
      \.' guibg=' .s:yellow

" StatusLine
exec 'hi! StatusLine'
      \.' guifg=' .s:blue
      \.' guibg=' .s:white

exec 'hi! StatusLineNC'
      \.' guifg=' .s:light_grey
      \.' guibg=' .s:white

" PMenu
exec 'hi! PMenu'
      \.' guifg=' .s:grey
      \.' guibg=' .s:light_grey



hi! link ColorColumn LightGreyBg
hi! link CursorColumn LightGreyBg
hi! link CursorLine LightGreyBg


hi! link Comment Grey
hi! link Noise Grey
hi! link NonText Grey
hi! link String  Green

exec 'hi! Title'
     \.' guifg=' .s:black
     \.' gui=bold'


" Link lots of things to Normal.
hi! link Statement  Normal
hi! link Identifier Normal
hi! link Type       Normal
hi! link Constant   Normal
hi! link PreProc    Normal
hi! link Special    Normal
hi! link MatchParen Normal
