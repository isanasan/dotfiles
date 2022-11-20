/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/miyake.isana/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/miyake.isana/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install mas

brew install git

brew install chezmoi

brew install ghq

brew install lazygit

brew install gh

brew install nvim

brew install awscli

brew install fzf

brew install ripgrep

brew install starship

brew install cask

brew install --cask raycast

brew install --cask amethyst

brew install --cask coteditor

brew install --cask obsidian

brew install --cask alt-tab

brew install --cask karabiner-elements

brew install --cask slack

brew install --cask chrysalis

brew install --cask notion

brew install --cask warp

brew install --cask phpstorm

brew install --cask datagrip

gh extension install jongio/gh-setup-git-credential-helper

gh extension install kawarimidoll/gh-q 

git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

curl -fsSL https://deno.land/x/install/install.sh | sh

gh setup-git-credential-helper

