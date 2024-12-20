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
map("n", "<leader>s", ":Telescope live_grep glob_pattern=*.{ts,html,c,cc,cpp,h,go,json,py,sh,lua,vim,rs,txt}<cr>")

map("n", "<leader>sc", ":noh<CR>")

map("n", "gs", ":call CocAction('jumpDefinition', 'split')<CR>")
map("n", "gt", ":CocCommand clangd.switchSourceHeader<CR>")

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

map("", "<UP>", "<NOP>")
map("", "<DOWN>", "<NOP>")
map("", "<RIGHT>", "<NOP>")
map("", "<LEFT>", "<NOP>")

map("i", "<RIGHT>", "<NOP>")
map("i", "<LEFT>", "<NOP>")

map("n", "<leader>c", ":bo 15split +term<CR>")
map("n", "<leader>t", ":TodoTelescope theme=ivy<CR>")
map("t", "<ESC>", "<C-\\><C-N>")

map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")

map("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi")

map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

map('n', '<leader>p', '<Cmd>BufferPick<CR>', opts)
map('n', '<leader>d', '<Cmd>BufferPickDelete<CR>', opts)

map('n', '<leader>g', ':DiffviewOpen<CR>')
