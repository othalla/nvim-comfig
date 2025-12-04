return {
  "nvim-treesitter/nvim-treesitter", branch = 'main', lazy = false, build = ":TSUpdate",
  "voldikss/vim-floaterm",

  opts = {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },

}
