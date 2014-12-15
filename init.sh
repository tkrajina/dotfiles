wget https://raw.githubusercontent.com/tkrajina/dotfiles/master/.tmux.conf
wget https://raw.githubusercontent.com/tkrajina/dotfiles/master/.vimrc
sudo apt-get install vim
sudo apt-get install tmux
echo "\nCustom:\n" >> .bashrc
echo "\nset -o vi\n" >> .bashrc
echo "\nexport EDITOR=vim\n" >> .bashrc
