" Setup.
set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "seahorse"


" Colors.
let s:white      = "#dedede"
let s:black      = "#333333"

let s:grey       = "#555555"
let s:light_grey = "#cccccc"
let s:dark_grey  = "#777777"

let s:blue       = "#2575be"
let s:red        = "#c03228"
let s:green      = "#499773"
let s:purple     = "#bf9efe"
let s:yellow     = "#c3aa00"


exec 'hi! Blue   guifg=' .s:blue
exec 'hi! Red    guifg=' .s:red
exec 'hi! Green  guifg=' .s:green
exec 'hi! Purple guifg=' .s:purple
exec 'hi! Yellow guifg=' .s:yellow


" Highlights.
exec 'hi! Normal'
      \.' guifg=' .s:black
      \.' guibg=' .s:white

exec 'hi! LineNr'
      \.' guifg=' .s:grey
      \.' guibg=' .s:light_grey
exec 'hi! CursorLineNr'
      \.' guifg=' .s:green
      \.' guibg=' .s:white

exec 'hi! Visual'
      \.' guifg=' .s:white
      \.' guibg=' .s:blue

hi! Comment guifg=#777777

exec 'hi! Search'
      \.' guifg=' .s:black
      \.' guibg=' .s:purple

exec 'hi! IncSearch'
      \.' guifg=' .s:purple
      \.' guibg=' .s:black


" Things with light grey backgrounds.
exec 'hi! LightGreyBg'
      \.' guibg=' .s:light_grey
hi! link ColorColumn LightGreyBg
hi! link CursorColumn LightGreyBg
hi! link CursorLine LightGreyBg


exec 'hi! VertSplit'
      \.' guifg=' .s:light_grey
      \.' guibg=' .s:grey


" ListChars
exec 'hi! SpecialKey'
      \.' guifg=' .s:white
      \.' guibg=' .s:red


" Errors
exec 'hi! Error'
      \.' guifg=' .s:red
      \.' guibg=' .s:light_grey


" Todos
exec 'hi! Todo'
      \.' guifg=' .s:black
      \.' guibg=' .s:yellow


" Link lots of things to Normal.
hi! link Statement  Normal
hi! link Identifier Normal
hi! link Type       Normal
hi! link Constant   Normal
hi! link PreProc    Normal
hi! link Special    Normal
hi! link MatchParen Normal
