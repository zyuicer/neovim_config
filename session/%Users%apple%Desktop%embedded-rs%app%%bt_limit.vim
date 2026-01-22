let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/embedded-rs/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +30 .cargo/config
badd +1 .gitignore
badd +16 Cargo.toml
badd +42 src/main.rs
badd +9 memory.x
badd +18 build.rs
badd +1 openocd.cfg
badd +1 openocd.gdb
badd +1 target/thumbv6m-none-eabi/debug/.cargo-lock
badd +1 target/thumbv6m-none-eabi/CACHEDIR.TAG
badd +1 target/.rustc_info.json
badd +1 target/thumbv6m-none-eabi/debug/build/awesome-app-f4f95defb7ffb8f0/output
badd +1 target/thumbv6m-none-eabi/debug/build/awesome-app-f4f95defb7ffb8f0/root-output
badd +1 target/thumbv6m-none-eabi/debug/build/awesome-app-f4f95defb7ffb8f0/stderr
badd +1 target/thumbv6m-none-eabi/debug/build/awesome-app-f4f95defb7ffb8f0/invoked.timestamp
badd +12 target/thumbv6m-none-eabi/debug/build/awesome-app-f4f95defb7ffb8f0/out/memory.x
badd +1 Cargo.lock
badd +2239 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rp2040-pac-0.6.0/src/lib.rs
badd +89 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rp2040-hal-0.11.0/src/sio.rs
badd +1055 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rp2040-hal-0.11.0/src/gpio/mod.rs
argglobal
%argdel
edit src/main.rs
argglobal
balt ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rp2040-hal-0.11.0/src/gpio/mod.rs
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
12
sil! normal! zo
22
sil! normal! zo
22
sil! normal! zo
let s:l = 34 - ((22 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 34
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
