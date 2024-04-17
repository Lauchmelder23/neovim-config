let g:vimspector_enable_mappings = "VISUAL_STUDIO"

"lua require("plugins")
lua require("init")
lua require("keymap")
lua require("coc")

set number relativenumber
set tabstop=4
set shiftwidth=4
set noautochdir
set nowrap
set list
set foldmethod=indent
set foldlevel=99
set nofoldenable

"colorscheme tokyonight-storm

lua require("kanagawa")
colorscheme kanagawa

let g:blamer_enabled = 1
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

"highlight LineNr guifg=#ff57d8
highlight LineNr guifg=#fcc35a
