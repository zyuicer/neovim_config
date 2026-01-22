let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.Trash/demo
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 android/src/main/java/com/demo/DemoModule.kt
badd +7 src/index.tsx
badd +4 src/NativeDemo.ts
badd +24 example/android/build.gradle
badd +30 example/android/gradle.properties
badd +24 example/src/App.tsx
badd +12 android/src/main/java/com/demo/DemoPackage.kt
badd +1 android/src/main/java/com/demo/DemoView.kt
badd +28 android/src/main/java/com/demo/DemoViewManager.kt
argglobal
%argdel
edit android/src/main/java/com/demo/DemoViewManager.kt
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
enew
file NvimTree_1
balt android/src/main/java/com/demo/DemoModule.kt
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
wincmd w
argglobal
balt android/src/main/java/com/demo/DemoPackage.kt
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 3,11fold
sil! 17,19fold
sil! 21,23fold
sil! 25,27fold
sil! 29,31fold
sil! 34,36fold
sil! 38,40fold
sil! 14,41fold
let &fdl = &fdl
let s:l = 28 - ((23 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 28
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/demo//49093:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/demo//49093:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/demo//49093:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/demo//49093:/bin/zsh;\#toggleterm\#1
endif
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 12 - ((11 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
wincmd w
2wincmd w
wincmd =
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
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
