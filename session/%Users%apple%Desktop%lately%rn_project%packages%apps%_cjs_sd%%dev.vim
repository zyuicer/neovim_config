let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/apps/_cjs_sd
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +11 package.json
badd +113 src/App.tsx
badd +15 index.js
badd +3 .yarnrc.yml
badd +29 ios/Podfile
badd +5 babel.config.js
badd +35 ios/cjs_sd/Info.plist
badd +9 android/build.gradle
badd +41 android/app/src/main/java/com/cjs_sd/MainApplication.kt
badd +15 android/app/src/main/java/com/cjs_sd/MainActivity.kt
badd +8 android/app/build.gradle
badd +63 android/app/src/main/AndroidManifest.xml
badd +1 android/app/src/main/java/com/.DS_Store
badd +10 yarn.lock
badd +1 src/pages/home/index.tsx
badd +21 ~/Desktop/lately/rn_project/packages/apps/_cjs_sd/src/pages/home/map-content/index.tsx
badd +116 src/pages/handling-order/based-handling-order/index.tsx
badd +1 src/pages/handling-order/index.tsx
badd +83 src/pages/bill-order/index.tsx
argglobal
%argdel
edit src/pages/bill-order/index.tsx
argglobal
balt src/pages/handling-order/index.tsx
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 1,6fold
sil! 11,14fold
sil! 15,17fold
sil! 18,21fold
sil! 10,22fold
sil! 31,35fold
sil! 42,46fold
sil! 47,52fold
sil! 53,58fold
sil! 59,64fold
sil! 65,70fold
sil! 71,77fold
sil! 30,78fold
sil! 85,87fold
sil! 90,96fold
sil! 89,99fold
sil! 82,100fold
sil! 28,102fold
sil! 24,104fold
let &fdl = &fdl
let s:l = 83 - ((10 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 83
normal! 0
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
