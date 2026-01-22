return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ lsp_fallback = true })
			end,
			desc = "Format buffer",
		},
		{
			"<leader>ct",
			function()
				vim.g.autoformat = not vim.g.autoformat
				print("Auto-format " .. (vim.g.autoformat and "enabled" or "disabled"))
			end,
			desc = "Toggle auto-format",
		},
	},
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			cpp = { "clang-format" },
			python = { "black" },
			lua = { "stylua" },
			sh = { "shfmt" },
		},
		format_on_save = function()
			if vim.g.autoformat == false then
				return nil
			end
			return {
				timeout_ms = 500,
				lsp_fallback = true,
			}
		end,
	},
	init = function()
		vim.g.autoformat = true
	end,
}
