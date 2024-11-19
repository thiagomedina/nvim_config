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
  " uncomment this for a transparent background
  " hi Normal guibg=NONE ctermbg=NONE
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
