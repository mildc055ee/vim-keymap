" asyncomplete key mapping
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

"vim-lsp key mapping
nnoremap <Space>ld :LspDefinition<CR>
nnoremap <Space>lf :LspDocumentFormat<CR>
nnoremap <Space>lh :LspHover<CR>
nnoremap <Space>lr :LspRename<CR>
nnoremap g[ :LspPreviousError<CR>
nnoremap g] :LspNextError<CR>

let g:lsp_signs_enabled = 1
let g:lsp_signs_warning = {'text': '\uf071'}
let g:lsp_signs_error = {'text': '\ufb8a'}



"" auto close when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" General keymapping
noremap j gj
noremap k gk
noremap <S-h> 0
noremap <S-l> $

inoremap jj <esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" vista vim
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:vista_icon_indent =["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'vim_lsp'
let g:vista_fzf_preview = ['right:35%']
let g:vista#renderer#enabled_icon = 1
nnoremap <C-e> :Vista vim_lsp<CR>
