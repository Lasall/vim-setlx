# setlx.vim

## Description

This is a [Vim][vim] plugin that provides file detection, snippet support ([SnipMate][snipmate]) and syntax highlighting for the [setlX][setlx] programming language.

[SetlXHelper][setlxhelper] and the gtksourceview language definition in the [setlX repository][setlxrepo] were used as a reference for highlights an snippets.


## Installation

To use the provided snippets, make sure to install SnipMate or any compatible snippet manager.

* Using [VAM][vam], add `vim-setlx` to the list of packages to be installed.

* Using [Pathogen][pathogen], run the following commands:

        $ cd ~/.vim/bundle
        $ git clone https://github.com/Lasall/vim-setlx.git

        # Optional:
        $ git clone https://github.com/garbas/vim-snipmate.git

* Using [Vundle][vundle], add the following to your `vimrc` then run `:PluginInstall`

        Plugin 'Lasall/vim-setlx'

        " Optional:
        Plugin 'garbas/vim-snipmate'


## Configuration

To disable operator highlighting set following option in your `vimrc`:

        let g:setlx_no_highlight_ops = 1


## Issues and Contribution

If you find any issues or are missing a feature, please [report a new issue][issues] or simply provide a pull request.


[vim]:http://www.vim.org/
[setlx]:https://randoom.org/Software/SetlX
[setlxhelper]:https://github.com/LucaVazz/SetlXHelper
[setlxrepo]:https://github.com/herrmanntom/setlX
[snipmate]:https://github.com/garbas/vim-snipmate
[vam]:https://github.com/marcweber/vim-addon-manager
[pathogen]:https://github.com/tpope/vim-pathogen
[vundle]:https://github.com/gmarik/vundle
[issues]:https://github.com/Lasall/vim-setlx/issues
