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
grep 'source .wckr_bashrc' ~/.bashrc || echo 'source .wckr_bashrc' >> ~/.bashrc
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
apt install fd-find
ln -s $(which fdfind) ~/.local/bin/fd
#-fdfind----------------------------------------------------------------------

#-delta-----------------------------------------------------------------------
curl -LO https://github.com/dandavison/delta/releases/download/0.8.3/git-delta_0.8.3_amd64.deb
dpkg -i git-delta_0.8.3_amd64.deb
rm git-delta_0.8.3_amd64.deb
#-delta-----------------------------------------------------------------------

#-bat-------------------------------------------------------------------------
apt install -y bat
ln -s $(which batcat) ~/.local/bin/bat
cp .bat_config ~/.config/bat/config
#-bat-------------------------------------------------------------------------

rm -rf $(dirname $0)
