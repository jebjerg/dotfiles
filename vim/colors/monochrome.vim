" Vim color scheme
"
" This file is generated, please check bin/generate.rb.
"
" Name:       monochrome.vim
" Maintainer: Xavier Noria <fxn@hashref.com> 
" License:    MIT

set background=dark

hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'monochrome'

" These commands are generated, see bin/generate.rb.
hi Normal guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Cursor guifg=Black ctermfg=16 guibg=LightGray ctermbg=252 gui=NONE cterm=NONE term=NONE
hi CursorLine guifg=LightGray ctermfg=252 guibg=#202020 ctermbg=234 gui=NONE cterm=NONE term=NONE
hi CursorLineNr guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi FoldColumn guifg=DarkGray ctermfg=248 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Folded guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi LineNr guifg=DarkGray ctermfg=248 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Statement guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi PreProc guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi String guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Comment guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Constant guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Type guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi Function guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Identifier guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Special guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi MatchParen guifg=Black ctermfg=16 guibg=LightGray ctermbg=252 gui=NONE cterm=NONE term=NONE
hi rubyConstant guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubySharpBang guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyStringDelimiter guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyStringEscape guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyRegexpEscape guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyRegexpAnchor guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyRegexpSpecial guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlSharpBang guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlStringStartEnd guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlStringEscape guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlMatchStartEnd guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi pythonEscape guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi javaScriptFunction guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi elixirDelimiter guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Search term=NONE ctermfg=0 ctermbg=220 guifg=Black guibg=Yellow
hi Visual guifg=White ctermfg=8 guibg=#ab6969 ctermbg=1 gui=NONE cterm=NONE term=NONE
hi NonText guifg=DarkGray ctermfg=248 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Directory guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi Title guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi markdownHeadingDelimiter guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi markdownHeadingRule guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi markdownLinkText guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=underline cterm=underline term=underline
hi Todo term=bold cterm=bold ctermfg=255 ctermbg=1 gui=bold guifg=White guibg=Red
hi Pmenu guifg=White ctermfg=8 guibg=#ab6969 ctermbg=1 gui=NONE cterm=NONE term=NONE
hi PmenuSel guifg=#ab6969 ctermfg=1 guibg=White ctermbg=8 gui=NONE cterm=NONE term=NONE
hi helpSpecial guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi helpHyperTextJump guifg=#ab6969 ctermfg=1 guibg=Black ctermbg=16 gui=underline cterm=underline term=underline
hi helpNote guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimOption guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimGroup guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiClear guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiGroup guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiAttrib guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiGui guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiGuiFgBg guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiCTerm guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiCTermFgBg guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimSynType guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimCommentTitle guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
