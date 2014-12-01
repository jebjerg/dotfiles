set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set termencoding=utf-8
let mapleader = ","

" GVIM
set guioptions-=M  "dont source menu script
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" GOLANG
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.go :compiler go
au FileType go setl sw=4 sts=4 noexpandtab
set rtp+=/usr/local/go/misc/vim/
set rtp+=/usr/share/go/misc/vim/
autocmd BufWritePre *.go :silent Fmt
let g:compiler_gcc_ignore_unmatched_lines = 1

filetype plugin indent on
syntax on
set number

if has('vim_starting')
    set nocompatible               " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" folds
set foldmethod=indent
set foldlevel=1

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" AIRLINE
NeoBundle 'bling/vim-airline'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
set laststatus=2
set t_Co=256
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#tab_nr_type = 1

" SUPERTAB
NeoBundle 'ervandew/supertab'

" NEOCOMPLETE
NeoBundle 'Shougo/neocomplete.vim'

" NEOCOMPLETECACHE
NeoBundle 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1

" pythonmode
NeoBundle 'klen/python-mode'
set completeopt-=preview
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope = 0
let g:pymode_folding = 0

" DRAWIT
NeoBundle 'vim-scripts/DrawIt'

" GITGUTTER
" NeoBundle 'airblade/vim-gitgutter'

" NERDTREE
NeoBundle 'scrooloose/nerdtree'

" <opt bundles
NeoBundle 'mhinz/vim-startify'
NeoBundle 'danro/rename.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdcommenter'

" tagbar
let g:tagbar_width = '20'
let g:tagbar_show_linenumbers = '0'
let g:tagbar_iconchars =[' ▸', ' ▾']
" opt bundles>

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" pretty json
com! PrettyJSON %!python -m json.tool
set completeopt=menuone,longest
set backspace=indent,eol,start

" lasttab
let g:lasttab = 1
nmap tt :exe "tabn ".g:lasttab<CR>
nmap <C-n> :NERDTreeToggle<CR>
au TabLeave * let g:lasttab = tabpagenr()

" templates
au BufNewFile *.go 0r ~/.vim/templates/go.skel | let IndentStyle = "go"

vnoremap <leader>64 c<c-r>=system('base64',@")<cr><esc>
vnoremap <leader>64d c<c-r>=system('base64 --decode',@")<cr><esc>

" colors
set t_Co=256
hi CursorLine ctermbg=7 cterm=bold
hi CursorLineNr ctermfg=238 ctermbg=235
hi LineNr ctermfg=7
hi Constant ctermfg=2
hi Statement ctermfg=1
hi MatchParen ctermfg=8 ctermbg=none cterm=none
hi TabLineFill term=bold cterm=bold ctermbg=none
hi TabLine ctermfg=15 ctermbg=none cterm=none
hi TabLineSel ctermfg=Black ctermbg=none cterm=none
hi VertSplit ctermfg=235 ctermbg=235 cterm=none
hi StatusLine cterm=none ctermfg=0 ctermbg=7
hi StatusLineNC cterm=none ctermfg=235 ctermbg=235
hi Normal ctermfg=7 ctermbg=none
hi Directory ctermfg=4 cterm=none
hi Folded ctermbg=235 cterm=none
hi SpecialKey ctermfg=7
hi Nontext ctermfg=7
hi TagbarIcon ctermfg=red cterm=none
hi TagbarHighlight ctermfg=red ctermbg=none
hi TagbarScope ctermfg=blue ctermbg=none cterm=none
hi TagbarKind ctermfg=blue ctermbg=none cterm=none
hi TagbarNestedKind ctermbg=blue ctermbg=none cterm=none

autocmd FileType tex let b:tex_flavor = 'pdflatex'|compiler tex|set makeprg=pdflatex\ \-file\-line\-error\ \-interaction=nonstopmode\ %|set errorformat=%f:%l\ %m
