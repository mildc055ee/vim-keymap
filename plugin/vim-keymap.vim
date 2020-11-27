" asyncomplete key mapping
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

"" auto close when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" General keymapping
noremap j gj
noremap  gk
noremap <S-h> 0
noremap <S-l> $

inoremap jj <esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


