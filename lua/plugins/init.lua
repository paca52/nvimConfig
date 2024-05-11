local telescope = require("configs.telescope")

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = { { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" } }
  },

  telescope,

  {
    'Wansmer/treesj',
    lazy = false,
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      vim.keymap.set('n', '<leader>M', function()
        require('treesj').toggle({ split = { recursive = true } })
      end, { desc = "Fold/Unfold an object" })
    end,
  },

  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
      require("oil").setup()
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()
    end
  },

  {
    "lervag/vimtex",
    lazy = false,
    -- config = function()
    --   vim.g.maplocalleader = '\\'
    --   -- vim.g.tex_conceal='abdmg'
    -- end,
  },

  {
    "MunifTanjim/prettier.nvim",
    lazy = false,
    config = function()
      local prettier = require("prettier")
      prettier.setup({ bin = 'prettier', }) -- or `'prettierd'` (v0.23.3+)
    end
  },

  {
    "tpope/vim-fugitive",
    lazy = false
  },

  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
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
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    enabled = false,
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "mg979/vim-visual-multi",
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },

}
