return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      highlight = "IndentBlanklineChar"
    },
    scope = { enabled = false },
  },
  config = function(_, opts)
    -- vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#2e3440", nocombine = true })
    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#232830", nocombine = true })
    require("ibl").setup(opts)
  end,
}

