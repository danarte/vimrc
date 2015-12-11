Vim configuration file
======================

This is my Vim configuration files. 


Installation
------------

The first of all make sure you have installed Vim version 7.4 or higher.

Fetch the Vim source files from GitHub repository:

``
$ git clone git://github.com/zenzire/vimrc.git ~/.vim
``

Install [Vundle](https://github.com/VundleVim/Vundle.vim) (plug-in manager for Vim):

``
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
``

Download and install all plugins:

``
$ vim +PluginInstall +qall
``

And that's all... 

Screenshot
----------

Fuzzy find file (CTRL+F)

![Fuzzy find file](https://raw.github.com/zenzire/vimrc/master/screenshot_findfile.png)

Goyo mode (CTRL+M)

![Goyo Mode](https://raw.github.com/zenzire/vimrc/master/screenshot_goyomode.png)

Python autocomplete (CTRL+space)

![Python autocomplete](https://raw.github.com/zenzire/vimrc/master/screenshot_python.png)

Features
--------

* Vundle
* NERDTree (F7)
* Tags (F8)
* Find file (CTRL+F)
* Find buffer (CTRL+B) 
* Goyo mode (CTRL+M)
* Python autocomplete with virtualenv support


Changes
-------

* 2014-Jan-17 - Added Goyo Mode
* 2014-Jan-14 - Initial version
