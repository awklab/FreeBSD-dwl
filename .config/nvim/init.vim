set title
set number
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

"##############################################################
" keybindings 
"##############################################################
let mapleader=' '
" change buffers
map <leader>n :tabnew<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>j :bnext<cr>
map <leader>k :bprevious<cr>
map <leader>d :bdelete<cr>
map <leader>v :vsplit<cr>
map <leader>s :Startify<cr>
nnoremap <C-j> <PageDown>
nnoremap <C-k> <PageUp>
vnoremap <C-j> <PageDown>
vnoremap <C-k> <PageUp>

"##############################################################
"vim-plug installálva: PlugInstall és PlugClean parancsok
"##############################################################
call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'mhinz/vim-startify'
	Plug 'dracula/vim'
call plug#end()

let g:dracula_colorterm = 0

"Force transparency every time a colorscheme is loaded
augroup user_colors
  autocmd!
  autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight NonText guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight SignColumn guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight EndOfBuffer guibg=NONE ctermbg=NONE
augroup END

colorscheme dracula

let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts = 1

"##############################################################
" vim startify
"##############################################################

highlight StartifyHeader  ctermfg=141 guifg=#bd93f9
let g:startify_custom_header = [ 
			\ '_____________________   ____(_)______ ___ ',
			\ '__  __ \  _ \  __ \_ | / /_  /__  __ `__ \',
			\ '_  / / /  __/ /_/ /_ |/ /_  / _  / / / / /',
			\ '/_/ /_/\___/\____/_____/ /_/  /_/ /_/ /_/ ',
			\ '											 ',
			\]

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

let g:startify_bookmarks = [
  \ { 's': '~/.shrc' },
  \ { 'p': '~/.profile' },
  \ { 'n': '~/.config/nvim/init.vim' },
  \ ]

let g:startify_commands = [
        \ {'x': 'Explore'},
        \ ]

nmap <c-n> :Startify<cr>
"##############################################################
