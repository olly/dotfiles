execute pathogen#infect()

set background=light
colorscheme solarized

" Disable swap files
set noswapfile

" Enable line numbers
set number

" Let's have some pretty indentation
set tabstop=2
set shiftwidth=2
set expandtab

" splits
set splitright
set splitbelow

" Display invisible characters
set list
set listchars=tab:▸\ ,eol:¬,trail:·

" Highlight the current line
set cursorline

" Autocompletion options
set wildmode=list:longest,list:full
set complete=.,w,b,u,t
set complete+=kspell " autocomplete from dictionary when spellcheck is enabled

" use relative line numbers
set relativenumber

" leader key
let mapleader = "\<Space>"

" bind :W as an alias of :w
cnoreabbrev W w

" vim-airline
set timeoutlen=50
set laststatus=2
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" vim-json
let g:vim_json_syntax_conceal = 0

" always show the sign gutter
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

" use the normal background color for the gutter
autocmd BufEnter * highlight SignColumn ctermbg=NONE guibg=NONE

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

