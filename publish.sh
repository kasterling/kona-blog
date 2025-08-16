#!/bin/bash

# Simple script to publish your blog post
# Usage: ./publish.sh "Your commit message"

echo "🚀 Publishing your Kona blog post..."

# Check if commit message provided
if [ $# -eq 0 ]; then
    COMMIT_MSG="New blog post update"
else
    COMMIT_MSG="$1"
fi

# Add all changes
git add .

# Commit with message
git commit -m "${COMMIT_MSG}"

# Push to GitHub
git push

echo "✅ Blog post published!"
echo "🌐 Check your live blog in 2-3 minutes: https://kasterling.github.io/kona-blog/"
echo "📱 You can now close the terminal and continue your Kona adventure!"