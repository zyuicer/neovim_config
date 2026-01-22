let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/apps/cjs_sd
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +13 src/App.tsx
badd +33 src/router/index.tsx
badd +90 android/app/build.gradle
badd +64 src/pages/home/index.tsx
badd +74 android/app/src/main/AndroidManifest.xml
badd +33 src/hooks/background-actions-hooks.ts
badd +89 node_modules/react-native-background-actions/lib/types/index.d.ts
badd +127 src/pages/home/bottom-control/index.tsx
badd +67 src/hooks/service/socket-reducer.ts
badd +16 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/hooks/service/driver-location.ts
badd +109 src/pages/dispatch-order/index.tsx
badd +3 .env.production
badd +31 src/pages/handling-order/based-handling-order/address-icon.tsx
badd +30 src/pages/handling-order/handling-daily-order/index.tsx
badd +39 src/pages/track-order/index.tsx
badd +85 src/service/api/order/index.ts
badd +75 src/pages/home/bottom-control/other-control/index.tsx
badd +1 android/app/src/main/res/values/styles.xml
badd +23 src/pages/choose-location/index.tsx
badd +3 .yarnrc.yml
badd +23 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/order/types/daily-order.type.ts
badd +45 src/pages/handling-order/hooks/order-control/index.ts
badd +1 src/pages/home/modal/team-modal/no-team/match-animate-content.tsx
badd +122 src/pages/home/modal/team-modal/member-info/index.tsx
badd +17 src/hooks/service/team-reducer.ts
badd +7 node_modules/@cjs/lbs-amap-screen/src/components/marker.tsx
badd +26 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-screen/src/LbsAmapMarkerNativeComponent.ts
badd +62 src/pages/dispatch-order/map-content.tsx
badd +15 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/pages/home/modal/team-modal/member-info/member-map/member-marker.tsx
badd +15 src/pages/home/bottom-control/hooks/track-order-socket.ts
badd +27 src/pages/home/modal/team-modal/member-info/member-map/index.tsx
badd +1 jest.config.js
badd +9 tsconfig.json
badd +1 metro.config.js
badd +4 babel.config.js
badd +110 src/layout/toast-layout/index.tsx
badd +82 src/layout/loading-layout/index.tsx
badd +39 src/pages/home/modal/team-modal/index.tsx
badd +38 src/pages/home/modal/team-modal/no-team/index.tsx
badd +1 src/pages/home/modal/team-modal/no-team/btn-control.tsx
badd +49 src/pages/home/bottom-control/hooks/driver-with-order-control.ts
badd +87 src/components/cjs-check/index.tsx
badd +12 src/components/cjs-avatar/default-avatar.tsx
badd +118 src/pages/login/index.tsx
badd +3 src/styles/theme/theme-style.ts
badd +47 src/pages/login/agreement/index.tsx
badd +168 src/pages/dispatch-order/dispatch-addresses.tsx
badd +58 src/pages/agreements/privacy-agreement/index.tsx
badd +12 src/pages/agreements/user-info-agreement/index.tsx
badd +12 src/pages/agreements/user-server-agreement/index.tsx
badd +15 src/pages/agreements/index.tsx
badd +33 src/pages/login/hooks/login-control.ts
badd +19 src/pages/home/map-content/index.tsx
badd +41 src/pages/home/map-content/map-control-btn.tsx
badd +1 src/components/cjs-tag/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/promise/maybe-promise.ts
badd +20 src/hooks/service/user-info.ts
badd +12 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/login/index.ts
badd +21 src/hooks/time-count-down.ts
badd +12 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-misc/src/NativeLocation.ts
badd +20 src/hooks/use-choose-location-hook.ts
badd +79 src/pages/search-address/index.tsx
badd +42 src/pages/bill-order/index.tsx
badd +10 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/pages/bill-order/hooks/bill-state/index.ts
badd +6 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/bill-order/index.ts
badd +16 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/bill-order/type/bill-order-detail.type.ts
badd +22 src/pages/home/hooks/normaliz-global-socket.ts
badd +26 src/pages/home/hooks/should-complete-order.ts
badd +34 src/pages/handling-order/based-handling-order/driver-real-mileage/index.tsx
badd +1 src/constants/keys/order-mileage.ts
badd +6 src/pages/handling-order/based-handling-order/index.tsx
badd +29 ios/Podfile
badd +1 ios/cjs_sd/Info.plist
badd +1 ios/cjs_sd/LaunchScreen.storyboard
badd +1 ios/cjs_sd/PrivacyInfo.xcprivacy
badd +16 ios/cjs_sd/AppDelegate.swift
badd +16 src/__tests__/shared/index.spec.ts
badd +19 src/pages/handling-order/index.tsx
badd +82 src/pages/handling-order/based-handling-order/handling-order-content-control.tsx
badd +28 src/pages/insurance/index.tsx
badd +81 src/pages/insurance/source-content.tsx
badd +1 src/shared/misc/index.ts
badd +1 src/shared/misc/phone.ts
badd +1 src/shared/misc/service.ts
badd +1 src/pages/handling-order/based-handling-order/handling-order-content-normal-info.tsx
badd +22 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerBoxManagerDelegate.java
badd +1 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerBoxManagerInterface.java
badd +10 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/LbsAmapMarkerViewManager.kt
badd +1 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/LbsAmapPolylineViewManager.kt
badd +17 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/LbsAmapScreenPackage.kt
badd +7 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/LbsAmapScreenViewManager.kt
badd +1 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerTextManagerDelegate.java
badd +1 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapScreenViewManagerInterface.java
badd +1 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/MountComponentEvent.kt
badd +1 android/gradle.properties
badd +1 android/local.properties
badd +1 android/main.jsbundle
badd +7 android/sentry.properties
badd +68 src/components/cjs-header/index.tsx
badd +6 android/build.gradle
badd +1 android/gradlew.bat
badd +1 android/gradlew
badd +1 src/service/index.ts
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/help-type/index.ts
badd +2 index.d.ts
badd +11 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/async-storage/index.ts
badd +15 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/hooks/routes-hook.tsx
badd +1 android/app/src/main/java/com/cjs_sd/MainApplication.kt
badd +1 src/components/index.ts
badd +1 src/constants/regexp/index.ts
badd +20 src/store/index.ts
badd +41 src/pages/my-orders/index.tsx
badd +34 src/pages/my-orders/order-list-content.tsx
badd +127 src/pages/order-list/order-list-content/order/index.tsx
badd +86 node_modules/@cjs/lbs-amap-misc/src/index.tsx
badd +15 src/shared/get-location/index.ts
badd +2 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-misc/src/types/location-client-options.type.ts
badd +47 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/request/tianditu-request/index.ts
badd +4 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/request/tianditu-request/type/regecode.type.ts
badd +7 .cjsUpdate.json
badd +1 src/hooks/service/banks-reducer.ts
badd +1 src/hooks/service/upload-file-to-oss.ts
badd +12 src/hooks/audio-player.ts
badd +17 src/hooks/take-orde-hook.ts
badd +1 .env.development
badd +17 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/pages/handling-order/hooks/order-state/index.ts
badd +1 src/pages/handling-order/based-handling-order/hooks/.DS_Store
badd +28 src/pages/handling-order/based-handling-order/hooks/map-control/index.ts
badd +34 src/pages/login/version.tsx
badd +11 src/store/bank/index.ts
badd +23 src/pages/bank/index.tsx
badd +34 src/pages/bank/bank-cards/index.tsx
badd +55 src/pages/bank/bank-cards/add-bank.tsx
badd +76 src/pages/bank/add-modal/index.tsx
badd +14 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/bank/index.ts
badd +25 src/pages/order-list/index.tsx
badd +1 src/pages/order-list/order-list-content/empty-order-result.tsx
badd +24 src/pages/order-list/order-list-content/daily-order-list.tsx
badd +19 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/order-history/index.ts
badd +6 src/pages/withdraw/index.tsx
badd +1638 node_modules/@types/react/ts5.0/index.d.ts
badd +31 src/pages/search-address/search-content/index.tsx
badd +8 src/pages/search-address/search-content/search-content-list/index.tsx
badd +79 src/pages/search-address/search-input/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/debounce/index.ts
badd +8 src/store/driver/index.ts
badd +29 src/pages/my-orders/my-orders-header.tsx
badd +48 src/pages/handling-order/handling-example-order/index.tsx
badd +4 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/misc/order.ts
badd +179 src/pages/handling-order/handling-example-order/example-order-hook.ts
badd +42 src/pages/withdraw-control/index.tsx
badd +25 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/hooks/order-mileage-hook.ts
badd +8 src/pages/handling-order/based-handling-order/driver-real-mileage/hooks/driver-real-mileage-order-location.ts
badd +5 jest.setup.js
badd +116 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/__tests__/hooks/mileage-order.spec.tsx
badd +8 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@react-native-async-storage/async-storage/jest/async-storage-mock.d.ts
badd +27 src/__tests__/layout/toast-layout.spec.tsx
badd +23 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@testing-library/react-native/build/render-hook.d.ts
badd +1 src/pages/handling-order/based-handling-order/upload-driver-picture.tsx
badd +1 src/pages/handling-order/hooks/socket-control/index.ts
badd +13 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/assets/font-icon/index.ts
badd +26 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-screen/src/component/mapView.tsx
badd +30 package.json
badd +1 yarn.lock
badd +13 ios/Podfile.lock
badd +14 node_modules/react-native/ReactCommon/react/nativemodule/core/platform/ios/React-NativeModulesApple.podspec
argglobal
%argdel
edit ios/Podfile
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
exe '1resize ' . ((&lines * 25 + 20) / 40)
exe '2resize ' . ((&lines * 12 + 20) / 40)
argglobal
balt package.json
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
sil! 2,8fold
sil! 11,13fold
sil! 19,21fold
sil! 28,31fold
sil! 37,39fold
sil! 36,40fold
sil! 44,48fold
sil! 34,49fold
sil! 24,50fold
let &fdl = &fdl
let s:l = 29 - ((4 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 038|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/apps/cjs_sd//80977:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/apps/cjs_sd//80977:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/apps/cjs_sd//80977:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/apps/cjs_sd//80977:/bin/zsh;\#toggleterm\#1
endif
balt ios/Podfile
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 10007 - ((6 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10007
normal! 050|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 25 + 20) / 40)
exe '2resize ' . ((&lines * 12 + 20) / 40)
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
