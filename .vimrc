" Bindings

" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set gdefault	" Always substitute all matches in a line
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
" Advanced
set confirm	" Prompt confirmation dialogs
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
 
" Colors
colorscheme zenburn
syntax on

" Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Plugins
execute pathogen#infect('plugins/{}')

" NerdTree
" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

let NERDTreeShowHidden=1

let NERDTreeShowBookmarks=1

" Startify
let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ ]

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")

let g:startify_bookmarks = [ {'v': '~/.vimrc'}, {'z': '~/.zshrc'}, {'b': '~/.config/bspwm/bspwmrc'}, {'s': '~/.config/sxhkd/sxhkdrc'}, {'a': '~/.config/alacritty/alacritty.yml'}, {'t': '~/.config/termite/config'}, {'p': '~/.config/polybar/config'}, {'c': '~/.config/rofi/config.rasi'}, {'r':'~/.config/rofi/rofi-theme.rasi'}]

let s:startify_ascii_header = [
\ '          ▟▙            ',
\ '          ▝▘            ',
\ '██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖',
\ '▝██  ██▘  ██  ██▛▜██▛▜██',
\ ' ▜█▙▟█▛   ██  ██  ██  ██',
\ ' ▝████▘   ██  ██  ██  ██',
\ '   ▀▀     ▀▀  ▀▀  ▀▀  ▀▀',
\ '',
\]
let g:startify_custom_header = map(s:startify_ascii_header +
       \ startify#fortune#quote(), '"   ".v:val')
