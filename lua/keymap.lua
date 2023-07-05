local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = '\\'

map("n", "<leader><F3>", ":NvimTreeToggle<CR>")
map("n", "<F3>", ":NvimTreeFindFileToggle<CR>")

map("n", "<C-P>", ":Telescope find_files<cr>")
