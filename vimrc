" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

" Based on http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !rm -rf ~/.vim/bundle/Vundle.vim
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let need_to_install_plugins=1
endif
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"
" Colorschemes
"
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'

"
" Rails
"
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'jgdavey/vim-blockle'

"
" General Editing
"
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kana/vim-textobj-user'
Plugin 'Julian/vim-textobj-variable-segment'
Plugin 'kana/vim-textobj-line'
Plugin 'thinca/vim-textobj-between'
Plugin 'tpope/vim-unimpaired'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
Plugin 'mgamba/j-split'
Plugin 'matt-royal/diffthese'
Plugin 'camelcasemotion'
Plugin 'brysgo/quickfixfix'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'regreplop.vim'
Plugin 'Peeja/insert_mode_background_color'
Plugin 'vim-scripts/L9'
Plugin 'Peeja/vim-cdo'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Valloric/YouCompleteMe'

"
" Searching
"
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-abolish'
Plugin 'henrik/vim-qargs'
Plugin 'kien/ctrlp.vim'
Plugin 'burke/matcher'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'

"
" Navigation
"
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

"
" Languages
"
Plugin 'vim-ruby/vim-ruby'
Plugin 'markcornick/vim-hashicorp-tools'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'plasticboy/vim-markdown'
Plugin 'slim-template/vim-slim'
Plugin 'nono/vim-handlebars'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'fatih/vim-go'
Plugin 'rosstimson/scala-vim-support'
Plugin 'guns/vim-clojure-static'
Plugin 'chrisbra/csv.vim'
Plugin 'uarun/vim-protobuf'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'elzr/vim-json'
Plugin 'elixir-lang/vim-elixir'
Plugin 'jimenezrick/vimerl'
Plugin 'toml-lang/toml'
Plugin 'slashmili/alchemist.vim'
" For doc highlighting in alchemist.vim
Plugin 'powerman/vim-plugin-AnsiEsc.git'
Plugin 'lucidstack/hex.vim'
Plugin 'mattreduce/vim-mix'

"
" Development Tool Integration
"
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tjennings/git-grep-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'carlobaldassi/ConqueTerm'
Plugin 'sjl/vitality.vim'
Plugin 'janko-m/vim-test'
Plugin 'jgdavey/tslime.vim'

call vundle#end()
filetype plugin indent on

syntax on

if need_to_install_plugins == 1
  echo "Installing plugins via Vundle. Please ignore warnings afterwards."
  echo "This is a one-time operation that will take about a minute..."
  silent! PluginInstall
  echo "Done installing Vundle plugins!"
  q
endif

runtime! init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

au BufRead,BufNewFile *.hamlc set ft=haml
