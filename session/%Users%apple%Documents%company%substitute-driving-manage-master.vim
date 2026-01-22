let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/company/substitute-driving-manage-master
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +118 src/pages/home/order-manager/orders/table/dealy-order-table.tsx
badd +17 src/pages/home/order-manager/booking-orders/index.tsx
badd +3 src/pages/home/order-manager/booking-orders/effect-methods.ts
badd +15 src/store/dealy-order/async-thunk.ts
badd +11 .editorconfig
badd +1 .env.production
badd +1 .env.development
badd +45 src/routes/index.tsx
badd +4 src/routes/home/dispatch/index.tsx
badd +1 src/routes/dynamic-router.ts
badd +15 src/pages/home/distribution/index.tsx
badd +28 src/pages/home/distribution/map-controller.tsx
badd +124 src/hook/amap/index.ts
badd +1 src/pages/home/dispatch/dispatch-header/index.tsx
badd +1 src/pages/home/dispatch/dispatch-header/style.ts
badd +4 src/pages/home/dispatch/style.ts
badd +3 src/layout/top-header/styles/index.ts
badd +133 node_modules/.pnpm/styled-components@6.1.11_react-dom@18.3.1_react@18.3.1/node_modules/styled-components/dist/types.d.ts
badd +19 src/pages/home/customers/index.tsx
badd +4 src/pages/home/distribution/style/index.ts
badd +79 src/pages/home/users/children/user-area/modal/add-modal.tsx
badd +48 src/store/index.ts
badd +1 src/store/users/index.ts
badd +1 src/store/users/async-thunk.ts
badd +11 src/store/client/index.ts
badd +1 src/store/customer/index.ts
badd +47 src/App.tsx
badd +5 src/global/view-help.ts
badd +11 src/pages/home/index.tsx
badd +34 node_modules/.pnpm/@reduxjs+toolkit@2.2.5_react-redux@9.1.2_react@18.3.1/node_modules/@reduxjs/toolkit/dist/createSlice.d.ts
badd +8 src/store/user-info/index.ts
badd +27 src/store/user-info/async-thunk.ts
badd +1 src/service/api/user-info/types/user-info.type.ts
badd +16 src/service/api/provinces/index.ts
badd +36 src/pages/home/coupon/modal/coupon-add-modal/index.tsx
badd +8 src/service/index.ts
badd +32 src/pages/home/dispatch/effect/dispatch-map-control.ts
badd +14 src/store/order-simpler/async-thunk.ts
badd +17 src/service/api/order-simple/index.ts
badd +86 src/service/api/order/index.ts
badd +6 src/service/api/order/types/order.type.ts
badd +2 src/service/api/order/types/dealy-order.type.ts
badd +7124 node_modules/.pnpm/typescript@5.4.5/node_modules/typescript/lib/lib.dom.d.ts
badd +13 src/service/api/driver/index.ts
badd +31 src/pages/home/distribution/effect-methods.ts
badd +14 src/store/order-driver-map-controller/async-thunk.ts
badd +1 src/routes/home/order-simple/index.tsx
badd +5 src/routes/home/order-manager/orders/index.tsx
badd +17 src/pages/home/order-manager/orders/index.tsx
badd +27 src/pages/home/order-manager/orders/effect-methods.ts
badd +7 src/service/api/price-rule/type/whole.type.ts
badd +21 src/pages/home/dispatch/cpns/driver-marker/index.tsx
badd +17 src/pages/home/dispatch/cpns/order-marker/index.tsx
badd +1 src/vite-env.d.ts
badd +1 src/index.d.ts
badd +2 src/main.tsx
badd +18 src/pages/home/children/order-driver-map-controller/map-controller.tsx
badd +108 src/pages/home/children/order/children/dealy-order/table/dealy-order-table.tsx
badd +1 src/pages/home/order-simpler/index.tsx
badd +635 node_modules/.pnpm/@types+react@18.3.3/node_modules/@types/react/index.d.ts
badd +30 src/pages/home/order-simpler/table/default-table.tsx
badd +35 src/pages/home/order-simpler/modal/driver-location-record-modal.tsx
badd +47 src/pages/home/children/order-simpler/modal/driver-location-record-modal.tsx
badd +33 src/pages/home/drivers/index.tsx
badd +38 src/pages/home/parking-code/index.tsx
badd +5 src/pages/home/drivers/styles/index.ts
badd +3 src/pages/home/parking-code/styles/index.ts
badd +51 src/pages/home/parking-code/parking-code-selected/index.tsx
badd +11 src/pages/home/parking-code/parking-code-selected/style.tsx
badd +18 src/routes/home/users/index.tsx
badd +1 src/routes/home/pay-outs/index.tsx
badd +9 src/routes/home/parking-code/index.tsx
badd +17 src/modal/city-modal/index.tsx
badd +83 src/pages/home/parking-code/modal/push-parking-code-selected/index.tsx
badd +7 ~/Documents/company/substitute-driving-manage-master/src/hook/modal/index.ts
badd +9 src/modal/driver-modal/index.tsx
badd +1 src/pages/home/children/price-rule/modal/update-modal.tsx
badd +37 src/pages/home/children/driver/modal/add-modal/index.tsx
badd +1 package.json
badd +46 src/service/api/parking-code/index.ts
badd +6 src/service/api/pay/index.ts
badd +11 src/service/api/parking-code/types/index.ts
badd +29 ~/Documents/company/substitute-driving-manage-master/src/service/api/user/type/index.ts
badd +72 src/pages/home/parking-code/tabls/default-tables.tsx
badd +1 src/pages/home/order-simpler/effect-methods.ts
badd +15 src/pages/home/parking-code/effect-methods.ts
badd +40 src/store/parking-code/index.ts
badd +33 src/store/order-simpler/index.ts
badd +18 src/store/parking-code/async-thunk.ts
badd +1 src/service/api/order-simple/types/order-simple.type.ts
badd +17 ~/Documents/company/substitute-driving-manage-master/src/shared/page-table-help/index.ts
badd +30 src/components/pro-table/index.tsx
badd +110 src/pages/home/parking-code/modal/update-parking-code-modal/index.tsx
badd +85 src/pages/home/children/price-rule/table/price-rule-table.tsx
badd +7 ~/Documents/company/substitute-driving-manage-master/src/hook/page-table-effect/index.ts
badd +25 src/pages/home/children/customer/effect-methods.ts
badd +25 src/pages/home/users/table/default-table.tsx
badd +16 src/pages/home/area-profit/index.tsx
badd +19 src/routes/home/area-profit/index.tsx
badd +4 src/pages/home/area-profit/style/index.ts
badd +44 src/service/api/area-profit/index.ts
badd +12 src/service/api/area-profit/type/index.ts
badd +30 src/store/area-profit/index.ts
badd +25 src/store/area-profit/async-thunk.ts
badd +8 src/store/long-order/async-thunk.ts
badd +8 src/store/long-order/index.ts
badd +17 src/pages/home/area-price/index.tsx
badd +29 src/pages/home/area-profit/effect-methods.ts
badd +7 src/pages/home/area-price/effect-methods.ts
badd +30 src/pages/home/area-profit/table/default-table.tsx
badd +127 src/pages/home/area-price/table/price-rule-table.tsx
badd +44 src/pages/home/area-profit/area-profit-header/index.tsx
badd +13 src/pages/home/area-profit/area-profit-header/style.ts
badd +15 src/service/api/bank-card/index.ts
badd +22 src/service/api/bank-card/type/index.ts
badd +85 src/pages/home/area-profit/modal/bank-editor-modal/index.tsx
badd +63 src/pages/login/index.tsx
badd +53 ~/Documents/company/substitute-driving-manage-master/node_modules/.pnpm/rc-field-form@2.2.1_react-dom@18.3.1_react@18.3.1/node_modules/rc-field-form/lib/interface.d.ts
badd +23 src/pages/home/driver-apply/table/default-table.tsx
badd +322 node_modules/.pnpm/react-redux@9.1.2_@types+react@18.3.3_react@18.3.1_redux@5.0.1/node_modules/react-redux/dist/react-redux.d.ts
badd +14 src/pages/home/users/children/profit/index.tsx
badd +5 src/pages/home/users/children/profit/style.ts
badd +72 src/pages/home/users/children/profit/profit-header/index.tsx
badd +11 src/pages/home/users/children/profit/profit-header/style.ts
badd +11 src/pages/home/users/children/profit/table/default-table.tsx
badd +80 ~/Documents/company/substitute-driving-manage-master/src/pages/home/users/children/user-area/hooks.ts
badd +17 src/pages/home/users/children/profit/effect-methods.ts
badd +165 src/pages/home/users/children/profit/modal/pay-profit-modal/index.tsx
badd +21 src/pages/home/children/order/children/long-order/modal/detail-modal.tsx
badd +4 ~/Documents/company/substitute-driving-manage-master/src/components/pro-form-items/index.tsx
badd +36 src/pages/home/users/index.tsx
badd +9 src/routes/home/area-price/index.tsx
badd +18 src/pages/home/area-profit/children/history-area-profit/index.tsx
badd +3 src/pages/home/area-profit/children/history-area-profit/style/index.ts
badd +9 src/hook/match-user-id/index.tsx
badd +25 src/pages/home/area-profit/children/history-area-profit/effect-methods.ts
badd +46 src/pages/home/area-profit/children/history-area-profit/table/default-table.tsx
badd +9 src/service/api/area-profit/type/history-area-profit.ts
badd +11 ~/Documents/company/substitute-driving-manage-master/src/hook/table/index.tsx
badd +1 src/pages/home/dispatch/index.tsx
badd +4 src/routes/home/fapiao/index.tsx
badd +14 src/pages/home/fapiao/index.tsx
badd +20 src/service/api/fapiao/index.ts
badd +33 src/store/fapiao/index.ts
badd +9 src/store/fapiao/async-think.ts
badd +1 src/store/driver/async-thunk.ts
badd +19 src/pages/home/fapiao/effect-methods.ts
badd +17 src/pages/home/drivers/effect-methods.ts
badd +89 src/pages/home/fapiao/tables/fapiao-table.tsx
badd +17 src/pages/home/customers/table/customer-table.tsx
badd +15 src/service/api/fapiao/types/index.ts
badd +55 src/pages/home/fapiao/modal/fapiao-detail-modal.tsx
badd +1 ~/Documents/company/substitute-driving-manage-master/src/shared/types/modal/index.ts
badd +97 src/pages/home/order-manager/long-orders/modal/detail-modal.tsx
badd +1 src/pages/home/order-manager/long-orders/effect-methods.ts
badd +1 src/pages/home/order-manager/long-orders/table/long-order-table.tsx
argglobal
%argdel
edit src/pages/home/fapiao/tables/fapiao-table.tsx
argglobal
balt src/global/view-help.ts
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 1,11fold
sil! 24,27fold
sil! 37,38fold
sil! 39,40fold
sil! 35,41fold
sil! 34,42fold
sil! 30,43fold
sil! 44,48fold
sil! 49,53fold
sil! 54,58fold
sil! 59,63fold
sil! 64,68fold
sil! 73,77fold
sil! 69,78fold
sil! 29,79fold
sil! 82,86fold
sil! 81,87fold
sil! 90,102fold
sil! 15,104fold
let &fdl = &fdl
let s:l = 89 - ((24 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 89
normal! 010|
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
