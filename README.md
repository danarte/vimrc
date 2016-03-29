Vim configuration file
======================

This is my Vim configuration files. 


Installation
------------

The first of all make sure you have installed Vim (version 7.4 or higher) or neovim.

Fetch the Vim source files from GitHub repository:

``
$ git clone https://github.com/zenzire/vimrc.git ~/.vim
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

Python autocomplete

![Python autocomplete](https://raw.github.com/zenzire/vimrc/master/screenshot_python_autocomplete.png)

Python syntax checking

![Python syntax checking](https://raw.github.com/zenzire/vimrc/master/screenshot_python.png)


Shortcuts
---------

* switching between buffers - ,1 ... 6
* close buffer - ,w
* next buffer - ,,
* previous buffer - ,.
* switching between windows - Tab
* open/close NERDTree - ,n 
* find current file in NERDTree - ,s
* open tags - ,t
* Fuzy find file - CTRL+F
* Find find buffer - CTRL+B


Changes
-------

* 2016-Mar-29 - Change theme to light colors
* 2014-Jan-17 - Add Goyo Mode
* 2014-Jan-14 - Initial version
