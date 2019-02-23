set nocompatible " be iMproved, require
set encoding=utf8
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle/')

Plugin 'VundleVim/Vundle.vim'

Plugin 'JSON.vim'
Plugin 'Markdown'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePluginins' }
Plugin 'Shougo/echodoc.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'blueshirts/darcula'
Plugin 'ervandew/supertab'
Plugin 'google/yapf'
Plugin 'honza/vim-snippets'
Plugin 'jamessan/vim-gnupg'
Plugin 'majutsushi/tagbar'
Plugin 'neomake/neomake'
Plugin 'pangloss/vim-javascript'
Plugin 'powerman/vim-plugin-AnsiEsc'
Plugin 'rizzatti/dash.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vimwiki'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
set number
set nowrap
set cursorline
set ruler
set modeline
set noshowmode
syntax on

set tabstop=4
set shiftwidth=4
set smarttab
set path+=**
set wildmenu
set cmdheight=5
set expandtab
set spell
set splitright
set autoindent
set list

highlight ColorColumn ctermbg=red
call matchadd('ColorColumn','\%121v', 120)

colorscheme darcula

set hlsearch
"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_yml_checkers = ['yamllint']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_json = ['jsonlint']

" YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_python_binary_path = '/usr/local/bin/python'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-l>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UtilSnipsSnippetDirectories=["localSnips"]


autocmd BufNewFile,BufRead *.ts set syntax=typescript
autocmd BufNewFile,BufRead *.gradle set syntax=groovy
autocmd BufNewFile,BufRead *.mediawiki set syntax=mediawiki
autocmd BufNewFile,BufRead *.yml set syntax=yaml
autocmd BufNewFile,BufRead *.yaml set syntax=yaml
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

function! GetAllSnippets()
  call UltiSnips#SnippetsInCurrentScope(1)
  let list = []
  for [key, info] in items(g:current_ulti_dict_info)
    let parts = split(info.location, ':')
    call add(list, {
      \"key": key,
      \"path": parts[0],
      \"linenr": parts[1],
      \"description": info.description,
      \})
  endfor
  return list
endfunction
