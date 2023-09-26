local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pt', function()
    local theme = require('telescope.themes').get_dropdown({})

    -- Disable the previewer
    theme.previewer = false

    builtin.lsp_workspace_symbols(theme);
end)
vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({ path_display = { "shorten" } })
end)
vim.keymap.set('n', '<leader>vrr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.live_grep();
end)
