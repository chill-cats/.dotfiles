" plugin manager using Packer
lua require('plugins')

" enable lua syntax highlight
let g:vimsyn_embed = 'l'

" colorscheme
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:everforest_background = 'medium'

colorscheme everforest

" remapping
let mapleader = " "
nnoremap <silent><leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ') })<CR>


" autocmds
fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup CHILL_CAT
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

