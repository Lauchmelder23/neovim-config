let g:vimspector_enable_mappings = "VISUAL_STUDIO"

lua require("plugins")
lua require("init")
lua require("keymap")
lua require("coc")

set number relativenumber
set tabstop=4
set shiftwidth=4
set noautochdir
colorscheme tokyonight-storm

let g:blamer_enabled = 1
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1
