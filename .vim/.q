
" General

set nocompatible
set wildmenu
set cursorline
set cursorcolumn
set number relativenumber	" Show relative line numbers
set nu rnu
set showmatch
filetype plugin on
let mapleader = ","
set clipboard=unnamedplus
au BufRead /tmp/mutt-* set tw=72

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

" Bindings

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-s> :NERDTreeFind<CR>
nnoremap <C-s> :Startify<CR>
nnoremap <leader>w<leader>d :Diary<CR>
nnoremap . :
nnoremap j gj
nnoremap k gk
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
 
" Advanced
set confirm	" Prompt confirmation dialogs
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
 
" Colors
set t_Co=256
colorscheme zenburn
syntax on

" Plugins
execute pathogen#infect('plugins/{}')

" NerdTree

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeShowBookmarks=1

" VToggleimWiki
    " Calendar
    
command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
        " automatically update links on read diary
        autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

function! Auwiki()
    set relativenumber! nu!
    set cursorline!
    set cursorcolumn!
    Calendar
    vertical resize 23
    rightb new
    VimwikiIndex
    VimwikiGoto\To\ Do
    wincmd l
endfunction

autocmd VimEnter *.wiki call Auwiki()

" Startify
let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ ]

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")

let g:startify_bookmarks = [ {'v': '~/.vim/vimrc'}, {'z': '~/.zshrc'}, {'b': '~/.config/bspwm/bspwmrc'}, {'s': '~/.config/sxhkd/sxhkdrc'}, {'a': '~/.config/alacritty/alacritty.yml'}, {'p': '~/.config/polybar/config'}, {'c': '~/.config/rofi/config.rasi'}, {'t':'~/.config/rofi/rofitheme.rasi'}, {'r': '~/.config/ranger/rc.conf'}, {'n': '~/.config/neomutt/neomuttrc'}]

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

