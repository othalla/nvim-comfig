return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"fredrikaverpil/neotest-golang",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-golang")({
					warn_test_name_dupes = false,
					go_test_args = { "-v", "-race", "-count=1" },
				})
			},
			warn_test_name_dupes = false,
			output_panel = {
				enabled = false
			},
			diagnostic = {
				enabled =  false
			},
			quickfix = {
				enabled =  false
			},
			floating = {
				border = "rounded",
				max_height = 0.99,
				max_width = 0.99,
				options = {}
			},
		})
	end,
}
