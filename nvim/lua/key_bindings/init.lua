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

-- VGit
map("n", "<leader>gb", "<cmd>VGit buffer_blame_preview<cr>", options)
map("n", "<leader>gp", "<cmd>VGit buffer_diff_preview<cr>", options)
map("n", "<leader>gd", "<cmd>VGit project_diff_preview<cr>", options)
map("n", "<leader>gs", "<cmd>VGit buffer_hunk_stage<cr>", options)
map("n", "<leader>gh", "<cmd>VGit project_hunks_qf<cr>", options)

-- search box
map("n", "<leader>s", "<cmd>lua require('searchbox').incsearch()<cr>", options)
map("n", "<leader>r", "<cmd>lua require('searchbox').replace({confirm = 'menu'})<cr>", options)
