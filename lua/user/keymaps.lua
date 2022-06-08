local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<F5>", ":SymbolsOutline<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate quickfix list
keymap("n", "gj", ":cnext<CR>", opts)
keymap("n", "gk", ":cprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<F9>", ":make -j12 default<CR>", opts)
keymap("n", "<F10>", ":make -j12 clean<CR>", opts)

-- Harpoon --
keymap("n", "<A-e>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<A-g>", ":lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<A-t>", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<A-s>", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<A-r>", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "<A-a>", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)

-- Telescope --
keymap("n", "<leader>/", ":Telescope current_buffer_fuzzy_find<CR>", opts)
