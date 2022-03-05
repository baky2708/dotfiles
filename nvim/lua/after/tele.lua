local utils = require('utils')

utils.map('n', '<leader>ff', ':lua require(\'telescope.builtin\').find_files()<cr>')
utils.map('n', '<leader>fg', ':lua require(\'telescope.builtin\').live_grep()<cr>')
utils.map('n', '<leader>fb', ':lua require(\'telescope.builtin\').buffers()<cr>')
utils.map('n', '<leader>fh', ':lua require(\'telescope.builtin\').help_hags()<cr>')
utils.map('n', '<M-CR>', ':lua require(\'telescope.builtin\').lsp_code_actions()<cr>')
-- utils.map('n', '<M-CR>', ':lua require(\'telescope.builtin\').diagnostics()<cr>')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
  },
  extensions = {
  }
}
