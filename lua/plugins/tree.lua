return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("nvim-tree").setup {
      view = {
        width = 40,
      },
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
		}
	end,

	vim.keymap.set('n', '<leader>e', function()
		require('nvim-tree.api').tree.toggle()
	end, { noremap = true, silent = true, desc = 'Toggle nvim-tree' })
}
