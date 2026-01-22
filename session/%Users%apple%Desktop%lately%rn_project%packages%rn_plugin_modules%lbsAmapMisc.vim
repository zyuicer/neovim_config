let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapMisc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +17 package.json
badd +1 example/package.json
badd +1 ios/LbsAmapMisc.h
badd +1 ios/LbsAmapMisc.mm
badd +94 ios/generated/RNLbsAmapMiscSpec/RNLbsAmapMiscSpec.h
badd +40 ios/generated/RNLbsAmapMiscSpec/RNLbsAmapMiscSpec-generated.mm
badd +1 ios/generated/RNLbsAmapMiscSpecJSI-generated.cpp
badd +640 ios/generated/RNLbsAmapMiscSpecJSI.h
badd +3 example/android/build.gradle
badd +28 example/android/gradle.properties
badd +10 example/android/app/build/generated/autolinking/src/main/jni/Android-autolinking.cmake
badd +1 example/android/app/build/generated/autolinking/src/main/jni/autolinking.cpp
badd +117 android/build.gradle
badd +1 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapMisc/src/types/location-client-options.type.ts
badd +22 cjs-lbs-amap-misc.podspec
badd +13 android/src/main/java/com/cjs/lbsamapmisc/LbsAmapMiscModule.kt
badd +32 android/src/main/java/com/cjs/lbsamapmisc/LbsAmapMiscPackage.kt
badd +55 src/index.tsx
badd +1 example/index.js
badd +78 example/src/App.tsx
badd +1 example/android/app/build.gradle
badd +9 ios/Location.h
badd +71 example/ios/Podfile
badd +1 example/metro.config.js
badd +872 example/ios/Podfile.lock
badd +55 example/ios/LbsAmapMiscExample/Info.plist
badd +23 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapMisc/src/NativeAMapMiscLocation.ts
badd +37 ios/Location.mm
argglobal
%argdel
edit ios/LbsAmapMisc.mm
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
exe '1resize ' . ((&lines * 31 + 24) / 48)
exe '2resize ' . ((&lines * 14 + 24) / 48)
argglobal
balt ios/LbsAmapMisc.h
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 6,9fold
sil! 12,13fold
sil! 14,15fold
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapMisc//99393:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapMisc//99393:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapMisc//99393:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapMisc//99393:/bin/zsh;\#toggleterm\#1
endif
balt package.json
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 13 - ((12 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 0
wincmd w
exe '1resize ' . ((&lines * 31 + 24) / 48)
exe '2resize ' . ((&lines * 14 + 24) / 48)
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
