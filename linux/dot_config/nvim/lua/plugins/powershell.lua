return {
  "TheLeoP/powershell.nvim",
  ---@type powershell.user_config
  opts = {
    bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
  },
  keys = {
    {
      "<leader>cT",
      mode = { "n", "v", "x" },
      function()
        require("powershell").toggle_term()
      end,
      desc = "Toggle Powershell Terminal",
      ft = { "ps1", "psm1", "psd1" },
    },
    {
      "<leader>cE",
      mode = { "n", "v", "x" },
      function()
        require("powershell").eval()
      end,
      desc = "Evaluate PS1 expression",
      ft = { "ps1", "psm1", "psd1" },
    },
  },
}
