return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.checkstyle.with({
                    command = "checkstyle",
                    args = { "-f", "xml", "$FILENAME" },
                    on_output = function(params)
                        -- Custom logic to handle XML output if needed
                        return params
                    end,
                }),
                null_ls.builtins.formatting.clang_format,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
