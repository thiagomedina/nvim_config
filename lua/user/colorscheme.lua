vim.cmd [[
try
  if has('termguicolors')
    set termguicolors
  endif
  set background=dark
  let g:gruvbox_material_better_performance = 1
  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_foreground = 'material'
  colorscheme gruvbox-material
  " uncomment for a transparent background
  hi Normal guibg=NONE ctermbg=NONE
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi NvimTreeNormal guibg=NONE ctermbg=NONE
  hi NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE
  hi TelescopeNormal guibg=NONE ctermbg=NONE
  hi TelescopeBorder guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
