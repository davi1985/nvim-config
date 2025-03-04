return {
  "MysticalDevil/inlay-hints.nvim",
  dependencies = { "neovim/nvim-lspconfig" },

  config = function()
    require("inlay-hints").setup()
  end,
}
