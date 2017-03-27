call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim',
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes'
Plug 'cosminadrianpopescu/vim-sql-workbench'
Plug 'evidens/vim-twig'
Plug 'pangloss/vim-javascript'
call plug#end()

filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#sw#enabled = 1
let g:sw_exe = '/home/piiih/Downloads/workbench/sqlwbconsole.sh'

set mouse=
" relative num rows
set rnu
" current num row
set nu

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set visualbell

let mapleader = ','

nnoremap <C-h> :tabe ~/.config/nvim/init.vim<CR>
nnoremap <C-t> :call fzf#run({'sink': 'tabe', 'down':'30%'})<CR>
nnoremap <C-p> :call fzf#run({'sink': 'e'})<CR>


nnoremap <leader>c :SWSqlBufferConnect ~/Documents/my-buffer.sql<CR>
