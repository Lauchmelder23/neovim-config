filetype plugin indent on
syntax enable
let maplocalleader = "\\"

let g:vimspector_enable_mappings = "VISUAL_STUDIO"
let g:startify_fortune_use_unicode = 1

"lua require("plugins")
lua require("init")
lua require("keymap")
lua require("coc")

set number relativenumber
set tabstop=4
set shiftwidth=4
set noautochdir
set nowrap
set list listchars=tab:▎\ ,trail:·,precedes:<,extends:>
set foldmethod=indent
set foldlevel=99
set nofoldenable

"colorscheme tokyonight-storm

colorscheme kanagawa

let g:blamer_enabled = 1
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_bookmarks = map(filter(globpath('/home/robert/repos', "*", 0, 1), 'isdirectory(v:val)'), {_,val -> { split(val, '/')[-1]: val}})

inoremap <silent><expr> <UP> coc#pum#visible() ? coc#pum#prev(1) : ""
inoremap <silent><expr> <DOWN> coc#pum#visible() ? coc#pum#next(1) : ""

"Fix escape sending user to normal mode in fzf buffers
autocmd FileType fzf tnoremap <buffer><silent><ESC> <ESC>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ "\<TAB>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

"highlight LineNr guifg=#ff57d8
highlight LineNr guifg=#fcc35a
set noexpandtab

if has('python')
  map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
  imap <C-K> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
elseif has('python3')
  map <C-K> :py3f /usr/share/clang/clang-format.py<cr>
  imap <C-K> <c-o>:py3f /usr/share/clang/clang-format.py<cr>
endif
