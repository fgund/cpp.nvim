return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "cpp", "cmake"
  		},
  	},
  },

  -- CMakeTools
  {
    "Civitasv/cmake-tools.nvim",
    lazy = false,
    config = function()
      require "configs.cmake-tools"
    end,
  },

  {
    'stevearc/overseer.nvim',
     lazy = false,
     opts = {},
  },

  {
    'akinsho/toggleterm.nvim', 
    version = "*",
    lazy = false, 
    config = true
  }
}
