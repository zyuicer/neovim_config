let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsTestIos
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +18 ios/Test.mm
badd +1 ios/Test.h
badd +2 package.json
badd +1 src/NativeLocation.ts
badd +1 src/NativeTest.ts
badd +12 src/index.tsx
badd +13 example/src/App.tsx
badd +24 ios/Location.mm
badd +1 build/generated/ios/TestSpec/TestSpec-generated.mm
badd +1 ios/Location.h
badd +28 example/ios/Podfile
badd +5 Test.podspec
badd +51 example/ios/TestExample/Info.plist
badd +1 example/package.json
badd +1 example/ios/Podfile.lock
badd +1 example/ios/.xcode.env
badd +1 example/ios/.xcode.env.local
badd +2 example/app.json
badd +1 example/ios/TestExample.xcworkspace/contents.xcworkspacedata
badd +1 example/ios/TestExample.xcworkspace/xcuserdata/apple.xcuserdatad/UserInterfaceState.xcuserstate
badd +1 example/ios/TestExample.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist
badd +1 example/babel.config.js
badd +1 example/index.js
argglobal
%argdel
edit ios/Location.mm
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
exe '1resize ' . ((&lines * 39 + 30) / 60)
exe '2resize ' . ((&lines * 18 + 30) / 60)
argglobal
balt example/package.json
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 7,8fold
sil! 13,17fold
sil! 19,20fold
sil! 12,21fold
sil! 24,25fold
sil! 26,27fold
let &fdl = &fdl
let s:l = 24 - ((23 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 057|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsTestIos//90378:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsTestIos//90378:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsTestIos//90378:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rn_project/packages/rn_plugin_modules/lbsTestIos//90378:/bin/zsh;\#toggleterm\#1
endif
balt ios/Location.mm
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 10010 - ((9 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10010
normal! 052|
wincmd w
exe '1resize ' . ((&lines * 39 + 30) / 60)
exe '2resize ' . ((&lines * 18 + 30) / 60)
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
