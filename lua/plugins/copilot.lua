return {
  "github/copilot.vim",
  config = function()
    vim.api.nvim_set_keymap('i', '<C-J>', "copilot#Accept('\\<CR>')", {
      expr = true,
      replace_keycodes = false,
      silent = true,
      desc = 'Copilot Accept'
    })
  end,
}