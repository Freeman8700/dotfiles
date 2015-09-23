""""" vimrc
"
" These are my settings for vim.
"
"""""

""" Vundle (start)
set nocompatible " vim or gtfo, required by Vundle
filetype off " required by Vundle

" setup and start vundle, required by Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required by Vundle
Plugin 'VundleVim/Vundle.vim'

" make running rspec specs in vim easy
Plugin 'thoughtbot/vim-rspec'

" send output to a tmux pane
Plugin 'jgdavey/tslime.vim'

" send output to a tmux pane
Plugin 'mustache/vim-mustache-handlebars'

" quick file opening
Plugin 'kien/ctrlp.vim'

" useful go settings and features
Plugin 'fatih/vim-go'

" send rspec output to tmux
let g:rspec_command = 'call Send_to_Tmux("bin/rspec {spec}\n")'

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ctrlp settings
let g:ctrlp_custom_ignore = 'tmp\|dist\|log\|node_modules\|bower_components\|DS_Store\|git\|_site'

" slim-lang syntax highlighting
Plugin 'slim-template/vim-slim'

call vundle#end() " required by Vundle
""" Vundle (end)

filetype plugin indent on " turn on plugin and indention for filetype detection
syntax on " turn on syntax highlighting
set textwidth=72 " wrap at 72 cols
set number " display line numbers
set ruler " show the line number and column in the status line
set laststatus=2 " always set the last window to have a status line

" use jj to exit insert mode
:imap jj <Esc>

set backspace=indent,eol,start

" this could be moved into filestype specific plugins
set tabstop=2 " set the tab spacing to be 2 chars
set shiftwidth=2 " set the autoindent to be 2 chars
set expandtab " use spaces when pressing tab
set autoindent " autoindents code

""" Handling invisible characters
set list " show invisible characters
set listchars="" " reset list chars
set listchars+=tab:·\ 
set listchars+=trail:. " display trailing spaces as dots

""" file type specific settings
" go
au! BufNewFile,BufRead *.go setf go
autocmd FileType go set tabstop=4|set shiftwidth=4|set noexpandtab
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" html
" autocmd FileType html set noautoindent
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab

" handlebars (display it as html)
au BufRead,BufNewFile *.hbs,*.handlebars set filetype=html

" haxe
au! BufNewFile,BufRead *.hx setf haxe
autocmd FileType haxe set tabstop=4|set shiftwidth=4|set noexpandtab

" markdown (display as just plain text)
au BufRead,BufNewFile *.md,*.markdown,*.mdown set filetype=text

" email wrap at 68
autocmd FileType email set textwidth=68
autocmd FileType mail set textwidth=68

" c++ settings
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set noexpandtab

" use tabs for make files
autocmd filetype make setlocal noexpandtab

" js
autocmd FileType js set tabstop=2|set shiftwidth=2|set expandtab
