#!/bin/bash

echo '🌀 Starting KindnessWins Engine Deployment...'

# Set safe line endings for cross-platform
git config --global core.autocrlf true

# Set Git user info if missing (edit your name/email if needed)
git config --global user.name "TheRickyFoster"
git config --global user.email "you@example.com"

# Initialize Git repo if it’s not already
if [ ! -d .git ]; then
    git init
fi

# Add files and commit
git add .
git commit -m "Initial commit of KindnessWins Engine" || echo "No changes to commit."

# Rename branch to main
git branch -M main

# Add or update remote
git remote remove origin 2>/dev/null
git remote add origin https://github.com/TheRickyFoster/KindnessWinsEngine.git

# Fetch and rebase to avoid rejection
git fetch origin main
git rebase origin/main

# Push the changes
git push -u origin main

echo '✅ Deployment complete!'
