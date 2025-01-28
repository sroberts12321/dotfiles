local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wildignore:append({ "*/node_modules/*" })

-- Remapping exiting insert mode its muscle memory at this point
keymap.set("i", "jj", "<ESC>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Remapping esc to exit terminal mode
keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

-- Move highlighted block
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeps cursor centered while moving with C-d or C-u
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- While searching, search terms are centered
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Paste something without losing buffer
keymap.set("x", "<leader>p", '"_dP')

-- Tabs
keymap.set("n", "te", ":tabedit ")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Delete all buffers, keep current open
keymap.set("n", "<leader>dab", ":w|%bd|e#<Return>", opts)

-- Duplicate a line and comment out the first line
keymap.set("n", "yc", "yygccp", { remap = true })

-- I keep wanting to delete a buffer with this, so I'm setting it now
keymap.set("n", "<leader>bd", ":bd<Return>", opts)
