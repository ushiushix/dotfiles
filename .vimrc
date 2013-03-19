set encoding=utf-8
set fileencodings=ucs-bom,utf-8,sjis,euc-jp,default,latin1
filetype plugin indent on
nnoremap <Down> gj
nnoremap <Up> gk
set number
set smartcase
set ignorecase
set nowrapscan
set backspace=indent,eol,start
set showmatch
set autoindent
set autochdir
set laststatus=2
nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>
nnoremap ,F :call FilteringNew().parseQuery(input('>'), '\|').run()<CR>
nnoremap ,g :call FilteringGetForSource().return()<CR>
