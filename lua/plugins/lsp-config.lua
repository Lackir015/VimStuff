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
        ensure_installed = {"bashls", "csharp_ls", "clangd", "gopls", "jdtls", "tsserver", "jsonls", "lua_ls", "pyright", "sqls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.bashls.setup({})
      lspconfig.csharp_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.gopls.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.sqls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end

  }
}
