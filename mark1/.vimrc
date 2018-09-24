
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tc50cal/vim-terminal'
Plugin 'udalov/kotlin-vim'
Plugin 'spf13/vim-autoclose'
Plugin 'junegunn/goyo.vim'
Plugin 'artnez/vim-wipeout'

call vundle#end()


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set laststatus=2

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

filetype off
filetype plugin indent on

syntax on
set number
set cursorline
set colorcolumn=80
set expandtab
set shiftwidth=2
set tabstop=2

colorscheme onedark


nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>e :TerminalSplit bash<cr>
nmap <Leader>g :Goyo<cr>
nmap <Leader>w :Wipeout<cr>

