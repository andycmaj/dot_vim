" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vundle
" ---------------
nnoremap <Leader>bi :BundleInstall<CR>
nnoremap <Leader>bu :BundleInstall!<CR>
nnoremap <Leader>bc :BundleClean<CR>

" ---------------
" space.vim
" ---------------
" Disables space mappings in select mode to fix snipMate.
let g:space_disable_select_mode=1

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['scss'] }

" Platform-specific config files
if has('win32') || has('win64')
  let g:syntastic_jsl_conf=$HOME.'/.vim/config/windows/syntastic/jsl.conf'
  let g:syntastic_disabled_filetypes=['sh'] " Disable .sh on Windows
endif

" ---------------
" NERDTree
" ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup=1

" ---------------
" Session
" ---------------
let g:session_autosave=0
let g:session_autoload=0
nnoremap <leader>os :OpenSession<CR>

" ---------------
" SpeedDating
" ---------------
let g:speeddating_no_mappings=1 " Remove default mappings (C-a etc.)
nnoremap <silent><leader>dm <Plug>SpeedDatingDown
nnoremap <silent><leader>dp <Plug>SpeedDatingUp
nnoremap <silent><leader>dn <Plug>SpeedDatingNowUTC

" ---------------
" Tabular
" ---------------
nnoremap <Leader>t= :Tabularize /=<CR>
vnoremap <Leader>t= :Tabularize /=<CR>
nnoremap <Leader>t: :Tabularize /:\zs<CR>
vnoremap <Leader>t: :Tabularize /:\zs<CR>
nnoremap <Leader>t, :Tabularize /,\zs<CR>
vnoremap <Leader>t, :Tabularize /,\zs<CR>
nnoremap <Leader>t> :Tabularize /=>\zs<CR>
vnoremap <Leader>t> :Tabularize /=>\zs<CR>
nnoremap <Leader>t- :Tabularize /-<CR>
vnoremap <Leader>t- :Tabularize /-<CR>
nnoremap <Leader>t" :Tabularize /"<CR>
vnoremap <Leader>t" :Tabularize /"<CR>

" ---------------
" Fugitive
" ---------------
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
nnoremap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10

" Leader Commands
nnoremap <leader>t :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" ---------------
" Powerline
" ---------------
" Keep ^B from showing on Windows in Powerline
if has('win32') || has('win64')
  let g:Powerline_symbols = 'compatible'
elseif has('gui_macvim')
  let g:Powerline_symbols = 'fancy'
endif
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

" Abbreviate All of the Mode Names
let g:Powerline_mode_n = 'N'
let g:Powerline_mode_i = 'I'
let g:Powerline_mode_R = 'R'
let g:Powerline_mode_v = 'V'
let g:Powerline_mode_V = 'VL'
let g:Powerline_mode_cv = 'VB'
let g:Powerline_mode_s = 'S'
let g:Powerline_mode_S = 'SL'
let g:Powerline_mode_cs = 'SB'

" ---------------
" jellybeans.vim colorscheme tweaks
" ---------------
" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

" ---------------
" Ag.vim
" ---------------
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"

" ---------------
" Gifl - Google I'm Feeling Lucky URL Grabber
" ---------------
let g:LuckyOutputFormat='markdown'
" I sometimes run vim without ruby support.
let g:GIFLSuppressRubyWarning=1

" ------------
" sideways.vim
" ------------
noremap gs :SidewaysRight<cr>
noremap gS :SidewaysLeft<cr>

" ---------------
" Markdown-Preview
" ---------------
nnoremap <Leader>md :MarkdownPreview<CR>
vnoremap <Leader>md :MarkdownPreview<CR>

" ---------------
" switch.vim
" ---------------
nnoremap - :Switch<cr>

" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ---------------
" vim-markdown
" ---------------
let g:vim_markdown_folding_disabled=1

" ---------------
" Unconditional Paste
" ---------------
let g:UnconditionalPaste_NoDefaultMappings=1
nnoremap gcP <Plug>UnconditionalPasteCharBefore
nnoremap gcp <Plug>UnconditionalPasteCharAfter

" ---------------
" Gist.vim
" ---------------
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private=1

" ---------------
" MatchTagAlways
" ---------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \}

" ---------------
" YouCompleteMe
" ---------------
let g:ycm_complete_in_comments_and_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1

" ---------------
" vim-signify
" ---------------
let g:signify_mapping_next_hunk="<leader>sn"
let g:signify_mapping_prev_hunk="<leader>sp"
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"
" Makes switching buffers in large repos have no delay
let g:signify_update_on_bufenter=0

" ---------------
" vim-abolish
" ---------------
nnoremap <leader>su :Subvert/
nnoremap <leader>ss :%Subvert/

" ---------------
" vim-startify
" ---------------
let g:startify_bookmarks = [ '~/.vim/vimrc',
                            \'~/.vim/config.vim',
                            \'~/.vim/bindings.vim',
                            \'~/.vim/plugin_bindings.vim',
                            \'~/.vim/vundle.vim',
                            \'~/dot_files/_zshrc'
                            \'~/dot_files/aliases.sh',
                            \'~/dot_files/environment.sh',
                            \'~/dot_files/system_environment.sh']
let g:startify_show_files_number=20

" ---------------
" vim-togglecursor
" ---------------
let g:togglecursor_leave='line'

" ---------------
" rails.vim
" ---------------
command! Remigrate :Rake db:drop | Rake db:create | Rake db:migrate | Rake test:prepare

" Add custom commands for Rails.vim
" Thanks to http://git.io/_cBVeA and http://git.io/xIKnCw
let g:rails_projections = {
      \ 'app/models/*.rb': {'keywords': 'validates_conditional'},
      \ 'db/seeds/*.rb': {'command': 'seeds'},
      \ 'db/seeds.rb': {'command': 'seeds'},
      \ 'spec/factories.rb': {'command': 'factory'},
      \ 'spec/factories/*_factory.rb': {
      \   'command': 'factory',
      \   'affinity': 'model',
      \   'alternate': 'app/models/%s.rb',
      \   'related': 'db/schema.rb#%p',
      \   'test': 'spec/models/%s_spec.rb',
      \   'template': "FactoryGirl.define do\n  factory :%s do\n  end\nend",
      \   'keywords': 'factory sequence'
      \ },
      \ 'spec/factories/*.rb': {
      \   'command': 'factory',
      \   'affinity': 'collection',
      \   'alternate': 'app/models/%o.rb',
      \   'related': 'db/schema.rb#%s',
      \   'test': 'spec/models/%o_spec.rb',
      \   'template': "FactoryGirl.define do\n  factory :%o do\n  end\nend",
      \   'keywords': 'factory sequence'
      \ },
      \ 'spec/fabricators/*_fabricator.rb': {
      \   'command': 'fabricator',
      \   'affinity': 'model',
      \   'alternate': 'app/models/%s.rb',
      \   'related': 'db/schema.rb#%p',
      \   'test': 'spec/models/%s_spec.rb',
      \   'template': "Fabricator(:%s) do\nend",
      \   'keywords': 'sequence initialize_with on_init transient after_build before_validation after_validation before_save before_create after_create after_save'
      \ },
      \ 'spec/support/*.rb': {'command': 'support'},
      \ 'features/*.feature': {'command': 'feature'},
      \ 'features/step_definitions/*_steps.rb': {'command': 'steps'},
      \ 'features/support/*.rb': {'command': 'support'}}

