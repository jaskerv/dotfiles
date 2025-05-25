#!/bin/bash

echo "Installing Packages"
echo "Checking for brew install"
if ! command -v brew &> /dev/null; then
  echo "Brew not install, installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew install gcc
fi

