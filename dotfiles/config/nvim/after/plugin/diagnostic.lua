vim.diagnostic.config({
    underline = true,
    virtual_text = {
        source = "always",  -- Or "if_many"
    },

    float = {
        show_header = true,
        source = "always",
        border = "rounded",
    }
})
