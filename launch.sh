cd ~/dotfiles
git fetch
git pull origin main

stow --adopt */ 
git restore .

zsh
cd ~
