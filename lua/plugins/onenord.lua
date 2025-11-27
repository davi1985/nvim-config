return {
  "rmehri01/onenord.nvim",
  name = "onenord",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("onenord").setup()
    vim.cmd("colorscheme onenord")
  end,
}
