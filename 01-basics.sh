### updates

sudo dnf update
sudo flatpak update

### basic packages
sudo dnf install -y \
    git \
    vim \
    tmux \
    htop \
    neofetch \
    wget \
    curl \
    unzip

### python related
python3-pip


### libs needed for pyenv to build python versions
sudo dnf install zlib-devel gcc openssl-devel bzip2-devel ncurses-devel libffi-devel readline-devel
sudo dnf install sqlite-devel tk-devel xz-devel
