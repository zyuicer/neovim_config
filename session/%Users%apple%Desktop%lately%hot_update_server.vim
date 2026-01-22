let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/hot_update_server
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +36 Cargo.toml
badd +1 ~/Desktop/lately/hot_update_server/conf/service.yaml
badd +48 src/err/mod.rs
badd +469 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/anyhow-1.0.97/src/lib.rs
badd +24 src/controllers/hot_update/mod.rs
badd +14 src/help/version/mod.rs
badd +2 src/help/mod.rs
badd +853 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/result.rs
badd +16 src/router/hot_update/mod.rs
badd +19 src/db/app/mod.rs
badd +13 src/modal/app/mod.rs
badd +78 src/db/hot_update/mod.rs
badd +13 ~/Desktop/lately/hot_update_server/src/controllers/check/mod.rs
badd +3 ~/Desktop/lately/hot_update_server/src/db/check/mod.rs
badd +31 src/controllers/app/mod.rs
badd +6 ~/Desktop/lately/hot_update_server/src/macros/multipart/mod.rs
badd +14 src/router/mod.rs
badd +68 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/axum-0.8.3/src/routing/mod.rs
badd +50 src/dto/app/mod.rs
badd +51 ~/Desktop/lately/hot_update_server/src/help/token/mod.rs
badd +73 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/axum-0.8.3/src/extension.rs
badd +19 src/middlewares/auth/mod.rs
badd +28 src/response/mod.rs
badd +18 src/controllers/bind/mod.rs
badd +7 src/router/bind/mod.rs
badd +12 src/router/app/mod.rs
badd +18 src/conf/mod.rs
badd +1 web/pnpm-workspace.yaml
badd +15 web/package.json
badd +9 web/src/App.tsx
badd +1 web/.oxlintignore
badd +2 web/.editorconfig
badd +1 web/index.html
badd +1 web/pnpm-lock.yaml
badd +4 web/vite.config.ts
badd +5 web/tsconfig.app.json
badd +7 web/src/service/index.ts
badd +66 web/src/service/request/index.ts
badd +530 ~/Desktop/lately/hot_update_server/web/node_modules/.pnpm/axios@1.13.2/node_modules/axios/index.d.ts
badd +1 web/.env.development
badd +1 web/.env.production
badd +2 config/service.yaml
badd +1 web/index.d.ts
badd +17 ~/Desktop/lately/hot_update_server/web/src/router/index.tsx
badd +40 web/src/pages/home/index.tsx
badd +10 web/src/main.tsx
badd +27 web/src/pages/home/home-side/index.tsx
badd +8 web/src/pages/home/style/index.ts
badd +8 web/src/pages/home/home-side/style.ts
badd +14 web/src/pages/home/home-content/index.tsx
badd +25 web/src/pages/home/home-header/index.tsx
badd +2 web/src/store/index.ts
badd +11 web/src/store/theme/index.ts
badd +59 ~/Desktop/lately/hot_update_server/web/node_modules/.pnpm/antd@6.0.0-alpha.5_react-dom@19.2.0_react@19.2.0__react@19.2.0/node_modules/antd/es/config-provider/index.d.ts
badd +78 ~/Desktop/lately/hot_update_server/web/node_modules/.pnpm/antd@6.0.0-alpha.5_react-dom@19.2.0_react@19.2.0__react@19.2.0/node_modules/antd/es/config-provider/context.d.ts
badd +56 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/axum-core-0.5.2/src/extract/mod.rs
badd +49 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/axum-0.8.3/src/extract/query.rs
badd +12 src/modal/app/search_app.rs
badd +8 ~/Desktop/lately/hot_update_server/src/macros/controller.rs
badd +1 src/macros/mod.rs
badd +10 crates/hot_update_server/src/main.rs
badd +1 .DS_Store
badd +8 crates/macro_help/Cargo.toml
badd +16 crates/macro_help/src/lib.rs
badd +1 crates/hot_update_server/src/macros/mod.rs
badd +22 crates/hot_update_server/src/help/bind/mod.rs
badd +1 ~/Desktop/lately/hot_update_server/crates/hot_update_server/src/controllers/app/mod.rs
badd +15 crates/hot_update_server/Cargo.toml
badd +2 crates/macro_help/src/sever/mod.rs
badd +14 ~/Desktop/lately/hot_update_server/crates/hot_update_server/src/db/app/mod.rs
badd +30 ~/Desktop/lately/hot_update_server/crates/hot_update_server/src/modal/app/mod.rs
badd +5 packages/web/src/pages/home/chlidren/apps/state.ts
badd +15 package.json
badd +8 packages/web/package.json
badd +7 ~/Desktop/lately/hot_update_server/packages/web/src/service/api/apps/index.ts
badd +1 packages/web/src/service/api/apps/type.ts
badd +1 packages/web/src/service/api/index.ts
badd +1 ~/Desktop/lately/hot_update_server/packages/web/src/service/api/type.ts
badd +2 .oxlintignore
badd +39 .oxlintrc.json
badd +1 .editorconfig
badd +1 Cargo.lock
badd +5 packages/web/src/service/index.ts
badd +13 packages/web/src/pages/home/chlidren/apps/index.tsx
badd +3 node_modules/.pnpm/zustand@5.0.8_@types+react@19.2.7_react@19.2.0/node_modules/zustand/esm/react.d.mts
badd +7 packages/web/src/store/apps/index.ts
badd +45 packages/web/src/pages/home/chlidren/apps/apps-table.tsx
badd +12 packages/web/src/pages/login/index.tsx
badd +22 crates/hot_update_server/src/controllers/check/mod.rs
badd +8 .cargo/config.toml
badd +1 packages/web/.env.development
badd +13 packages/web/src/App.tsx
badd +129 crates/server/src/help/bind/mod.rs
badd +45 crates/server/src/controllers/bind/mod.rs
badd +33 crates/server/src/script/mod.rs
badd +35 crates/server/src/script/diff/mod.rs
badd +1 ~/Desktop/lately/hot_update_server/crates/server/src/db/hot_update/mod.rs
badd +9 crates/server/src/modal/hot_update/mod.rs
badd +20 crates/server/src/router/hot_update/mod.rs
badd +57 crates/server/src/controllers/hot_update/mod.rs
badd +35 crates/server/src/macros/multipart/mod.rs
badd +45 crates/server/src/modal/app/mod.rs
badd +1 crates/tester/src/lib.rs
badd +7 crates/tester/Cargo.toml
badd +6 crates/server/Cargo.toml
badd +1 ~/Desktop/lately/hot_update_server/crates/tester/src/hot_update_server_tester.rs
badd +19 ~/Desktop/lately/hot_update_server/crates/tester/src/hot_update_server_tester/generater_diff_file.rs
badd +1 crates/.DS_Store
badd +27 crates/server/src/main.rs
badd +1 crates/tester/src/.DS_Store
badd +11 crates/server/src/help/file/mod.rs
badd +43 ~/Desktop/lately/hot_update_server/crates/server/src/help/file/zip_file/mod.rs
badd +40 crates/server/src/err/mod.rs
badd +88 crates/server/src/db/app/mod.rs
badd +1 crates/server/src/modal/mod.rs
badd +19 crates/server/src/router/app/mod.rs
badd +87 crates/server/src/controllers/app/mod.rs
badd +1 ~/Desktop/lately/hot_update_server/crates/server/src/db/mod.rs
badd +9 crates/server/src/router/bind/mod.rs
badd +11 crates/server/src/router/user/mod.rs
badd +18 crates/server/src/controllers/users/mod.rs
badd +9 crates/server/src/modal/user/mod.rs
badd +1 ~/Desktop/lately/hot_update_server/crates/server/src/db/user/mod.rs
badd +35 crates/server/src/help/token/mod.rs
argglobal
%argdel
edit crates/server/src/controllers/app/mod.rs
argglobal
balt crates/server/src/router/app/mod.rs
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
72
sil! normal! zo
76
sil! normal! zo
106
sil! normal! zo
let s:l = 87 - ((27 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 87
normal! 061|
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
