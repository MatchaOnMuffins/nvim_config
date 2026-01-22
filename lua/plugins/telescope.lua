return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search text (grep)" },
		{ "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find symbols" },
		{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Find diagnostics" },
		{ "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Git status" },
		{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
		{ "<leader>gB", "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
	},
}
