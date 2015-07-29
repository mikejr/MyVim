""""""""""
" Leader "
""""""""""
let mapleader = "\\"
let maplocalleader = "\\"

""""""""""""""""""
" Basic Settings "
""""""""""""""""""
colorscheme brogrammer
set background=dark
set guifont=Courier\ New:h14
set cmdheight=2
set number
set noswapfile
set encoding=utf8
set showmatch
set ignorecase
set hlsearch
set incsearch
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set so=7
set laststatus=2
set hidden
set colorcolumn=80
set noea
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
noremap <leader>cs :let @/=''<cr>

""""""""""""""
" Navigation "
""""""""""""""
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nmap <leader>p :b #<CR>
nmap <leader>= :bnext<CR>
nmap <leader>- :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>rn :set relativenumber!<CR>

let i = 1
while i <= 50
  execute 'nnoremap <leader>' . i . ' :b ' . i . '<CR>'
  let i = i + 1
endwhile

""""""""""""
" NERDTree "
""""""""""""
let NERDTreeIgnore = ['\.pyc$']
nnoremap <F2>  :NERDTreeToggle<CR>
nnoremap <leader>sb :execute "Bookmark " . expand("<cword>")<cr>
nnoremap <leader>cb :execute "ClearBookmarks " . expand("<cword>")<cr>

""""""""""""""
" EasyMotion "
""""""""""""""
let g:EasyMotion_leader_key = '<leader>'
let g:EasyMotion_startofline = 0
map <leader>l <plug>(easymotion-lineforward)
map <leader>j <plug>(easymotion-j)
map <leader>k <plug>(easymotion-k)
map <leader>h <plug>(easymotion-linebackward)

"""""""""
" Ctrlp "
"""""""""
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore "**/*.pyc"
  \ -g ""'

""""""""""""
" Markdown "
""""""""""""
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"""""""""
" Notes "
"""""""""
nnoremap <leader>ip :edit note:ip<CR>

""""""""""""""
" Buftabline "
""""""""""""""
let g:buftabline_numbers=1

""""""""""""""
" Javascript "
""""""""""""""
autocmd BufEnter *.js iabbrev @@ console.log( );<left><left><left>

""""""""""
" Python "
""""""""""
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufEnter *.py iabbrev @@ print
