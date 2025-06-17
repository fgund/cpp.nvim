require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "cmake" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
