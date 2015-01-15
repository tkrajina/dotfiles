wget https://raw.githubusercontent.com/tkrajina/dotfiles/master/.tmux.conf
wget https://raw.githubusercontent.com/tkrajina/dotfiles/master/.vimrc
sudo apt-get install vim
sudo apt-get install tmux

echo "" >> .bashrc
echo "# Custom:" >> .bashrc
echo "" >> .bashrc
echo "set -o vi" >> .bashrc
echo "" >> .bashrc
echo "export EDITOR=vim" >> .bashrc
echo "" >> .bashrc
