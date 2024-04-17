local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader><F3>", ":NvimTreeToggle<CR>")
map("n", "<F3>", ":NvimTreeFindFileToggle<CR>")

map("n", "<F4>", ":Buffers<CR>")

map("n", "<F2>", ":TagbarToggle<CR>")
map("n", "<leader>e", ":CocList diagnostics<CR>")

map("n", "<C-P>", ":Telescope find_files<cr>")
map("n", "<leader>s", ":Telescope live_grep glob_pattern=*.{ts,html,c,h,go,json,py,sh,lua,vim,rs,txt}<cr>")

map("n", "<leader>sc", ":noh<CR>")

map("n", "gs", ":call CocAction('jumpDefinition', 'split')<CR>")

map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>4", "4gt")
map("n", "<leader>5", "5gt")
map("n", "<leader>6", "6gt")
map("n", "<leader>7", "7gt")
map("n", "<leader>8", "8gt")
map("n", "<leader>9", "9gt")
map("n", "<leader>0", ":tablast<cr>")

map("n", "<leader><F9>", ":call vimspector#ToggleBreakpoint( input( \"Enter condition: \" ) )<CR>")
