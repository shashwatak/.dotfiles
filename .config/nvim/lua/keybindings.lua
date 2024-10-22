-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Telescopes
map("n", "<leader>f", ":Telescope find_files<cr>")
map("n", "<leader>b", ":Telescope buffers<cr>")
map("n", "<leader>g", ":Telescope live_grep<cr>")
map("n", "<leader>r", ":Telescope registers<cr>")

-- Generally Useful
map("n", "<leader>s", ":w<cr>")
map("n", "<leader>S", ":wa<cr>")
map("n", "<leader>w", ":w<cr>:bd<cr>")

-- Escape Insert Mode
map("i", "<left>", "<esc>h")
map("i", "<down>", "<esc>j")
map("i", "<up>", "<esc>k")
map("i", "<right>", "<esc>l")
-- buffer movement
map("n", "<tab>", ":bnext<cr>")
map("n", "<s-tab>", ":bprev<cr>")

-- Paste System Clipboar (Mac OS-X)
map("n", "<D-v>", "\"+p")

