let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/源码阅读/rolldown
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +56 packages/rolldown/src/api/rolldown/rolldown-build.ts
badd +24 ~/Documents/源码阅读/rolldown/packages/rolldown/src/utils/create-bundler-option.ts
badd +59 ~/Documents/源码阅读/rolldown/packages/rolldown/src/utils/bindingify-input-options.ts
badd +161 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/utils/normalize_binding_options.rs
badd +49 ~/Documents/源码阅读/rolldown/packages/rolldown/src/utils/bindingify-output-options.ts
badd +1049 ~/.rustup/toolchains/1.87.0-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/option.rs
badd +65 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/binding_input_options/mod.rs
badd +43 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/plugin/binding_plugin_options.rs
badd +53 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/plugin/js_plugin.rs
badd +5 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/plugin/types/binding_hook_filter.rs
badd +88 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/plugin/types/binding_filter_expression.rs
badd +10 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/pluginable.rs
badd +79 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/plugin.rs
badd +71 crates/rolldown/src/bundler.rs
badd +26 crates/rolldown/src/bundler_builder.rs
badd +154 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/mod.rs
badd +163 packages/rolldown/src/binding.d.ts
badd +109 ~/Documents/源码阅读/rolldown/packages/rolldown/src/options/input-options.ts
badd +47 ~/Documents/源码阅读/rolldown/crates/rolldown_debug/src/init_tracing.rs
badd +6 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/tracing-0.1.41/src/lib.rs
badd +10 ~/Documents/源码阅读/rolldown/crates/rolldown_debug/src/lib.rs
badd +53 ~/Documents/源码阅读/rolldown/crates/rolldown_tracing/src/lib.rs
badd +13 ~/Documents/源码阅读/rolldown/crates/rolldown_debug/src/debug_data_propagate_layer.rs
badd +24 ~/Documents/源码阅读/rolldown/crates/rolldown_debug/src/debug_formatter.rs
badd +45 crates/rolldown/src/utils/normalize_options.rs
badd +13 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/events/invalid_option.rs
badd +133 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/build_error/mod.rs
badd +300 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/build_error/error_constructors.rs
badd +42 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/events/mod.rs
badd +18 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/output_format.rs
badd +10 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/platform.rs
badd +1 packages/rolldown/src/api/build.ts
badd +69 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/minify_options.rs
badd +6 ~/Documents/源码阅读/rolldown/crates/rolldown_utils/src/indexmap.rs
badd +584 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/indexmap-2.9.0/src/map.rs
badd +76 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/indexmap-2.9.0/src/map/core/entry.rs
badd +20 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/resolve_options.rs
badd +8 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/binding_input_options/binding_resolve_options.rs
badd +13 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/output_option/globals.rs
badd +38 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rustc-hash-2.1.1/src/lib.rs
badd +40 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_transformer_plugins-0.72.1/src/inject_global_variables.rs
badd +37 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/inject_import.rs
badd +46 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/experimental_options.rs
badd +140 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/treeshake.rs
badd +43 crates/rolldown_common/src/inner_bundler_options/types/normalized_bundler_options.rs
badd +17 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/inner_bundler_options/types/output_option/chunk_filenames.rs
badd +118 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/binding_output_options/mod.rs
badd +88 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/types/js_callback.rs
badd +156 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.0.0-beta.2/src/bindgen_runtime/js_values/either.rs
badd +89 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.0.0-beta.2/src/bindgen_runtime/js_values/function.rs
badd +9 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/types/binding_rendered_chunk.rs
badd +15 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/types/binding_minify_options.rs
badd +16 ~/Documents/源码阅读/rolldown/crates/rolldown_fs/src/os.rs
badd +8 ~/Documents/源码阅读/rolldown/crates/rolldown_fs/src/file_system.rs
badd +39 ~/Documents/源码阅读/rolldown/crates/rolldown_resolver/src/resolver.rs
badd +17 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.0.0/src/options.rs
badd +131 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.0.0/src/lib.rs
badd +47 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/file_emitter.rs
badd +9 ~/Documents/源码阅读/rolldown/crates/rolldown/src/utils/apply_inner_plugins.rs
badd +20 crates/rolldown_plugin_data_uri/src/lib.rs
badd +12 ~/Documents/源码阅读/rolldown/crates/rolldown_utils/src/dataurl.rs
badd +29 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/plugin_driver/mod.rs
badd +338 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_index-3.0.0/src/lib.rs
badd +6 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/type_aliases.rs
badd +1 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/types/plugin_idx.rs
badd +12 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/generated/hook_usage.rs
badd +29 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/plugin_context/plugin_context.rs
badd +53 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/plugin_context/native_plugin_context.rs
badd +14 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/scan_mode.rs
badd +17 crates/rolldown/src/types/scan_stage_cache.rs
badd +116 ~/Documents/源码阅读/rolldown/crates/rolldown/src/stages/scan_stage.rs
badd +93 ~/Documents/源码阅读/rolldown/crates/rolldown/src/module_loader/module_loader.rs
badd +93 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_transformer_plugins-0.72.1/src/replace_global_defines.rs
badd +12 ~/Documents/源码阅读/rolldown/crates/rolldown/src/module_loader/task_context.rs
badd +29 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/hybrid_index_vec.rs
badd +4 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/ecmascript/module_idx.rs
badd +16 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/module/mod.rs
badd +99 ~/Documents/源码阅读/rolldown/crates/rolldown/src/module_loader/runtime_module_task.rs
badd +1 crates/rolldown_binding/src/parallel_js_plugin_registry.rs
badd +5 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/type_aliases.rs
badd +1346 ~/.rustup/toolchains/1.87.0-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/macros/mod.rs
badd +58 crates/rolldown/src/runtime/runtime-base.js
badd +148 crates/rolldown/src/runtime/runtime-extra-dev.js
badd +1 crates/rolldown/src/runtime/runtime-head-node.js
badd +1 crates/rolldown/src/runtime/runtime-tail-node.js
badd +7 crates/rolldown/src/runtime/runtime-tail.js
badd +39 crates/rolldown/src/runtime/index.js
badd +28 ~/Documents/源码阅读/rolldown/crates/rolldown_ecmascript/src/ecma_compiler.rs
badd +17 crates/rolldown_ecmascript/src/ecma_ast/program_cell.rs
badd +327 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/self_cell-1.2.0/src/lib.rs
badd +15 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/events/invalid_define_config.rs
badd +14 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/types/diagnostic_options.rs
badd +1 Cargo.toml
badd +54 crates/rolldown_binding/src/bundler.rs
badd +3 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/options/binding_input_options/binding_defer_sync_scan_data.rs
badd +786 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.0.0-beta.2/src/threadsafe_function.rs
badd +4 ~/Documents/源码阅读/rolldown/crates/rolldown_debug/src/trace_action_macro.rs
badd +4 ~/Documents/源码阅读/rolldown/crates/rolldown_debug_action/src/definitions/build_start.rs
badd +22 ~/Documents/源码阅读/rolldown/crates/rolldown/src/lib.rs
badd +9 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.0.0/src/file_system.rs
badd +20 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_span-0.72.1/src/source_type.rs
badd +244 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_parser-0.72.1/src/lib.rs
badd +4 deny.toml
badd +3 CONTRIBUTING.md
badd +1 Cargo.lock
badd +1 crates/rolldown_binding/src/lib.rs
badd +41 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.0.0/src/fs_cache.rs
badd +163 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_index-3.0.0/src/macros.rs
badd +1 crates/rolldown/Cargo.toml
badd +47 crates/rolldown_common/Cargo.toml
badd +1 packages/rolldown/src/cli/commands/help.ts
badd +7 crates/rolldown_common/src/inner_bundler_options/types/module_type.rs
badd +1 crates/rolldown/src/module_loader/mod.rs
badd +4 ~/Documents/源码阅读/rolldown/crates/rolldown_binding/src/types/binding_resolve_alias_item.rs
argglobal
%argdel
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
file NvimTree_1
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
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
