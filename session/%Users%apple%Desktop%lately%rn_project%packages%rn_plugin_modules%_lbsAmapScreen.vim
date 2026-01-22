let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/rn_plugin_modules/_lbsAmapScreen
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +12 package.json
badd +27 example/src/App.tsx
badd +1 src/LbsAmapMarkerTextNativeComponent.ts
badd +6 src/LbsAmapMarkerBoxNativeComponent.ts
badd +122 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/node_modules/react-native/Libraries/Components/View/ViewPropTypes.d.ts
badd +27 src/components/mapView.tsx
badd +93 src/LbsAmapScreenViewNativeComponent.ts
badd +1 src/components/markerBox.tsx
badd +1 example/app.json
badd +1 src/LbsAmapPolylineNativeComponent.ts
badd +9 src/LbsAmapMarkerNativeComponent.ts
badd +1 cjs-lbs-amap-screen.podspec
badd +86 example/android/app/build.gradle
badd +10 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/src/components/marker.tsx
badd +1 example/android/app/.DS_Store
badd +20 example/android/build.gradle
badd +1 android/src/main/java/com/cjs/lbsamapscreen/Overlay.kt
badd +111 android/build.gradle
badd +1 android/gradle.properties
badd +1 android/gradlew
badd +1 src/index.tsx
badd +109 android/src/main/java/com/cjs/lbsamapscreen/LbsAmapScreenViewManager.kt
badd +31 android/src/main/java/com/cjs/lbsamapscreen/Utils.kt
badd +196 android/src/main/java/com/cjs/lbsamapscreen/map/AmapView.kt
badd +55 android/src/main/java/com/cjs/lbsamapscreen/marker/MarkerView.kt
badd +1 android/src/main/java/com/cjs/lbsamapscreen/MountComponentEvent.kt
badd +1 android/src/main/java/com/cjs/lbsamapscreen/LbsAmapPolylineViewManager.kt
badd +30 android/src/main/java/com/cjs/lbsamapscreen/LbsAmapScreenPackage.kt
badd +1 android/src/main/java/com/cjs/lbsamapscreen/marker/MarkerViewBox.kt
badd +1 android/src/main/java/com/cjs/lbsamapscreen/marker/MarkerViewText.kt
badd +1 android/src/main/java/com/cjs/lbsamapscreen/ComponentEvent.kt
badd +16 android/src/main/java/com/cjs/lbsamapscreen/modules/LbsAmapModule.kt
badd +26 android/src/main/java/com/cjs/lbsamapscreen/LbsAmapMarkerViewManager.kt
badd +1 android/src/main/java/com/cjs/lbsamapscreen/marker/LbsAmapMarkerTextManager.kt
argglobal
%argdel
edit android/src/main/java/com/cjs/lbsamapscreen/marker/MarkerView.kt
argglobal
balt android/src/main/java/com/cjs/lbsamapscreen/marker/LbsAmapMarkerTextManager.kt
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 3,24fold
sil! 34,37fold
sil! 40,43fold
sil! 46,49fold
sil! 52,55fold
sil! 58,63fold
sil! 67,70fold
sil! 72,74fold
sil! 65,75fold
sil! 80,82fold
sil! 78,83fold
sil! 94,96fold
sil! 94,107fold
sil! 92,108fold
sil! 86,113fold
sil! 118,120fold
sil! 116,121fold
sil! 115,122fold
sil! 124,127fold
sil! 130,132fold
sil! 25,133fold
let &fdl = &fdl
let s:l = 55 - ((27 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
normal! 04|
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
