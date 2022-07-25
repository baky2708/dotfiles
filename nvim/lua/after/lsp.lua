require'lspconfig'.jdtls.setup{
   cmd = { 'jdtls' },
   root_dir = function(fname)
      return require'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
   end
}
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--      virtual_text = {
--        spacing = 4,
--      },
--     -- delay update diagnostics
--     -- update_in_insert = false,
--     -- update_in_insert = true,
--     update_in_normal = true,
--   }
-- )
-- Add additional capabilities supported by nvim-cmp

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

-- Inject lsp installer
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

-- lspconfig.stylelint_lsp.setup {
--   settings = {
--     stylelintplus = {
--       autoFixOnSave = true,
--       autoFixOnFormat = true,
--     }
--   },
-- }
--
local function addActionOnSave(name, pattern, callback)
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = pattern,
    callback = callback or function() vim.lsp.buf.format() end,
    group = vim.api.nvim_create_augroup(name .. "_on_save", {}),
  })
end

local function on_attach()
  -- Set common mappings
  -- vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)
  -- vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action)
  -- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
  -- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
  -- vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
end

-- lspconfig.stylelint_lsp.setup {
--   capabilities = capabilities,
--   on_attach = function()
--     on_attach()
--     addActionOnSave(
--       "stylelint_lsp",
--       { "*.css", "*.scss" }
--     )
--   end,
--   settings = {
--     stylelintplus = {
--       autoFixOnFormat = true,
--     },
--   },
-- }
--


-- Enable language servers
local servers = { 'eslint', 'tsserver', 'jdtls' }
-- local servers = { 'eslint', 'tsserver', 'stylelint_lsp' }
-- local servers = { 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

lspconfig.stylelint_lsp.setup{
  settings = {
    stylelintplus = {
      -- see available options in stylelint-lsp documentation
    },
    filetypes = { "css", "scss" },
  }
}

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
 formatting = {
    format = function(entry, vim_item)
      -- Truncate the item if it is too long
      local max_width = 40
      if #vim_item.abbr > max_width then
        vim_item.abbr = string.sub(vim_item.abbr, 1, max_width) .. "…"
      end
      -- fancy icons and a name of kind
      vim_item.kind = " " .. require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind
      -- set a name for each source (see the sources section below)
      vim_item.menu = ({
        buffer        = "[Buffer]",
        nvim_lsp      = "[LSP]",
        luasnip       = "[LuaSnip]",
        ultisnips     = "[UltiSnips]",
        nvim_lua      = "[Lua]",
        latex_symbols = "[Latex]",
      })[entry.source.name] or string.format("[%s]", entry.source.name)

      if vim_item.menu == "[LSP]" then
        -- Display which LSP servers this item came from.
        pcall(function()
          vim_item.menu = " "
        end)
      end

      return vim_item
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
