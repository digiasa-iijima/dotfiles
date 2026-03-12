# install.sh
if command -v npm &> /dev/null && ! command -v gemini &> /dev/null; then
  npm install -g @google/gemini-cli
fi
