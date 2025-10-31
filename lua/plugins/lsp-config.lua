return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "tailwindcss", "gopls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          require("inlay-hints").on_attach(client, bufnr)
        end,
        settings = {
          typescript = {
            inlayHints = {
              -- includeInlayParameterNameHints = "none",
              -- includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              -- includeInlayVariableTypeHints = false,
              -- includeInlayVariableTypeHintsWhenTypeMatchesName = false,
              -- includeInlayPropertyDeclarationTypeHints = false,
              -- includeInlayFunctionLikeReturnTypeHints = true,
              -- includeInlayEnumMemberValueHints = false,
            },
          },
          javascript = {
            inlayHints = {
              -- includeInlayParameterNameHints = "all",
              -- includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              -- includeInlayFunctionParameterTypeHints = false,
              -- includeInlayVariableTypeHints = false,
              -- includeInlayVariableTypeHintsWhenTypeMatchesName = false,
              -- includeInlayPropertyDeclarationTypeHints = true,
              -- includeInlayFunctionLikeReturnTypeHints = true,
              -- includeInlayEnumMemberValueHints = false,
            },
          },
        },
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          require("inlay-hints").on_attach(client, bufnr)
        end,

        settings = {
          Lua = {
            hint = {
              enable = true, -- necessary
            },
          },
        },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<C-.>", vim.lsp.buf.code_action, {})

      if vim.lsp.inlay_hint then
        vim.api.nvim_create_autocmd("LspAttach", {
          callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if client and client.server_capabilities.inlayHintProvider then
              vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
            end
          end,
        })
      end
    end,
  },
}
