return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier.with({
          prefer_local = "node_modules/.bin",
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
      callback = function(args)
        -- Use only null-ls for formatting to avoid conflicts with other LSPs
        vim.lsp.buf.format({
          bufnr = args.buf,
          filter = function(client)
            return client.name == "null-ls"
          end,
        })
      end,
    })
  end,
}
