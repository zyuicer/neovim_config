let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/cjs_hot_update_cli
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +14 src/answer/upload_app_answer.rs
badd +50 src/service/upload/mod.rs
badd +109 ~/Desktop/lately/hot_update_demo/src/quests/mod.rs
badd +451 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/convert/mod.rs
badd +50 ~/Desktop/lately/hot_update_demo/src/answer/upload_update_answer.rs
badd +10 src/shared/login_json/mod.rs
badd +4 src/shared/mod.rs
badd +15 src/shared/read_config.rs
badd +13 src/answer/login_answer.rs
badd +4 src/answer/ls_answer.rs
badd +79 src/answer/create_answer.rs
badd +15 ~/Desktop/lately/hot_update_demo/src/quests/command.rs
badd +8 ~/Desktop/lately/hot_update_demo/src/quests/upload_app_command.rs
badd +1 src/answer/uri_answer.rs
badd +2 Cargo.toml
badd +8 ~/Desktop/lately/hot_update_demo/src/main.rs
badd +2 base_config.toml
badd +1 src/config/base_config.rs
badd +1 src/answer/mod.rs
badd +90 ~/Desktop/lately/hot_update_demo/src/service/mod.rs
badd +12 src/lib.rs
argglobal
%argdel
edit src/answer/upload_app_answer.rs
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 14 - ((13 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 030|
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
