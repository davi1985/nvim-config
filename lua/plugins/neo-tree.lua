return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal right<CR>')
    require("neo-tree").setup({
      window = {
        position = "right", 
        width = 30,        
      },
      filesystem = {
        window = {
          indent_width = 2, 
          indent_markers = true
        },
      },
    })
  end
}

