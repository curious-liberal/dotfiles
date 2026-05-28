" Plugin manager
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'

" Optional nicer Markdown editing (recommended)
Plug 'plasticboy/vim-markdown'

call plug#end()

" Fuzzy search shortcut
" Normal/visual/insert mappings for <leader>f -> :FZF
nnoremap <silent> <leader>f :FZF<CR>
vnoremap <silent> <leader>f :FZF<CR>
inoremap <silent> <leader>f <Esc>:FZF<CR>

" This makes Fuzzy more relevant
" Change working dir to the directory of the current file on BufEnter
autocmd! BufEnter * if expand('%') !=# '' | silent! lcd %:p:h | endif

" Optional also cd on VimEnter if a file was passed on startup
autocmd! VimEnter * if argc() > 0 | silent! lcd expand('<afile>:p:h') | endif

" --- Vimwiki configuration ---
let g:vimwiki_list = [{
      \ 'path': expand('REDACTED_WIKI_PATH'),
      \ 'syntax': 'markdown',
      \ 'ext': '.md',
      \ },
      \ {
      \ 'path': expand('REDACTED_WIKI_PATH'),
      \ 'syntax': 'markdown',
      \ 'ext': 'md'
      \	}]

" Scope VimWikis access to path
let g:vimwiki_global_ext = 0

" Treat .md as markdown
let g:vimwiki_ext2syntax = {'.md': 'markdown'}

" Optional open links with system default (macOS)
if has('macunix')
  let g:vimwiki_global_ext = 0
  autocmd FileType vimwiki nnoremap <buffer> gx :call jobstart(['open', expand('<cfile>')])<CR>
endif
