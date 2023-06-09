curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

source ~/.bashrc

nvm install --lts
node -v
npm -v

npm install -g n
npm install -g typescript

tsc -v
