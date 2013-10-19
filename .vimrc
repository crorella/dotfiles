set nocompatible
set expandtab
set tabstop=4
set shiftwidth=4
match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e
set backspace=2