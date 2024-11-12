vim.cmd [[
try
  colorscheme gruvbox-material  " Corrected 'colorschem' to 'colorscheme'
  let g:gruvbox_material_better_performance = 1
  let g:gruvbox_material_background = 'hard'
  set background=dark
  if has('termguicolors')
    set termguicolors
  endif
  " uncomment this line if you want a transparent background
  " hi Normal guibg=NONE ctermbg=NONE
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
