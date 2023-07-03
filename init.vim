let g:vimspector_enable_mappings = "VISUAL_STUDIO"

lua require("plugins")
lua require("init")
lua require("keymap")
lua require("coc")

set number relativenumber
set tabstop=4
set shiftwidth=4
set autochdir
colorscheme tokyonight-storm
