filetype plugin indent on

set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

set autowriteall

set undofile
set undodir=$HOME/.local/share/nvim/undo

set nowrap

let mapleader="`"

" Some language server have issues with backup files
set nowritebackup
set nobackup

" more space to display status
set cmdheight=2

set mouse=a
" disable click using mouse to when in normal mode
inoremap <LeftMouse> <Nop>
inoremap <2-LeftMouse> <Nop>
inoremap <3-LeftMouse> <Nop>
inoremap <4-LeftMouse> <Nop>

" tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" Faster CursorHold
set updatetime=300

" Dont show |ins-completion-menu| long message
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=yes

" Enable lua syntax highlight in vimscript
let g:vimsyn_embed = 'l'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
