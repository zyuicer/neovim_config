let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsNavi
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +23 node_modules/react-native/Libraries/EventEmitter/NativeEventEmitter.d.ts
badd +16 example/src/App.tsx
badd +1 .yarnrc.yml
badd +5 tsconfig.json
badd +64 package.json
badd +1 example/yarn.lock
badd +1 src/NativeInitSdk.ts
badd +20 example/android/app/.cxx/Debug/1l3t3a6j/arm64-v8a/CMakeCache.txt
badd +21 example/android/build.gradle
badd +97 example/android/gradlew
badd +1 example/index.js
badd +1 example/jest.config.js
badd +1 yarn.lock
badd +1 turbo.json
badd +1 tsconfig.build.json
badd +1 react-native.config.js
badd +1 navi.podspec
badd +131 example/android/app/build.gradle
badd +23 src/index.tsx
badd +11 example/package.json
badd +8 android/gradle.properties
badd +1 ios/Navi.h
badd +18 ios/Navi.mm
argglobal
%argdel
edit ios/Navi.mm
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
exe '1resize ' . ((&lines * 29 + 24) / 48)
exe '2resize ' . ((&lines * 16 + 24) / 48)
argglobal
balt ios/Navi.h
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 18 - ((17 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 04|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsNavi//38320:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsNavi//38320:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsNavi//38320:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsNavi//38320:/bin/zsh;\#toggleterm\#1
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
let s:l = 159 - ((9 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 159
normal! 026|
wincmd w
exe '1resize ' . ((&lines * 29 + 24) / 48)
exe '2resize ' . ((&lines * 16 + 24) / 48)
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
