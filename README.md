Vim config
===========

Installation
------------

	$ git clone git@github.com:StephanEmmerich/vimfiles.git

	$ cd ~/.vim
	$ git submodule init
	$ git submodule update

	$ ln -s ~/.vim/vimrc ~/.vimrc
	$ ln -s ~/.vim/gvimrc ~/.gvimrc

For proper transparency with terminal:
	$ vim ~/.vim/bundle/solarized/colors/solarized.vim
	Comment line '"exe "hi! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base0"' 
References
----------

[vimcasts.org - Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
