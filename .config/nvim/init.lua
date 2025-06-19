local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.env.PATH = vim.env.PATH .. ":/mnt/c/Users/srobe_000/AppData/Roaming/npm/node"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", --latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
