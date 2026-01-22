let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/rust_native_workspace
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +17 Cargo.toml
badd +1 src/lib.rs
badd +16 scripts/build.sh
badd +31 crates/patch_update/src/lib.rs
badd +1 crates/patch_update/src/patch.rs
badd +39 crates/patch_update/src/patch/patch.rs
badd +109 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/jni-0.21.1/src/wrapper/objects/jprimitive_array.rs
badd +35 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/jni-0.21.1/src/wrapper/objects/jobject.rs
badd +13 crates/patch_update/src/err/err.rs
badd +1 crates/patch_update/src/err.rs
badd +77 crates/patch_update/vendor/HDiffPatch/checksum_plugin_demo.h
badd +11 crates/patch_update/build.rs
badd +1 crates/patch_update/Cargo.toml
badd +457 crates/patch_update/vendor/HDiffPatch/hdiffz.cpp
badd +1272 crates/patch_update/vendor/HDiffPatch/hpatchz.c
badd +205 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/patch.h
badd +962 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/result.rs
badd +1751 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/jni-0.21.1/src/wrapper/jnienv.rs
badd +2108 crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/patch.c
badd +189 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/patch_types.h
badd +108 crates/patch_update/vendor/rust_c_glue/patch/patch.c
badd +11 crates/patch_update/vendor/rust_c_glue/patch/patch.h
badd +852 crates/patch_update/vendor/HDiffPatch/decompress_plugin_demo.h
badd +1 crates/patch_update/src/.DS_Store
badd +207 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/HDiffPatch/file_for_patch.h
badd +25 crates/patch_update/vendor/bzip2/bzlib.h
badd +19 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/HDiffPatch/dirDiffPatch/dir_patch/dir_patch_types.h
badd +90 crates/patch_update/vendor/HDiffPatch/test/hpatchz_test.cpp
badd +73 crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/hpatch_mt/hpatch_mt.h
badd +85 crates/patch_update/vendor/lzma/C/Lzma2Dec.c
badd +78 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/lzma/C/LzmaDec.h
badd +175 crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/hpatch_mt/_patch_private_mt.h
badd +67 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/HDiffPatch/libParallel/parallel_import_c.h
badd +342 crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/hpatch_mt/hpatch_mt.c
badd +45 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/hpatch_mt/_hcache_old_mt.h
badd +117 crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/hpatch_mt/_hinput_mt.c
badd +26 ~/Desktop/lately/rust_native_workspace/crates/patch_update/vendor/HDiffPatch/libHDiffPatch/HPatch/hpatch_mt/_hinput_mt.h
argglobal
%argdel
edit crates/patch_update/src/patch/patch.rs
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
exe '1resize ' . ((&lines * 35 + 24) / 48)
exe '2resize ' . ((&lines * 10 + 24) / 48)
argglobal
balt crates/patch_update/src/lib.rs
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 39 - ((16 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 39
normal! 039|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/lately/rust_native_workspace//77240:/bin/zsh;\#toggleterm\#1", ":p")) | buffer term://~/Desktop/lately/rust_native_workspace//77240:/bin/zsh;\#toggleterm\#1 | else | edit term://~/Desktop/lately/rust_native_workspace//77240:/bin/zsh;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/lately/rust_native_workspace//77240:/bin/zsh;\#toggleterm\#1
endif
balt crates/patch_update/src/lib.rs
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 10003 - ((2 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10003
normal! 050|
wincmd w
exe '1resize ' . ((&lines * 35 + 24) / 48)
exe '2resize ' . ((&lines * 10 + 24) / 48)
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
