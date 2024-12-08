#!/bin/bash

# Update and install dependencies
echo "Updating package list and installing dependencies..."
sudo apt update && sudo apt install -y \
  neovim \
  git \
  curl \
  build-essential \
  cmake \
  python3-pip \
  xclip  # For clipboard support

# Install vim-plug (plugin manager)
echo "Installing vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create Neovim configuration directory
mkdir -p ~/.config/nvim

# Write Neovim configuration for competitive programming
cat <<EOF > ~/.config/nvim/init.vim
" Basic Neovim settings
set number          " Show line numbers
set relativenumber  " Relative line numbers
set tabstop=4       " Tab width
set shiftwidth=4    " Indent width
set expandtab       " Convert tabs to spaces
set autoindent      " Auto indent new lines
set smartindent     " Smarter indentation
set clipboard=unnamedplus " Use system clipboard
syntax on           " Enable syntax highlighting
filetype plugin indent on " Enable file type detection and specific plugins

" Plugin management with vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Completion and language server
Plug 'preservim/nerdtree'                       " File navigation
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlighting
Plug 'vim-airline/vim-airline'                  " Status bar

call plug#end()

" COC (Conqueror of Completion) setup
let g:coc_global_extensions = ['coc-clangd']

" Key mappings
nnoremap <C-n> :NERDTreeToggle<CR>  " Ctrl+n to toggle file tree
EOF

# Install plugins via Neovim
echo "Installing plugins..."
nvim +PlugInstall +qall

# Install and configure COC language server
echo "Setting up C++ language server..."
sudo apt install -y clangd
echo 'export PATH="/usr/bin/clangd:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Completion setup for COC
cat <<EOF > ~/.config/nvim/coc-settings.json
{
  "languageserver": {
    "clangd": {
      "command": "clangd",
      "filetypes": ["c", "cpp", "objc", "objcpp"],
      "rootPatterns": ["compile_flags.txt", "compile_commands.json", ".git/"],
      "initializationOptions": {
        "fallbackFlags": ["-std=c++17"]
      }
    }
  }
}
EOF

# Finish setup
echo "Setup complete! Launch Neovim with 'nvim' and enjoy competitive programming in C++."
