" =====================================================================
" Plugin - Vundle
" =====================================================================
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" =================================================
" Plugin Manager
" =================================================
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" =================================================
" Color scheme
" =================================================
" Solarized color color scheme
Plugin 'altercation/vim-colors-solarized'

" =================================================
" IDE
" =================================================
" NERD Tree : File navigator
Plugin 'scrooloose/nerdtree'
" one nerd tree
Plugin 'jistr/vim-nerdtree-tabs'

" TagBar : A class outline viewer for Vim
Plugin 'majutsushi/tagbar'

" Lean & mean status/tabline for vim that's light as air.
Plugin 'bling/vim-airline'

" CtrlP : Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" fugitive : Git plugin for vim
Plugin 'tpope/vim-fugitive' 

" ryanoasis/vim-devicons
Plugin 'ryanoasis/vim-devicons'  

" =================================================
" Control Helper
" =================================================
" Easy Motion : Vim motions on speed! 
Plugin 'easymotion/vim-easymotion'

" vim-multiple-cursors : Sublime Text style multiple selections
Plugin 'terryma/vim-multiple-cursors'

" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" provides to easily delete, change and add such surroundings in pairs.
Plugin 'tpope/vim-surround'

" repeat
Plugin 'tpope/vim-repeat'

" 符號自動補齊 
Plugin 'Raimondi/delimitMate'

" zend coding
Plugin 'mattn/emmet-vim'

" =================================================
" Auto Complete
" =================================================
" Supertab : allows you to use <Tab> for all your insert completion needs
" Plugin 'ervandew/supertab'

" YouCompleteMe : fast code completion engine for Vim. 
Plugin 'Valloric/YouCompleteMe'
 
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" =================================================
" Syntax
" =================================================
" Syntastic is a syntax checking plugin for Vim 
Plugin 'scrooloose/syntastic'

" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
Plugin 'othree/html5.vim'

" javascript syntax
" Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

" javascript 縮排格式化
Plugin 'maksimr/vim-jsbeautify'

" Various snippets for developing node.js from vim
Plugin 'jamescarr/snipmate-nodejs'

" 對其文字表格或者語法對齊 :Tabularize /=
Plugin 'godlygeek/tabular'

" 縮排提示線
Plugin 'nathanaelkane/vim-indent-guides'

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
set laststatus=2
set encoding=utf8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" =====================================================================
" Plugin - NERDTree
" =====================================================================
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

" =====================================================================
" Plugin - 縮排提示線 vim indent guides
" =====================================================================
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" =====================================================================
" Key Mappings
" =====================================================================

" 設定空白鍵為 Leader 鍵
let mapleader = " "

" 關閉 buffer 但不關掉視窗
noremap <Leader>w :bp<bar>sp<bar>bn<bar>bd<CR>
" 儲存檔案 
noremap <Leader>s :w<CR>
" 退出 vim 
noremap <Leader>q :q!<CR>
" 複製
noremap <Leader>c "*y
" 貼上
noremap <Leader>v "*p

" NERDTree
noremap <Leader>n :NERDTreeToggle<CR>
" TagBar
noremap <Leader>t :TagbarToggle<CR>
" jsBeaufuty
noremap <Leader>f :call JsBeautify()<CR>
" EasyMotion
"map , <Plug>(easymotion-prefix)
" Next Buffer
noremap <C-m> :bnext<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


