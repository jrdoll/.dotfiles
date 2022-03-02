set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set number relativenumber
syntax enable
nmap o o<Esc>k
nmap O o
filetype indent on
command! Fjson execute "%!python -m json.tool"

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mhartington/oceanic-next'
call plug#end()

colorscheme OceanicNext

