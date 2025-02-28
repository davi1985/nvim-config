return {
  'rmehri01/onenord.nvim',
  name = "onenord",
  config = function()
    require('onenord').setup()
    vim.colorscheme = "onenord"
  end
}
