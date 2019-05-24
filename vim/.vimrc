" set color scheme
colo elflord

" show statusbar
set laststatus=2

" highlight search terms
set hlsearch

"
" options for Python
"
" see https://stackoverflow.com/questions/65076/how-to-setup-vim-autoindentation-properly-for-editing-python-files-py
syntax on
set showmatch
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab

"make jj do esc"
inoremap jj <Esc>

"make esc do nothing"
inoremap <Esc> <Nop>


"
" file-specific handlers
"

" add yaml st
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" automatically recognize markdown files
au BufNewFile,BufRead *.md setf markdown

set tw=80
