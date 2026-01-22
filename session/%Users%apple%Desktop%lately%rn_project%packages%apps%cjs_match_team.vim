let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/apps/cjs_match_team
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +38 src/App.tsx
badd +19 package.json
badd +65 node_modules/@cjs/patch-update/src/components/hot-patch-update.tsx
badd +562 node_modules/@types/react/ts5.0/index.d.ts
badd +80 src/pages/home/hooks/index.ts
badd +30 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/service/api/team/index.ts
badd +85 src/pages/home/match-team-wrapper/match-options.tsx
badd +4 .env.development
badd +33 src/service/index.ts
badd +19 src/store/index.ts
badd +47 src/hooks/service/team-manage.ts
badd +28 src/hooks/service/socket-reducer.ts
badd +26 src/hooks/service/user-info.ts
badd +18 src/store/team/index.ts
badd +6 node_modules/zustand/esm/react.d.mts
badd +58 src/router/index.tsx
badd +966 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/node_modules/@react-navigation/core/src/types.tsx
badd +92 src/pages/match-team/index.tsx
badd +40 src/pages/match-team/match-team-header.tsx
badd +30 src/pages/match-team/match-team-info.tsx
badd +4 src/pages/match-team/order-info/index.tsx
badd +20 src/pages/match-team/order-info/alert-tag.tsx
badd +40 src/pages/match-team/order-info/order-image.tsx
badd +1 src/pages/match-team/hooks/index.ts
badd +22 src/hooks/service/put-location.ts
badd +31 src/service/api/driver/index.ts
badd +1 src/service/api/driver/types/index.ts
badd +1 .cjsHotUpdateLogin.json
badd +4 .env.production
badd +1 src/shared/permission/location-permission.ts
badd +1 src/shared/help-type/index.ts
badd +3 src/shared/service/index.ts
badd +63 src/layout/toast-layout/index.tsx
badd +46 src/pages/login/index.tsx
badd +54 src/pages/registry/index.tsx
badd +14 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/service/api/registry/index.ts
badd +1 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerBoxManagerDelegate.java
badd +1 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerBoxManagerInterface.java
badd +1 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerTextManagerInterface.java
badd +1 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerViewManagerInterface.java
badd +23 node_modules/@cjs/lbs-amap-screen/android/generated/java/com/facebook/react/viewmanagers/LbsAmapMarkerTextManagerDelegate.java
badd +1 node_modules/@cjs/lbs-amap-screen/src/NativeLbsAmapSdk.ts
badd +39 node_modules/@cjs/lbs-amap-screen/src/LbsAmapScreenViewNativeComponent.ts
badd +1 node_modules/@cjs/lbs-amap-screen/src/LbsAmapPolylineNativeComponent.ts
badd +4 node_modules/@cjs/lbs-amap-screen/src/LbsAmapMarkerNativeComponent.ts
badd +1 node_modules/@cjs/lbs-amap-screen/src/LbsAmapMarkerBoxNativeComponent.ts
badd +1 node_modules/@cjs/lbs-amap-screen/src/LbsAmapMarkerTextNativeComponent.ts
badd +1 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/MountComponentEvent.kt
badd +1 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/LbsAmapScreenViewManager.kt
badd +15 node_modules/@cjs/lbs-amap-screen/android/src/main/java/com/cjs/lbsamapscreen/LbsAmapScreenPackage.kt
badd +1 android/build.gradle
badd +75 android/app/build.gradle
badd +30 android/gradle.properties
badd +1 yarn.lock
badd +1 .yarnrc.yml
badd +35 src/pages/home/index.tsx
badd +92 src/components/cjs-avatar/index.tsx
badd +57 src/pages/match-team/main-order/index.tsx
badd +103 src/components/cjs-icon-btn/index.tsx
badd +22 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/components/types/theme-type.ts
badd +15 src/pages/match-team/hooks/main-order-status.ts
badd +10 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/service/api/team/type.ts
badd +47 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/service/request/index.ts
badd +1 src/pages/home/home-header.tsx
badd +37 src/components/cjs-header/index.tsx
badd +6 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/pages/self-info/index.tsx
badd +18 src/pages/withdraw/index.tsx
badd +8 src/store/driver-info/index.ts
badd +63 src/pages/withdraw/withdraw-control/index.tsx
badd +3 src/pages/bank/index.tsx
badd +121 src/pages/home/match-team-wrapper/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/node_modules/@cjs/patch-update/src/index.tsx
badd +8 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/pages/free-qr/index.tsx
badd +2 tsconfig.json
badd +23 src/pages/login/login-header.tsx
badd +21 src/pages/free-qr/free-qr-list/index.tsx
badd +19 src/pages/free-qr/free-qr-list/list-content.tsx
badd +12 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/assets/font-icon/index.tsx
badd +1 .cjsUpdate.json
badd +1 .DS_Store
badd +1 .eslintrc.js
badd +18 src/service/api/login/index.ts
badd +58 node_modules/@cjs/lbs-amap-misc/src/index.tsx
badd +26 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/shared/get-location/index.ts
badd +30 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/service/request/tianditu-request/index.ts
badd +158 src/components/cjs-button/index.tsx
badd +26 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/src/styles/theme/theme-style.ts
badd +92 src/pages/match-team-home/index.tsx
badd +56 src/pages/match-team-home/header/index.tsx
badd +28 src/pages/match-team-home/match-team-home-rules/index.tsx
badd +71 ~/Desktop/lately/rn_project/packages/apps/cjs_match_team/node_modules/react-native/Libraries/Alert/Alert.d.ts
badd +2 src/constants/keys/user.ts
badd +12 src/shared/storage/index.ts
badd +42 src/pages/home/match-team-btns/index.tsx
badd +26 src/pages/login/version.tsx
badd +29 src/service/socket/index.ts
badd +53 node_modules/@cjs/patch-update/lib/commonjs/components/hot-patch-update.js
badd +38 node_modules/@cjs/patch-update/lib/module/components/hot-patch-update.js
badd +1 .prettierrc.js
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
exe '1resize ' . ((&lines * 28 + 24) / 48)
exe '2resize ' . ((&lines * 17 + 24) / 48)
argglobal
balt src/pages/login/version.tsx
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 8 - ((7 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 025|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/apps/cjs_match_team//75347:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/apps/cjs_match_team//75347:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/apps/cjs_match_team//75347:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/apps/cjs_match_team//75347:/bin/zsh;\#toggleterm\#1
endif
balt src/pages/login/version.tsx
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 118 - ((7 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 118
normal! 055|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 28 + 24) / 48)
exe '2resize ' . ((&lines * 17 + 24) / 48)
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
