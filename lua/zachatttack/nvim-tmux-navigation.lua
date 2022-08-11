local status_ok, tmux_navigation = pcall(require, "nvim-tmux-navigation")
if not status_ok then
	return
end

tmux_navigation.setup{}


-- See keymaps 

vim.keymap.set('n', "<C-h>", tmux_navigation.NvimTmuxNavigateLeft)
vim.keymap.set('n', "<C-j>", tmux_navigation.NvimTmuxNavigateDown)
vim.keymap.set('n', "<C-k>", tmux_navigation.NvimTmuxNavigateUp)
vim.keymap.set('n', "<C-l>", tmux_navigation.NvimTmuxNavigateRight)
vim.keymap.set('n', "<C-\\>", tmux_navigation.NvimTmuxNavigateLastActive)
vim.keymap.set('n', "<C-Space>", tmux_navigation.NvimTmuxNavigateNext)
