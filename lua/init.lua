local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = '\\'
require("lazy").setup("plugins")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.filetype.add({
  extension = {
    pl = 'prolog'
  }
})

local colors = require("tokyonight.colors").setup()

require("editorconfig").properties.trim_trailing_whitespace = false
require('neoscroll').setup()

require("nvim-tree").setup({
	update_focused_file = {
		enable = true
	}
})

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "go", "typescript" },
    sync_install = false,
    auto_install = true,

    highlight = {
    	enable = true
    }
}

require'treesitter-context'

require("telescope").setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules"
		}
	},
	pickers = {
		find_files = {
		  theme = "ivy"
		},
    live_grep = {
      theme = "ivy"
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

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("kanagawa").setup()

vim.api.nvim_create_autocmd("TermClose", {
	callback = function() 
		vim.cmd("close")
	end
})

require("ibl").setup()

vim.g.barbar_auto_setup = false

require'barbar'.setup {
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'
}
