require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls","pylsp"},
}


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

vim.lsp.config["pylsp"] = {
  cmd = { vim.fn.getcwd() .. "/.venv/bin/pylsp" },
  settings = {
    pylsp = {
      plugins = {
        pyflakes = { enabled = true },
        pycodestyle = { enabled = false },
        black = { enabled = true },
      },
    },
  },
}

vim.lsp.enable("lua_ls")
vim.lsp.enable("pylsp")
