#-thanks----------------------------------------------------------------------
# https://github.com/ibraheemdev/modern-unix
#-thanks----------------------------------------------------------------------

#-prereqs---------------------------------------------------------------------
apt install -y dpkg curl
mkdir -p ~/.local/bin
case ":$PATH:" in
*":~/.local/bin/"*) :;;
*) PATH="$PATH:~/.local/bin";;
esac
#-prereqs---------------------------------------------------------------------

#-vim-------------------------------------------------------------------------
apt install -y vim
cat <<EOT >> ~/.vimrc
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent

syntax enable
set hlsearch

try
  colorscheme slate
catch
endtry
EOT
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
cat <<EOT >> ~/.config/bat/config
# This is `bat`s configuration file. Each line either contains a comment or
# a command-line option that you want to pass to `bat` by default. You can
# run `bat --help` to get a list of all possible configuration options.

# Specify desired highlighting theme (e.g. "TwoDark"). Run `bat --list-themes`
# for a list of all available themes
#--theme="TwoDark"

# Enable this to use italic text on the terminal. This is not supported on all
# terminal emulators (like tmux, by default):
#--italic-text=always

# Uncomment the following line to disable automatic paging:
--paging=never

# Uncomment the following line if you are using less version >= 551 and want to
# enable mouse scrolling support in `bat` when running inside tmux. This might
# disable text selection, unless you press shift.
#--pager="less --RAW-CONTROL-CHARS --quit-if-one-screen --mouse"

# Syntax mappings: map a certain filename pattern to a language.
#   Example 1: use the C++ syntax for .ino files
#   Example 2: Use ".gitignore"-style highlighting for ".ignore" files
#--map-syntax "*.ino:C++"
#--map-syntax ".ignore:Git Ignore"

# Don't show line numbers or any other decorations
--plain
EOT
#-bat-------------------------------------------------------------------------

rm -rf $(dirname $0)
