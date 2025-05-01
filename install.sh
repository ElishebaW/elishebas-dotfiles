cat > install.sh << 'EOF'
#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"
DOTFILES=(
    ".zshrc"
    ".gitconfig"
    ".vimrc"
    ".tmux.conf"
)

for file in "${DOTFILES[@]}"; do
    source_file="$DOTFILES_DIR/${file:1}"
    target_file="$HOME/$file"
    
    if [ -e "$target_file" ]; then
        echo "Backing up existing $file"
        mv "$target_file" "$target_file.backup"
    fi
    
    echo "Creating symlink for $file"
    ln -s "$source_file" "$target_file"
done

# Copy template for sensitive settings
cp "$DOTFILES_DIR/.zshrc.template" "$HOME/.zshrc.template"

echo "Dotfiles installation complete! Don't forget to copy your API keys from .zshrc.template to .zshrc.secret"
EOF