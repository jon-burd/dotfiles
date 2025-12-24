-- show absolute number for current line and relative numbers for others
vim.o.number = true
vim.o.relativenumber = true

vim.g.mapleader = " "
-- "n" means "normal" mode
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", opts)
vim.keymap.set("n", "<leader>q", "<cmd>wq<cr>", opts)


-- Use spaces instead of tab characters
vim.o.expandtab = true

-- Number of spaces to use for a tab
vim.o.tabstop = 4

-- Number of spaces for autoindent (e.g., when pressing <Tab>)
vim.o.shiftwidth = 4

-- Make << and >> shift use shiftwidth
vim.o.softtabstop = 4

-- Enable automatic indentation
vim.o.autoindent = true
vim.o.smartindent = true


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
