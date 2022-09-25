require('lint').linters_by_ft = {
  java = {'checkstyle'}
}

-- require('lint').linters_by_ft = {
--   markdown = {'marksman',}
-- }

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
