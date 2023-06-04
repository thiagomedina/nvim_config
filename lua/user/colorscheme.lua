-- local catppuccin = require("catppuccin")
-- catppuccin.setup({
-- transparent_background = true,
-- integration = {
--   nvimtree = {
-- 	  transparent_panel = false, 
--   }
--  }
-- })

vim.cmd [[
try
  colorschem gruvbox-material 
  let g:gruvbox_material_better_performance = 1
  let g:gruvbox_material_background = 'soft'
  set background=dark
  if has('termguicolors')
    set termguicolors
  endif
  " hi Normal guibg=NONE ctermbg=NONE
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
