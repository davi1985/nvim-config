return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "css",
            "html",
            "json",
            "jsonc",
            "yaml",
            "markdown",
          },
          --extra_args = { "--single-quote" },
        }),

        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
      },
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
