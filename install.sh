#!/usr/bin/env bash
set -euo pipefail

msg() { printf '\033[1;34m[INFO]\033[0m  %s\n' "$*"; }
die() { printf '\033[1;31m[ERR ]\033[0m  %s\n' "$*"; exit 1; }

# Detect OS

case "$OSTYPE" in
  darwin*)    OS="mac"     ;;
  linux*)     OS="debian"  ;;
  *) die "지원하지 않는 OS ($OSTYPE)";;
esac
msg "Detected OS = $OS"

# 공통 패키지 설치
if [[ $OS == mac ]]; then
  if ! command -v brew &>/dev/null; then
    msg "Installing Homebrew..."
    /bin/bash -c \
        "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  brew install git stow zsh zsh-completions cmake ninja gettext
else
  sudo apt update
  sudo apt install -y git stow zsh build-essential cmake ninja-build gettext \
      libtool libtool-bin autoconf automake pkg-config unzip curl
fi

# Install Neovim (mac=brew, debian=build from source)
if [[ $OS == mac ]]; then
  msg "Installing Neovim via Homebrew..."
  brew install neovim
else
  NVIM_SRC="$HOME/neovim"
  if [[ ! -d $NVIM_SRC ]]; then
    msg "Cloning Neovim source to $NVIM_SRC"
    git clone https://github.com/neovim/neovim.git "$NVIM_SRC"
  fi

  cd "$NVIM_SRC"
  msg "Updating Neovim source..."

  git fetch origin
  git checkout master
  git pull origin master
  
  git fetch --tags --force origin stable
  git checkout stable

  msg "Building Neovim..."
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install
  cd -
fi

msg "Stowing dotfiles..."
stow nvim zsh

msg "Running lazy.nvim sync (headless)..."
nvim --headless "+Lazy! sync" +qa

if [[ $(basename "$SHELL") != "zsh" ]]; then
  msg "Changing default shell to zsh"
  chsh -s "$(command -v zsh)"
fi

if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  msg "Installing Oh-My-Zsh..."
  RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [[ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]]; then
  msg "Installing Powerlevel10k theme..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    "$HOME/.oh-my-zsh/custom/themes/powerlevel10k"
fi 

cat <<'EOF'
----------------------
Installation complete!
----------------------
EOF
