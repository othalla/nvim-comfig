return {
  -- Copilot avec ghost text inline
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = { enabled = false },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
          -- Sécurité : désactiver sur fichiers sensibles
          ["*"] = function()
            local filename = vim.fn.expand("%:t")
            return not (
              filename:match("%.env.*") or
              filename:match("%.secrets") or
              filename:match("%.key$") or
              filename:match("%.pem$") or
              filename:match("credentials")
            )
          end,
        },
        copilot_node_command = "node", -- Node.js path
      })
    end,
	},
}
