set hlsearch
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ai "Auto indent
set si "Smart indent

nnoremap <C-i> i_<Esc>r

syntax enable

set t_Co=256
colo elflord

if &diff
  :highlight DiffAdd    ctermfg=7 ctermbg=22 gui=none guifg=bg guibg=Red
  :highlight DiffDelete ctermfg=7 ctermbg=88 gui=none guifg=bg guibg=Red
  :highlight DiffChange ctermfg=7 ctermbg=none gui=none guifg=bg guibg=Red
  :highlight DiffText   ctermfg=4 ctermbg=none gui=none guifg=bg guibg=Red
else
  syntax on
  filetype indent plugin on
  let &t_ti.="\e[1 q"
  let &t_SI.="\e[5 q"
  let &t_EI.="\e[1 q"
  let &t_te.="\e[0 q"

  let g:netrw_banner = 0
  let g:netrw_liststyle = 3
  let g:netrw_browse_split = 4
  let g:netrw_altv = 1

  set colorcolumn=80
  :highlight ColorColumn ctermbg=darkgrey
endif
