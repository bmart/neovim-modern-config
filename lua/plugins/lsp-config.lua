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
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      --lspconfig.ruby_lsp.setup({
      --  capabilities = capabilities,
      --  cmd = { "/Users/brianmartin/.gem/ruby/3.1.4/bin/ruby-lsp" }
      -- })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        -- capabilities = capabilities
        autoformat = true,
        completion = true,
        diagnostic = true,
        folding = true,
        references = true,
        rename = true,
        symbols = true
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
      vim.keymap.set('n', 'rn', vim.lsp.buf.rename, {})
    end,
  },
}
