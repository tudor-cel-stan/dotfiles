let SessionLoad = 1
if &cp | set nocp | endif
nmap <silent>  :wincmd h
let s:cpo_save=&cpo
set cpo&vim
nmap <silent> <NL> :wincmd j
nmap <silent>  :wincmd k
nmap <silent>  :wincmd l
nnoremap  :NERDTreeToggle
nnoremap  :Startify
nmap  w m <Plug>VimwikiMakeTomorrowDiaryNote
nmap  w y <Plug>VimwikiMakeYesterdayDiaryNote
nmap  w t <Plug>VimwikiTabMakeDiaryNote
nmap  w w <Plug>VimwikiMakeDiaryNote
nmap  w i <Plug>VimwikiDiaryGenerateLinks
nmap  wi <Plug>VimwikiDiaryIndex
nmap  ws <Plug>VimwikiUISelect
nmap  wt <Plug>VimwikiTabIndex
nmap  ww <Plug>VimwikiIndex
nmap  caL <Plug>CalendarH
nmap  cal <Plug>CalendarV
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap mg <Plug>BookmarkMoveToLine
nmap mjj <Plug>BookmarkMoveDown
nmap mkk <Plug>BookmarkMoveUp
nmap mx <Plug>BookmarkClearAll
nmap mc <Plug>BookmarkClear
nmap mp <Plug>BookmarkPrev
nmap mn <Plug>BookmarkNext
nmap mi <Plug>BookmarkAnnotate
nmap mm <Plug>BookmarkToggle
nmap ma <Plug>BookmarkShowAll
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
nnoremap <silent> <Plug>BookmarkMoveToLine :BookmarkMoveToLine v:count
nnoremap <silent> <Plug>BookmarkMoveDown :BookmarkMoveDown v:count
nnoremap <silent> <Plug>BookmarkMoveUp :BookmarkMoveUp v:count
nnoremap <silent> <Plug>BookmarkClearAll :BookmarkClearAll
nnoremap <silent> <Plug>BookmarkClear :BookmarkClear
nnoremap <silent> <Plug>BookmarkPrev :BookmarkPrev
nnoremap <silent> <Plug>BookmarkNext :BookmarkNext
nnoremap <silent> <Plug>BookmarkAnnotate :BookmarkAnnotate
nnoremap <silent> <Plug>BookmarkToggle :BookmarkToggle
nnoremap <silent> <Plug>BookmarkShowAll :BookmarkShowAll
nnoremap <silent> <Plug>CalendarT :cal calendar#show(2)
nnoremap <silent> <Plug>CalendarH :cal calendar#show(1)
nnoremap <silent> <Plug>CalendarV :cal calendar#show(0)
nnoremap <C-S> :Startify
nnoremap <C-N> :NERDTreeToggle
nmap <silent> <C-L> :wincmd l
nmap <silent> <C-H> :wincmd h
nmap <silent> <C-J> :wincmd j
nmap <silent> <C-K> :wincmd k
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set confirm
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatlistpat=^\\s*\\%(\\(-\\|\\*\\|#\\)\\|\\(\\C\\%(\\d\\+)\\|\\d\\+\\.\\|[ivxlcdm]\\+)\\|[IVXLCDM]\\+)\\|\\l\\{1,2})\\|\\u\\{1,2})\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
set gdefault
set helplang=en
set hlsearch
set ignorecase
set incsearch
set ruler
set runtimepath=~/.vim,~/.vim/pack/plugins/start/vimwiki,~/.vim/pack/plugins/start/vimmwiki,~/.vim/plugins/calendar-vim,~/.vim/plugins/nerdtree,~/.vim/plugins/vim-bookmarks,~/.vim/plugins/vim-devicons,~/.vim/plugins/vim-startify.vim,~/.vim/plugins/vimwiki,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/after
set shiftwidth=4
set shortmess=filnxtToOSI
set showbreak=+++
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set textwidth=100
set titlestring=%{strftime(\"%c\")}
set undodir=~/.cache/vim/undo//
set window=56
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd vimwiki/index.wiki
edit vimwiki/index.wiki
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 26 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 183 + 105) / 210)
argglobal
enew
file __Calendar
balt vimwiki/index.wiki
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer>  <Plug>CalendarDoAction
nmap <buffer> ? <Plug>CalendarShowHelp
nmap <buffer> q <Plug>CalendarClose
nmap <buffer> r <Plug>CalendarRedisplay
nmap <buffer> t <Plug>CalendarGotoToday
nmap <buffer> <Down> <Plug>CalendarGotoPrevYear
nmap <buffer> <Up> <Plug>CalendarGotoNextYear
nmap <buffer> <Left> <Plug>CalendarGotoPrevMonth
nmap <buffer> <Right> <Plug>CalendarGotoNextMonth
nmap <buffer> <2-LeftMouse> <Plug>CalendarDoAction
nnoremap <buffer> <silent> <Plug>CalendarGotoNextYear :call calendar#action("NextYear")
nnoremap <buffer> <silent> <Plug>CalendarGotoPrevYear :call calendar#action("PrevYear")
nnoremap <buffer> <silent> <Plug>CalendarGotoNextMonth :call calendar#action("Next>")
nnoremap <buffer> <silent> <Plug>CalendarGotoPrevMonth :call calendar#action("<Prev")
nnoremap <buffer> <silent> <Plug>CalendarReDisplay :call calendar#show(0,2021,9)
nnoremap <buffer> <silent> <Plug>CalendarGotoToday :call calendar#show(b:CalendarDir)
nnoremap <buffer> <silent> <Plug>CalendarDoAction :call calendar#action()
nnoremap <buffer> <silent> <Plug>CalendarClose :call calendar#close()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=delete
setlocal buflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'calendar'
setlocal filetype=calendar
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|#\\)\\|\\(\\C\\%(\\d\\+)\\|\\d\\+\\.\\|[ivxlcdm]\\+)\\|[IVXLCDM]\\+)\\|\\l\\{1,2})\\|\\u\\{1,2})\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'calendar'
setlocal syntax=calendar
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=100
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
balt __Calendar
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <S-Tab> vimwiki#tbl#kbd_shift_tab()
inoremap <buffer> <silent> <S-CR> :VimwikiReturn 2 2
imap <buffer> <C-L><C-M> <Plug>VimwikiListToggle
imap <buffer> <C-L><C-K> <Plug>VimwikiListPrevSymbol
imap <buffer> <C-L><C-J> <Plug>VimwikiListNextSymbol
imap <buffer> <C-T> <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> <C-D> <Plug>VimwikiDecreaseLvlSingleItem
nmap <buffer> 	 <Plug>VimwikiNextLink
vmap <buffer>  <Plug>VimwikiNormalizeLinkVisualCR
nmap <buffer>  <Plug>VimwikiFollowLink
nmap <buffer>  wr <Plug>VimwikiRenameFile
nmap <buffer>  wd <Plug>VimwikiDeleteFile
nmap <buffer>  wn <Plug>VimwikiGoto
nmap <buffer>  whh <Plug>Vimwiki2HTMLBrowse
nmap <buffer>  wh <Plug>Vimwiki2HTML
vmap <buffer> + <Plug>VimwikiNormalizeLinkVisual
nmap <buffer> + <Plug>VimwikiNormalizeLink
nmap <buffer> - <Plug>VimwikiRemoveHeaderLevel
nmap <buffer> <D-CR> <Plug>VimwikiTabnewLink
nmap <buffer> = <Plug>VimwikiAddHeaderLevel
nmap <buffer> O <Plug>VimwikiListO
nmap <buffer> [= <Plug>VimwikiGoToPrevSiblingHeader
nmap <buffer> [[ <Plug>VimwikiGoToPrevHeader
nmap <buffer> [u <Plug>VimwikiGoToParentHeader
nmap <buffer> ]= <Plug>VimwikiGoToNextSiblingHeader
nmap <buffer> ]] <Plug>VimwikiGoToNextHeader
nmap <buffer> ]u <Plug>VimwikiGoToParentHeader
vmap <buffer> al <Plug>VimwikiTextObjListChildrenV
omap <buffer> al <Plug>VimwikiTextObjListChildren
vmap <buffer> ac <Plug>VimwikiTextObjColumnV
omap <buffer> ac <Plug>VimwikiTextObjColumn
vmap <buffer> a\ <Plug>VimwikiTextObjTableCellV
omap <buffer> a\ <Plug>VimwikiTextObjTableCell
vmap <buffer> aH <Plug>VimwikiTextObjHeaderSubV
omap <buffer> aH <Plug>VimwikiTextObjHeaderSub
vmap <buffer> ah <Plug>VimwikiTextObjHeaderV
omap <buffer> ah <Plug>VimwikiTextObjHeader
nmap <buffer> gw1 <Plug>VimwikiTableAlignW1
nmap <buffer> gww <Plug>VimwikiTableAlignW
nmap <buffer> gq1 <Plug>VimwikiTableAlignQ1
nmap <buffer> gqq <Plug>VimwikiTableAlignQ
noremap <buffer> <silent> gLA :VimwikiChangeSymbolInListTo A)
noremap <buffer> <silent> glA :VimwikiChangeSymbolTo A)
noremap <buffer> <silent> gLa :VimwikiChangeSymbolInListTo a)
noremap <buffer> <silent> gla :VimwikiChangeSymbolTo a)
noremap <buffer> <silent> gLI :VimwikiChangeSymbolInListTo I)
noremap <buffer> <silent> glI :VimwikiChangeSymbolTo I)
noremap <buffer> <silent> gLi :VimwikiChangeSymbolInListTo i)
noremap <buffer> <silent> gli :VimwikiChangeSymbolTo i)
noremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
noremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
noremap <buffer> <silent> gL# :VimwikiChangeSymbolInListTo #
noremap <buffer> <silent> gl# :VimwikiChangeSymbolTo #
noremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
noremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
noremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
noremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
nmap <buffer> gL <Plug>VimwikiRemoveCBInList
nmap <buffer> gl <Plug>VimwikiRemoveSingleCB
nmap <buffer> gLR <Plug>VimwikiRenumberAllLists
nmap <buffer> gLr <Plug>VimwikiRenumberAllLists
nmap <buffer> glr <Plug>VimwikiRenumberList
nmap <buffer> gLL <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLl <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLH <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gLh <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gll <Plug>VimwikiIncreaseLvlSingleItem
nmap <buffer> glh <Plug>VimwikiDecreaseLvlSingleItem
vmap <buffer> glp <Plug>VimwikiDecrementListItem
nmap <buffer> glp <Plug>VimwikiDecrementListItem
vmap <buffer> gln <Plug>VimwikiIncrementListItem
nmap <buffer> gln <Plug>VimwikiIncrementListItem
vmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
nmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
nmap <buffer> gnt <Plug>VimwikiNextTask
vmap <buffer> il <Plug>VimwikiTextObjListSingleV
omap <buffer> il <Plug>VimwikiTextObjListSingle
vmap <buffer> ic <Plug>VimwikiTextObjColumnInnerV
omap <buffer> ic <Plug>VimwikiTextObjColumnInner
vmap <buffer> i\ <Plug>VimwikiTextObjTableCellInnerV
omap <buffer> i\ <Plug>VimwikiTextObjTableCellInner
vmap <buffer> iH <Plug>VimwikiTextObjHeaderSubContentV
omap <buffer> iH <Plug>VimwikiTextObjHeaderSubContent
vmap <buffer> ih <Plug>VimwikiTextObjHeaderContentV
omap <buffer> ih <Plug>VimwikiTextObjHeaderContent
nmap <buffer> o <Plug>VimwikiListo
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevSiblingHeader :call vimwiki#base#goto_sibling(-1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextSiblingHeader :call vimwiki#base#goto_sibling(+1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevHeader :call vimwiki#base#goto_prev_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextHeader :call vimwiki#base#goto_next_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToParentHeader :call vimwiki#base#goto_parent_header()
nnoremap <buffer> <silent> <Plug>VimwikiRemoveHeaderLevel :call vimwiki#base#RemoveHeaderLevel(v:count)
nnoremap <buffer> <silent> <Plug>VimwikiAddHeaderLevel :call vimwiki#base#AddHeaderLevel(v:count)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListSingleV :call vimwiki#lst#TO_list_item(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListSingle :call vimwiki#lst#TO_list_item(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListChildrenV :call vimwiki#lst#TO_list_item(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListChildren :call vimwiki#lst#TO_list_item(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInnerV :call vimwiki#base#TO_table_col(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInner :call vimwiki#base#TO_table_col(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnV :call vimwiki#base#TO_table_col(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumn :call vimwiki#base#TO_table_col(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInnerV :call vimwiki#base#TO_table_cell(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInner :call vimwiki#base#TO_table_cell(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellV :call vimwiki#base#TO_table_cell(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCell :call vimwiki#base#TO_table_cell(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContentV :call vimwiki#base#TO_header(1, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContent :call vimwiki#base#TO_header(1, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubV :call vimwiki#base#TO_header(0, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSub :call vimwiki#base#TO_header(0, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContentV :call vimwiki#base#TO_header(1, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContent :call vimwiki#base#TO_header(1, 0, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderV :call vimwiki#base#TO_header(0, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeader :call vimwiki#base#TO_header(0, 0, v:count1)
nmap <buffer> <M-Right> <Plug>VimwikiTableMoveColumnRight
nmap <buffer> <M-Left> <Plug>VimwikiTableMoveColumnLeft
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW1 :VimwikiTableAlignW 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW :VimwikiTableAlignW
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ1 :VimwikiTableAlignQ 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ :VimwikiTableAlignQ
vmap <buffer> <C-@> <Plug>VimwikiToggleListItem
vmap <buffer> <Nul> <Plug>VimwikiToggleListItem
nmap <buffer> <C-@> <Plug>VimwikiToggleListItem
nmap <buffer> <Nul> <Plug>VimwikiToggleListItem
vmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nnoremap <buffer> <silent> <Plug>VimwikiListO :call vimwiki#u#count_exe('call vimwiki#lst#kbd_O()')
nnoremap <buffer> <silent> <Plug>VimwikiListo :call vimwiki#u#count_exe('call vimwiki#lst#kbd_o()')
nmap <buffer> <C-Up> <Plug>VimwikiDiaryPrevDay
nmap <buffer> <C-Down> <Plug>VimwikiDiaryNextDay
nmap <buffer> <S-Tab> <Plug>VimwikiPrevLink
nmap <buffer> <BS> <Plug>VimwikiGoBackLink
nmap <buffer> <C-S-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <C-CR> <Plug>VimwikiVSplitLink
nmap <buffer> <S-CR> <Plug>VimwikiSplitLink
imap <buffer>  <Plug>VimwikiDecreaseLvlSingleItem
inoremap <buffer> <expr> 	 vimwiki#tbl#kbd_tab()
imap <buffer>  <Plug>VimwikiListToggle
imap <buffer>  <Plug>VimwikiListPrevSymbol
imap <buffer> <NL> <Plug>VimwikiListNextSymbol
inoremap <buffer> <silent>  :VimwikiReturn 1 5
imap <buffer>  <Plug>VimwikiIncreaseLvlSingleItem
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=
setlocal commentstring=%%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vimwiki'
setlocal filetype=vimwiki
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tqn
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|#\\)\\|\\(\\C\\%(\\d\\+)\\|\\d\\+\\.\\|[ivxlcdm]\\+)\\|[IVXLCDM]\\+)\\|\\l\\{1,2})\\|\\u\\{1,2})\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=Complete_wikifiles
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=.wiki
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vimwiki'
setlocal syntax=vimwiki
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,./TAGS,tags,TAGS,~/vimwiki/.vimwiki_tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=100
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 26 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 183 + 105) / 210)
tabnext 1
badd +0 vimwiki/index.wiki
badd +0 __Calendar
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSI
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
