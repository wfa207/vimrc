TGT_FILE_NAMES=(vimrc tmux.conf)

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip install jedi python-language-server
npm install -g typescript
brew install the_silver_searcher
brew install cmake

for file_name in ${TGT_FILE_NAMES[@]}; do
	ln -Fhs $(pwd)/${file_name} ~/.${file_name}
done

unset file_name TGT_FILE_NAMES

vim +PlugInstall +qall

cd ~/.vim/plugged/YouCompleteMe
./install.py
