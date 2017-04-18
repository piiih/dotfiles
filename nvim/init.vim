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

" Disable mouse click
set mouse=
" relative num rows
set rnu
" current num row
set nu
" Enable line under the cursor
set cursorline
" Separate system clipboard and vim clipboard
set clipboard=unnamed

set nolazyredraw

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Disable annoying sound
set visualbell
" Change the <Leader>
let mapleader = ' '

" Unbind <Spance> in normal mode
nnoremap <Space> <NOP>
" Quick save
noremap <Leader>w :update<CR>
" Copy to system clipboard
noremap <Leader>y "+y

" Open nvim config - init.vim
nnoremap <C-g> :tabe ~/.config/nvim/init.vim<CR>
" Fuzzy File
nnoremap <C-t> :call fzf#run({'sink': 'tabe', 'down':'30%'})<CR>
nnoremap <C-p> :call fzf#run({'sink': 'e'})<CR>
" Navigation Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Vim WorkBench
nnoremap <leader>c :SWSqlBufferConnect ~/Documents/my-buffer.sql<CR>

" ----- VISUAL KEY MAPS -------- 
vnoremap // y/<C-R>"<CR>
