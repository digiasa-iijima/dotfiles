# install.sh
if command -v npm &> /dev/null && ! command -v gemini &> /dev/null; then
  npm install -g @google/gemini-cli
fi

# SSH config setup
DOTFILES_DIR=$(cd $(dirname $0); pwd)
mkdir -p ~/.ssh
ln -sf "$DOTFILES_DIR/ssh/config" ~/.ssh/config
ln -sf "$DOTFILES_DIR/ssh/conf.d" ~/.ssh/conf.d
echo "SSH config symlinked from $DOTFILES_DIR"
