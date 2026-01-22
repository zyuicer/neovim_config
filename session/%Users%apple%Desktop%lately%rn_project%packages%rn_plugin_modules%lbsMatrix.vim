let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsMatrix
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 android/build.gradle
badd +16 android/src/main/java/com/lbsmatrix/LbsMatrixPackage.kt
badd +14 android/src/main/java/com/lbsmatrix/LbsMatrixModule.kt
badd +1 android/gradle.properties
badd +53 package.json
badd +9 src/index.tsx
badd +8 src/NativeLbsMatrix.ts
badd +27 example/src/App.tsx
badd +18 example/android/gradle.properties
badd +49 example/android/gradlew
badd +3 example/android/build.gradle
badd +10 android/build/generated/source/buildConfig/debug/com/lbsmatrix/BuildConfig.java
badd +110 example/android/app/build.gradle
badd +1 example/android/settings.gradle
badd +1 example/android/gradlew.bat
badd +1 example/android/app/.cxx/Debug/216x1a3i/arm64-v8a/CMakeFiles/cmake.check_cache
badd +1 example/android/app/.cxx/Debug/216x1a3i/arm64-v8a/CMakeFiles/VerifyGlobs.cmake
badd +1 example/android/app/.cxx/Debug/216x1a3i/arm64-v8a/CMakeFiles/cmake.verify_globs
badd +9 example/android/app/build/generated/autolinking/src/main/jni/Android-autolinking.cmake
badd +6 src/NativeMatrix.ts
argglobal
%argdel
edit example/android/build.gradle
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
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
exe '1resize ' . ((&lines * 28 + 21) / 43)
exe '2resize ' . ((&lines * 12 + 21) / 43)
argglobal
balt android/build.gradle
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 2,9fold
sil! 10,13fold
sil! 14,19fold
sil! 1,20fold
let &fdl = &fdl
let s:l = 3 - ((2 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsMatrix//73480:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsMatrix//73480:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsMatrix//73480:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsMatrix//73480:/bin/zsh;\#toggleterm\#1
endif
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 46 - ((11 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 46
normal! 026|
wincmd w
exe '1resize ' . ((&lines * 28 + 21) / 43)
exe '2resize ' . ((&lines * 12 + 21) / 43)
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
