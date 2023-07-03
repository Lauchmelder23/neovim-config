vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

local colors = require("tokyonight.colors").setup()

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

require("telescope").setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"packaging"
		}
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		}
	}
}

require("telescope").load_extension("fzf")
require("scrollbar").setup{
	handle = {
		color = colors.bg_highlight,
	},
	marks = {
		Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
	}
}
