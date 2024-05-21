-- Setup language servers.
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.pyright.setup {
    capabilities = capabilities
}

lspconfig.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            }
        }
    }
}

lspconfig.texlab.setup {
    capabilities = capabilities,
}

lspconfig.clangd.setup{
    cmd = {
        "clangd",
        "--header-insertion=never",
    },
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto","hpp"},
}
