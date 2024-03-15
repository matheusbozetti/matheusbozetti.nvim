return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "ConformInfo" },
	config = function()
		local conform = require("conform")

		local formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			vue = { { "prettierd", "prettier" } },
		}

		local format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 200,
		}

		conform.setup({
			formatters_by_ft = formatters_by_ft,
			format_on_save = format_on_save,
		})

		vim.keymap.set({ "n", "v" }, "<leader>cf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 200,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
