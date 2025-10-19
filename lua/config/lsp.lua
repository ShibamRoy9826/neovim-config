require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls"},
}

require("mason").setup()

vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
}

vim.lsp.enable("lua_ls")
