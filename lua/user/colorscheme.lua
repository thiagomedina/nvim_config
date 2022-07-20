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
" hi Normal guibg=NONE ctermbg=NONE
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
