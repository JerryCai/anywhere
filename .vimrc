set nocompatible
filetype on
let mapleader=";"
filetype plugin on
syntax enable
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'ervandew/supertab'
Plugin 'Mizuchi/STL-Syntax'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/project.tar.gz'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'docunext/closetag.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'junegunn/vim-easy-align'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'dyng/ctrlsf.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'szw/vim-ctrlspace'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/indexer.tar.gz'
call vundle#end()
filetype plugin indent on
"--------------------------------------taglist plugin configuration
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
"map <C-m> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
"imap <C-m> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file
set tags+=/usr/include/c++/tags "c++ in linux
"--------------------------------------tagbar
nnoremap <Leader>tl :TagbarToggle<CR>
"--------------------------------------Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
set csprg=/usr/local/bin/cscope
"map <C-l> :!cscope -Rbq <CR><CR> :cs add cscope.out<CR>
"imap <C-l> <ESC>:!cscope -Rbq <CR><CR> :cs add cscope.out<CR>
"--------------------------------------NERDTree plugin configuration
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
"--------------------------------------syntastic plugin configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"--------------------------------------vim-airline plugin configuration
let g:airline#extensions#tabline#enabled = 1
"--------------------------------------vim-trailing-whitespace
map ; :FixWhitespace<CR>
"--------------------------------------ctrlp-funky plugin configuration
nnoremap <leader>fu :CtrlPFunky<CR>
nnoremap <leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>
"--------------------------------------vim-ctrlspace
set hidden
let g:ctrlspace_default_mapping_key="<leader> "
"--------------------------------------CtrlSF
nnoremap <Leader>sp :CtrlSF<CR>
"--------------------------------------OmniCpp
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
"--------------------------------------YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>je :YcmCompleter GoToDefinition<CR>
"--------------------------------------common configuration
set ruler
set number
set incsearch
set ignorecase
set wildmenu
set hlsearch
set nowrap
set foldmethod=syntax
set nofoldenable
set cindent
set autoindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set showmatch
set mouse=a
set cursorline
set backspace=2
set t_ti= t_te=
hi CursorLine term=bold cterm=bold guibg=Grey60
nnoremap nw <C-W><C-W>
nnoremap <leader>lw <C-W>l
nnoremap <leader>hw <C-W>h
nnoremap <leader>jw <C-W>j
nnoremap <leader>kw <C-W>k
nmap <leader>pa %
