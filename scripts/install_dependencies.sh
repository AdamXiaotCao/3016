#! /bin/bash
echo "install dependencies"


if command -v nvm &> /dev/null; then
    echo "NVM is already installed."
else
    echo "NVM is not installed."
    # Insert your logic here
    if [ -d "${HOME}/.nvm/.git" ]; then echo "nvm installed"; else echo "nvm not installed"; fi
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    . ~/.nvm/nvm.sh
    nvm install --lts
    node -e "console.log('Running Node.js ' + process.version)"
    npm install
fi
