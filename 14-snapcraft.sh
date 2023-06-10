sudo snap install snapcraft --classic

sudo snap install lxd

sudo usermod -a -G lxd $USER

newgrp lxd

lxd init --auto
