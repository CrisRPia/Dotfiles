-- Default options:
-- require('kanagawa').setup({
--     compile = false,             -- enable compiling the colorscheme
--     undercurl = true,            -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = false,         -- do not set background color
--     dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--     colors = {                   -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--         return {}
--     end,
--     theme = "wave",              -- Load "wave" theme when 'background' option is not set
--     background = {               -- map the value of 'background' option to a theme
--         dark = "wave",           -- try "dragon" !
--         light = "lotus"
--     },
-- })

function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, 'FloatBorder', {bg='none', fg='none'})
    -- vim.api.nvim_set_hl(0, 'NormalFloat', {bg='none'})
    -- vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='none'})
    -- vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='none'})
    -- vim.api.nvim_set_hl(0, 'StatusLine', {bg='none'})
    -- vim.api.nvim_set_hl(0, 'StatusLineNC', {bg='none'})
    -- vim.api.nvim_set_hl(0, 'TabLineFill', {bg='none'})
end
vim.cmd([[
augroup ColorMyPencils
    autocmd!
    autocmd ColorScheme * call v:lua.ColorMyPencils()
augroup END
]])
ColorMyPencils()

