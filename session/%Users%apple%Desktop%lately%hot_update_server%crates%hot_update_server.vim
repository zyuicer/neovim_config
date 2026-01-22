let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/hot_update_server/crates/hot_update_server
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +31 src/controllers/app/mod.rs
badd +30 ~/Desktop/lately/hot_update_server/crates/hot_update_server/src/dto/app/mod.rs
badd +1 src/help/bind/mod.rs
badd +2 src/help/mod.rs
badd +21 ~/Desktop/lately/hot_update_server/crates/hot_update_server/src/help/request_valid/mod.rs
badd +32 src/db/app/mod.rs
badd +11 ~/Desktop/lately/hot_update_server/crates/hot_update_server/src/modal/app/mod.rs
badd +9 ~/Desktop/lately/hot_update_server/crates/hot_update_server/src/modal/app/search_app.rs
argglobal
%argdel
edit src/controllers/app/mod.rs
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
exe '1resize ' . ((&lines * 20 + 23) / 47)
exe '2resize ' . ((&lines * 23 + 23) / 47)
argglobal
balt src/db/app/mod.rs
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 27 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 073|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/hot_update_server/crates/hot_update_server//44308:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/hot_update_server/crates/hot_update_server//44308:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/hot_update_server/crates/hot_update_server//44308:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/hot_update_server/crates/hot_update_server//44308:/bin/zsh;\#toggleterm\#1
endif
balt src/controllers/app/mod.rs
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 79 - ((22 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 79
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 20 + 23) / 47)
exe '2resize ' . ((&lines * 23 + 23) / 47)
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
