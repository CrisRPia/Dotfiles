vim.g.mapleader = " "

-- Vifm should only be used when needed since telescope and other remaps cease
-- to exist when it opens; it's just a different program
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>pk", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", ":Neoformat<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Copy whole file into clipboard
-- vim.keymap.set("n", "<C-a>", function()
--     vim.cmd("%y+")
-- end)

-- Debugger remaps
local function is_dap_running()
  local session = require('dap').session()
  return session ~= nil
end

vim.keymap.set("n", "<F6>", function() 
    if vim.bo.filetype == "cs" and not is_dap_running() then
        Find_dlls(Launch_dapui)
    else
        require('dap').continue()
    end
end)
vim.keymap.set("n", "<F7>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F8>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F9>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")


-- Trouble
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>",
    { silent = true, noremap = true }
)


-- tmux
local function split_tmux_vertical()
    local cmd = string.format("alacritty --working-directory '%s' &", vim.fn.expand('%:p:h'))
    vim.fn.system(cmd)
end

vim.keymap.set("n", "<leader>tp", split_tmux_vertical)
