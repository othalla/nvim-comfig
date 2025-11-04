-- require("nvim-treesitter.configs").setup({
	-- ensure_installed = "all",
	-- ignore_install = { "ipkg" },
	-- highlight = {
		-- enable = true,
	-- },
-- })
-- require'nvim-treesitter.configs'.setup {
	-- ensure_installed = "all",
	-- ignore_install = { "ipkg" },
	-- highlight = {
		-- enable = true,
	-- },
-- }
return {
	"nvim-treesitter/nvim-treesitter", branch = 'main', lazy = false, build = ":TSUpdate",
	-- {'do': ':TSUpdate', 'branch': 'master'},
	"voldikss/vim-floaterm",
}
