let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +54 example/src/App.tsx
badd +21 example/android/build.gradle
badd +107 src/LbsAmapScreenViewNativeComponent.ts
badd +26 src/LbsAmapMarkerNativeComponent.ts
badd +10 src/component/marker.tsx
badd +16 lib/typescript/src/LbsAmapMarkerNativeComponent.d.ts
badd +13 src/component/titleMarker.tsx
badd +503 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/node_modules/react-native/Libraries/StyleSheet/StyleSheetTypes.d.ts
badd +131 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/node_modules/react-native/Libraries/Components/View/ViewPropTypes.d.ts
badd +13 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/src/LbsAmapPolylineNativeComponent.ts
badd +11 package.json
badd +16 LbsAmapScreen.podspec
badd +21 android/build.gradle
badd +1 src/NativeSdk.ts
badd +42 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/src/component/mapView.tsx
badd +21 example/ios/Podfile
badd +1 .watchmanconfig
badd +7 src/component/polyline.tsx
badd +16 ios/AMapView/AMapView.h
badd +1 example/metro.config.js
badd +9 example/package.json
badd +3 example/index.js
badd +1 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/example/node_modules/react-native-monorepo-config/index.js
badd +43 build/generated/ios/LbsAmapScreenViewSpec/LbsAmapScreenViewSpec.h
badd +1 ios/Marker/Marker.h
badd +3 ios/LbsAmapMarkerView.h
badd +35 ios/LbsAmapMarkerView.mm
badd +15 ios/Marker/Marker.mm
badd +26 build/generated/ios/RCTAppDependencyProvider.mm
badd +7 build/generated/ios/RCTAppDependencyProvider.h
badd +19 build/generated/ios/react/renderer/components/LbsAmapScreenViewSpec/ComponentDescriptors.h
badd +235 ios/LbsAmapScreenView.mm
badd +1 ios/LbsAmapMarker.mm
badd +10 ios/LbsAmapPolyline.h
badd +1 ios/LbsAmapScreenView.h
badd +26 ios/LbsAmapPolyline.mm
badd +14 example/ios/build/generated/ios/LbsAmapScreenViewSpecJSI-generated.cpp
badd +22 example/ios/build/generated/ios/RCTAppDependencyProvider.mm
badd +34 example/ios/build/generated/ios/RCTModuleProviders.mm
badd +18 example/ios/build/generated/ios/RCTModulesConformingToProtocolsProvider.h
badd +37 example/ios/build/generated/ios/RCTModulesConformingToProtocolsProvider.mm
badd +1 example/ios/build/generated/ios/RCTThirdPartyComponentsProvider.h
badd +34 example/ios/build/generated/ios/LbsAmapScreenViewSpec/LbsAmapScreenViewSpec-generated.mm
badd +50 example/ios/build/generated/ios/LbsAmapScreenViewSpec/LbsAmapScreenViewSpec.h
badd +1 example/ios/Pods/Target\ Support\ Files/LbsAmapScreen/LbsAmapScreen-dummy.m
badd +1 example/ios/Pods/Target\ Support\ Files/LbsAmapScreen/LbsAmapScreen-prefix.pch
badd +1 example/ios/Pods/Target\ Support\ Files/LbsAmapScreen/LbsAmapScreen.debug.xcconfig
badd +1 android/src/main/java/com/cjs/lbsamapscreen/marker/LbsAmapMarker.kt
badd +1 LICENSE
badd +1 CODE_OF_CONDUCT.md
badd +2 ios/utils/Overly.h
badd +14 ios/LbsAmapTitleMarker.h
badd +28 build/generated/ios/ReactAppDependencyProvider.podspec
badd +1 build/generated/ios/RCTThirdPartyComponentsProvider.mm
badd +1 build/generated/ios/RCTThirdPartyComponentsProvider.h
badd +19 build/generated/ios/RCTModulesConformingToProtocolsProvider.mm
badd +1 build/generated/ios/RCTModuleProviders.h
badd +1 build/generated/ios/LbsAmapScreenViewSpecJSI.h
badd +27 build/generated/ios/LbsAmapScreenViewSpecJSI-generated.cpp
badd +1 build/generated/ios/LbsAmapScreenViewSpec/LbsAmapScreenViewSpec-generated.mm
badd +6 example/android/settings.gradle
badd +32 android/src/main/java/com/cjs/lbsamapscreen/LbsAmapScreenView.kt
badd +33 example/android/gradle.properties
badd +1 example/android/gradlew
badd +1 example/android/gradlew.bat
badd +14 android/gradle.properties
badd +1 yarn.lock
badd +10 .yarnrc.yml
badd +1 android/build/generated/source/codegen/schema.json
badd +13 android/build/generated/source/codegen/jni/CMakeLists.txt
badd +83 example/android/app/build.gradle
badd +1 example/android/app/debug.keystore
badd +25 ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsAmapScreen/src/LbsAmapTitleMarkerNativeComponent.ts
argglobal
%argdel
edit example/ios/Podfile
argglobal
balt LbsAmapScreen.podspec
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 5,7fold
sil! 4,8fold
sil! 14,16fold
sil! 22,25fold
sil! 31,33fold
sil! 30,34fold
sil! 38,42fold
sil! 28,43fold
sil! 19,44fold
let &fdl = &fdl
let s:l = 21 - ((20 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
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
