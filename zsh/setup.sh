#!/bin/bash

set -e  # Exit on any error

# Configuration
REPO_PATH="$HOME/dev/dotfiles"
BACKUP_PATH="$REPO_PATH/backup"
ZPROFILE_IN_REPO="$REPO_PATH/zsh/.zprofile"
ZPROFILE_HOME="$HOME/.zprofile"
ZSHRC_IN_REPO="$REPO_PATH/zsh/.zshrc"
ZSHRC_HOME="$HOME/.zshrc"

# Check if repo directory exists
if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository directory $REPO_PATH does not exist"
    exit 1
fi

# Check if backup directory exists
if [ ! -d "$BACKUP_PATH" ]; then
    mkdir "$BACKUP_PATH"
fi

# Function to create symlink
create_symlinks() {
    # Handle existing file
    if [ -f "$ZPROFILE_HOME" ] && [ ! -L "$ZPROFILE_HOME" ]; then
        echo "Backing up existing .zprofile"
        cp "$ZPROFILE_HOME" "$BACKUP_PATH/.zprofile.backup.$(date +%Y%m%d_%H%M%S)"
    fi

    # Remove existing symlink
    [ -L "$ZPROFILE_HOME" ] && rm "$ZPROFILE_HOME"

    # Create new symlink
    ln -s "$ZPROFILE_IN_REPO" "$ZPROFILE_HOME"

    echo "✓ Symlink created successfully"
    ls -la "$ZPROFILE_HOME"

    if [ -f "$ZSHRC_HOME" ] && [ ! -L "$ZSHRC_HOME" ]; then
        echo "Backing up existing .zshrc"
        cp "$ZSHRC_HOME" "$BACKUP_PATH/.zshrc.backup.$(date +%Y%m%d_%H%M%S)"
    fi

    # Remove existing symlink
    [ -L "$ZSHRC_HOME" ] && rm "$ZSHRC_HOME"

    # Create new symlink
    ln -s "$ZSHRC_IN_REPO" "$ZSHRC_HOME"

    echo "✓ Symlink created successfully"
    ls -la "$ZSHRC_HOME"
}

# Main execution
create_symlinks
