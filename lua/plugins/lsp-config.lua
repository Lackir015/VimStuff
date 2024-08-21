return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.bashls.setup({
        capabilities = capabilites,
      })
      lspconfig.clangd.setup({
        capabilities = capabilites,
      })
      lspconfig.gopls.setup({
        capabilites = capabilities,
      })
      lspconfig.jdtls.setup({
        capabilities = capabilites,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilites,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
