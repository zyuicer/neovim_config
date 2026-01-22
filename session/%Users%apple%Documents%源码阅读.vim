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
badd +1 Cargo.toml
badd +347 crates/rolldown_binding/src/utils/normalize_binding_options.rs
badd +224 crates/rolldown_plugin/src/pluginable.rs
badd +37 crates/rolldown_plugin/src/plugin.rs
badd +21 crates/rolldown_plugin/src/plugin_context/plugin_context.rs
badd +27 crates/rolldown_plugin/src/plugin_context/native_plugin_context.rs
badd +5 crates/rolldown_plugin/src/types/hook_build_start_args.rs
badd +44 crates/rolldown_common/src/inner_bundler_options/types/normalized_bundler_options.rs
badd +2 crates/rolldown_plugin/src/plugin_context/transform_plugin_context.rs
badd +2 crates/rolldown_plugin/src/plugin_context/mod.rs
badd +5 crates/rolldown_plugin/src/type_aliases.rs
badd +29 crates/rolldown_plugin/src/lib.rs
badd +44 crates/rolldown_binding/src/options/plugin/binding_plugin_options.rs
badd +10 packages/rolldown/src/api/rolldown/index.ts
badd +44 packages/rolldown/src/api/rolldown/rolldown-build.ts
badd +1146 packages/rolldown/src/binding.d.ts
badd +23 packages/rolldown/src/utils/create-bundler.ts
badd +55 packages/rolldown/src/utils/create-bundler-option.ts
badd +34 packages/rolldown/src/utils/initialize-parallel-plugins.ts
badd +61 packages/rolldown/src/utils/normalize-plugin-option.ts
badd +122 packages/rolldown/src/builtin-plugin/constructors.ts
badd +1 packages/rolldown/src/constants/plugin.ts
badd +57 crates/rolldown_binding/src/options/plugin/js_plugin.rs
badd +5 crates/rolldown_binding/src/options/plugin/types/binding_hook_filter.rs
badd +82 crates/rolldown_common/src/inner_bundler_options/types/treeshake.rs
badd +17 crates/rolldown_utils/src/filter_expression.rs
badd +8 crates/rolldown_utils/src/pattern_filter.rs
badd +59 crates/rolldown_binding/src/options/plugin/binding_builtin_plugin.rs
badd +5 crates/rolldown_binding/src/options/plugin/types/binding_builtin_plugin_name.rs
badd +1 crates/rolldown_binding/src/options/plugin/types/mod.rs
badd +5 crates/rolldown_binding/src/options/plugin/mod.rs
badd +7 crates/rolldown_binding/src/options/plugin/config/binding_alias_plugin_config.rs
badd +4 crates/rolldown_binding/src/options/plugin/config/binding_oxc_runtime_plugin_config.rs
badd +10 crates/rolldown_plugin_oxc_runtime/src/lib.rs
badd +107 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.1.3/src/bindgen_runtime/js_values.rs
badd +8 crates/rolldown_plugin/src/types/hook_resolve_id_args.rs
badd +13 crates/rolldown_plugin_oxc_runtime/Cargo.toml
badd +22 crates/rolldown_plugin/Cargo.toml
badd +47 crates/rolldown_binding/Cargo.toml
badd +1 crates/rolldown_plugin/src/types/mod.rs
badd +1 crates/rolldown_plugin/src/utils/resolve_id_with_plugins.rs
badd +1 crates/rolldown_plugin/src/utils/resolve_id_check_external.rs
badd +1 crates/rolldown_plugin/src/utils/mod.rs
badd +36 crates/rolldown_plugin_asset/src/lib.rs
badd +15 crates/rolldown_plugin_asset/src/utils.rs
badd +16 crates/rolldown_common/src/inner_bundler_options/types/is_external.rs
badd +1 crates/rolldown_binding/src/options/plugin/binding_plugin_context.rs
badd +6 crates/rolldown_plugin/src/types/hook_resolve_id_skipped.rs
badd +35 crates/rolldown_plugin/src/plugin_driver/mod.rs
badd +1 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_index-3.0.0/src/lib.rs
badd +2 crates/rolldown_plugin/src/types/plugin_idx.rs
badd +1 crates/rolldown_plugin/src/types/plugin_context_resolve_options.rs
badd +98 crates/rolldown_binding/src/types/js_callback.rs
badd +8 crates/rolldown_std_utils/src/pretty_type_name.rs
badd +9 crates/rolldown_std_utils/src/path_ext.rs
badd +47 crates/rolldown_binding/src/binding_bundler.rs
badd +43 crates/rolldown/src/bundler.rs
badd +60 crates/rolldown_common/src/inner_bundler_options/mod.rs
badd +9 crates/rolldown_common/src/inner_bundler_options/types/input_item.rs
badd +43 crates/rolldown_debug/src/init_tracing.rs
badd +1 crates/rolldown_binding/src/options/binding_input_options/binding_debug_options.rs
badd +18 crates/rolldown_debug/src/utils.rs
badd +23 crates/rolldown_tracing/src/lib.rs
badd +8 crates/rolldown_binding/src/utils/mod.rs
badd +88 crates/rolldown/src/utils/normalize_options.rs
badd +15 crates/rolldown_error/src/build_error/mod.rs
badd +33 crates/rolldown_error/src/events/invalid_option.rs
badd +104 crates/rolldown_error/src/build_error/error_constructors.rs
badd +42 crates/rolldown_error/src/events/mod.rs
badd +14 crates/rolldown_error/src/event_kind.rs
badd +7 crates/rolldown_error/src/types/diagnostic_options.rs
badd +2 crates/rolldown_error/src/build_error/severity.rs
badd +26 crates/rolldown_error/Cargo.toml
badd +1 crates/rolldown_error/src/lib.rs
badd +42 crates/rolldown_common/src/inner_bundler_options/types/output_format.rs
badd +17 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_span-0.79.0/src/source_type.rs
badd +43 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_ast_macros-0.79.0/src/lib.rs
badd +32 crates/rolldown_binding/src/options/binding_output_options/mod.rs
badd +12 crates/rolldown_common/src/inner_bundler_options/types/output_option/preserve_entry_signatures.rs
badd +1 crates/rolldown_common/Cargo.toml
badd +1 crates/rolldown_common/src/inner_bundler_options/types/mod.rs
badd +1073 ~/.rustup/toolchains/1.88.0-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/option.rs
badd +18 crates/rolldown_common/src/inner_bundler_options/types/minify_options.rs
badd +6 crates/rolldown_utils/src/indexmap.rs
badd +38 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rustc-hash-2.1.1/src/lib.rs
badd +1542 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/indexmap-2.9.0/src/map.rs
badd +6 crates/rolldown_binding/src/types/preserve_entry_signatures.rs
badd +14 crates/rolldown_common/src/inner_bundler_options/types/resolve_options.rs
badd +14 crates/rolldown_common/src/inner_bundler_options/types/module_type.rs
badd +22 crates/rolldown_common/src/inner_bundler_options/types/output_option/globals.rs
badd +1 crates/rolldown/tests/rolldown/function/advanced_chunks/basic/b.js
badd +1 crates/rolldown/tests/rolldown/function/advanced_chunks/basic/a.js
badd +1203 ~/.rustup/toolchains/1.88.0-aarch64-apple-darwin/lib/rustlib/src/rust/library/std/src/collections/hash/map.rs
badd +101 crates/rolldown_binding/src/options/binding_input_options/mod.rs
badd +4 crates/rolldown_binding/src/types/binding_minify_options.rs
badd +1 crates/rolldown_binding/src/types/binding_outputs.rs
badd +1 crates/rolldown_common/src/lib.rs
badd +104 crates/rolldown_binding/src/options/plugin/parallel_js_plugin.rs
badd +46 crates/rolldown_binding/src/parallel_js_plugin_registry.rs
badd +19 crates/rolldown_utils/src/rustc_hash.rs
badd +3 crates/rolldown_binding/src/options/binding_input_options/binding_inject_import.rs
badd +42 crates/rolldown_common/src/inner_bundler_options/types/inject_import.rs
badd +43 crates/rolldown_common/src/inner_bundler_options/types/experimental_options.rs
badd +28 crates/rolldown_common/src/inner_bundler_options/types/advanced_chunks_options.rs
badd +24 crates/rolldown_fs/src/os.rs
badd +115 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/file_system.rs
badd +18 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_transformer_plugins-0.79.0/src/inject_global_variables.rs
badd +1 crates/rolldown_binding/src/lib.rs
badd +1 crates/rolldown_binding/src/utils/napi_error.rs
badd +48 crates/rolldown_resolver/src/resolver.rs
badd +44 crates/rolldown_binding/src/options/binding_input_options/binding_treeshake.rs
badd +54 crates/rolldown_binding/src/types/js_regex.rs
badd +86 crates/rolldown_utils/src/js_regex.rs
badd +48 crates/rolldown_utils/src/concat_string.rs
badd +20 crates/rolldown_utils/src/lib.rs
badd +1 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/anyhow-1.0.98/src/lib.rs
badd +1 crates/rolldown_utils/Cargo.toml
badd +5 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/regress-0.10.3/src/lib.rs
badd +37 crates/rolldown/src/bundler_builder.rs
badd +1 ~/Documents/源码阅读/farm/Cargo.toml
badd +97 cliff.toml
badd +6 rustfmt.toml
badd +18 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/options.rs
badd +26 crates/rolldown_binding/src/options/binding_input_options/binding_resolve_options.rs
badd +58 crates/rolldown_binding/src/binding_bundler_impl.rs
badd +46 packages/rolldown/build-binding.ts
badd +31 packages/rolldown/src/api/build.ts
badd +115 packages/rolldown/src/options/input-options.ts
argglobal
%argdel
edit crates/rolldown_binding/src/binding_bundler.rs
argglobal
balt crates/rolldown_binding/src/binding_bundler_impl.rs
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 1,6fold
sil! 9,15fold
sil! 22,27fold
sil! 20,28fold
sil! 40,41fold
sil! 37,44fold
sil! 36,48fold
sil! 32,48fold
sil! 18,49fold
let &fdl = &fdl
let s:l = 47 - ((20 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 47
normal! 026|
lcd ~/Documents/源码阅读
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
