if [[ $EUID -ne 0 ]]; then
    echo "need to run this script as root"
    exit 1
fi

echo "installing programs..."

if command -v zsh > /dev/null 2>&1; then
    echo "zsh already installed, skipping installation"
else
    echo "installing zsh..."
    pacman -S zsh
    chsh -s /usr/bin/zsh
    echo "zsh installed and set as default shell, likely need to logout before it's in effect"
fi

if command -v nvim > /dev/null 2>&1; then
    echo "neovim already installed, skipping installation"
else
    echo "installing neovim..."
    pacman -S neovim
    echo "neovim is installed"
fi

if command -v ghostty > /dev/null 2>&1; then
    echo "ghostty already installed, skipping installation"
else
    echo "installing ghostty..."
    pacman -S ghostty
    echo "ghostty is installed"
fi

if command -v tmux > /dev/null 2>&1; then
    echo "tmux already installed, skipping installation"
else
    echo "installing tmux..."
    pacman -S tmux
    echo "tmux is installed"
fi

echo "setting up symlinks..."

if [[ -L ~/.zshrc ]]; then
    echo "zshrc already symlinked"
else
    ln -s ~/.config/zsh/.zshrc ~/.zshrc
    echo "zshrc symlinked"
fi

if [[ -L ~/.tmux.conf ]]; then
    echo "tmux already symlinked"
else
    ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf
    echo "tmux.conf symlinked"
fi
