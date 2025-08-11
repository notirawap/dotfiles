return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
                transparent_background = true,
                custom_highlights = {
					LineNr = { fg = "#919191" },
				},
            })
            vim.cmd.colorscheme  "catppuccin"
        end
    },
}
