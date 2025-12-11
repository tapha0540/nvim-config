-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

------------------------------------------------
-- 🟥 C / C++
------------------------------------------------

vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "cpp", "c" },
  capabilities = capabilities,
})
vim.lsp.enable("clangd")

-- CSS LSP
--vim.lsp.config("cssls", {
--cmd = { "vscode-css-language-server", "--stdio" },
--capabilities = capabilities,
---filetypes = { "css", "scss", "less" },
--settings = {
--css = { validate = true },
--scss = { validate = true },
--less = { validate = true },
--},
--})
--vim.lsp.config("html", {
--cmd = { "vscode-html-language-server", "--stdio" },
--capabilities = capabilities,
--filetypes = { "html" },
--settings = {
--html = {
--format = { enable = true },
--hover = { documentation = true, references = true },
--},
--},
--})
--vim.lsp.enable("cssls")
--vim.lsp.enable("html")

------------------------------------------------
-- 🧠 Diagnostics
----------------------------------------------
--vim.diagnostic.config({
--virtual_text = true,
--virtual_lines = true,
--signs = true,
--underline = true,
--update_in_insert = true,
--})
