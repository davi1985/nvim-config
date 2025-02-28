return {
 "jose-elias-alvarez/null-ls.nvim",
 config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          extra_args = { "--plugin-search-dir", "node_modules" },
        }),
        null_ls.builtins.diagnostics.eslint_d.with({
          prefer_local = "node_modules/.bin",
        }),
      },
    })

    --vim.keymap.set("n", ":w", vim.lsp.buf.format, {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
