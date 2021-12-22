" Color scheme:
" Gruvbox config
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
let g:airline_theme = 'everforest'

" Important!!
if has('termguicolors')
    set termguicolors
endif

set background=dark
colorscheme everforest 

" Italic comment
highlight Comment cterm=italic
