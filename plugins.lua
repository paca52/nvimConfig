local overrides = require("custom.configs.overrides")
local telescope = require("custom.configs.telescope")

---@type NvPluginSpec[]
local plugins = {
    telescope,
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
