" W to sudo save
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

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

set hlsearch


set noerrorbells
set novisualbell
set timeoutlen=500


set statusline=       " Override default
set statusline+=%2*\ %f\ %m\ %r%*                   " Show filename/path
set statusline+=%3*%=%*                             " Set right-side status info after this line
set statusline+=%4*%l/%L:%v%*                       " Set <line number>/<total lines>:<column>
set statusline+=%5*\ %*                             " Set ending space

map H ^
map L $


" bind alt + (h/j) to move lines up and down
" nnoremap <A-j> :m+<CR>==
" nnoremap <A-k> :m-2<CR>==
" nnoremap <A-h> <<
" nnoremap <A-l> >>
" inoremap <A-j> <Esc>:m+<CR>==gi
" inoremap <A-k> <Esc>:m-2<CR>==gi
" inoremap <A-h> <Esc><<`]a
" inoremap <A-l> <Esc>>>`]a
" vnoremap <A-j> :m'>+<CR>gv=gv
" vnoremap <A-k> :m-2<CR>gv=gv
" vnoremap <A-h> <gv
" vnoremap <A-l> >gv


nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

