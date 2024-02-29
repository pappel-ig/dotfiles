require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 10,
    }
})
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')


vim.keymap.set('n', '<leader>ha', mark.add_file)
vim.keymap.set('n', '<leader>hh', ui.toggle_quick_menu)



vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-s>', function() ui.nav_file(4) end)


vim.keymap.set('n', '<leader>hn', ui.nav_next, {})
vim.keymap.set('n', '<leader>hp', ui.nav_prev, {})
