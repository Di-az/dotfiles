-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                -- { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
})

vim.keymap.set("n", "<leader>t", function()
    require("nvim-tree.api").tree.toggle()
    -- require("nvim-tree.api").tree.toggle(false, true) -- Toggle without focusing
end)
