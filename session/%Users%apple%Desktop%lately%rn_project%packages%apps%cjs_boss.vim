let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/apps/cjs_boss
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +22 src/service/index.ts
badd +20 src/service/request/index.ts
badd +2 src/shared/promise/maybe-promise.ts
badd +1 src/constants/keys/user.ts
badd +3 tsconfig.json
badd +4 babel.config.js
badd +1 index.d.ts
badd +6 src/shared/storage/index.ts
badd +33 src/router/index.ts
badd +35 src/router/routes-hooks.tsx
badd +62 src/router/header.tsx
badd +20 src/pages/home/index.tsx
badd +32 App.tsx
badd +10 android/app/build.gradle
badd +17 android/app/src/main/AndroidManifest.xml
badd +8 android/build.gradle
badd +191 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/node_modules/@react-navigation/native/src/NavigationContainer.tsx
badd +52 src/pages/login/index.tsx
badd +1 src/layout/base-layout/index.tsx
badd +67 src/layout/loading-layout/index.tsx
badd +1 src/components/index.ts
badd +9 src/layout/toast-layout/index.tsx
badd +1 src/layout/loading-layout/loading-content.tsx
badd +4 src/components/cjs-button/index.tsx
badd +16 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/styles/theme/theme-style.ts
badd +11 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/components/cjs-form/hooks/form-ref-hook.ts
badd +149 src/components/cjs-form/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/constants/regex/index.ts
badd +162 src/components/cjs-input/index.tsx
badd +4 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/styles/text/index.ts
badd +7 src/service/api/login/index.ts
badd +1 src/service/api/login/type.ts
badd +12 src/service/api/user/index.ts
badd +23 src/hooks/service/user-info-reducer.ts
badd +2 src/store/index.ts
badd +13 src/store/user-info/index.ts
badd +1 src/service/api/user/type.ts
badd +6 node_modules/zustand/react.d.ts
badd +1 src/components/cjs-form-item/index.tsx
badd +95 src/pages/home/order-content/index.tsx
badd +58 src/components/cjs-tag-tabs/index.tsx
badd +31 src/pages/home/user-content/index.tsx
badd +88 src/components/cjs-avatar/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/components/types/size-type.ts
badd +10 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/components/types/shape-type.ts
badd +5 src/service/api/order/index.ts
badd +19 src/service/api/order/type.ts
badd +15 src/pages/home/order-content/order/index.tsx
badd +1 src/components/.DS_Store
badd +25 src/pages/home/other-control/index.tsx
badd +1 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/assets/font-icon/index.ts
badd +23 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/src/components/cjs-input/props/input-type-scheme.ts
badd +44 src/pages/home/hooks/order-state-reducer.ts
badd +19 src/hooks/audio-player.ts
badd +12 node_modules/react-native-audio-recorder-player/src/index.tsx
badd +131 ~/Desktop/lately/rn_project/packages/apps/cjs_boss/node_modules/react-native-audio-recorder-player/src/AudioRecorderPlayer.nitro.ts
badd +10 package.json
badd +1 src/hooks/background-action-hook.ts
argglobal
%argdel
edit src/pages/home/user-content/index.tsx
argglobal
balt src/pages/home/index.tsx
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 1,7fold
sil! 12,17fold
sil! 18,22fold
sil! 11,23fold
sil! 32,34fold
sil! 31,36fold
sil! 29,37fold
sil! 28,38fold
sil! 25,40fold
let &fdl = &fdl
let s:l = 26 - ((22 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 26
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
