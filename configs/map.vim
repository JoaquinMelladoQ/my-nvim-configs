let mapleader= " "

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>ex :ex.<CR>
nmap <leader>wq :wq<CR>
nmap <leader>a <C-d><CR>
nmap <leader>u <C-u><CR>
nmap <leader>; <C-C-S-^><CR>
"nnoremap <C-p> :GFiles<CR>

" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

""LSP completion"
"inoremap <tab> <Plug>(Completion_trigger)

" Telescope
nnoremap <C-p> :Telescope find_files<CR>
nnoremap <leader> hh:Telescope command_history<CR>


" Use <c-space> to trigger completion
if &filetype == "javascript" || &filetype == "python"
  inoremap <C-space> <C-x><C-u><CR>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

let g:python3_host_prog = '/usr/bin/python3' 

"" Use deoplete.
"let g:deoplete#enable_at_startup = 1

" Move single lines
nmap <C-k> [e
nmap <C-j> ]e
" Move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv

" Moving text with indentation
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

nmap <leader>gs :G<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gn :G commit --amend --no-edit<CR>
nmap <leader>ga :G add .<CR>

" Navigation when merge conflic
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

" LSP Saga
nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>


" Tab trigger autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"let g:coc_snippet_next = '<tab>'
