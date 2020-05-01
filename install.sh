if [ ! -d "$HOME/.vim" ]; then 
	mkdir ~/.vim 
fi
if [ ! -d "$HOME/.vim/ftdetect" ]; then 
	mkdir ~/.vim/ftdetect 
fi
cp ftdetect/* ~/.vim/ftdetect
if [ ! -d "$HOME/.vim/syntax" ]; then 
	mkdir ~/.vim/syntax 
fi
cp syntax/* ~/.vim/syntax

