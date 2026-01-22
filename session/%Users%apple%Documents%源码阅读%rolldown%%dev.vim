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
badd +79 Cargo.toml
badd +23 crates/rolldown_binding/src/utils/normalize_binding_options.rs
badd +230 crates/rolldown_plugin/src/pluginable.rs
badd +27 crates/rolldown_plugin/src/plugin.rs
badd +187 crates/rolldown_plugin/src/plugin_context/plugin_context.rs
badd +167 crates/rolldown_plugin/src/plugin_context/native_plugin_context.rs
badd +5 crates/rolldown_plugin/src/types/hook_build_start_args.rs
badd +190 crates/rolldown_common/src/inner_bundler_options/types/normalized_bundler_options.rs
badd +5 crates/rolldown_plugin/src/plugin_context/transform_plugin_context.rs
badd +2 crates/rolldown_plugin/src/plugin_context/mod.rs
badd +5 crates/rolldown_plugin/src/type_aliases.rs
badd +29 crates/rolldown_plugin/src/lib.rs
badd +44 crates/rolldown_binding/src/options/plugin/binding_plugin_options.rs
badd +10 packages/rolldown/src/api/rolldown/index.ts
badd +63 packages/rolldown/src/api/rolldown/rolldown-build.ts
badd +1144 packages/rolldown/src/binding.d.ts
badd +33 packages/rolldown/src/utils/create-bundler.ts
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
badd +11 crates/rolldown_plugin/src/types/hook_resolve_id_args.rs
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
badd +338 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_index-3.0.0/src/lib.rs
badd +2 crates/rolldown_plugin/src/types/plugin_idx.rs
badd +1 crates/rolldown_plugin/src/types/plugin_context_resolve_options.rs
badd +98 crates/rolldown_binding/src/types/js_callback.rs
badd +8 crates/rolldown_std_utils/src/pretty_type_name.rs
badd +9 crates/rolldown_std_utils/src/path_ext.rs
badd +8 crates/rolldown_binding/src/binding_bundler.rs
badd +137 crates/rolldown/src/bundler.rs
badd +52 crates/rolldown_common/src/inner_bundler_options/mod.rs
badd +8 crates/rolldown_common/src/inner_bundler_options/types/input_item.rs
badd +69 crates/rolldown_debug/src/init_tracing.rs
badd +1 crates/rolldown_binding/src/options/binding_input_options/binding_debug_options.rs
badd +18 crates/rolldown_debug/src/utils.rs
badd +44 crates/rolldown_tracing/src/lib.rs
badd +8 crates/rolldown_binding/src/utils/mod.rs
badd +230 crates/rolldown/src/utils/normalize_options.rs
badd +49 crates/rolldown_error/src/build_error/mod.rs
badd +33 crates/rolldown_error/src/events/invalid_option.rs
badd +236 crates/rolldown_error/src/build_error/error_constructors.rs
badd +42 crates/rolldown_error/src/events/mod.rs
badd +20 crates/rolldown_error/src/event_kind.rs
badd +13 crates/rolldown_error/src/types/diagnostic_options.rs
badd +26 crates/rolldown_error/Cargo.toml
badd +1 crates/rolldown_error/src/lib.rs
badd +15 crates/rolldown_common/src/inner_bundler_options/types/output_format.rs
badd +17 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_span-0.79.0/src/source_type.rs
badd +43 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_ast_macros-0.79.0/src/lib.rs
badd +32 crates/rolldown_binding/src/options/binding_output_options/mod.rs
badd +12 crates/rolldown_common/src/inner_bundler_options/types/output_option/preserve_entry_signatures.rs
badd +1 crates/rolldown_common/src/inner_bundler_options/types/mod.rs
badd +1073 ~/.rustup/toolchains/1.88.0-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/option.rs
badd +18 crates/rolldown_common/src/inner_bundler_options/types/minify_options.rs
badd +6 crates/rolldown_utils/src/indexmap.rs
badd +38 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/rustc-hash-2.1.1/src/lib.rs
badd +1542 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/indexmap-2.9.0/src/map.rs
badd +6 crates/rolldown_binding/src/types/preserve_entry_signatures.rs
badd +24 crates/rolldown_common/src/inner_bundler_options/types/resolve_options.rs
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
badd +72 crates/rolldown_common/src/inner_bundler_options/types/experimental_options.rs
badd +28 crates/rolldown_common/src/inner_bundler_options/types/advanced_chunks_options.rs
badd +15 crates/rolldown_fs/src/os.rs
badd +115 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/file_system.rs
badd +18 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_transformer_plugins-0.79.0/src/inject_global_variables.rs
badd +1 crates/rolldown_binding/src/lib.rs
badd +1 crates/rolldown_binding/src/utils/napi_error.rs
badd +288 crates/rolldown_resolver/src/resolver.rs
badd +44 crates/rolldown_binding/src/options/binding_input_options/binding_treeshake.rs
badd +54 crates/rolldown_binding/src/types/js_regex.rs
badd +86 crates/rolldown_utils/src/js_regex.rs
badd +52 crates/rolldown_utils/src/concat_string.rs
badd +20 crates/rolldown_utils/src/lib.rs
badd +1 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/anyhow-1.0.98/src/lib.rs
badd +1 crates/rolldown_utils/Cargo.toml
badd +5 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/regress-0.10.3/src/lib.rs
badd +40 crates/rolldown/src/bundler_builder.rs
badd +1 ~/Documents/源码阅读/farm/Cargo.toml
badd +97 cliff.toml
badd +6 rustfmt.toml
badd +18 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_resolver-11.6.0/src/options.rs
badd +26 crates/rolldown_binding/src/options/binding_input_options/binding_resolve_options.rs
badd +214 crates/rolldown_binding/src/binding_bundler_impl.rs
badd +46 packages/rolldown/build-binding.ts
badd +31 packages/rolldown/src/api/build.ts
badd +115 packages/rolldown/src/options/input-options.ts
badd +21 crates/rolldown_common/src/inner_bundler_options/types/platform.rs
badd +1 crates/rolldown/src/utils/parse_to_ecma_ast.rs
badd +5 ~/Documents/源码阅读/rolldown/crates/rolldown_fs/src/file_system.rs
badd +4 ~/Documents/源码阅读/rolldown/crates/rolldown_utils/src/dashmap.rs
badd +8 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/package_json.rs
badd +23 ~/Documents/源码阅读/rolldown/crates/rolldown/src/lib.rs
badd +7 ~/Documents/源码阅读/rolldown/crates/rolldown_resolver/src/lib.rs
badd +7 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/events/configuration_field_conflict.rs
badd +242 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/file_emitter.rs
badd +14 ~/Documents/源码阅读/rolldown/crates/rolldown/src/utils/apply_inner_plugins.rs
badd +25 crates/rolldown_plugin_data_uri/src/lib.rs
badd +23 ~/Documents/源码阅读/rolldown/crates/rolldown_utils/src/dataurl.rs
badd +43 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/nom-8.0.0/src/bytes/complete.rs
badd +64 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/nom-8.0.0/src/bytes/mod.rs
badd +38 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/nom-8.0.0/src/traits.rs
badd +20 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/nom-8.0.0/src/internal.rs
badd +11 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/types/hook_resolve_id_output.rs
badd +89 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/dashmap-6.1.0/src/lib.rs
badd +10 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/plugin_context/plugin_context_meta.rs
badd +1 crates/rolldown_plugin_data_uri/README.md
badd +12 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/generated/hook_usage.rs
badd +34 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/plugin_driver/hook_orders.rs
badd +8 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/types/plugin_hook_meta.rs
badd +15 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/module_loader/mod.rs
badd +27 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/module_loader/task_result.rs
badd +32 crates/rolldown_common/src/module_loader/runtime_module_brief.rs
badd +16 ~/Documents/源码阅读/rolldown/crates/rolldown/src/types/scan_stage_cache.rs
badd +7 ~/Documents/源码阅读/rolldown/crates/rolldown_debug/src/trace_action_macro.rs
badd +5 crates/rolldown_debug/src/lib.rs
badd +21 ~/Documents/源码阅读/rolldown/crates/rolldown_debug_action/src/definitions/session_meta.rs
badd +14 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/ts-rs-11.0.1/src/lib.rs
badd +12 crates/rolldown_debug_action/src/lib.rs
badd +15 crates/rolldown_debug_action/src/types/mod.rs
badd +4 crates/rolldown/Cargo.toml
badd +4 ~/Documents/源码阅读/rolldown/crates/rolldown_debug_action/src/definitions/build_start.rs
badd +3 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/scan_mode.rs
badd +122 ~/Documents/源码阅读/rolldown/crates/rolldown/src/stages/scan_stage.rs
badd +183 ~/Documents/源码阅读/rolldown/crates/rolldown/src/module_loader/module_loader.rs
badd +3 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/ecmascript/module_idx.rs
badd +25 ~/Documents/源码阅读/rolldown/crates/rolldown_plugin/src/plugin_driver/build_hooks.rs
badd +191 ~/Documents/源码阅读/rolldown/crates/rolldown/src/module_loader/runtime_module_task.rs
badd +5 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/type_aliases.rs
badd +12 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/events/invalid_define_config.rs
badd +3 crates/rolldown/tests/rolldown/misc/common_js_min/main.js
badd +1 packages/rolldown/build.ts
badd +166 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/tokio-1.45.1/src/task/spawn.rs
badd +155 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/tokio-1.45.1/src/runtime/task/join.rs
badd +30 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/hybrid_index_vec.rs
badd +39 ~/Documents/源码阅读/rolldown/crates/rolldown_ecmascript/src/ecma_ast/mod.rs
badd +1 crates/rolldown_ecmascript/src/ecma_ast/program_cell.rs
badd +42 ~/Documents/源码阅读/rolldown/crates/rolldown_ecmascript/src/ecma_compiler.rs
badd +20 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/module/mod.rs
badd +22 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/module/normal_module.rs
badd +40 crates/rolldown/src/runtime/runtime-base.js
badd +35 crates/rolldown/src/runtime/index.js
badd +15 crates/rolldown/src/runtime/runtime-tail.js
badd +1 crates/rolldown/src/runtime/runtime-head-node.js
badd +1 crates/rolldown/src/runtime/runtime-tail-node.js
badd +11 crates/rolldown_ecmascript/Cargo.toml
badd +377 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/self_cell-1.2.0/src/lib.rs
badd +261 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc-miette-2.4.0/src/protocol.rs
badd +44 ~/Documents/源码阅读/rolldown/crates/rolldown_error/src/events/parse_error.rs
badd +1 crates/rolldown_ecmascript/src/ecma_ast/gen.rs
badd +23 ~/Documents/源码阅读/rolldown/crates/rolldown/src/utils/tweak_ast_for_scanning.rs
badd +19 ~/Documents/源码阅读/rolldown/crates/rolldown_ecmascript_utils/src/ast_snippet.rs
badd +1331 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_ast_visit-0.79.0/src/generated/visit_mut.rs
badd +1 crates/rolldown/tests/rolldown/errors/missing_export/foo.js
badd +1 crates/rolldown/tests/rolldown/errors/missing_export/main.js
badd +90 crates/rolldown/tests/rolldown/errors/missing_export/artifacts.snap
badd +3 crates/rolldown/tests/rolldown/errors/missing_export/_config.json
badd +1 crates/rolldown/tests/rolldown/errors/json_parse_error/issue-3102/artifacts.snap
badd +1 crates/rolldown/tests/rolldown/dce/defined_expr_in_paren_expr/artifacts.snap
badd +2 crates/rolldown/tests/rolldown/mod.rs
badd +1 crates/rolldown/tests/rolldown/plugin/plugin_context/info_warn_debug/entry.js
badd +27 crates/rolldown/tests/rolldown/plugin/plugin_context/info_warn_debug/mod.rs
badd +1 crates/rolldown/tests/rolldown/plugin/plugin_context/mod.rs
badd +89 crates/rolldown/tests/rolldown/plugin/plugin_context/custom_arg_in_resolve/mod.rs
badd +1 crates/rolldown/tests/rolldown/plugin/plugin_context/custom_arg_in_resolve/entry.js
badd +2 ~/Documents/源码阅读/rolldown/crates/rolldown/tests/rolldown/function/mod.rs
badd +1 crates/rolldown_testing/src/test_config.rs
badd +131 crates/rolldown_testing/src/utils.rs
badd +1 crates/rolldown/tests/package.json
badd +15 crates/rolldown/examples/basic.rs
badd +5 ~/Documents/源码阅读/rolldown/crates/rolldown_workspace/src/lib.rs
badd +739 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_ast-0.79.0/src/ast/js.rs
badd +664 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_ast-0.79.0/src/generated/ast_builder.rs
badd +28 ~/Documents/源码阅读/rolldown/crates/rolldown_ecmascript/src/ecma_ast/helpers.rs
badd +71 ~/Documents/源码阅读/rolldown/crates/rolldown/src/ast_scanner/mod.rs
badd +67 ~/Documents/源码阅读/rolldown/crates/rolldown/src/ast_scanner/impl_visit.rs
badd +3 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/module_id.rs
badd +6 crates/rolldown_ecmascript/src/lib.rs
badd +1 crates/rolldown/src/module_loader/task_context.rs
badd +5 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/module_def_format.rs
badd +462 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_semantic-0.79.0/src/scoping.rs
badd +79 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/symbol_ref_db.rs
badd +74 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/ast_scopes.rs
badd +26 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_syntax-0.79.0/src/symbol.rs
badd +32 ~/Documents/源码阅读/rolldown/crates/rolldown_utils/src/ecmascript.rs
badd +10 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/stmt_info.rs
badd +1 crates/rolldown/src/module_loader/mod.rs
badd +8 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/namespace_alias.rs
badd +17 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/symbol_ref.rs
badd +14 ~/Documents/源码阅读/rolldown/crates/rolldown_rstr/src/lib.rs
badd +11 ~/Documents/源码阅读/rolldown/crates/rolldown_rstr/src/to_str.rs
badd +2 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/chunk_idx.rs
badd +157 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/oxc_syntax-0.79.0/src/identifier.rs
badd +268 ~/.cargo/registry/src/mirrors.tuna.tsinghua.edu.cn-e791a3f93f26854f/unicode-id-start-1.3.1/src/lib.rs
badd +31 crates/rolldown_common/src/types/named_import.rs
badd +1 crates/rolldown_common/src/types/named_export.rs
badd +2 crates/rolldown_common/src/types/module_render_type.rs
badd +36 crates/rolldown_common/src/types/member_expr_ref.rs
badd +110 crates/rolldown_common/src/ecmascript/ecma_view.rs
badd +12 ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/import_record.rs
argglobal
%argdel
edit ~/Documents/源码阅读/rolldown/crates/rolldown/src/ast_scanner/mod.rs
argglobal
balt ~/Documents/源码阅读/rolldown/crates/rolldown_common/src/types/import_record.rs
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
sil! 10,48fold
sil! 57,110fold
sil! 112,138fold
sil! 157,158fold
sil! 163,165fold
sil! 170,175fold
sil! 183,184fold
sil! 167,198fold
sil! 152,223fold
sil! 142,223fold
sil! 226,228fold
sil! 230,232fold
sil! 242,248fold
sil! 242,249fold
sil! 241,250fold
sil! 240,251fold
sil! 254,260fold
sil! 254,261fold
sil! 253,262fold
sil! 252,263fold
sil! 238,264fold
sil! 266,268fold
sil! 271,273fold
sil! 274,276fold
sil! 278,280fold
sil! 277,281fold
sil! 270,282fold
sil! 266,283fold
sil! 238,283fold
sil! 238,283fold
sil! 287,289fold
sil! 296,298fold
sil! 296,300fold
sil! 296,300fold
sil! 294,301fold
sil! 293,302fold
sil! 310,311fold
sil! 312,314fold
sil! 309,315fold
sil! 308,316fold
sil! 318,322fold
sil! 326,329fold
sil! 330,332fold
sil! 326,332fold
sil! 326,333fold
sil! 334,337fold
sil! 334,338fold
sil! 343,345fold
sil! 342,346fold
sil! 339,347fold
sil! 334,347fold
sil! 324,348fold
sil! 234,350fold
sil! 352,354fold
sil! 356,358fold
sil! 360,362fold
sil! 364,366fold
sil! 380,384fold
sil! 379,384fold
sil! 385,394fold
sil! 385,395fold
sil! 400,402fold
sil! 398,402fold
sil! 375,407fold
sil! 369,407fold
sil! 416,424fold
sil! 415,425fold
sil! 409,425fold
sil! 428,436fold
sil! 427,437fold
sil! 445,446fold
sil! 449,451fold
sil! 452,454fold
sil! 456,459fold
sil! 439,460fold
sil! 467,470fold
sil! 462,471fold
sil! 506,507fold
sil! 505,510fold
sil! 505,513fold
sil! 505,513fold
sil! 514,515fold
sil! 517,520fold
sil! 521,526fold
sil! 527,534fold
sil! 503,536fold
sil! 497,536fold
sil! 544,547fold
sil! 548,551fold
sil! 552,557fold
sil! 559,566fold
sil! 543,568fold
sil! 538,568fold
sil! 575,577fold
sil! 575,579fold
sil! 575,579fold
sil! 571,580fold
sil! 581,584fold
sil! 581,588fold
sil! 581,588fold
sil! 570,590fold
sil! 598,600fold
sil! 598,602fold
sil! 598,602fold
sil! 594,603fold
sil! 605,610fold
sil! 604,611fold
sil! 614,616fold
sil! 593,617fold
sil! 619,621fold
sil! 622,627fold
sil! 619,628fold
sil! 619,628fold
sil! 618,629fold
sil! 634,636fold
sil! 640,643fold
sil! 639,644fold
sil! 637,644fold
sil! 633,645fold
sil! 632,646fold
sil! 647,650fold
sil! 651,654fold
sil! 631,656fold
sil! 630,657fold
sil! 593,658fold
sil! 593,658fold
sil! 592,659fold
sil! 664,667fold
sil! 663,668fold
sil! 662,670fold
sil! 675,677fold
sil! 675,678fold
sil! 679,681fold
sil! 679,682fold
sil! 673,684fold
sil! 685,686fold
sil! 688,690fold
sil! 671,694fold
sil! 701,703fold
sil! 701,705fold
sil! 701,705fold
sil! 697,706fold
sil! 709,711fold
sil! 715,719fold
sil! 720,722fold
sil! 723,726fold
sil! 714,727fold
sil! 696,728fold
sil! 732,735fold
sil! 736,739fold
sil! 740,743fold
sil! 748,751fold
sil! 752,754fold
sil! 747,756fold
sil! 744,757fold
sil! 731,759fold
sil! 730,760fold
sil! 762,764fold
sil! 772,775fold
sil! 771,776fold
sil! 766,776fold
sil! 778,781fold
sil! 789,795fold
sil! 788,796fold
sil! 786,797fold
sil! 783,799fold
sil! 805,807fold
sil! 805,809fold
sil! 805,809fold
sil! 804,810fold
sil! 803,812fold
sil! 802,813fold
sil! 824,827fold
sil! 829,832fold
sil! 829,834fold
sil! 829,834fold
sil! 828,835fold
sil! 823,837fold
sil! 822,838fold
sil! 819,840fold
sil! 816,840fold
sil! 843,846fold
sil! 851,853fold
sil! 851,854fold
sil! 849,855fold
sil! 861,863fold
sil! 859,865fold
sil! 858,866fold
sil! 857,868fold
sil! 871,876fold
sil! 882,884fold
sil! 881,886fold
sil! 878,886fold
sil! 140,887fold
sil! 890,897fold
let &fdl = &fdl
let s:l = 71 - ((13 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 71
normal! 012|
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
