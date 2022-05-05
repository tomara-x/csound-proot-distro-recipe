
:set number
":set relativenumber

:set tabstop=4
:set shiftwidth=4
:set expandtab

:syntax enable

"disable folding
set nofoldenable

:set nowrap
:set sidescroll=5

"disable csound folding
autocmd Syntax csound setlocal foldmethod=manual
"just disable autofolding
"autocmd Syntax csound normal zR

":hi Type         ctermfg=3
":hi Special      ctermfg=6
hi csComment  	ctermfg=2
hi csOperator	ctermfg=3
hi csInstrument ctermfg=6
hi csInstrName  ctermfg=10
"hi csOpcode     ctermfg=
"hi csOpcodeName ctermfg=

"enable search highlight
set hlsearch
set incsearch

"show command as it's being typed
set showcmd
"possible commands menu
set wildmenu

"might wanna play with this normal mode map vs map stuff later
"map f5 to save file and switch to window 1
:noremap <F5> :up <CR> :1winc w <CR>
" f6 = save file, start term window
:noremap <F6> :up <CR> :to term<CR>

"csound macros
" saves present file, compiles with flags in options
:noremap <F8> :up <CR> :!csound "%:p" <CR>
" same but returns to vim
:noremap <F9> :up <CR> :!csound "%:p" <CR> <CR>

" saves present file, compiles and writes output to file, returns to vim
:noremap <F10> :up <CR> :!csound -W -d -o "%:p:r.wav" "%:p" <CR> <CR>
" saves present file, compiles and writes output to file, stays in console (for debugging) 
:noremap <F11> :up <CR> :!csound -W -d -o "%:p:r.wav" "%:p" <CR>
" plays last compiled file
:noremap <F12> :!aplay "%:p:r.wav" <CR><CR>

