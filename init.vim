set nocompatible
filetype plugin on
syntax on


" Plugin manager
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Optional nicer Markdown editing (recommended)
Plug 'plasticboy/vim-markdown'

call plug#end()

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
