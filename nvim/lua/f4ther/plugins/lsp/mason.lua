require("mason").setup()
-- require("mason-lspconfig").setup()


-- mason_lspconfig.setup({
--   -- list of servers for mason to install
--   ensure_installed = {
--     "pyright",
--     "marksman",
--     "html",
--     "tailwindcss",
--     "sumneko_lua",
--     "bashls"
--   }
-- })

require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "marksman", "bashls" }
})


-- mason_null_ls.setup({
--   -- list of formatters & linters for mason to install
--   ensure_installed = {
--     "prettier", -- ts/js formatter
--     "stylua", -- lua formatter
--     "eslint_d", -- ts/js linter
--   },
--   -- auto-install configured formatters & linters (with null-ls)
--   automatic_installation = true,
-- })
