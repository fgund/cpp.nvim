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
  },

  -- DAP
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },    
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    },
  },
  {
    "mfussenegger/nvim-dap",
    -- config = function(_, _)
    --   require("core.utils").load_mappings("dap")
    -- end
  },

  -- Ollama
  {
    "David-Kunz/gen.nvim",
    lazy = false,
    config = function()
      require("configs.gen")
    end,
  },
}
