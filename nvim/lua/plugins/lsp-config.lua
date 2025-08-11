return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
  --       config = function ()
  --           require("mason-lspconfig").setup({
  --               ensure_installed = { "gopls" },
  --           })
  --       end,
    },
    {
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.basedpyright.setup({
				capabilities = capabilities,
			})
            lspconfig.emmet_ls.setup({
                capabilities = capabilities,
			})
			vim.diagnostic.config({ virtual_text = true })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            -- Set underlines and undercurl for diagnostics to make them stand out
            vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, undercurl = true, sp = "Red" })
            vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = true, undercurl = true, sp = "Yellow" })
            vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true, undercurl = true, sp = "Blue" })
            vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true, undercurl = true, sp = "Green" })

            vim.diagnostic.config({
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = "",
                        [vim.diagnostic.severity.WARN] = "",
                        [vim.diagnostic.severity.INFO] = "󰠠",
                        [vim.diagnostic.severity.HINT] = "",
                    },
                    numhl = {
                        [vim.diagnostic.severity.WARN] = "WarningMsg",
                        [vim.diagnostic.severity.ERROR] = "ErrorMsg",
                        [vim.diagnostic.severity.INFO] = "DiagnosticInfo",
                        [vim.diagnostic.severity.HINT] = "DiagnosticHint",
                    },
                },
            })
		end,
	},
}
