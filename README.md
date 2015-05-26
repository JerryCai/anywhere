# anywhere
Any where IDE of myself  

Setup Steps:  
1. install vundle by :  
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim  
2. install AnywhereIDE by :  
        git clone https://github.com/JerryCai/anywhereIDE.git ~/git/anywhereIDE  
3. link to your home by :  
	rm -rf ~/.vimrc  
   	rm -rf ~/.indexer_files  
   	ln -sf ~/git/anywhereIDE/.indexer_files ~/.indexer_files  
   	ln -sf ~/git/anywhereIDE/.vimrc ~/.vimrc  
4. open vim by :  
	vim  
   then execute vim command after vim open as :  
        :PluginInstall  
   That's all !  
  
  
Notes:  
1) You should to make sure you has already installed ctags , cscope  
2) If you use this IDE , you will find open c , c++ file is slowly ,  
   that is for indexer plugin to re-index ctags  
   if you don't like every time to enable re-index and want to quickly   
   you can comment this plugin in your .vimrc , but you need to manually  
   refresh the ctags if you needed .  
3) This IDE don't use YouCompleteMe since it is so hard to get it work perfectly and fully .  
4) This IDE just for c , c++ development , for other languages , you'd better to use such Eclipse , SourceInsigt etc  
