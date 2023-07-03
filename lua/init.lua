vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup { update_cwd = true, }
require("mason").setup()
require('neoscroll').setup()

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "go", "typescript" },
    sync_install = false,
    auto_install = true,

    highlight = {
    	enable = true
    }
}
