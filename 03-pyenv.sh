#!/bin/bash

curl pyenv.run | bash



code=$(cat << 'EOF'
# Set PYENV_ROOT variable
export PYENV_ROOT="$HOME/.pyenv"

# Add pyenv to the PATH
command -v pyenv >/dev/null && export PATH="$PYENV_ROOT/bin:$PATH"

# Initialize pyenv
eval "$(pyenv init -)"
EOF
)

echo "$code" >> ~/.bashrc
