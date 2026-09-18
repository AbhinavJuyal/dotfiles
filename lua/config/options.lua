-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- noice.nvim renders the cmdline as a floating popup, so the bottom row
-- Vim normally reserves for it is unused. Reclaim it so the statusline
-- sits flush against the bottom of the window.
vim.opt.cmdheight = 0
