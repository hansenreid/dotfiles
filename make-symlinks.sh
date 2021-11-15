#!/bin/bash

config=/Users/rhansen/.config
dir=/Users/rhansen/Dev/repos/dotfiles

cd $dir

echo "Creating symlinks"

# Kitty
mkdir -p $config/kitty
ln -svfh $dir/kitty/kitty.conf $config/kitty/kitty.conf
ln -svfh $dir/kitty/session.conf $config/kitty/session.conf

# nvim 
mkdir -p $config/nvim
mkdir -p $config/nvim/lua
mkdir -p $config/nvim/lua/plugins
mkdir -p $config/nvim/lua/key_bindings
ln -svfh $dir/nvim/init.lua $config/nvim/init.lua
ln -svfh $dir/nvim/lua/plugins/init.lua $config/nvim/lua/plugins/init.lua
ln -svfh $dir/nvim/lua/plugins/treesitter_config.lua $config/nvim/lua/plugins/treesitter_config.lua
ln -svfh $dir/nvim/lua/plugins/lsp_config.lua $config/nvim/lua/plugins/lsp_config.lua
ln -svfh $dir/nvim/lua/key_bindings/init.lua $config/nvim/lua/key_bindings/init.lua
