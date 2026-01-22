return {
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.setup()

		wk.add({
			{ "<leader>f", group = "Find" },
			{ "<leader>c", group = "Code" },
			{ "<leader>d", group = "Debug" },
			{ "<leader>g", group = "Git" },
			{ "<leader>h", group = "Git hunks" },
			{ "<leader>x", group = "Diagnostics" },
		})
	end,
}
