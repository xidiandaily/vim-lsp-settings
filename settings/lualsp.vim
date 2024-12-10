augroup vim_lsp_settings_lualsp
    let g:vim_lsp_settings_lualsp_workspace_config = {}
  au!
  LspRegisterServer {
      \ 'name': 'lualsp',
      \ 'cmd': {server_info->lsp_settings#get('lualsp', 'cmd', [lsp_settings#exec_path('lualsp')]+lsp_settings#get('lualsp', 'args', ["-logflag",0,"-mode",1]))},
      \ 'root_uri':{server_info->lsp_settings#get('lualsp', 'root_uri', lsp_settings#root_uri('lualsp'))},
      \ 'initialization_options': lsp_settings#get('lualsp', 'initialization_options', v:null),
      \ 'allowlist': lsp_settings#get('lualsp', 'allowlist', ['lua']),
      \ 'blocklist': lsp_settings#get('lualsp', 'blocklist', []),
      \ 'config': lsp_settings#get('lualsp', 'config', lsp_settings#server_config('lualsp')),
      \ 'workspace_config': lsp_settings#get('lualsp', 'workspace_config', g:vim_lsp_settings_lualsp_workspace_config),
      \ 'semantic_highlight': lsp_settings#get('lualsp', 'semantic_highlight', {}),
      \ }
augroup END

