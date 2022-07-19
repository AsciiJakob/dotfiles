
" fix alt key inputs not working when in a terminal https://vi.stackexchange.com/a/10506
for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor


syntax on
set number
highlight LineNr ctermfg=grey
set ruler
set laststatus=2
set showmode

" highlight all occurances of search
set hlsearch
" shows first match while you are still typing
set incsearch

set noerrorbells
set novisualbell
set timeoutlen=500


set statusline=       " Override default
set statusline+=%2*\ %f\ %m\ %r%*                   " Show filename/path
set statusline+=%3*%=%*                             " Set right-side status info after this line
set statusline+=%4*%l/%L:%v%*                       " Set <line number>/<total lines>:<column>
set statusline+=%5*\ %*                             " Set ending space

map H ^     " goto first character of line
map L $     " goto last character of line


" bind alt + (h/j) to move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

