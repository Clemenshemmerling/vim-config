" HTML, JSX, TSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx,*.php'

" Theme and statusline
let g:gruvbox_contrast_dark = 'hard'
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], ['relativepath', 'modified']],
      \   'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeMapOpenInTab = '	'

" JavaScript/TypeScript
let g:javascript_plugin_flow = 1

" Go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
" Keep vim-go focused on syntax/highlighting; CoC handles Go language services.
let g:go_gopls_enabled = 0
let g:go_code_completion_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_fmt_autosave = 0
let g:go_metalinter_autosave = 0

" Ruby
let ruby_operators = 1
let ruby_spellcheck_strings = 1

" Python
let g:python_highlight_all = 1
let g:python3_host_prog = '/usr/bin/python3'

" PHP
let g:php_var_selector_is_identifier = 1
let g:php_htmlInStrings = 1
let g:php_sql_query = 1

" C# / OmniSharp
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlighting = 3

" UltiSnips
let g:UltiSnipsSnippetDirectories = [stdpath('config') . '/UltiSnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'

" tmux navigator
let g:tmux_navigator_no_mappings = 1

" CoC extensions for the languages you use most.
let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-emmet',
      \ 'coc-json',
      \ 'coc-git',
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-prettier',
      \ 'coc-pyright',
      \ 'coc-go',
      \ 'coc-solargraph',
      \ 'coc-omnisharp',
      \ 'coc-phpls'
      \ ]

" fzf
let $FZF_DEFAULT_OPTS = '--layout=reverse'
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" CoC quality-of-life settings
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
set diffopt+=vertical
