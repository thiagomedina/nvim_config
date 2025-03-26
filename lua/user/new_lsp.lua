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
  'eslint',
  'intelephense',
})


require('lspconfig').intelephense.setup({
  root_dir = require('lspconfig').util.root_pattern("composer.json", ".git"),
  settings = {
    intelephense = {
      environment = {
      },
      files = {
        maxSize = 5000000,
      },
      -- Add formatting settings
      format = {
        enable = true,
        braces = "psr12",

        -- Project-specific formatting rules
        insertSpaces = true,
        tabSize = 4,

        -- Alignment rules matching Project.xml
        alignMultiLineCall = true,
        alignMultiLineParameters = false,
        alignMultiLineParametersInCalls = true,
        alignMultiLineExtends = true,
        alignGroupFieldDeclarations = true,

        -- Wrapping rules
        wrapLineLength = 200,
        wrapParameters = "force-aligned",
        wrapParametersLparen = true,
        wrapParametersRparen = true,
        wrapArrayInitializerLbrace = true,
        wrapArrayInitializerRbrace = true,

        -- Spacing rules
        spaceAfterTypeCast = true,
        spaceAroundOperators = true,
        spaceBeforeParentheses = false,
        spaceAroundComma = true,
        spaceBeforeClassBraces = true,

        -- Blank lines
        blankLinesBeforeRbrace = 0,
        blankLinesAfterPackage = 1,

        -- Force braces
        forceBraces = "always",

        -- Array formatting
        arrayInitializerStyle = "aligned",

        -- Binary operations
        binaryOperatorStyle = "next-line",

        -- Ternary operations
        ternaryOperatorStyle = "next-line",
      }
    }
  }
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
