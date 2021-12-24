local telescope = require('telescope')
local actions = require('telescope.actions')
local map = vim.api.nvim_set_keymap

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        },
        mappings = {
            i = {
                ["<esc>"] = actions.close
            }
        }
    }
})

map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, })
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, })
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, })
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, })

map('n', '<leader>gc', "<cmd>lua require('telescope.builtin').git_commits()<cr>", {noremap = true, })
