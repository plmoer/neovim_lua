
vim.api.nvim_set_keymap( 'n', '<Leader>n', "<cmd>NERDTreeFocus<CR>", {noremap = true})
vim.api.nvim_set_keymap( 'n', '<C-n>', "<cmd>NERDTree<CR>", {noremap = true})
vim.api.nvim_set_keymap( 'n', '<C-t>', "<cmd>NERDTreeToggle<CR>", {noremap = true})
vim.api.nvim_set_keymap( 'n', '<C-f>', "<cmd>NERDTreeFind<CR>", {noremap = true})

-- vim.api.nvim_set_keymap( 'n', '<Leader>n', "<cmd>lua require('nerdtree').NERDTreeFocus<CR>", {noremap = true})
-- vim.api.nvim_set_keymap( 'n', '<C-n>', "<cmd>lua require('nerdtree'):NERDTree<CR>", {noremap = true})
-- vim.api.nvim_set_keymap( 'n', '<C-t>', "<cmd>lua require('nerdtree').NERDTreeToggle<CR>", {noremap = true})
-- vim.api.nvim_set_keymap( 'n', '<C-f>', "<cmd>lua require('nerdtree').NERDTreeFind<CR>", {noremap = true})
