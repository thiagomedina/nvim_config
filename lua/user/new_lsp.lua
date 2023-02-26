local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
  sign_icons = {
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = ''
  }
})

lsp.ensure_installed({
  'tsserver',
  'eslint'
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr }
  local bind = vim.keymap.set

  bind('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  bind('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
  bind('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  bind('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
  bind('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
  bind('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
  bind('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
end)

lsp.nvim_workspace()

lsp.setup()
