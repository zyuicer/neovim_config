let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +7 example/src/App.tsx
badd +177 src/client/index.ts
badd +100 node_modules/react-native/types/modules/globals.d.ts
badd +1 .yarn/plugins/@yarnpkg/plugin-workspace-tools.cjs
badd +1 .yarn/plugins/@yarnpkg/plugin-interactive-tools.cjs
badd +8 example/android/build.gradle
badd +30 example/android/gradle.properties
badd +15 example/android/app/src/main/java/cjs/patchupdate/example/MainApplication.kt
badd +1 example/index.js
badd +10 example/.cjsUpdate.json
badd +13 package.json
badd +50 example/android/app/src/main/AndroidManifest.xml
badd +1 src/client/type.ts
badd +14 lefthook.yml
badd +1 turbo.json
badd +1 yarn.lock
badd +1 react-native.config.js
badd +31 example/ios/Podfile
badd +38 PatchUpdate.podspec
badd +38 src/components/hot-patch-update.tsx
badd +151 example/android/gradlew
badd +6 example/android/settings.gradle
badd +8 android/gradle.properties
badd +72 android/build.gradle
badd +14 android/src/main/cpp/CMakeLists.txt
badd +16 example/package.json
badd +1 android/gradlew
badd +11 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate/src/index.tsx
badd +1 example/.watchmanconfig
badd +1 File.m
badd +1 LICENSE
badd +10 PatchUpdateDonwloadTask.h
badd +4 ios/PatchFileManager.h
badd +1 ios/PatchUpdateDownloadTask.h
badd +17 example/ios/Podfile.lock
badd +48 android/generated/java/com/cjs/patchupdate/NativePatchUpdateSpec.java
badd +3 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate/ios/rust_lib/PatchUpdateFFi.h
badd +1 example/metro.config.js
badd +1 ios/rust_lib/libpatch_update.a
badd +19 example/ios/PatchUpdateExample/Info.plist
badd +1 example/.cjsHotUpdateLogin.json
badd +10 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate/src/NativePatchUpdate.ts
badd +1 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate/example/ios/PatchUpdateExample/AppDelegate.swift
badd +4 ios/generated/RNPatchUpdateSpec/RNPatchUpdateSpec-generated.mm
badd +28 ios/generated/RNPatchUpdateSpec/RNPatchUpdateSpec.h
badd +13 ios/generated/RNPatchUpdateSpecJSI-generated.cpp
badd +17 ios/generated/RNPatchUpdateSpecJSI.h
badd +7 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate/example/ios/PatchUpdateExample/AppDelegate.h
badd +33 example/ios/PatchUpdateExample/AppDelegate.mm
badd +9 example/ios/PatchUpdateExample/main.mm
badd +8 ios/PatchUpdateSwift.h
badd +1 ios/PatchUpdateDownloadTask.mm
badd +8 .git/hooks/pre-commit
badd +22 example/.yarn/cache/package-json-from-dist-npm-1.0.1-4631a88465-58ee9538f2.zip
badd +13 src/components/UpdatePackageModal.tsx
badd +13 .yarnrc.yml
argglobal
%argdel
edit package.json
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
exe '1resize ' . ((&lines * 33 + 24) / 48)
exe '2resize ' . ((&lines * 12 + 24) / 48)
argglobal
balt src/components/hot-patch-update.tsx
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 13 - ((12 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 08|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate//14047:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate//14047:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate//14047:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/patchUpdate//14047:/bin/zsh;\#toggleterm\#1
endif
balt example/package.json
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 949 - ((5 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 949
normal! 059|
wincmd w
exe '1resize ' . ((&lines * 33 + 24) / 48)
exe '2resize ' . ((&lines * 12 + 24) / 48)
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
