" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better syntax support
    Plug 'sheerun/vim-polyglot'    
    " TypeScript syntax
    Plug 'HerringtonDarkholme/yats.vim'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Rainbow brackets
    Plug 'luochen1990/rainbow'
    " Easy motion
    Plug 'asvetliakov/vim-easymotion'
    " Vim surround
    Plug 'tpope/vim-surround'
    " Themes
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'morhetz/gruvbox'
    Plug 'ghifarit53/tokyonight-vim'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " FZF
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
