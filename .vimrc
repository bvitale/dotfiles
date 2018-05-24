" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'NLKNguyen/papercolor-theme'
Plug 'bronson/vim-trailing-whitespace'
call plug#end()
" END OF PLUGS


" Set up paper color theme light
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor


" Linebreak to prevent words breaking in the middle
set linebreak
