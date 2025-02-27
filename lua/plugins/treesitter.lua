return  {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    ensure_installed = {"lua", "javascript", "typescript" }
    hightlight = { enable = true }
    indent = { enabled = true }
  end
}
