let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/company_project
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +21 packages/substitute_driving/src/pages/order-driver-active/index.vue
badd +4 ~/Desktop/lately/company_project/.prettierrc.json
badd +17 packages/substitute_driving/src/pages/order-driver-active/composable/driver-customer-lcoation-composable.ts
argglobal
%argdel
edit packages/substitute_driving/src/pages/order-driver-active/index.vue
argglobal
balt ~/Desktop/lately/company_project/.prettierrc.json
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 2,15fold
sil! 54,56fold
sil! 59,62fold
sil! 64,67fold
sil! 73,78fold
sil! 72,79fold
sil! 70,80fold
sil! 69,81fold
sil! 84,87fold
sil! 90,93fold
sil! 89,94fold
sil! 83,95fold
sil! 98,101fold
sil! 104,107fold
sil! 103,108fold
sil! 97,109fold
sil! 112,115fold
sil! 118,121fold
sil! 117,122fold
sil! 111,123fold
sil! 125,128fold
sil! 52,129fold
sil! 50,130fold
sil! 132,140fold
sil! 1,141fold
sil! 149,154fold
sil! 148,155fold
sil! 145,158fold
sil! 144,159fold
sil! 161,170fold
sil! 160,171fold
sil! 143,172fold
sil! 142,173fold
let &fdl = &fdl
let s:l = 21 - ((18 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 07|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
