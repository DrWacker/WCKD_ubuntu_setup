echo "Hello World"
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
