" VimWiki
"""  let g:vimwiki_key_mappings =
"""    \ {
"""    \   'all_maps': 1,
"""    \   'global': 1,
"""    \   'headers': 1,
"""    \   'text_objs': 1,
"""    \   'table_format': 1,
"""    \   'table_mappings': 1,
"""    \   'lists': 1,
"""    \   'links': 1,
"""    \   'html': 1,
"""    \   'mouse': 1,
"""    \ }


" let g:vimwiki_auto_header = 0
" let g:vimwiki_markdown_header_style = 1
" let g:vimwiki_tags_header_level = 1
" let g:vimwiki_tags_header = 'Generated Tags'
" let g:vimwiki_links_header_level = 1
" let g:vimwiki_links_header = 'Generated Links'
" let g:vimwiki_map_prefix = '<Leader>w'
" let g:vimwiki_toc_link_format = 0
" let g:vimwiki_toc_header_level = 1
" let g:vimwiki_toc_header = 'Contents'
" let g:vimwiki_autowriteall = 1
" let g:vimwiki_conceal_pre = 0
" let g:vimwiki_conceal_onechar_markers = 1
" let g:vimwiki_conceallevel = 2
" let g:vimwiki_user_htmls = ''
" let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr'
" let g:vimwiki_html_header_numbering_sym = ''
" let g:vimwiki_html_header_numbering = 0
" let g:vimwiki_markdown_link_ext = 0
" let g:vimwiki_create_link = 1
" let g:vimwiki_use_calendar = 1
" let g:vimwiki_text_ignore_newline = 1
" let g:vimwiki_list_ignore_newline = 1
" let g:vimwiki_listsym_rejected = '✗'
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_table_mappings = 0
" let g:vimwiki_global_ext = 1
" let g:vimwiki_hl_cb_checked = 0

" Markdown in Wiki
map <leader>wp :MarkdownPreview<CR>
map <leader>wx :VimwikiToggleListItem<CR>

let g:vimwiki_dir_link = 'index'    " Open /index instead of directory listing.
" let g:vimwiki_folding = 'expr'      " Enable folding.

let g:vimwiki_list = [{
  \ 'auto_export': 1,
  \ 'automatic_nested_syntaxes':1,
  \ 'path_html': '$HOME/vimwiki/web/public',
  \ 'path': '$HOME/vimwiki/web/content/blog',
  \ 'template_path': '$HOME/vimwiki/web/themes',
  \ 'syntax': 'markdown',
  \ 'ext':'.md',
  \ 'template_default':'markdown',
  \ 'custom_wiki2html': '$HOME/scripts/wiki2hugo.sh',
  \ 'template_ext':'.html'},
	\{'path': '~/vimwiki/docs/',
  \ 'path_html': '~/vimwiki/docs_html',
  \ 'template_path': '~/vimwiki/template',
  \ 'template_default': 'default',
  \ 'template_ext': '.html',
  \ 'syntax': 'markdown', 
  \ 'ext': '.md', 
  \ 'html_filename_parameterization': 1, 
  \ 'auto_export': 1,
  \ 'custom_wiki2html': 'vimwiki_markdown'},
	\{'path': '~/vimwiki/private/',
  \ 'path_html': '~/vimwiki/private_html',
  \ 'template_path':'~/vimwiki/template',
  \ 'template_default': 'default',
  \ 'template_ext': '.html',
  \ 'syntax': 'markdown',
  \ 'ext': '.md', 
  \ 'html_filename_parameterization': 1, 
  \ 'auto_export': 1,
  \ 'custom_wiki2html': 'vimwiki_markdown'},
	\{'path': '~/vimwiki/vimwiki/',
  \ 'path_html': '~/vimwiki/vimwiki_html',
  \ 'template_path':'~/vimwiki/template',
  \ 'template_default': 'default',
  \ 'template_ext': '.html',
  \ 'syntax': 'markdown', 
  \ 'ext': '.md', 
  \ 'html_filename_parameterization': 1, 
  \ 'auto_export': 1,
  \ 'custom_wiki2html': 'vimwiki_markdown'}]



let g:vimwiki_diary_months = {
      \ 1: 'January', 2: 'February', 3: 'March',
      \ 4: 'April', 5: 'May', 6: 'June',
      \ 7: 'July', 8: 'August', 9: 'September',
      \ 10: 'October', 11: 'November', 12: 'December'
      \ }
