
:set number
":set relativenumber

:set tabstop=4
:set shiftwidth=4
:set expandtab

:syntax enable

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

