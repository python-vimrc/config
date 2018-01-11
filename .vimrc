syntax on
set nocompatible
set hls
set scs
set visualbell
set ignorecase
set showmatch
filetype off

set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required
Plugin 'gmarik/Vundle.vim'

" folding
Plugin 'tmhedberg/SimpylFold'

" airline statusbar
Plugin 'vim-airline/vim-airline'
set laststatus=2
let g:airline#extensions#tabline#enabled=1

Plugin 'altercation/vim-colors-solarized'

Plugin 'The-NERD-Tree'

" jedi-vim Python autocompletion
Bundle 'davidhalter/jedi-vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Syntastic
Plugin 'Syntastic'
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {'regex': "too many leading '#'"}

syntax on

call vundle#end()

filetype plugin indent on

" vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

" NERDTree
nmap <F9> :NERDTreeToggle<CR>
let NERDTreeWinPos = "left"

"" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" nnoremap g :YcmCompleter GoTo
" nnoremap gg :YcmCompleter GoToImprecise
" nnoremap d :YcmCompleter GoToDeclaration
" nnoremap t :YcmCompleter GetType
" nnoremap p :YcmCompleter GetParent

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-F> <C-W><S-_>
nnoremap <C-=> <C-W><=>
