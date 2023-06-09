#!/bin/bash

curl pyenv.run | bash


code=$(cat << 'EOF'


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.pyenv/bin:$PATH"

# Add pyenv to the PATH
command -v pyenv >/dev/null



# Initialize pyenv
eval "$(pyenv init -)"

EOF
)

echo "$code" >> ~/.bashrc
