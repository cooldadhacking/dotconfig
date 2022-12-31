-- set leader key to space
vim.g.mapleader = " "

-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "jk", "<ESC>")
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>wq", ":wq<CR>")
map("n", "<leader>nh", ":nohl<CR>")

-- insert date
map("n", "<leader>t", "i<C-R>=strftime('%F %H:%M')<CR><ESC>")

-- windows
map("n", "<leader>sh", "<C-w>v") -- split horizontal (for me)
map("n", "<leader>sv", "<C-w>s") -- split vertical (for me)
map("n", "<leader>se", "<C-w>=") -- make split equal width
map("n", "<leader>sq", ":close<CR>") -- close current split

-- plugins
-- maximizer 
map("n", "<leader>z", ":MaximizerToggle<CR>")

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<C-A-s>", ":NvimTreeToggle<CR>")

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- find string in current working directory as you type
map("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- list open buffers in current neovim instance
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- list available help tags

-- chatgpt
map("n", "<leader>a", "<cmd>ChatGPT<CR>")
