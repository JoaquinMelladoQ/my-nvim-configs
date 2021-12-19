set nocompatible          
filetype off             

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeFocus<CR>
set colorcolumn=80
set number
set numberwidth=1
set relativenumber
set laststatus=2
set noshowmode
set showcmd
set sw=2
set mouse=a
set cursorline
set clipboard=unnamed
syntax enable
set showmatch
set modifiable
so ~/.config/nvim/configs/map.vim
so ~/.config/nvim/configs/plugins.vim

" Kite
let g:kite_supported_languages = ['javascript', 'python']

" Coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@ 

" Setting basic config git airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 0

" Tab
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Configs relative to UI colors
set nocompatible
if (has("termguicolors"))
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;$lu:%lum"
  let &t_8b = "\<Esc>[48;2;%lu;$lu:%lum"
endif

syntax enable
colorscheme anderson

let g:completion_enable_snippet = 'UltiSnips'

let g:completion_enable_auto_popup = 0
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }


