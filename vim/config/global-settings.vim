

set nocompatible

" Pick a leader key
let mapleader = ","
let g:mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Setup theme
set background=dark
colorscheme hybrid_material
if (has("termguicolors"))
  set termguicolors
endif


let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

