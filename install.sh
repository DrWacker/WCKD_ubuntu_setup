#-thanks----------------------------------------------------------------------
# https://github.com/ibraheemdev/modern-unix
#-thanks----------------------------------------------------------------------

#-prereqs---------------------------------------------------------------------
apt install -y dpkg curl git
mkdir -p ~/.local/bin
case ":$PATH:" in
*":~/.local/bin/"*) :;;
*) PATH="$PATH:~/.local/bin";;
esac
cp .wckr_bashrc ~
grep 'source ~/.wckr_bashrc' ~/.bashrc || echo 'source .wckr_bashrc' >> ~/.bashrc
#-prereqs---------------------------------------------------------------------

#-vim-------------------------------------------------------------------------
apt install -y vim
cp .vimrc ~/.vimrc
#-vim-------------------------------------------------------------------------

#-ripgrep---------------------------------------------------------------------
# https://github.com/BurntSushi/ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
dpkg -i ripgrep_12.1.1_amd64.deb
rm ripgrep_12.1.1_amd64.deb
#-ripgrep---------------------------------------------------------------------

#-fdfind----------------------------------------------------------------------
curl -LO https://github.com/sharkdp/fd/releases/download/v8.2.1/fd_8.2.1_amd64.deb
dpkg -i fd_8.2.1_amd64.deb
which fd || ln -s $(which fdfind) ~/.local/bin/fd
rm fd_8.2.1_amd64.deb
#-fdfind----------------------------------------------------------------------

#-bat-------------------------------------------------------------------------
apt install -y bat
which bat || ln -s $(which batcat) ~/.local/bin/bat
cp .bat_config ~/.config/bat/config
#-bat-------------------------------------------------------------------------
