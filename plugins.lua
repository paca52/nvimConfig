local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    config = function (_, _)
      require("oil").setup()
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    init = function()
      require("core.utils").load_mappings "telescope"
    end,
    opts = function()
      return require "plugins.configs.telescope"
    end,
    config = function(_, opts)
      -- dofile(vim.g.base46_cache .. "telescope")
      local telescope = require "telescope"
      telescope.setup(opts)

      -- load extensions
      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
    end,
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    config = function (_, _)
      local harpoon = require("harpoon")
      harpoon:setup()

      -- keybinds
      -- vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
      -- vim.keymap.set("n", "<leader>hp", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
      -- vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
      -- vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
      -- vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
      -- vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
    end
  },

  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.g.maplocalleader = '\\'
      -- vim.g.tex_conceal='abdmg'
    end,
  },

  {
    "MunifTanjim/prettier.nvim",
    lazy = false,
    config = function ()
      local prettier = require("prettier")
      prettier.setup({ bin = 'prettier', }) -- or `'prettierd'` (v0.23.3+)
    end
  },

  {
    "rbong/vim-flog",
    lazy = false
  },
  {
    "tpope/vim-fugitive",
    lazy = false
  },

  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function ()
      require('nvim-ts-autotag').setup()
    end
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  {
    "tpope/vim-repeat",
    lazy = false
  },

  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require('leap').add_default_mappings()
    end
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  {
    "mg979/vim-visual-multi",
    lazy = false,
  }
}

return plugins
