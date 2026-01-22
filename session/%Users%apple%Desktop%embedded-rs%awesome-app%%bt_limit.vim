let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/embedded-rs/awesome-app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 term://~/Desktop/embedded-rs/app//43692:/bin/zsh;\#toggleterm\#1
badd +30 .cargo/config
badd +1 .gitignore
badd +19 Cargo.toml
badd +45 src/main.rs
badd +1 memory.x
badd +18 build.rs
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
badd +25 examples/allocator.rs
badd +43 examples/device.rs
argglobal
%argdel
edit src/main.rs
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
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
wincmd =
argglobal
enew
file NvimTree_1
balt term://~/Desktop/embedded-rs/app//43692:/bin/zsh;\#toggleterm\#1
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
wincmd w
argglobal
balt term://~/Desktop/embedded-rs/app//43692:/bin/zsh;\#toggleterm\#1
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 45 - ((35 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 45
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/embedded-rs/awesome-app//99518:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/embedded-rs/awesome-app//99518:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/embedded-rs/awesome-app//99518:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/embedded-rs/awesome-app//99518:/bin/zsh;\#toggleterm\#1
endif
balt src/main.rs
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 143 - ((19 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 143
normal! 031|
wincmd w
2wincmd w
wincmd =
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
