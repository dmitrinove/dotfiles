
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set nocompatible

"set mouse-=a                    " disable visual mode with mouse

set t_Co=256
set encoding=utf-8

"" interface
set showcmd                     " display incomplete commands
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set relativenumber              " show relative line number from the current one

syntax enable                   " enable syntax processing
filetype plugin indent on       " load file type + identation

"" color scheme
set background=dark
colorscheme solarized

"" whitespace
"set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4
set expandtab                   " use spaces, not tabs
set backspace=2                 " make backspace work like most other apps

"" searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensive...
set smartcase                   " ...unless they contain at last one capital letter

"set switchbuf+=usetab           " open buffers in tab
set switchbuf+=usetab,newtab    " open buffers in tab

"" shortcut
vmap <C-F5> :s :^://:<CR>: let @/ = ""<CR>
vmap <C-F6> :s :^//::<CR>: let @/ = ""<CR>

map <F11> :execute "vimgrep /" . expand("<cword>") . "/j **/*." . expand("%:e") <Bar> cw<CR>


