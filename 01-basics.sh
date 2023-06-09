### updates

sudo dnf -y update
sudo flatpak -y update

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
sudo dnf -y install python3-pip

### status of vm-toolsd

sudo systemctl status vmtoolsd


### libs needed for pyenv to build python versions
sudo dnf -y install zlib-devel gcc openssl-devel bzip2-devel ncurses-devel libffi-devel readline-devel
sudo dnf -y install sqlite-devel tk-devel xz-devel


### enable sshd

sudo systemctl enable sshd
sudo systemctl start sshd


### snap
sudo dnf -y install snapd
