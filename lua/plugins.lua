return {
	"Lauchmelder23/vim-sussify",
	"rstacruz/vim-closer",
	"jeffkreeftmeijer/vim-numbertoggle",
	"prabirshrestha/asyncomplete.vim",
	"prabirshrestha/asyncomplete-lsp.vim",
	"karb94/neoscroll.nvim",
	"APZelos/blamer.nvim",
	"junegunn/fzf",
	"junegunn/fzf.vim",
	"petertriho/nvim-scrollbar",
	"puremourning/vimspector",
	"folke/tokyonight.nvim",
	"rebelot/kanagawa.nvim",
	"wellle/context.vim",
	"andweeb/presence.nvim",
	
	{
		"nvim-tree/nvim-tree.lua", 
		dependencies = {"nvim-tree/nvim-web-devicons"}
	},
	{
		"neoclide/coc.nvim",
		branch = "release"
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {"nvim-lua/plenary.nvim"}
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make"
	},
	{
		"tpope/vim-dispatch",
		lazy = true,
		cmd = { "Dispatch", "Make", "Focus", "Start" }
	},
	{
		"andymass/vim-matchup",
		event = "VimEnter"
	},
	{
		"w0rp/ale"
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{
		"glacambre/firenvim",
		lazy = not vim.g.started_by_firenvim,
		build = function()
			vim.fn["firenvim#install"](0)
		end
	},
	{
		"lewis6991/gitsigns.nvim", 
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() 
			require("gitsigns").setup() 
		end
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				
			})
		end
	}
}