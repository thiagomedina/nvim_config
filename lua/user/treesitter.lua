local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

vim.treesitter.language.register("typescript", "motoko")

configs.setup({
  ensure_installed = "all", -- one of "all" or a list of languages
  sync_install = false,     -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" },  -- List of parsers to ignore installing
  highlight = {
    -- use_languagetree = true,
    enable = true,               -- false will disable the whole extension
    disable = { "css", "html" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "css", "html" } },
  -- context_commentstring = {
  --   enable = true,
  --   enable_autocmd = false,
  -- },
  autotag = {
    enable = true,
    disable = { "xml" },
  },
  rainbow = {
    enable = true,
    colors = {
      "Gold",
      "Orchid",
      "DodgerBlue",
    },
    disable = { "html" },
  },
  playground = {
    enable = true,
  },
})
