let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/lately/clone_rolldown
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 crates/rolldown_common/src/inner_bundler_options/normalized_bundler_options.rs
badd +8 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_syntax-0.72.3/src/class.rs
badd +10 crates/rolldown_fs/src/file_system.rs
badd +8 crates/rolldown_fs/src/os.rs
badd +114 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/file_system.rs
badd +427 Cargo.lock
badd +20 crates/rolldown/Cargo.toml
badd +192 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_index-3.0.0/src/macros.rs
badd +121 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/lib.rs
badd +37 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/cache.rs
badd +407 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/sync.rs
badd +1 crates/rolldown_common/Cargo.toml
badd +78 crates/rolldown_common/src/inner_bundler_options/types/treeshake.rs
badd +1 crates/rolldown_common/src/inner_bundler_options/input_item.rs
badd +92 crates/rolldown/src/module_loader/module_loader.rs
badd +4 crates/rolldown/src/module_loader/mod.rs
badd +1 packages/rolldown/src/cli/commands/bundle.ts
badd +2 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/tokio-1.47.0/src/sync/mod.rs
badd +13 crates/rolldown/src/module_loader/task_context.rs
badd +40 crates/rolldown_common/src/lib.rs
badd +16 crates/rolldown_common/src/inner_bundler_options/types/resolve_options.rs
badd +33 crates/rolldown_common/src/inner_bundler_options/types/normalized_bundler_options.rs
badd +7 crates/rolldown_common/src/inner_bundler_options/types/output_option/chunk_filenames.rs
badd +21 crates/rolldown_common/src/inner_bundler_options/types/output_format.rs
badd +3453 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs
badd +33 package.json
badd +1 packages/rolldown/package.json
badd +13 ~/Desktop/lately/clone_rolldown/packages/rolldown/build-binding.ts
badd +10 crates/rolldown_binding/src/parallel_js_plugin_registy.rs
badd +101 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.1.3/src/bindgen_runtime/js_values.rs
badd +626 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.1.3/src/threadsafe_function.rs
badd +8 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.1.3/src/status.rs
badd +15 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/napi-3.1.3/src/bindgen_runtime/js_values/function.rs
badd +1 packages/rolldown/src/rolldonw-build.ts
badd +1 packages/rolldown/src/binding.js
badd +1 packages/rolldown/src/index.ts
badd +3 packages/rolldown/src/rolldonw.ts
badd +1 packages/rolldown/src/binding.d.ts
badd +30 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/options/input-options.ts
badd +13 packages/rolldown/src/options/bindingify-input-options.ts
badd +11 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/plugins/types/plugin.ts
badd +14 packages/rolldown/__test__/utils/validator.spec.ts
badd +73 packages/rolldown/src/utils/validator.ts
badd +17 packages/rolldown/__test__/plgin/plugin-driver.spec.ts
badd +101 packages/rolldown/__test__/cli-arguments/plugin/plugin.spec.ts
badd +18 packages/rolldown/src/plugins/plugin-driver.ts
badd +29 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/log/logger-handler.ts
badd +1 packages/rolldown/src/log/logger.type.ts
badd +2 packages/rolldown/src/log/logging.ts
badd +1 packages/rolldown/__test__/utils/normalize-output-options.spec.ts
badd +38 .oxlintrc.json
badd +1 .husky/pre-commit
badd +23 dprint.json
badd +1 packages/rolldown/build.config.ts
badd +2 packages/rolldown/src/utils/initialize-parallel-plugin.ts
badd +1 packages/rolldown/src/plugins/parallel-plugin.ts
badd +36 packages/rolldown/src/log/logger.ts
badd +50 ~/Desktop/lately/clone_rolldown/packages/rolldown/rollup.d.ts
badd +3 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/cli/utils.ts
badd +54 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/plugins/types/plugin-hooks.ts
badd +3 packages/rolldown/src/plugins/index.ts
badd +6 packages/rolldown/src/api/rolldown/index.ts
badd +13 packages/rolldown/src/api/rolldown/rolldown-build.ts
badd +7 packages/rolldown/tsconfig.json
badd +10 packages/rolldown/__test__/api/rolldown-build.spec.ts
badd +2 packages/rolldown/__test__/cli-arguments/normalize.spec.ts
badd +55 packages/rolldown/src/cli/arguments/normalize.ts
badd +20 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/plugins/types/output-plugin.ts
badd +3 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/types/utils.ts
badd +33 ~/Desktop/lately/clone_rolldown/packages/rolldown/src/constants/plugin.ts
badd +5 crates/rolldown_debug/src/lib.rs
badd +13 crates/rolldown_debug/Cargo.toml
badd +16 crates/rolldown_tracing/src/lib.rs
badd +15 crates/rolldown_common/src/inner_bundler_options/types/mod.rs
badd +12 crates/rolldown_common/src/inner_bundler_options/types/on_log.rs
badd +12 crates/rolldown_common/src/inner_bundler_options/types/input_item.rs
badd +4 crates/rolldown_resolver/src/lib.rs
badd +12 crates/rolldown_resolver/src/resolver.rs
badd +1 crates/rolldown_binding/src/utils/mod.rs
badd +6 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/types/binding_log.rs
badd +43 crates/rolldown_common/src/inner_bundler_options/types/platform.rs
badd +613 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/convert/mod.rs
badd +15 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/options/plugin/binding_plugin_hook_meta.rs
badd +2 crates/rolldown_binding/src/options/plugin/mod.rs
badd +142 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/derive_more-impl-2.0.1/src/lib.rs
badd +2 crates/rolldown_plugin/src/lib.rs
badd +17 crates/rolldown_plugin/Cargo.toml
badd +18 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/options/plugin/binding_plugin_options.rs
badd +5 crates/rolldown_plugin/src/types/mod.rs
badd +103 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/future/future.rs
badd +18 crates/rolldown_binding/src/options/plugin/js_plugin.rs
badd +30 crates/rolldown_binding/src/options/plugin/binding_builtin_plugin.rs
badd +1 crates/rolldown_binding/src/options/plugin/config/mod.rs
badd +1 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/options/plugin/config/binding_builtin_plugin_name.rs
badd +15 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/options/plugin/config/binding_oxc_runtime_plugin_config.rs
badd +20 crates/rolldown_plugin_oxc_runtime/src/lib.rs
badd +1 crates/rolldown_plugin_oxc_runtime/Cargo.toml
badd +15 crates/rolldown_common/src/inner_bundler_options/types/output_option/is_external.rs
badd +124 Cargo.toml
badd +1 crates/rolldown_plugin/src/plugin_context/mod.rs
badd +9 crates/rolldown_plugin/src/plugin_context/plugin_context.rs
badd +15 crates/rolldown_plugin/src/plugin_context/native_plugin_context.rs
badd +18 crates/rolldown_plugin/src/plugin_driver/mod.rs
badd +3 crates/rolldown_common/src/ecmascript/module_idx.rs
badd +1 crates/rolldown_common/src/ecmascript/mod.rs
badd +1 crates/rolldown_std_utils/src/lib.rs
badd +1 crates/rolldown_std_utils/Cargo.toml
badd +31 crates/rolldown/src/bundler_builder.rs
badd +4 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/options/binding_input_options/binding_debug_options.rs
badd +59 crates/rolldown/src/utils/normalize_options.rs
badd +1 crates/rolldown_error/src/lib.rs
badd +38 crates/rolldown_error/src/build_error/error_constructors.rs
badd +2 crates/rolldown_error/src/events/mod.rs
badd +3 ~/Desktop/lately/clone_rolldown/crates/rolldown_error/src/events/event_kind.rs
badd +9 crates/rolldown_error/Cargo.toml
badd +1 ~/Desktop/lately/clone_rolldown/crates/rolldown_error/src/build_error/severity.rs
badd +15 crates/rolldown_error/src/events/invalid_option.rs
badd +1 crates/rolldown_binding/build.rs
badd +1 crates/rolldown_common/src/inner_bundler_options/types/output_option/mod.rs
badd +13 crates/rolldown_common/src/inner_bundler_options/types/output_option/preserver_entry_signatures.rs
badd +25 crates/rolldown_common/src/inner_bundler_options/types/minify_options.rs
badd +1740 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/indexmap-2.11.1/src/map.rs
badd +36 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/std/src/hash/random.rs
badd +6 crates/rolldown_binding/src/types/preserve_entry_signatures.rs
badd +2777 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/string.rs
badd +12 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/types/binding_minify_options.rs
badd +2026 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/option.rs
badd +14 crates/rolldown_common/src/inner_bundler_options/types/output_option/globals.rs
badd +242 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/std/src/collections/hash/map.rs
badd +1 crates/rolldown_common/src/inner_bundler_options/types/source_map_type.rs
badd +40 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rustc-hash-2.1.1/src/lib.rs
badd +4 crates/rolldown_utils/src/rustc_hash.rs
badd +5 ~/Desktop/lately/clone_rolldown/crates/rolldown_utils/src/indexmap.rs
badd +2 crates/rolldown_common/src/inner_bundler_options/types/inject_import.rs
badd +26 crates/rolldown_binding/src/options/binding_input_options/binding_inject_import.rs
badd +107 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/default.rs
badd +40 crates/rolldown_binding/src/options/binding_input_options/binding_treeshake.rs
badd +42 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/types/js_regex.rs
badd +35 ~/Desktop/lately/clone_rolldown/crates/rolldown_common/src/inner_bundler_options/mod.rs
badd +2 crates/rolldown_utils/src/lib.rs
badd +6 crates/rolldown_utils/src/js_regex.rs
badd +14 crates/rolldown_utils/Cargo.toml
badd +106 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/utils/normalize_binding_options.rs
badd +1 crates/rolldown_binding/src/options/mod.rs
badd +3 ~/Desktop/lately/clone_rolldown/crates/rolldown_utils/src/connect_string.rs
badd +102 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/regex-1.11.1/src/regex/string.rs
badd +34 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/types/js_callback.rs
badd +68 crates/rolldown_binding/src/binding_bundler_impl.rs
badd +10 crates/rolldown_resolver/Cargo.toml
badd +4 rustfmt.toml
badd +6 crates/rolldown_fs/src/lib.rs
badd +40 crates/rolldown_binding/src/options/binding_input_options/mod.rs
badd +19 crates/rolldown_binding/Cargo.toml
badd +479 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/options.rs
badd +2 ~/Desktop/lately/clone_rolldown/crates/rolldown_binding/src/options/binding_input_options/binding_resolve_options.rs
badd +4 ~/Desktop/lately/clone_rolldown/crates/rolldown_utils/src/dashmap.rs
badd +2 crates/rolldown_common/src/inner_bundler_options/types/package_json.rs
badd +73 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/tsconfig.rs
badd +19 ~/Desktop/lately/clone_rolldown/crates/rolldown/src/utils/apply_inner_plugins.rs
badd +84 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/nom-8.0.0/src/bits/complete.rs
badd +262 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/nom-8.0.0/src/bytes/complete.rs
badd +2 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/nom-8.0.0/src/traits.rs
badd +59 crates/rolldown_plugin_data_uri/src/lib.rs
badd +12 crates/rolldown_plugin_data_uri/Cargo.toml
badd +3 ~/Desktop/lately/clone_rolldown/crates/rolldown_plugin/src/types/hook_resolve_id_output.rs
badd +11 ~/Desktop/lately/clone_rolldown/crates/rolldown_plugin/src/plugin.rs
badd +6 ~/Desktop/lately/clone_rolldown/crates/rolldown_plugin/src/type_aliases.rs
badd +2 ~/Desktop/lately/clone_rolldown/crates/rolldown_plugin/src/types/plugin_idx.rs
badd +8 crates/rolldown_plugin/src/plugin_context/plugin_context_meta.rs
badd +1 crates/rolldown_plugin/src/generated/mod.rs
badd +7 crates/rolldown_plugin/src/generated/hook_usage.rs
badd +60 crates/rolldown_plugin/src/pluginable.rs
badd +20 ~/Desktop/lately/clone_rolldown/crates/rolldown_plugin/src/plugin_driver/hook_orders.rs
badd +9 ~/Desktop/lately/clone_rolldown/crates/rolldown_plugin/src/types/plugin_hook_meta.rs
badd +2998 ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/rc.rs
badd +1 crates/rolldown_common/src/module_loader/mod.rs
badd +11 ~/Desktop/lately/clone_rolldown/crates/rolldown_debug/src/trace_action_macro.rs
badd +221 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/tracing-core-0.1.34/src/metadata.rs
badd +10 crates/rolldown_debug_action/src/definitions/session_meta.rs
badd +1 crates/rolldown_debug_action/src/definitions/mod.rs
badd +6 crates/rolldown_debug_action/src/lib.rs
badd +8 crates/rolldown_debug_action/Cargo.toml
badd +14 crates/rolldown_debug_action/src/types/mod.rs
badd +1 crates/rolldown_debug/src/utils.rs
badd +7 crates/rolldown_debug/src/init_tracing.rs
badd +5 ~/Desktop/lately/clone_rolldown/crates/rolldown/src/lib.rs
badd +1 ~/Desktop/lately/clone_rolldown/crates/rolldown_debug_action/src/definitions/build_start.rs
badd +1 crates/rolldown_common/src/types/scan_mod.rs
badd +8 crates/rolldown_common/src/types/mod.rs
badd +1 ~/Desktop/lately/clone_rolldown/crates/rolldown/src/stages/mod.rs
badd +29 ~/Desktop/lately/clone_rolldown/crates/rolldown/src/stages/scan_stages.rs
badd +7 crates/rolldown/src/types/scan_stage_cache.rs
badd +2 crates/rolldown/src/types/mod.rs
badd +3 crates/rolldown_error/src/type_aliases.rs
badd +10 ~/Desktop/lately/clone_rolldown/crates/rolldown_error/src/events/invalid_define_config.rs
badd +58 ~/Desktop/lately/clone_rolldown/crates/rolldown/src/module_loader/runtime_module_task.rs
badd +2 crates/rolldown/src/runtime/index.js
badd +1 crates/rolldown/src/runtime/runtime-base.js
badd +1 crates/rolldown/src/runtime/runtime-head-node.js
badd +1 crates/rolldown/src/runtime/runtime-tail.js
badd +3 crates/rolldown/src/runtime/runtime-tail-node.js
badd +1 crates/rolldown_ecmascript/src/lib.rs
badd +16 ~/Desktop/lately/clone_rolldown/crates/rolldown_ecmascript/src/ecma_ast/program_cell.rs
badd +11 crates/rolldown_ecmascript/src/ecma_complier.rs
badd +12 crates/rolldown_error/src/events/parse_error.rs
badd +17 crates/rolldown_ecmascript/src/ecma_ast/mod.rs
badd +1 crates/rolldown_ecmascript_utils/src/lib.rs
badd +8 crates/rolldown_ecmascript_utils/Cargo.toml
badd +3 crates/rolldown_ecmascript_utils/src/ast_snippet.rs
badd +3 crates/rolldown/src/utils/mod.rs
badd +19 crates/rolldown/src/utils/tweak_ast_for_scanning.rs
badd +87 ~/Desktop/lately/clone_rolldown/crates/rolldown/src/bundler.rs
badd +2 crates/rolldown_test/src/lib.rs
badd +9 crates/rolldown_test/Cargo.toml
badd +1 ~/Desktop/lately/clone_rolldown/crates/rolldown_test/src/bundler.rs
badd +6 ~/Desktop/lately/clone_rolldown/crates/rolldown_test/src/bundler/create_builder.rs
badd +12 ~/Desktop/lately/clone_rolldown/crates/rolldown_test/src/fixture/bundler/bundler-test.js
badd +1 crates/rolldown_test/src/ecma_ast.rs
badd +21 ~/Desktop/lately/clone_rolldown/crates/rolldown_test/src/ecma_ast/ecma_ast.rs
badd +2 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_ast-0.79.0/src/ast/js.rs
badd +1 .editorconfig
badd +22 crates/rolldown/src/types/module_id.rs
badd +1 pnpm-workspace.yaml
badd +12 crates/rolldown_common/src/types/symbol_ref_db.rs
badd +12 ~/Desktop/lately/clone_rolldown/crates/rolldown/src/ast_scanner/mod.rs
badd +1 ~/Desktop/lately/clone_rolldown/crates/rolldown_common/src/types/namespace_alias.rs
badd +1 ~/Desktop/lately/clone_rolldown/crates/rolldown_rstr/src/lib.rs
badd +2 ~/Desktop/lately/clone_rolldown/crates/rolldown_rstr/Cargo.toml
badd +25 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_span-0.79.0/src/compact_str.rs
badd +61 crates/rolldown_utils/src/ecmascript.rs
badd +15 ~/Desktop/lately/clone_rolldown/crates/rolldown_common/src/types/ast_scopes.rs
badd +1 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_syntax-0.79.0/src/symbol.rs
badd +22 ~/Desktop/lately/clone_rolldown/crates/rolldown_ecmascript/src/ecma_ast/helpers.rs
badd +8 ~/Desktop/lately/clone_rolldown/crates/rolldown_common/src/types/named_import.rs
badd +3 crates/rolldown_common/src/types/import_record.rs
badd +5 ~/Desktop/lately/clone_rolldown/crates/rolldown_common/src/types/named_export.rs
argglobal
%argdel
edit crates/rolldown_common/src/lib.rs
argglobal
balt ~/Desktop/lately/clone_rolldown/crates/rolldown/src/ast_scanner/mod.rs
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 7,29fold
sil! 6,30fold
sil! 32,41fold
let &fdl = &fdl
let s:l = 40 - ((39 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 40
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
