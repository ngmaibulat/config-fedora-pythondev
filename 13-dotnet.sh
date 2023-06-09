#wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh

#chmod +x dotnet-install.sh

#./dotnet-install.sh

wget https://download.visualstudio.microsoft.com/download/pr/ae0534ab-1c49-4055-ba2a-b8159c4f94d2/3a5945c949d2eb141f8ce52096fca13c/dotnet-sdk-8.0.100-preview.4.23260.5-linux-x64.tar.gz

mkdir dotnet

tar -xvf dotnet-sdk-8.0.100-preview.4.23260.5-linux-x64.tar.gz -C dotnet


export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet


echo "" >> ~/.bashrc
echo 'export DOTNET_ROOT=$HOME/dotnet' >> ~/.bashrc
echo 'export PATH="$HOME/dotnet:$PATH"' >> ~/.bashrc
echo "" >> ~/.bashrc

