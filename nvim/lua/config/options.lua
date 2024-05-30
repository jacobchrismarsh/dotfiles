-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false
opt.hidden = true -- allow background buffers
opt.joinspaces = false -- join lines without two spaces
opt.clipboard = "" -- Disable LazyVim's default clipboard

-- Tab complete for cmd mode should autocomplete the first result immediately
opt.wildmode = "full"

-- Get rid of swap files
opt.backup = false
opt.swapfile = false

-- Allow netrw to delete directories (not sure this works rn)
vim.g.netrw_localrmdir = "rm -r"

opt.scrolloff = 5

opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
