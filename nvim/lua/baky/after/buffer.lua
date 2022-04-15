require('bufferline').setup {
  options = {
    numbers = "ordinal",
    right_mouse_command = "bdelete! %d",
    diagnostics = "nvim-lsp",
  }
}
