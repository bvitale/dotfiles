" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'NLKNguyen/papercolor-theme'

" Shows red marks at end of lines with trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

" Linter
Plug 'w0rp/ale'

" Improved status line
Plug 'vim-airline/vim-airline'

" File finder
Plug 'ctrlpvim/ctrlp.vim'

" Python folding
Plug 'tmhedberg/SimpylFold'

call plug#end()
" END OF PLUGS

" Set up paper color theme light
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor

" Linebreak to prevent words breaking in the middle
set linebreak

" Don't show the INSERT indicator since vim-airline will show it
set noshowmode

" Tell ctrl-p finder to respect gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Integrate ale (linter) with airline (status bar)
let g:airline#extensions#ale#enabled = 1

" Show line numbers down left gutter
set number

" Set fold text to just be the first line, don't show total number of lines
function! MyFoldText()
    let line = getline(v:foldstart)
    return line
endfunction
set foldtext=MyFoldText()

" Disable creation of swap files
set noswapfile
