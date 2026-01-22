let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/hotUpdateServer
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +9 middlewares/panic/panic.go
badd +13 ~/Desktop/lately/hotUpdateServer/comm/recover-panic.go
badd +33 controllers/users/users.go
badd +48 comm/db.go
badd +35 scripts/config.go
badd +9 middlewares/auth/auth.go
badd +21 dto/apps/apps.go
badd +1 router/apps/apps.go
badd +15 models/apps/apps.go
badd +3 comm/constants.go
badd +3 utils/jwt.go
badd +236 ~/go/pkg/mod/github.com/golang-jwt/jwt/v5@v5.2.1/parser.go
badd +59 ~/go/pkg/mod/github.com/golang-jwt/jwt/v5@v5.2.1/rsa_utils.go
badd +13 ~/go/pkg/mod/github.com/golang-jwt/jwt/v5@v5.2.1/claims.go
badd +34 ~/go/pkg/mod/github.com/golang-jwt/jwt/v5@v5.2.1/token.go
badd +35 repository/users/users.go
badd +22 utils/read-file.go
badd +1 utils/md5.go
badd +15 utils/application-manage.go
badd +1 utils/to-uuid.go
badd +1 utils/write-file.go
badd +24 models/users/users.go
badd +5 vo/apps/apps.go
badd +13 router/users/users.go
badd +18 conf/keys/private.pem
badd +6 conf/keys/public.pem
badd +1 vo/vo.go
badd +11 dto/hotupdate/hotupdate.go
badd +94 controllers/hotupdate/hotupdate.go
badd +39 repository/hotupdate/hotupdate.go
badd +14 router/router.go
badd +14 router/hotupdate/hotupdate.go
badd +7 models/hotupdate/hotupdate.go
badd +2 utils/hash_file_name.go
badd +274 /usr/local/go/src/mime/multipart/formdata.go
badd +387 /usr/local/go/src/io/io.go
badd +60 /usr/local/go/src/os/types.go
badd +16 /usr/local/go/src/os/types_unix.go
badd +13 middlewares/hotupdate/hotupdate.go
badd +99 ~/go/pkg/mod/gorm.io/gorm@v1.25.12/gorm.go
badd +6 ~/go/pkg/mod/github.com/google/uuid@v1.6.0/dce.go
badd +20 ~/go/pkg/mod/github.com/google/uuid@v1.6.0/uuid.go
badd +24 controllers/check/check.go
badd +25 repository/check/check.go
badd +30 main_debug.go
badd +9 conf/server.yaml
badd +31 main_release.go
badd +8 vo/check/check.go
badd +27 controllers/bind/bind.go
badd +5 dto/bind/bind.go
badd +19 repository/bind/bind.go
badd +10 router/bind/bind.go
badd +6 utils/safe-file.go
badd +108 utils/zip.go
badd +23 controllers/apps/apps.go
badd +54 /usr/local/go/src/archive/zip/reader.go
badd +92 /usr/local/go/src/archive/zip/struct.go
argglobal
%argdel
edit utils/zip.go
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
exe '1resize ' . ((&lines * 30 + 24) / 48)
exe '2resize ' . ((&lines * 15 + 24) / 48)
argglobal
balt controllers/hotupdate/hotupdate.go
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 3,10fold
sil! 23,25fold
sil! 30,32fold
sil! 36,38fold
sil! 41,44fold
sil! 40,45fold
sil! 47,53fold
sil! 16,75fold
sil! 81,83fold
sil! 88,90fold
sil! 95,97fold
sil! 78,100fold
sil! 105,107fold
sil! 102,108fold
sil! 116,118fold
sil! 114,121fold
sil! 111,124fold
sil! 110,125fold
sil! 130,132fold
sil! 137,139fold
sil! 143,145fold
sil! 127,148fold
let &fdl = &fdl
let s:l = 108 - ((0 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 108
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/hotUpdateServer//3692:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/hotUpdateServer//3692:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/hotUpdateServer//3692:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/hotUpdateServer//3692:/bin/zsh;\#toggleterm\#1
endif
balt utils/zip.go
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 6 - ((5 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
wincmd w
exe '1resize ' . ((&lines * 30 + 24) / 48)
exe '2resize ' . ((&lines * 15 + 24) / 48)
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
