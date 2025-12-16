return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  opts = {
    lsp_cfg = false,  -- false: do not setup lspconfig
    lsp_gofumpt = true, -- false: managed by gopls
    lsp_keymaps = false,
    lsp_codelens = false,  -- ✅ Désactiver les codelens
    lsp_inlay_hints = {
      enable = false,
    },
    run_in_floaterm = false,
  },
}
