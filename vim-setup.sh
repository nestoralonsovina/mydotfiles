cp .vimrc ~/
cp .vimr.bundles ~/
cp -a .vim ~/

mkdir ~/.vimr/backups
mkdir ~/.vim/swaps
mkdir ~/.vim/undos

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PlugInstall +qall
