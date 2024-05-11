
return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    config = function(_, opts)
        dofile(vim.g.base46_cache .. "telescope")
        local telescope = require "telescope"
        -- telescope.setup(opts)
        telescope.setup()

        -- load extensions
        for _, ext in ipairs(opts.extensions_list) do
            telescope.load_extension(ext)
        end
    end,
}
