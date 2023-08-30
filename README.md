 when installing vim on a new linux machine make sure to run

 sudo apt remove neovim-runtime

and see this set of instructions for building neovim from source 

 https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source


 There will be errors because I accidentally pushed up the plugin cache, so after you scroll through the "file not found " errors, run packer sync and you're good to go
