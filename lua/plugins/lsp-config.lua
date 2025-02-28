return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})

      -- lspconfig.vtsls.setup({
      --   single_file_support = not lspconfig.util.root_pattern(
      --   "package.json",
      --   "package-lock.json"
      --   ),
      --   filetypes = {
      --     "javascript",
      --     "javascriptreact",
      --     "javascript.jsx",
      --     "typescript",
      --     "typescriptreact",
      --     "typescript.tsx",
      --   },
      --   root_dir = function(filename)
      --     local denoRootDir = lspconfig.util.root_pattern("deno.json", "deno.jsonc")(filename)
      --     if denoRootDir then
      --       return nil
      --     end
      --     local jsRoot = lspconfig.util.root_pattern("package.json")(filename)
      --     if jsRoot then
      --       return jsRoot
      --     end
      --     return filename
      --   end,
      --   settings = {
      --     complete_function_calls = true,
      --     vtsls = {
      --       enableMoveToFileCodeAction = true,
      --       autoUseWorkspaceTsdk = true,
      --       experimental = {
      --         completion = {
      --           enableServerSideFuzzyMatch = true,
      --         },
      --       },
      --     },
      --     typescript = {
      --       updateImportsOnFileMove = { enabled = "always" },
      --       suggest = {
      --         completeFunctionCalls = true,
      --       },
      --       inlayHints = {
      --         enumMemberValues = { enabled = true },
      --         functionLikeReturnTypes = { enabled = false },
      --         parameterNames = { enabled = "literal" },
      --         parameterTypes = { enabled = true },
      --         propertyDeclarationTypes = { enabled = true },
      --         variableTypes = { enabled = true },
      --       },
      --     },
      --   },
      -- })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<C-.>', vim.lsp.buf.code_action, {})
    end
  }
}
