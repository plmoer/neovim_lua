local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting

local sources = {
        formatting.autopep8,
    formatting.eslint,
    formatting.stylua,
}

null_ls.setup({
    sources = sources,
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})
