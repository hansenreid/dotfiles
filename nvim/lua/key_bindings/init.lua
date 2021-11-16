local map = vim.api.nvim_set_keymap

options = { noremap = true }

-- Buffer Movement
map("n", "<C-H>", "<C-W>h", options)
map("n", "<C-J>", "<C-W>j", options)
map("n", "<C-K>", "<C-W>k", options)
map("n", "<C-L>", "<C-W>l", options)

-- NvimTree
map("n", "<C-n>", ":NvimTreeToggle<CR>", options)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", options)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", options)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", options)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", options)
