"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

"" Vim-Plug
call plug#begin()

" Aesthetics - Main
" Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'

" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-journal'
" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'nightsense/forgotten'
" Plug 'zaki/zazen'
"
" " Aethetics - Additional
" Plug 'nightsense/nemo'
" Plug 'yuttie/hydrangea-vim'
" Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
" Plug 'rhysd/vim-color-spring-night'
"
" " Functionalities
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
if has("unix")
    Plug 'majutsushi/tagbar'
    "Plug 'ryanoasis/vim-devicons'
else
    if has("win32")
        echo "Windows OS detected. Not loading tagbar which does not work on Windows..."
    endif

endif
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
" Plug 'junegunn/vim-easy-align'
" Plug 'alvan/vim-closetag'
" Plug 'tpope/vim-abolish'
" Plug 'Yggdroot/indentLine'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
" Plug 'sheerun/vim-polyglot'
" Plug 'chrisbra/Colorizer'
" Plug 'heavenshell/vim-pydocstring'
" Plug 'vim-scripts/loremipsum'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'metakirby5/codi.vim'
" Plug 'dkarter/bullets.vim'
Plug 'SkyLeach/pudb.vim'
"
" " Entertainment
" "Plug 'ryanss/vim-hackernews'
"
call plug#end()
"
" """ Python3 VirtualEnv
" let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')
"
" """ Coloring
" syntax on
" color dracula
" highlight Pmenu guibg=white guifg=black gui=bold
" highlight Comment gui=bold
" highlight Normal gui=none
" highlight NonText guibg=none
"
" " Opaque Background (Comment out to use terminal's profile)
" set termguicolors
"
" " Transparent Background (For i3 and compton)
" highlight Normal guibg=NONE ctermbg=NONE
" highlight LineNr guibg=NONE ctermbg=NONE
"
" """ Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title
set cursorline
set mouse=a

""" Plugin Configurations

" NERDTree
"let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
"let g:airline_powerline_fonts = 1
"let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
"let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Neovim :Terminal
tnoremap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
tmap <C-d> <Esc>:q<CR>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
"autocmd BufWinEnter,WinEnter term://* startinsert
"autocmd BufLeave term://* stopinsert

" Deoplete
let g:deoplete#enable_at_startup = 1
" Disable documentation window
set completeopt-=preview
if has("win32")
    let g:python3_host_prog = expand('c:\\python38\\python.exe')
endif

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

" " EasyAlign
" xmap ga <Plug>(EasyAlign)
" nmap ga <Plug>(EasyAlign)
"
" " indentLine
" let g:indentLine_char = '▏'
" let g:indentLine_color_gui = '#363949'
"
" " TagBar
" let g:tagbar_width = 30
" let g:tagbar_iconchars = ['↠', '↡']
"
 " fzf-vim
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }
let g:fzf_colors = {
            \ 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'Type'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Character'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
"
"                               """ Filetype-Specific Configurations


""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction


" Key Mappings
let mapleader=","

" Toggle NERDTree
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q

nmap <leader>w :TagbarToggle<CR>
nmap <leader>ea :AirlineTheme
nmap <leader>snr :exe 'source '. stdpath('config'). '/init.vim'<CR>
nmap <leader>enr :exe 'edit '. stdpath('config'). '/init.vim'<CR>
nmap <leader>tws :call TrimWhitespace()<CR>
nmap <leader>ss  <C-w>s<C-w>j:terminal<CR>
nmap <leader>svs <C-w>v<C-w>l:terminal<CR>
nmap <leader>f :Files<CR>
nmap <leader>ee :Colors<CR>
autocmd FileType python nmap <leader>x :0,$!python -m yapf<CR>
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
nnoremap ,b :buffers *<CR>:b

" Function Keys Mapping
nmap     <F2> :w<CR>
imap     <F2> <Esc>:w<CR>a
map      <F8> :vertical wincmd f<CR>
nnoremap <F12> :w<CR>:exe 'source '. stdpath('config'). '/init.vim'<CR>:PlugInstall<CR>
nnoremap <space> za
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
inoremap jk <esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Space> gt
" easy breakpoint python
au FileType python map <silent> <leader>b ofrom pudb import set_trace; set_trace()<esc>
au FileType python map <silent> <leader>B Ofrom pudb import set_trace; set_trace()<esc>


""" Sort Later
"nnoremap <leader>ev :vsp ~/.vimrc<CR>
"nnoremap <leader>ec :vsp ~/.cshrc<CR>
"nnoremap <leader>sv :source ~/.vimrc<CR>
"map <F9> <Esc>:w<CR>:!'%:p'<CR>
"map <F9>call Demo()<CR>
"imap <F9> <Esc>:w<CR>:!expand('%:p')<CR>
"map <F9> <Esc>:w<CR>:!/nfs/sc/disks/adl_media_par_02/amitvinx/projects/ErrorWarningApproval/bin/ErrorWarningApproval.py<CR>
"xmap <leader>a gaip*
"nmap <leader>a gaip*
colorscheme gruvbox
