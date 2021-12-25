--set color scheme
--vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

--set airline
vim.g.airline_theme = "onedark"


local keymap = vim.api.nvim_set_keymap
local opts = {noremap = false, silent = true}
--window manipulation keybindings
keymap('n', '<C-h>', '<C-w>h', {noremap = false})
keymap('n', '<C-j>', '<C-w>j', {noremap = false})
keymap('n', '<C-k>', '<C-w>k', {noremap = false})
keymap('n', '<C-l>', '<C-w>l', {noremap = false})

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- -- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)


keymap('v', 'J', ':m \'>+1<CR>gv=gv', {noremap = false})
keymap('v', 'K', ':m \'<-2<CR>gv=gv', {noremap = false})
keymap('i', '<C-j>', '<esc>:m .+1<CR>==', {noremap = false})
keymap('i', '<C-k>', '<esc>:m .-2<CR>==', {noremap = false})
keymap('n', '<leader>j', ':m .+1<CR>==', {noremap = false})
keymap('n', '<leader>k', ':m .-2<CR>==', {noremap = false})

keymap('n', '<F6>', ':setlocal spell! spelllang=en_us<CR>', {noremap = false})
-- highlight SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
vim.cmd [[hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f]]
vim.cmd [[hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f]]
vim.cmd [[hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f]]
vim.cmd [[hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f]]

-- add path to make command "gf" works
vim.opt_local.suffixesadd:prepend('.lua')
vim.opt_local.suffixesadd:prepend('init.lua')
vim.opt_local.path:prepend(vim.fn.stdpath('config')..'/lua')
