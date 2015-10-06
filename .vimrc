" =====================================================================
" Plugin - Vundle
" =====================================================================
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Solarized color color scheme
Plugin 'altercation/vim-colors-solarized'

" NERD Tree : File navigator
Plugin 'scrooloose/nerdtree'

" Lean & mean status/tabline for vim that's light as air.
Plugin 'bling/vim-airline'

" CtrlP : Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'

" Easy Motion : Vim motions on speed! 
Plugin 'easymotion/vim-easymotion'

" Syntastic is a syntax checking plugin for Vim 
Plugin 'scrooloose/syntastic'

" fugitive : Git plugin for vim
" Plugin 'tpope/vim-fugitive' 

" TagBar : A class outline viewer for Vim
Plugin 'majutsushi/tagbar'

" Supertab : allows you to use <Tab> for all your insert completion needs
" Plugin 'ervandew/supertab'

" vim-multiple-cursors : Sublime Text style multiple selections
Plugin 'terryma/vim-multiple-cursors'

" YouCompleteMe : fast code completion engine for Vim. 
Plugin 'Valloric/YouCompleteMe'

" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
Plugin 'othree/html5.vim'

" provides to easily delete, change and add such surroundings in pairs.
Plugin 'tpope/vim-surround'

" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" repeat
Plugin 'tpope/vim-repeat'

" zend coding
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =====================================================================
" Basic Settings
" =====================================================================
set nu                         " 顯示行號
syntax on                      " 顯示語法高亮
set clipboard=unnamed          " MacVim剪貼簿支援
set mouse=a                    " 支援滑鼠
set wildmode=list:longest,full " 命令列提示
set expandtab                  " 使用空白鍵代替Tab換行
set shiftwidth=4               " 操作 << 指令與 >> 指令縮排的字元數
set tabstop=4                  " tab 字元所佔的寬度
set softtabstop=4              " tab 字元實際所佔有的寬度
set directory=$HOME/.vim/swap/ " 設定swap檔案路徑
"set nowrap                     " 不換行顯示
set ignorecase                 " 忽略大小寫
set hidden                     " 允許緩衝區不儲存切換

" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType java set omnifunc=javacomplete#Complete

" =====================================================================
" Plugin - Solarized dark solorschme
" =====================================================================
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" =====================================================================
" Plugin - airline
" =====================================================================
set guifont=Source_Code_Pro_for_Powerline:h14
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" =====================================================================
" Plugin - NERDTree
" =====================================================================
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" =====================================================================
" Key Mappings
" =====================================================================
" NERDTree
map <F7> :NERDTreeToggle<CR>
" EasyMotion
map , <Plug>(easymotion-prefix)
" TagBar
map <F8> :TagbarToggle<CR>
" CtrlP Buffer
map <C-b> :CtrlPBuffer<CR>
" Next Buffer
noremap <C-m> :bnext<CR>

" Next Tab 
" noremap <C-y> :tabnext<CR>

" 設定 ,d 為關閉目前buffer而不關掉視窗
nmap ,d :bp<bar>sp<bar>bn<bar>bd<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Terminal Vim 複製貼上支援 F1貼上 F2複製
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 3 
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" 比较喜欢用tab来选择补全...
function! MyTabFunction ()
	let line = getline('.')
	let substr = strpart(line, -1, col('.')+1)
	let substr = matchstr(substr, "[^ \t]*$")
	if strlen(substr) == 0
		return "\<tab>"
	endif
	return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
endfunction
inoremap <tab> <c-r>=MyTabFunction()<cr>
