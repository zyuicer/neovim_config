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
badd +116 src/App.tsx
badd +218 src/router/index.tsx
badd +86 android/app/build.gradle
badd +60 src/pages/home/index.tsx
badd +65 src/hooks/background-actions-hooks.ts
badd +91 node_modules/react-native-background-actions/lib/types/index.d.ts
badd +85 src/pages/home/bottom-control/index.tsx
badd +31 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/hooks/service/driver-location.ts
badd +28 src/pages/dispatch-order/index.tsx
badd +37 src/pages/handling-order/based-handling-order/address-icon.tsx
badd +19 src/pages/handling-order/handling-daily-order/index.tsx
badd +40 src/pages/track-order/index.tsx
badd +192 src/service/api/order/index.ts
badd +1 android/app/src/main/res/values/styles.xml
badd +11 src/pages/choose-location/index.tsx
badd +14 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/order/types/daily-order.type.ts
badd +113 src/pages/handling-order/hooks/order-control/index.ts
badd +1 src/pages/home/modal/team-modal/no-team/match-animate-content.tsx
badd +108 src/pages/home/modal/team-modal/member-info/index.tsx
badd +7 node_modules/@cjs/lbs-amap-screen/src/components/marker.tsx
badd +25 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-screen/src/LbsAmapMarkerNativeComponent.ts
badd +60 src/pages/dispatch-order/map-content.tsx
badd +63 src/pages/home/bottom-control/hooks/track-order-socket.ts
badd +63 src/pages/home/modal/team-modal/member-info/member-map/index.tsx
badd +1 jest.config.js
badd +5 tsconfig.json
badd +11 metro.config.js
badd +8 src/layout/toast-layout/index.tsx
badd +50 src/layout/loading-layout/index.tsx
badd +83 src/pages/home/modal/team-modal/index.tsx
badd +31 src/pages/home/modal/team-modal/no-team/btn-control.tsx
badd +49 src/pages/home/bottom-control/hooks/driver-with-order-control.ts
badd +91 src/components/cjs-check/index.tsx
badd +12 src/components/cjs-avatar/default-avatar.tsx
badd +90 src/pages/login/index.tsx
badd +22 src/styles/theme/theme-style.ts
badd +37 src/pages/login/agreement/index.tsx
badd +106 src/pages/dispatch-order/dispatch-addresses.tsx
badd +19 src/pages/agreements/privacy-agreement/index.tsx
badd +13 src/pages/agreements/user-info-agreement/index.tsx
badd +82 src/pages/agreements/user-server-agreement/index.tsx
badd +39 src/pages/agreements/index.tsx
badd +51 src/pages/login/hooks/login-control.ts
badd +40 src/pages/home/map-content/index.tsx
badd +41 src/pages/home/map-content/map-control-btn.tsx
badd +1 src/components/cjs-tag/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/promise/maybe-promise.ts
badd +52 src/hooks/service/user-info.ts
badd +12 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/login/index.ts
badd +1 src/hooks/time-count-down.ts
badd +12 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-misc/src/NativeLocation.ts
badd +64 src/pages/search-address/index.tsx
badd +42 src/pages/bill-order/index.tsx
badd +10 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/pages/bill-order/hooks/bill-state/index.ts
badd +6 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/bill-order/index.ts
badd +16 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/bill-order/type/bill-order-detail.type.ts
badd +24 src/pages/home/hooks/normaliz-global-socket.ts
badd +26 src/pages/home/hooks/should-complete-order.ts
badd +41 src/pages/handling-order/based-handling-order/driver-real-mileage/index.tsx
badd +1 src/constants/keys/order-mileage.ts
badd +149 src/pages/handling-order/based-handling-order/index.tsx
badd +54 ios/Podfile
badd +11 ios/cjs_sd/Info.plist
badd +1 ios/cjs_sd/LaunchScreen.storyboard
badd +1 ios/cjs_sd/PrivacyInfo.xcprivacy
badd +16 src/__tests__/shared/index.spec.ts
badd +115 src/pages/handling-order/based-handling-order/handling-order-content-control.tsx
badd +28 src/pages/insurance/index.tsx
badd +81 src/pages/insurance/source-content.tsx
badd +1 src/shared/misc/index.ts
badd +1 src/shared/misc/phone.ts
badd +4 src/shared/misc/service.ts
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
badd +64 src/components/cjs-header/index.tsx
badd +1 android/gradlew.bat
badd +1 android/gradlew
badd +34 src/service/index.ts
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/help-type/index.ts
badd +5 index.d.ts
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/async-storage/index.ts
badd +41 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/hooks/routes-hook.tsx
badd +1 src/components/index.ts
badd +1 src/constants/regexp/index.ts
badd +21 src/store/index.ts
badd +29 src/pages/my-orders/index.tsx
badd +22 src/pages/my-orders/order-list-content.tsx
badd +127 src/pages/order-list/order-list-content/order/index.tsx
badd +71 node_modules/@cjs/lbs-amap-misc/src/index.tsx
badd +2 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-misc/src/types/location-client-options.type.ts
badd +74 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/request/tianditu-request/index.ts
badd +9 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/request/tianditu-request/type/regecode.type.ts
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/.cjsUpdate.json
badd +1 src/hooks/service/banks-reducer.ts
badd +14 src/hooks/audio-player.ts
badd +11 src/hooks/take-orde-hook.ts
badd +27 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/pages/handling-order/hooks/order-state/index.ts
badd +1 src/pages/handling-order/based-handling-order/hooks/.DS_Store
badd +28 src/pages/handling-order/based-handling-order/hooks/map-control/index.ts
badd +1 src/pages/login/version.tsx
badd +11 src/store/bank/index.ts
badd +23 src/pages/bank/index.tsx
badd +34 src/pages/bank/bank-cards/index.tsx
badd +55 src/pages/bank/bank-cards/add-bank.tsx
badd +100 src/pages/bank/add-modal/index.tsx
badd +35 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/bank/index.ts
badd +21 src/pages/order-list/index.tsx
badd +1 src/pages/order-list/order-list-content/empty-order-result.tsx
badd +37 src/pages/order-list/order-list-content/daily-order-list.tsx
badd +19 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/order-history/index.ts
badd +26 src/pages/withdraw/index.tsx
badd +563 node_modules/@types/react/ts5.0/index.d.ts
badd +21 src/pages/search-address/search-content/index.tsx
badd +122 src/pages/search-address/search-content/search-content-list/index.tsx
badd +79 src/pages/search-address/search-input/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/debounce/index.ts
badd +11 src/store/driver/index.ts
badd +18 src/pages/my-orders/my-orders-header.tsx
badd +27 src/pages/handling-order/handling-example-order/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/misc/order.ts
badd +46 src/pages/withdraw-control/index.tsx
badd +95 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/hooks/order-mileage-hook.ts
badd +55 src/pages/handling-order/based-handling-order/driver-real-mileage/hooks/driver-real-mileage-order-location.ts
badd +5 jest.setup.js
badd +7 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/__tests__/hooks/mileage-order.spec.tsx
badd +8 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@react-native-async-storage/async-storage/jest/async-storage-mock.d.ts
badd +27 src/__tests__/layout/toast-layout.spec.tsx
badd +23 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@testing-library/react-native/build/render-hook.d.ts
badd +1 src/pages/handling-order/based-handling-order/upload-driver-picture.tsx
badd +1 src/pages/handling-order/hooks/socket-control/index.ts
badd +11 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/assets/font-icon/index.ts
badd +26 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-screen/src/component/mapView.tsx
badd +1479 yarn.lock
badd +17 ios/Podfile.lock
badd +14 node_modules/react-native/ReactCommon/react/nativemodule/core/platform/ios/React-NativeModulesApple.podspec
badd +11 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-screen/src/index.ts
badd +5 index.js
badd +7 node_modules/@cjs/lbs-amap-screen/src/component/marker.tsx
badd +14 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-misc/lib/commonjs/index.js
badd +2 src/gesture-handler.native.js
badd +19 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/react-native-nitro-sound/src/index.tsx
badd +1536 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/typescript/lib/lib.es5.d.ts
badd +29 android/app/src/main/java/com/cjs_sd/MainActivity.kt
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/assets/font-icon/iconfont.json
badd +33 src/pages/login/login-header.tsx
badd +24 node_modules/react-native-safe-area-context/src/SafeAreaView.tsx
badd +18134 node_modules/typescript/lib/lib.dom.d.ts
badd +11 src/pages/choose-order/index.tsx
badd +9 src/hooks/permissions-verify-hooks.ts
badd +38 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/permissions/index.ts
badd +23 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/react-native-permissions/src/index.ts
badd +14 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/react-native-permissions/src/contract.ts
badd +3 .env.production
badd +3 android/app/src/main/res/values/strings.xml
badd +4 android/app/src/main/res/xml/network_security_config.xml
badd +1 src/service/request/index.ts
badd +43 src/pages/home/modal/team-modal/no-team/hooks/match-team.ts
badd +3 .env.development
badd +49 src/pages/withdraw/money-withdraw.tsx
badd +67 src/pages/withdraw/withdraw-control/index.tsx
badd +48 src/pages/withdraw-control/hooks/withdraw-control-status.ts
badd +4 .prettierrc.js
badd +14 src/pages/withdraw/withdraw-header.tsx
badd +23 src/pages/withdraw-history/index.tsx
badd +22 src/service/api/user/index.ts
badd +12 src/service/api/user/types/payout.type.ts
badd +15 src/pages/withdraw-history/hooks/withdraw-history-state.ts
badd +36 src/pages/my-orders/hooks/my-order-state.ts
badd +17 src/pages/order-list/order-list-content/hooks/order-reducer.ts
badd +85 src/pages/withdraw-history/withdraw-history-content.tsx
badd +21 src/pages/withdraw-history/withdraw-history-empty.tsx
badd +8 android/settings.gradle
badd +1 node_modules/react-native-wechat-lib/android/gradle.properties
badd +16 src/store/order/index.ts
badd +37 src/pages/handling-order/handling-hardware-order/index.tsx
badd +70 src/pages/handling-order/based-handling-order/handling-order-content-normal-info/handling-hardware-order-choose-end-address.tsx
badd +119 src/pages/handling-order/based-handling-order/handling-order-content-normal-info/index.tsx
badd +59 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-misc/src/NativeAMapMiscLocation.ts
badd +12 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@react-navigation/core/src/useRoute.tsx
badd +489 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@react-navigation/core/src/types.tsx
badd +97 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@react-navigation/routers/src/types.tsx
badd +3 src/layout/modal-layout/index.tsx
badd +86 src/layout/modal-layout/modal-content.tsx
badd +1 android/app/src/main/.DS_Store
badd +20 package.json
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/shared/get-location/index.ts
badd +88 src/pages/handling-order/handling-example-order/example-order-hook.ts
badd +11 src/pages/handling-order/based-handling-order/driver-real-mileage/hooks/driver-real-mileage-order-time.ts
badd +1 src/pages/home/bottom-control/icon-btn.tsx
badd +31 android/app/src/main/java/com/cjs_sd/MainApplication.kt
badd +1 src/pages/handling-order/based-handling-order/driver-real-mileage/driver-real-mileage-tag.tsx
badd +1 src/pages/order-list/top-tab.tsx
badd +25 src/pages/order-list/order-list-content/index.tsx
badd +1 src/hooks/layout-size-hook.ts
badd +1 src/hooks/modal-control.ts
badd +108 node_modules/@cjs/lbs-amap-misc/android/src/main/java/com/cjs/lbsamapmisc/lbsAmapMiscLocationModule.kt
badd +28 src/pages/home/modal/team-modal/member-info/member-map/member-marker.tsx
badd +14 src/store/team/index.ts
badd +10 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/team/type/index.ts
badd +38 ios/cjs_sd/AppDelegate.swift
badd +1 ios/cjs_sd.xcodeproj/project.pbxproj
badd +21 ios/Pods/Pods.xcodeproj/project.pbxproj
badd +1 src/.DS_Store
badd +48 src/hooks/service/team-reducer.ts
badd +14 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/api/team/index.ts
badd +6 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@react-navigation/native/src/index.tsx
badd +69 src/pages/user-info/user-info-header.tsx
badd +84 node_modules/@cjs/patch-update/src/components/hot-patch-update.tsx
badd +10 node_modules/@cjs/patch-update/lib/commonjs/components/hot-patch-update.js
badd +38 node_modules/@cjs/patch-update/lib/module/components/hot-patch-update.js
badd +2 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/ios/ci_scripts/ci_post_clone.sh
badd +28 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/lbs-amap-screen/src/LbsAmapTitleMarkerNativeComponent.ts
badd +1 .eslintrc.js
badd +1 .gitignore
badd +1 .DS_Store
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/@cjs/patch-update/src/index.tsx
badd +11 src/hooks/use-choose-location-hook.ts
badd +2 src/shared/misc/cut-str.ts
badd +1 src/service/api/oss/index.ts
badd +5 src/service/api/order/types/order-update-place.type.ts
badd +3 .yarnrc.yml
badd +29 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/node_modules/react-native/Libraries/Components/View/View.d.ts
badd +20 src/pages/handling-order/index.tsx
badd +23 src/pages/handling-order/handling-long-order/index.tsx
badd +34 src/pages/home/modal/team-modal/no-team/match-option.tsx
badd +48 src/pages/home/modal/team-modal/no-team/index.tsx
badd +1 src/service/api/user/types/driver-location.type.ts
badd +161 src/components/cjs-input/index.tsx
badd +94 ~/Desktop/lately/rn_project/packages/apps/cjs_sd/src/service/socket/index.ts
badd +1 .cjsHotUpdateLogin.json
badd +80 node_modules/@cjs/patch-update/src/components/UpdatePackageModal.tsx
argglobal
%argdel
edit src/App.tsx
argglobal
balt src/layout/toast-layout/index.tsx
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 116 - ((37 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 116
normal! 029|
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
